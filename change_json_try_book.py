import json
import pymysql

test_ans = {}  # 創造出一個json檔
for i in range(1, 11238):
    print(i)
    conn = pymysql.connect(host='sgpdb.itlab.tw', user='shane', passwd="GKbCoMubLMQ6o", db='shane', port=8889)
    cursor = conn.cursor()
    sql_get_all_data: str = f"select  chapter.pic_url_array,b.metadata_json as metadata_json , b.uuid as uuid ,chapter.name as name from chapter join book b on b.id = chapter.book_id where book_id ={i}"
    cursor.execute(sql_get_all_data)
    ans1 = cursor.fetchone()  # 對每個都先取第一個拿到一基本資料
    # print(ans1)
    uuid = ans1[2]  # 拿到ＵＵＩＤ
    answer_metadata = ans1[1]
    metadata = json.loads(answer_metadata)
    title = metadata['title']
    print(title)
    author = metadata['author']
    book_url = metadata['book_url']
    cover_url = metadata['cover_url']
    description = metadata['descriptions']
    classification = metadata['classification']
    test_ans[i]= {}
    test_ans[i]["identifier"] = uuid
    test_ans[i]["createdAt"] = ''
    test_ans[i]["tags"] = classification
    test_ans[i]['item'] = {}
    test_ans[i]['item']["title"] = title
    test_ans[i]['item']["creator"] = author
    test_ans[i]['item']["publisher"] = ''
    test_ans[i]['item']["description"] = description
    test_ans[i]['item']["type"] = 'comic'
    test_ans[i]['item']["cover_h_cen"] = cover_url
    test_ans[i]['item']["spine"] = {}
    cursor.execute(sql_get_all_data)
    answers = cursor.fetchall()
    cursor.close()
    conn.close()
    for index, answer in enumerate(answers):
        position = answer[3]
        answer_picture_json = answer[0]
        pic_array = json.loads(answer_picture_json)  # 將json轉成 python 可以讀取的檔案
        page_pic_array = pic_array['pic_array']  # 拿到所有圖片網址
        for page in enumerate(page_pic_array):
            # print(a,page)
            if position not in test_ans[i]['item']['spine']:
                test_ans[i]['item']['spine'][position] = {}
            test_ans[i]['item']["spine"][position]["type"] = 'chapter'
            test_ans[i]['item']["spine"][position]["position"] = position  # 等待確認
            test_ans[i]['item']["spine"][position]["cover"] = ''  # 等待確認
            test_ans[i]['item']["spine"][position]["coverAlt"] = ''  # 等待確認
            test_ans[i]['item']["spine"][position]["contents"] = page_pic_array  # 等待確認

        with open('The_last.json', 'w', encoding='utf-8') as f:  # 將檔案儲存成json檔
            f.write(json.dumps(test_ans, ensure_ascii=False))
