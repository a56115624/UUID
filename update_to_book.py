# 最新版媽的超級快
import json
import uuid

import pymysql
import requests

# 第472頁以前都好了
for page in range(472, 474):
    print(page)
    url = f'https://boylove.cc/home/api/cate/tp/1-0-2-1-{page}-0-2-1'
    r = requests.get(url)
    r.encoding = 'utf-8'
    multipl_edata = json.loads(r.text)
    data = multipl_edata['result']['list']
    site_id = 1
    for value, x in enumerate(data):
        putin = uuid.uuid4()
        # print(x)
        title = x['title']
        author = x['auther']
        descriptions = x['desc']
        description = str(descriptions).replace('\\t', '　').replace('\r\n', '　')  # 這邊我放入全形空白
        # print(description)
        if author == "":
            author = "作者不詳"
        cover_url = 'https://boylove.cc' + x['image']
        book_url = 'https://boylove.cc/home/book/index/id/' + x['id']
        print(book_url)
        keyword = x['keyword']
        publish_status = x['mhstatus']
        test_ans = {}
        if publish_status == '1':
            publish_status = "完結"
        publish_status = "連載中"
        test_ans["author"] = author
        test_ans["title"] = title
        test_ans['publish_status'] = publish_status
        test_ans['cover_url'] = cover_url
        test_ans['classification'] = keyword
        test_ans['book_url'] = book_url
        test_ans['descriptions'] = description
        metadata_json = json.dumps(test_ans, ensure_ascii=False).replace('\\t', '').replace('\\"', '').replace('\'','').replace('\\','')
        # print(type(metadata_json))
        # print(metadata_json)
        d = {'table': 'book', 'key': 'book_url', 'value': f'{book_url}'}
        url = 'https://shane.xjun.tw/api/v1/search'
        r = requests.post(url, d)
        r.encoding = 'utf-8'
        multipledata = json.loads(r.text)
        # 拿到我要的值
        ans = multipledata['status']
        # print(ans)
        if ans == 'success':
            conn = pymysql.connect(host='sgpdb.itlab.tw', user='shane', passwd="GKbCoMubLMQ6o", db='shane',
                                   port=8889)
            # 使用 cursor() 方法建立一個遊標物件 cursor
            cursor = conn.cursor()
            # SQL 查詢語句¬
            sql_check_ok = f"UPDATE `book` SET `metadata_json` = \'{metadata_json}\' WHERE `book_url`='{book_url}';"
            # 如果要用f執行內含{}的東西要用跳脫字元,重複update兩個東西中間用逗點隔開
            print(value + 1, sql_check_ok)
            cursor.execute(sql_check_ok)
            print("成功")
            conn.commit()
            conn.close()
        else:
            print("不管他")
