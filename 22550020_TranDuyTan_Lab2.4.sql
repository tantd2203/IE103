--d19. In ra danh sách hóa đơn (SOHD) không có thông tin về khách hàng (MAKH).

SELECT SOHD 
FROM HOADON
WHERE MAKH IS NULL
	


--d20. In ra danh sách hóa đơn (SOHD) có thông tin về nhân viên bán hàng (MANV).
SELECT SOHD FROM HOADON
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

--d24. In ra danh sách các khách hàng (MAKH, HOTEN) có họ là “Tran”.
--d25. In ra danh sách các sản phẩm (MASP, TENSP) có mã sản phẩm (MASP) bắt đầu là “B” và kết thúc là “01”.
--d26. Cho biết trị giá hóa đơn (TRIGIA) cao nhất, thấp nhất.
--d27. Cho biết trị giá trung bình của tất cả các hóa đơn được cửa hàng bán ra.
--d28. Tính tổng doanh thu bán hàng trong năm 2006.