import  uuid

import pymysql

for x in range(10341,11240):
    put_uuid = uuid.uuid4()
    conn = pymysql.connect(host='sgpdb.itlab.tw', user='shane', passwd="GKbCoMubLMQ6o", db='shane',
                           port=8889)
    # 使用 cursor() 方法建立一個遊標物件 cursor
    cursor = conn.cursor()
    # SQL 查詢語句¬
    sql_check_ok = f'UPDATE `book` SET `uuid` = \'{put_uuid}\' where id = {x};'
    # 如果要用f執行內含{}的東西要用跳脫字元,重複update兩個東西中間用逗點隔開
    print(x, sql_check_ok)
    cursor.execute(sql_check_ok)
    print("成功")
    conn.commit()
    conn.close()