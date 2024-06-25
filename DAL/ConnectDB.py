import mysql.connector as db
from mysql.connector import Error

def Connect():
    conn = db.connect(user='root', password='123456', host='localhost', database='quan_ly_nong_san')
    return conn

def loginApp(tk, mk):
    db = Connect()
    query = db.cursor()
    query.execute(f"select * from tbl_nhanvien where username = '{tk}' and password = '{mk}'")
    kt = query.fetchone()
    db.close()
    return kt
