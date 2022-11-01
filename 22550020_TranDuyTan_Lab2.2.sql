
--c. Nhóm lệnh thao tác dữ liệu:
--Thêm dữ liệu:
--c1. Nhập dữ liệu cho các quan hệ trên (Gợi ý: Có thể sử dụng Excel để nhập liệu nhanh)


ALTER TABLE KHACHHANG DROP CHK_NGDK_NGSINH
Select * from KHACHHANG
INSERT INTO KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) VALUES
('KH01', 'Nguyen Van A', '731 Tran Hung Dao, Q5, TpHCM', '08823451', '1960-10-22', 13060000, '2006-07-22')


INSERT INTO KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) VALUES
('KH02', 'Tran Ngoc Han', '23/5 Nguyen Trai, Q5, TpHCM', '0908256478', '1974-4-3', 280000, '2006-4-7')

INSERT INTO KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) VALUES
('KH03', 'Tran Ngoc Linh', '45 Nguyen Canh Chan, Q1, TpHCM', '0938776266','1980-6-12', 3860000,'2006-10-02')

INSERT INTO KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) VALUES
('KH04', 'Tran Minh Long', '50/34 Le Dai Hanh, Q10, TpHCM ', '0917325476', '1965-3-9', 250000, '2006-10-2')

INSERT INTO KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) VALUES
('KH05', 'Le Nhat Minh', '34 Truong Dinh, Q3, TpHCM', '08246108', '1950-3-10', 21000, '2006-10-28')

INSERT INTO KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) VALUES
('KH06', 'Le Hoai Thuong', '227 Nguyen Van Cu, Q5, TpHCM', '08631738', '1981-12-31', 915000, '2006-11-24')

INSERT INTO KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) VALUES
('KH07', 'Nguyen Van Tam', '32/3 Tran Binh Trong, Q5, TpHCM', '0916783565', '1971-4-6', 12500, '2006-12-01')

INSERT INTO KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) VALUES
('KH08', 'Phan Thi Thanh ', '45/2 An Duong Vuong, Q5, TpHCM', '0938435756', 10/1/1971, 365000,'2006-12-13')



insert into SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA) values
('BC01', 'But Chi', 'cay', 'Singapore', 3000)

insert into SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA) values
('BC02', 'But Chi', 'cay', 'Singapore', 5000)

insert into SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA) values
('BC03', 'But Chi', 'cay', 'Viet Nam', 3500)

insert into SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA) values
('BC04', 'But Chi', 'hop', 'Viet Nam', 30000)

insert into SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA) values
('BB01', 'But bi', 'cay', 'Viet Nam', 5000)

insert into SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA) values
('BB02', 'But bi', 'cay', 'Trung Quoc', 7000)

insert into SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA) values
('BB03', 'But bi', 'hop', 'Thai Lan', 100000)

insert into SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA) values
('TV01', 'Tap 100 giay mong', 'quyen', 'Trung Quoc', 2500)

insert into SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA) values
('TV02', 'Tap 200 giay mong', 'quyen', 'Trung Quoc', 2500)
insert into SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA) values
('TV03', 'Tap 200 giay mong', 'quyen', 'Trung Quoc', 4500)
insert into SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA) values
('TV04', 'Tap 100 giay tot', 'quyen', 'Viet Nam', 3000)
insert into SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA) values
('TV05', 'Tap 100 trang', 'chuc', 'Viet Nam', 23000)
insert into SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA) values
('TV06', 'Tap 200 trang', 'chuc', 'Viet Nam', 34000)
insert into SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA) values
('TV07', 'Tap 100 trang', 'chuc', 'Trung Quoc', 34000)

insert into SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA) values
('ST01', 'So tay 500 trang', 'quyen', 'Trung Quoc', 40000)

insert into SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA) values
('ST02', 'So tay loai 1', 'quyen', 'Viet Nam', 55000)

