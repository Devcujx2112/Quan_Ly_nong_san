import mysql.connector as db
from . import ConnectDB

def showSanPham():
    conn = ConnectDB.Connect()
    qr = "SELECT * FROM quan_ly_nong_san.tbl_sanpham"
    cs = conn.cursor()
    cs.execute(qr)
    rs = cs.fetchall()
    conn.close()
    return rs

def ShowMasp(masp):
    conn = ConnectDB.Connect()
    qr = "SELECT * FROM tbl_sanpham WHERE masp = %s"
    data = (masp,)
    cs = conn.cursor()
    cs.execute(qr, data)
    rs = cs.fetchall()
    conn.close()
    return rs

def GiaSanPham(masp):
    conn = ConnectDB.Connect()
    qr = r"SELECT giaBan FROM tbl_sanPham WHERE masp = %s;"
    data = (masp,)
    cs = conn.cursor()
    cs.execute(qr,data)
    rs = cs.fetchall()
    conn.close()
    return rs

def addSanPham(masp, tensp, soLuong, giaNhap, giaBan, moTa):
    try:
        conn = ConnectDB.Connect()
        cs = conn.cursor()
        new_SanPham = (masp, tensp, soLuong, giaNhap, giaBan, moTa)
        qr = "INSERT INTO tbl_sanpham (masp, tensp, soLuong, giaNhap, giaBan, moTa) values ( %s, %s, %s, %s, %s, %s);"
        cs.execute(qr, new_SanPham)
        kt = conn.commit()
        conn.close()
        return cs.rowcount
    except:
        return 0
def updateSanPham(masp, tensp, soLuong, giaNhap, giaBan, moTa):
    try:
        conn = ConnectDB.Connect()
        cs = conn.cursor()
        new_SanPham = (tensp, soLuong, giaNhap, giaBan, moTa, masp)
        qr = "UPDATE tbl_sanpham SET  tensp = %s, soLuong = %s, giaNhap = %s, giaBan = %s, moTa = %s  WHERE masp = %s"
        cs.execute(qr, new_SanPham)
        kt = conn.commit()
        conn.close()
        return cs.rowcount
    except:
        return 0
def deleteSanPham(masp):
    try:
        conn = ConnectDB.Connect()
        cs = conn.cursor()
        qr = "DELETE FROM tbl_sanpham WHERE masp = %s"
        cs.execute(qr, (masp,))
        kt = conn.commit()
        conn.close()
        return cs.rowcount
    except:
        return 0
def timKiem(tensp):
    conn = ConnectDB.Connect()
    qr = r"SELECT * FROM quan_ly_nong_san.tbl_sanpham WHERE masp LIKE '%SP%' AND tensp LIKE '%"+tensp+r"%';"
    cs = conn.cursor()
    cs.execute(qr)
    rs = cs.fetchall()
    conn.close()
    return rs


