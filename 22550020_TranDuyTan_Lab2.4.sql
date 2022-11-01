
--d19. In ra danh sách hóa đơn (SOHD) không có thông tin về khách hàng (MAKH).

  SELECT SOHD FROM HOADON WHERE MAKH IS NULL	

--d20. In ra danh sách hóa đơn (SOHD) có thông tin về nhân viên bán hàng (MANV).
SELECT SOHD FROM HOADON
WHERE MANV IS NOT NULL

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