insert into SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA) values
('ST03', 'So tay loai 2', 'quyen', 'Viet Nam', 51000)

insert into SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA) values
('ST04', 'So tay', 'quyen', 'Thai Lan', 55000)

insert into SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA) values
('ST05', 'So tay mong', 'quyen', 'Thai Lan', 20000)

insert into SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA) values
('ST06', 'Phan viet bang', 'hop', 'Viet Nam', 5000)

insert into SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA) values
('ST07', 'Phan khong bui ', 'hop', 'Viet Nam', 7000)

insert into SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA) values
('ST08', 'Bong bang', 'cai', 'Viet Nam', 1000)

insert into SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA) values
('ST09', 'But long', 'cay', 'Viet Nam', 5000)

select * from HOADON
-- HOA DON
	insert into HOADON (SOHD,NGHD,MAKH,MANV,TRIGIA) values
	('1001', '2006-7-23', 'KH01', 'NV01', 320000),
	('1002', '2006-08-12', 'KH01', 'NV02', 840000),
	('1003', '2006-8-23', 'KH02', 'NV01', 100000),
	('1004', '2006-09-01', 'KH02', 'NV01', 180000),
	('1005', '2006-10-20', 'KH01', 'NV02', 3800000),
	('1006', '2006-10-16', 'KH01', 'NV03', 2430000),
	('1007', '2006-10-28', 'KH03', 'NV03', 51000),
	('1008', '2006-10-28', 'KH01', 'NV03', 440000),
	('1009', '2006-10-28', 'KH03', 'NV04', 200000),
	('1010', '2006-11-01', 'KH01', 'NV01', 5200000),
	('1011', '2006-11-04', 'KH04', 'NV03', 250000),
	('1012', '2006-11-30', 'KH05', 'NV03', 21000),
	('1013', '2006-12-12', 'KH06', 'NV01', 5000),
	('1014', '2006-12-31', 'KH03', 'NV02', 3150000),
	('1015', '2007-1-1', 'KH06', 'NV01', 910000),
	('1016', '2007-1-1', 'KH07', 'NV02', 12500),
	('1017', '2007-1-2', 'KH08', 'NV03', 35000),
	('1018', '2007-1-13', 'KH08', 'NV03', 330000),
	('1019', '2007-1-13', 'KH01', 'NV03', 30000)

insert into CTHD (SOHD,MASP,SL) values
('1001', 'TV02', 10),
('1001', 'ST01', 5),
('1001', 'BC01', 5),
('1001', 'BC02', 10),
('1001', 'ST08', 10),
('1002', 'BC04', 20),
('1002', 'BB01', 20),
('1002', 'BB02', 20),
('1003', 'BB03', 10),
('1004', 'TV01', 20),
('1004', 'TV02', 10),
('1004', 'TV03', 10),
('1004', 'TV04', 10),
('1005', 'TV05', 50),
('1005', 'TV06',50),
('1006', 'TV07', 20),
('1006' ,'ST01', 30),
('1006' ,'ST02', 10),
('1007' ,'ST03', 10),
('1008','ST04', 8),
('1009', 'ST05',10),
('1010' ,'TV07', 50),
('1010' ,'ST07', 50),
('1010' ,'ST08', 100),
('1010' ,'ST04', 50),
('1010' ,'TV03', 100),
('1011' ,'ST06', 50),
('1012' ,'ST07', 3),
('1013' ,'ST08', 5),
('1014' ,'BC02', 80),
('1014' ,'BB02', 100),
('1014' ,'BC04', 60),
('1014' ,'BB01', 50),
('1015' ,'BB02', 30),
('1015' ,'BB03', 7),
('1016' ,'TV01', 5),
('1017' ,'TV02', 1),
('1017' ,'TV03', 1),
('1017' ,'TV04', 5),
('1018' ,'ST04', 6),
('1019' ,'ST05', 1),
('1019' ,'ST06', 2)

