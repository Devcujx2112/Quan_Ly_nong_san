SELECT * FROM quan_ly_nong_san.tbl_donhang;
UPDATE tbl_donhang SET masp = 'SP04', soLuong = '2', tenKh = 'test', adress = 'tesi', sdt = '123', tongTien = '22.000',trangThai = 'Lấy hàng'   WHERE madh = 'DH02'
SELECT * FROM quan_ly_nong_san.tbl_donhang WHERE tenkh LIKE 'Dương';
SELECT tongTien FROM tbl_donhang WHERE madh = 'DH01';