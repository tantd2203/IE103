--d19. In ra danh sách hóa đơn (SOHD) không có thông tin về khách hàng (MAKH).
SELECT SOHD 
FROM HOADON
WHERE MAKH IS NULL
	
--d20. In ra danh sách hóa đơn (SOHD) có thông tin về nhân viên bán hàng (MANV).
SELECT SOHD 
FROM HOADON
JOIN NHANVIEN ON NHANVIEN.MANV = HOADON.MANV


--d21. In ra danh sách các sản phẩm (MASP, TENSP) đã được bán ra.

SELECT DISTINCT(S.MASP), TENSP 
FROM SANPHAM S , CTHD C 
WHERE S.MASP = C.MASP AND C.MASP IS NOT NULL

--d22. In ra danh sách các sản phẩm (MASP, TENSP) không bán được.
SELECT MASP, TENSP
FROM  SANPHAM
WHERE MASP NOT IN ( SELECT MASP
     FROM  CTHD)
--d23. In ra danh sách tên các sản phẩm (TENSP) có mã sản phẩm (MASP) có dạng “TV_ _” (Hai ký tự đầu là “T” và “V”, hai ký tự sau bất kỳ).
 SELECT TENSP
 FROM SANPHAM 
 WHERE MASP LIKE 'TV%'
--d24. In ra danh sách các khách hàng (MAKH, HOTEN) có họ là “Tran”.
SELECT MAKH, HOTEN
FROM KHACHHANG
WHERE HOTEN LIKE '%Tran%'
--d25. In ra danh sách các sản phẩm (MASP, TENSP) có mã sản phẩm (MASP) bắt đầu là “B” và kết thúc là “01”.
SELECT MASP, TENSP 
FROM SANPHAM
WHERE  MASP LIKE 'B%01'


--d26. Cho biết trị giá hóa đơn (TRIGIA) cao nhất, thấp nhất.
SELECT MAX(TRIGIA) AS 'TriGia_Max' ,MIN (TRIGIA)  AS 'TriGia_Min'
FROM HOADON


--d27. Cho biết trị giá trung bình của tất cả các hóa đơn được cửa hàng bán ra.

SELECT AVG(TRIGIA) AS N'trị giá trung bình' FROM HOADON



--d28. Tính tổng doanh thu bán hàng trong năm 2006.

SELECT SUM(TRIGIA) [DOANH THU]
FROM  HOADON
WHERE YEAR(NGHD)=2006