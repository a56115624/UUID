import json

import pymysql

conn = pymysql.connect(host='sgpdb.itlab.tw', user='shane', passwd="GKbCoMubLMQ6o", db='shane', port=8889)
cursor = conn.cursor()
#  這個有全部的值,太多了嘗試看看拿少一點
# sql_get_all_data: str = f"select  chapter.id, b.title as 'title',chapter.name,chapter.chapter_url as 'chapter_url',chapter.pic_url_array,b.author as author,b.book_url as book_url,b.cover_url as cover_url,b.metadata_json as metadata_json,b.publish_status as publish_status  from chapter join book b on b.id = chapter.book_id where book_id =1"
# 嘗試看看拿少一點的值
sql_get_all_data: str = f"select  chapter.pic_url_array,b.metadata_json as metadata_json , b.uuid as uuid ,chapter.name as name from chapter join book b on b.id = chapter.book_id where book_id =1"
cursor.execute(sql_get_all_data)
test_ans = {}  # 創造出一個json檔
ans1 = cursor.fetchone()  # 對每個都先取第一個拿到一基本資料
uuid = ans1[2]  # 拿到ＵＵＩＤ
answer_metadata = ans1[1]
metadata = json.loads(answer_metadata)
title = metadata['title']
author = metadata['author']
book_url = metadata['book_url']
cover_url = metadata['cover_url']
description = metadata['descriptions']
classification = metadata['classification']
test_ans["identifier"] = uuid
test_ans["createdAt"] = ''
test_ans["tags"] = classification
test_ans['item'] = {}
test_ans['item']["title"] = title
test_ans['item']["creator"] = author
test_ans['item']["publisher"] = ''
test_ans['item']["description"] = description
test_ans['item']["type"] = 'comic'
test_ans['item']["cover_h_cen"] = cover_url
test_ans['item']["spine"] = {}
cursor.execute(sql_get_all_data)
answers = cursor.fetchall()
for index, answer in enumerate(answers):
    position = answer[3]
    answer_picture_json = answer[0]
    pic_array = json.loads(answer_picture_json)  # 將json轉成 python 可以讀取的檔案
    page_pic_array = pic_array['pic_array']  # 拿到所有圖片網址
    for page in enumerate(page_pic_array):
        # print(a,page)
        if position not in test_ans['item']['spine']:
            test_ans['item']['spine'][position] = {}
        test_ans['item']["spine"][position]["type"] = 'chapter'
        test_ans['item']["spine"][position]["position"] = position  # 等待確認
        test_ans['item']["spine"][position]["cover"] = ''  # 等待確認
        test_ans['item']["spine"][position]["coverAlt"] = ''  # 等待確認
        test_ans['item']["spine"][position]["contents"] = page_pic_array  # 等待確認

        with open('final.json', 'w', encoding='utf-8') as f:  # 將檔案儲存成json檔
            f.write(json.dumps(test_ans, ensure_ascii=False))

# 此方法已成功拿奧一本書，剩下要拿到所有的書叫可以了
