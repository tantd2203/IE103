CREATE DATABASE QUANLYBANHANG;
USE QUANLYBANHANG;
DROP DATABASE QUANLYBANHANG;

CREATE TABLE KHACHHANG
(
	MAKH char(4) PRIMARY KEY ,
	HOTEN varchar(40),
	DCHI varchar(50),
	SODT varchar(20),
	NGSINH smalldatetime,
	DOANHSO money,
	NGDK smalldatetime
)


CREATE TABLE NHANVIEN
(
	MANV char(4) PRIMARY KEY,
	HOTEN varchar(40),
	SODT varchar(20),
	NGVL smalldatetime
)

CREATE TABLE SANPHAM
(
	MASP char(4) PRIMARY KEY,
	TENSP varchar(40),
	DVT varchar(20),
	NUOCSX varchar(40),
	GIA money
)
CREATE TABLE HOADON
(
	SOHD int  PRIMARY KEY,
	NGHD smalldatetime,
	MAKH char(4),
	MANV char(4),
	TRIGIA money
)
CREATE TABLE CTHD
(
	SOHD int,
	MASP char(4),
	SL int
	PRIMARY KEY (SOHD,MASP)
)

--a5. Thêm vào thuộc tính GHICHU có kiểu dữ liệu varchar(20) cho quan hệ SANPHAM.
ALTER TABLE SANPHAM ADD GHICHU VARCHAR(20)
SELECT * FROM SANPHAM

--a6. Thêm vào thuộc tính LOAIKH có kiểu dữ liệu là tinyint cho quan hệ KHACHHANG.
ALTER TABLE KHACHHANG ADD LOAIKH TINYINT
SELECT * FROM KHACHHANG

--a7. Thêm vào thuộc tính CMND có kiểu dữ liệu varchar(9) cho quan hệ KHACHHANG.
ALTER TABLE KHACHHANG ADD CMND VARCHAR(9)
SELECT * FROM KHACHHANG
--Sửa kiểu dữ liệu của thuộc tính:
--a8. Sửa kiểu dữ liệu của thuộc tính GHICHU trong quan hệ SANPHAM thành varchar(100).
ALTER TABLE  SANPHAM ALTER COLUMN  GHICHU VARCHAR(100)

--a9. Sửa kiểu dữ liệu của thuộc tính CMND trong quan hệ KHACHHANG thành varchar(12)
ALTER TABLE  KHACHHANG ALTER COLUMN  CMND VARCHAR(12)

--Xóa thuộc tính:

--a10. Xóa thuộc tính GHICHU trong quan hệ SANPHAM.
ALTER TABLE SANPHAM DROP COLUMN GHICHU 
--a11. Xóa thuộc tính LOAIKH trong quan hệ KHACHHANG
ALTER TABLE KHACHHANG DROP COLUMN LOAIKH 

--a12. Thêm ràng buộc khóa chính cho quan hệ CTHD  cái này đã thêm lúc tạo bảng rồi
ALTER TABLE CTHD ALTER COLUMN SOHD INT NOT NULL
ALTER TABLE CTHD ALTER COLUMN MASP INT NOT NULL
ALTER TABLE CTHD ADD CONSTRAINT PK_CT PRIMARY KEY (SOHD, MASP)

-- a13. Thêm ràng buộc khóa ngoại cho quan hệ HOADON, CTHD
ALTER TABLE HOADON ADD FOREIGN KEY (MAKH) REFERENCES KHACHHANG (MAKH)
ALTER TABLE HOADON ADD FOREIGN KEY (MANV) REFERENCES NHANVIEN (MANV)
ALTER TABLE CTHD ADD FOREIGN KEY (SOHD) REFERENCES HOADON (SOHD)
ALTER TABLE CTHD ADD FOREIGN KEY (MASP) REFERENCES SANPHAM (MASP)
-- Ràng buộc “tồn tại duy nhất”:
--a14. Thêm ràng buộc: “Mã khách hàng (MAKH) của mỗi khách hàng là duy nhất” cho quan hệ KHACHHANG.
ALTER TABLE KHACHHANG ADD CONSTRAINT UQ_KH UNIQUE(MAKH)
ALTER TABLE KHACHHANG Drop CONSTRAINT UQ_KH 
select t.[name], t.object_id, i.[name] from sys.tables as t
join sys.indexes as i
on t.object_id = i.object_id and i.is_unique =	1;

--a15. Thêm ràng buộc: “Số CMND (CMND) của mỗi khách hàng là duy nhất” cho quan hệ KHACHHANG.
ALTER TABLE KHACHHANG ADD CONSTRAINT UQ_KH_CMND UNIQUE(CMND)

select t.[name], t.object_id, i.[name] from sys.tables as t
join sys.indexes as i
on t.object_id = i.object_id and i.is_unique =	1;

--Ràng buộc “kiểm tra điều kiện”:
--a16. Thêm ràng buộc: “Giá bán của sản phẩm (GIA) từ 500 đồng trở lên” cho quan hệ SANPHAM.

ALTER TABLE SANPHAM ADD CONSTRAINT CHK_GIA CHECK (GIA>=500)

--a17. Thêm ràng buộc: “Đơn vị tính của sản phẩm (DVT) chỉ có thể là (“cay”, “hop”, “cai”, “quyen”, “chuc”)” cho quan hệ SANPHAM.

ALTER TABLE SANPHAM ADD CONSTRAINT CHK_DVT CHECK (DVT in ('cay', 'hop', 'cai', 'quyen', 'chuc'))

--a18. Thêm ràng buộc: “Ngày khách hàng đăng ký thành viên (NGDK) phải lớn hơn ngày sinh của người đó (NGSINH)” cho quan hệ KHACHHANG.

ALTER TABLE KHACHHANG ADD CONSTRAINT CHK_NGDK_NGSINH CHECK (NGDK >NGSINH)

--Xóa ràng buộc toàn vẹn:
--a19. Xóa ràng buộc: “Giá bán của sản phẩm (GIA) từ 500 đồng trở lên” trong quan hệ SANPHAM.

ALTER TABLE SANPHAM DROP CONSTRAINT CHK_GIA
--a20. Xóa ràng buộc: “Số CMND (CMND) của mỗi khách hàng là duy nhất” trong quan hệ KHACHHANG, sau đó xóa thuộc tính CMND trong quan hệ KHACHHANG.
ALTER TABLE KHACHHANG Drop CONSTRAINT UQ_KH_CMND 
ALTER TABLE KHACHHANG DROP COLUMN  CMND 

SELECT * FROM KHACHHANG

-- Xóa bảng:
--a21. Xóa bảng CTHD.
DROP TABLE	CTHD

--a22. Tạo lại bảng CTHD và khai báo ràng buộc khóa chính, khóa ngoại như ban đầu.
--b. Chụp lại lược đồ biểu diễn cơ sở dữ liệu (Database Diagram) của cơ sở dữ liệu đã xây dựng trong SQL Server
CREATE TABLE CTHD
(
	SOHD int,
	MASP char(4),
	SL int
	PRIMARY KEY (SOHD,MASP)
)
ALTER TABLE CTHD ADD FOREIGN KEY (SOHD) REFERENCES HOADON (SOHD)
ALTER TABLE CTHD ADD FOREIGN KEY (MASP) REFERENCES SANPHAM (MASP)