insert into NHANVIEN (MANV, HOTEN, SODT, NGVL) VALUES
('NV01', 'Nguyen Nhu Nhut', '0927345678', '2006-04-13'),
('NV02', 'Le Thi Phi Yen', '0987567390', '2006-04-21'),
('NV03', 'Nguyen Van B', '0997047382','2006-04-27'),
('NV04', 'Ngo Thanh Tuan', '0913758498', '2006-06-24'),
('NV05', 'Nguyen Thi Truc Thanh', '0918590387', '2006-07-20')

-- Tạo bảng mới từ bảng đã chứa dữ liệu:
--c2. Tạo quan hệ SANPHAM1 chứa toàn bộ dữ liệu của quan hệ SANPHAM.
SELECT * INTO SANPHAM1 FROM SANPHAM
--c3. Tạo quan hệ KHACHHANG1 chứa toàn bộ dữ liệu của quan hệ KHACHHANG
SELECT * INTO KHACHHANG1 FROM KHACHHANG

--Sửa dữ liệu:
--c4. Cập nhật giá (GIA) tăng 5% đối với những sản phẩm do “Thai Lan” sản xuất (NUOCSX) cho quan hệ SANPHAM1.
UPDATE SANPHAM1 
SET GIA = GIA*1.05
WHERE NUOCSX = 'Thai Lan'

SELECT * FROM SANPHAM1 
WHERE NUOCSX = 'Thai Lan'
--c5. Cập nhật giá (GIA) giảm 5% đối với những sản phẩm do “Trung Quoc” sản xuất (NUOCSX) có giá (GIA) từ 10000 trở xuống cho quan hệ SANPHAM1
UPDATE SANPHAM1 
SET GIA = GIA*0.95
WHERE NUOCSX = 'Trung Quoc' and GIA <= 10000

SELECT * FROM SANPHAM1 WHERE NUOCSX = 'Trung Quoc' and  GIA <= 10000

-- Xóa dữ liệu:
--c6. Xóa những sản phẩm do Trung Quốc sản xuất (NUOCSX) có giá (GIA) thấp hơn 10000 trong bảng SANPHAM1.
DELETE FROM SANPHAM1 WHERE GIA <10000 AND NUOCSX  ='Trung Quoc'

SELECT MASP, TENSP,GIA,NUOCSX FROM SANPHAM1
WHERE NUOCSX = 'Trung Quoc' AND GIA < 10000;

--c7. Xóa những khách hàng có doanh số (DOANHSO) thấp hơn 1000000 trong bảng KHACHHANG1.
DELETE FROM KHACHHANG1 WHERE DOANHSO <1000000
SELECT * FROM KHACHHANG1 WHERE DOANHSO <1000000

--c8. Xóa toàn bộ dữ liệu trong bảng KHACHHANG1.
DELETE FROM KHACHHANG1
SELECT * FROM KHACHHANG1 
 -- c9. Xóa bảng KHACHHANG1 và bảng SANPHAM1
 DROP TABLE KHACHHANG1
 DROP TABLE SANPHAM1

--d. Nhóm lệnh truy vấn dữ liệu:
--d1. In ra danh sách khách hàng (MAKH, HOTEN, DCHI, SODT, NGSINH, NGDK).
SELECT MAKH, HOTEN, DCHI, SODT, NGSINH, NGDK FROM KHACHHANG

--d2. In ra danh sách các sản phẩm (MASP, TENSP) do “Trung Quoc” sản xuất (NUOCSX).
SELECT MASP,TENSP FROM SANPHAM WHERE NUOCSX = 'Trung Quoc'

