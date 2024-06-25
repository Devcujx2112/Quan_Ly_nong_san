import mysql.connector as db
from . import ConnectDB

def showDonhang():
    conn = ConnectDB.Connect()
    qr = "SELECT * FROM quan_ly_nong_san.tbl_donhang"
    cs = conn.cursor()
    cs.execute(qr)
    rs = cs.fetchall()
    conn.close()
    return rs

def ThongKe():
    conn = ConnectDB.Connect()
    qr = "SELECT * FROM quan_ly_nong_san.tbl_donhang WHERE trangThai = 'Đã thanh toán'"
    cs = conn.cursor()
    cs.execute(qr)
    rs = cs.fetchall()
    conn.close()
    return rs

def tinhTongTien():
    conn = ConnectDB.Connect()
    qr = "SELECT SUM(tongTien) FROM quan_ly_nong_san.tbl_donhang WHERE trangThai = 'Đã thanh toán'"
    cs = conn.cursor()
    cs.execute(qr)
    result = cs.fetchone()
    conn.close()
    return result[0] if result[0] is not None else 0

def addDonHang(madh,masp, soLuong, tenKh, adress, sdt, tongTien, trangThai):
    try:
        conn = ConnectDB.Connect()
        cs = conn.cursor()
        new_DonHang =(madh,masp, soLuong, tenKh, adress, sdt, tongTien, trangThai)
        qr = "INSERT INTO tbl_donhang (madh,masp, soLuong, tenKh, adress, sdt, tongTien, trangThai) values ( %s, %s, %s, %s, %s, %s, %s, %s);"
        cs.execute(qr, new_DonHang)
        kt = conn.commit()
        conn.close()
        return cs.rowcount
    except:
        return 0
def updateDonHang(madh, masp, soLuong, tenKh, adress, sdt, tongTien, trangThai):
    try:
        conn = ConnectDB.Connect()
        cs = conn.cursor()
        new_DonHang = (masp, soLuong, tenKh, adress, sdt, tongTien, trangThai, madh)
        qr = "UPDATE tbl_donhang SET masp = %s, soLuong = %s, tenKh = %s, adress = %s, sdt = %s, tongTien = %s,trangThai = %s WHERE madh = %s;"
        cs.execute(qr, new_DonHang)
        kt = conn.commit()
        conn.close()
        return cs.rowcount
    except:
        return 0
def deleteDonHang(madh):
    try:
        conn = ConnectDB.Connect()
        cs = conn.cursor()
        qr = "DELETE FROM tbl_donhang WHERE madh = %s"
        cs.execute(qr, (madh,))
        kt = conn.commit()
        conn.close()
        return cs.rowcount
    except:
        return 0
def timKiem(tenkh):
    conn = ConnectDB.Connect()
    qr = r"SELECT * FROM quan_ly_nong_san.tbl_donhang WHERE madh LIKE '%DH%' AND tenkh LIKE '%"+tenkh+r"%';"
    cs = conn.cursor()
    cs.execute(qr)
    rs = cs.fetchall()
    conn.close()
    return rs


