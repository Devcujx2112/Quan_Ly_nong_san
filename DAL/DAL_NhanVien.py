import mysql.connector as db
from . import ConnectDB

def showNhanVien():
    conn = ConnectDB.Connect()
    qr = "SELECT * FROM quan_ly_nong_san.tbl_nhanvien"
    cs = conn.cursor()
    cs.execute(qr)
    rs = cs.fetchall()
    conn.close()
    return rs

def addNhanVien(manv, tennv,username,password, gender, sdt, chucvu):
    try:
        conn = ConnectDB.Connect()
        cs = conn.cursor()
        new_NhanVien = (manv, tennv,username, password, gender, sdt, chucvu)
        qr = "INSERT INTO tbl_nhanvien (manv, tennv,username, password, gender, sdt, chucvu) values ( %s, %s, %s, %s, %s, %s, %s)"
        cs.execute(qr, new_NhanVien)
        kt = conn.commit()
        conn.close()
        return cs.rowcount
    except:
        return 0
def updateNhanVien(manv, tennv,username, password, gender, sdt, chucvu):
    try:
        conn = ConnectDB.Connect()
        cs = conn.cursor()
        new_NhanVien = ( tennv,username, password, gender, sdt, chucvu,manv)
        qr = "UPDATE tbl_nhanvien SET tennv = %s, username = %s, password = %s, gender = %s, sdt = %s, chucvu = %s  WHERE manv = %s"
        cs.execute(qr, new_NhanVien)
        kt = conn.commit()
        conn.close()
        return cs.rowcount
    except:
        return 0
def deleteNhanVien(manv):
    try:
        conn = ConnectDB.Connect()
        cs = conn.cursor()
        qr = "DELETE FROM tbl_nhanvien WHERE manv = %s"
        cs.execute(qr, (manv,))
        kt = conn.commit()
        conn.close()
        return cs.rowcount
    except:
        return 0
def timKiem(tennv):
    conn = ConnectDB.Connect()
    qr = r"SELECT * FROM quan_ly_nong_san.tbl_nhanvien WHERE manv LIKE '%NV%' AND tennv LIKE '%"+tennv+r"%';"
    cs = conn.cursor()
    cs.execute(qr)
    rs = cs.fetchall()
    conn.close()
    return rs