--d3. In ra danh sách các sản phẩm (MASP, TENSP) có đơn vị tính (DVT) là “cay” hoặc “quyen”.
SELECT MASP,TENSP  FROM SANPHAM WHERE DVT = 'cay' or DVT = 'quyen'
-- OR
SELECT MASP, TENSP FROM SANPHAM
WHERE DVT IN ('cay', 'quyen')
--d4. In ra danh sách các sản phẩm (MASP, TENSP) do “Trung Quoc” sản xuất (NUOCSX) có giá (GIA) từ 30000 đến 40000.
SELECT	MASP,TENSP ,GIA FROM SANPHAM WHERE NUOCSX = 'Trung Quoc' AND (GIA >= 30000 AND GIA <= 40000)

--d5. In ra danh sách các sản phẩm (MASP, TENSP) do “Trung Quoc” hoặc “Thai Lan” sản xuất (NUOCSX) có giá (GIA) từ 30000 đến 40000.
SELECT	MASP,TENSP ,GIA ,NUOCSX FROM SANPHAM WHERE (NUOCSX = 'Trung Quoc' or NUOCSX ='Thai Lan') 
AND (GIA >= 30000 AND GIA <= 40000)

--d6. Tìm các số hóa đơn (SOHD) đã mua sản phẩm có mã số “BB01” hoặc “BB02” (MASP).
SELECT SOHD FROM CTHD  WHERE MASP ='BB01' OR MASP ='BB02'

--d7. In ra các số hóa đơn (SOHD), trị giá hóa đơn (TRIGIA) bán ra trong ngày 01/01/2007 hoặc 02/01/2007 (NGHD).

SELECT *  FROM HOADON
WHERE NGHD = '2007-1-1' OR NGHD = '2007-1-2'

--d8. In ra danh sách nhân viên (MANV, HOTEN) nhưng đặt lại tên hai cột trong kết quả là “Ma so nhan vien” và “Ho ten nhan vien”.
SELECT  MANV AS'Ma so nhan vien' , HOTEN AS  'Ho ten nhan vien'  FROM NHANVIEN 

--d9. In ra danh sách các khách hàng (MAKH, HOTEN) đã mua hàng trong ngày 01/01/2007 (NGHD).
SELECT KHACHHANG.MAKH, HOTEN FROM KHACHHANG
INNER JOIN HOADON
ON HOADON.MAKH = KHACHHANG.MAKH
WHERE HOADON.NGHD = '1/1/2007'

--d10. In ra số hóa đơn (SOHD), trị giá (TRIGIA) các hóa đơn do nhân viên có tên “Nguyen Van B” (HOTEN) lập trong ngày 28/10/2006 (NGHD).
 SELECT SOHD,TRIGIA
FROM  HOADON A, NHANVIEN B
WHERE A.MANV=B.MANV AND NGHD='28/10/2006' AND HOTEN='NGUYEN VAN B' 
--d11. In ra danh sách nhân viên (MANV, HOTEN) của cửa hàng và số hóa đơn (SOHD) mà nhân viên đó thanh toán (nếu có).
SELECT NHANVIEN.MANV, COUNT(HOADON.SOHD) as 'SHD' FROM NHANVIEN 
JOIN HOADON ON HOADON.MANV = NHANVIEN.MANV
GROUP BY NHANVIEN.MANV
--d12. In ra danh sách tất cả các hóa đơn (SOHD) và họ tên (HOTEN) của khách hàng mua hóa đơn đó (nếu có).
SELECT KHACHHANG.HOTEN ,HOADON.SOHD FROM KHACHHANG 
JOIN HOADON ON KHACHHANG.MAKH = HOADON.MAKH

--d13. In ra danh sách khách hàng với tất cả các thuộc tính của bảng KHACHHANG.
SELECT * FROM KHACHHANG
--d14. In ra danh sách các nước (NUOCSX) cung cấp sản phẩm cho cửa hàng (Lưu ý: Không được trùng nhau).
 SELECT   DIStinct(NUOCSX) FROM SANPHAM 

--d15. Cho biết số lượng sản phẩm khác nhau được bán ra trong năm 2006.
SELECT COUNT(DISTINCT MASP)
FROM CTHD C INNER JOIN HOADON H
ON C.SOHD = H.SOHD
WHERE YEAR(NGHD) = 1900

--d16. In ra danh sách khách hàng (MAKH, HOTEN, NGSINH) đã được sắp xếp theo thứ tự ngày sinh (NGSINH) tăng dần.
       SELECT MAKH, HOTEN,  NGSINH FROM KHACHHANG 
	   ORDER BY NGSINH 

--d17. In ra danh sách 3 khách hàng đầu tiên (MAKH, HOTEN) sắp xếp theo doanh số (DOANHSO) giảm dần.
   SELECT TOP 3 MAKH, HOTEN
FROM KHACHHANG
ORDER BY DOANHSO DESC
--d18. In ra các số hóa đơn (SOHD), trị giá hóa đơn (TRIGIA) trong tháng 01/2007 (NGHD), sắp xếp theo trị giá của hóa đơn (TRIGIA) giảm dần.
SELECT * FROM HOADON WHERE MONTH(NGHD)  = 1 AND YEAR (NGHD) = 01/2007
ORDER BY TRIGIA DESC
--d19. In ra danh sách hóa đơn (SOHD) không có thông tin về khách hàng (MAKH).

  SELECT SOHD FROM HOADON WHERE MAKH IS NULL	
--d20. In ra danh sách hóa đơn (SOHD) có thông tin về nhân viên bán hàng (MANV).
SELECT * FROM HOADON
JOIN NHANVIEN ON NHANVIEN.MANV = HOADON.MANV
--d21. In ra danh sách các sản phẩm (MASP, TENSP) đã được bán ra.

SELECT CTHD.MASP, TENSP FROM SANPHAM 
JOIN CTHD  ON CTHD.MASP = SANPHAM.MASP

--d22. In ra danh sách các sản phẩm (MASP, TENSP) không bán được.
SELECT MASP, TENSP
FROM  SANPHAM
WHERE MASP NOT IN ( SELECT MASP
     FROM  CTHD)
--d23. In ra danh sách tên các sản phẩm (TENSP) có mã sản phẩm (MASP) có dạng “TV_ _” (Hai ký tự đầu là “T” và “V”, hai ký tự sau bất kỳ).

--d24. In ra danh sách các khách hàng (MAKH, HOTEN) có họ là “Tran”.
--d25. In ra danh sách các sản phẩm (MASP, TENSP) có mã sản phẩm (MASP) bắt đầu là “B” và kết thúc là “01”.
--d26. Cho biết trị giá hóa đơn (TRIGIA) cao nhất, thấp nhất.
--d27. Cho biết trị giá trung bình của tất cả các hóa đơn được cửa hàng bán ra.
--d28. Tính tổng doanh thu bán hàng trong năm 2006.
--d29. Tính tổng số lượng sản phẩm do “Trung Quoc” sản xuất (NUOCSX).
--d30. Cho biết danh sách khách hàng (MAKH, HOTEN) của khách hàng có doanh số (DOANHSO) cao nhất, thấp nhất.
--d31. Cho biết danh sách khách hàng (MAKH, HOTEN) của khách hàng có năm sinh lớn nhất, nhỏ nhất.
--d32. Với từng nước sản xuất (NUOCSX), tìm giá bán (GIA) cao nhất, thấp nhất, trung bình của các sản phẩm.
--d33. Tìm số hóa đơn (SOHD) có trị giá (TRIGIA) cao nhất trong năm 2006.
--d34. Tính tổng số lượng sản phẩm do từng nước sản xuất (NUOCSX).
SELECT NUOCSX,MIN(GIA) [GIA THAP NHAT], AVG(GIA) [GIA TB], MAX(GIA) [GIA CAO NHAT]
FROM  SANPHAM
GROUP BY  NUOCSX
--d35. Tính doanh thu bán hàng của từng tháng trong năm 2006
