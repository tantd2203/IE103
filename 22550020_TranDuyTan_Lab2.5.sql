--d28. Tính tổng doanh thu bán hàng trong năm 2006.
SELECT  SUM(TRIGIA)  as TONG_TRIGIA
FROM HOADON
WHERE YEAR(NGHD) = 2006
--d29. Tính tổng số lượng sản phẩm do “Trung Quoc” sản xuất (NUOCSX).
SELECT COUNT(MASP) AS TongSL 
FROM SANPHAM
WHERE NUOCSX = 'Trung Quoc'
--d30. Cho biết danh sách khách hàng (MAKH, HOTEN) của khách hàng có doanh số (DOANHSO) cao nhất, thấp nhất.
SELECT MAKH, HOTEN
FROM KHACHHANG
WHERE DOANHSO = (SELECT MAX(DOANHSO) FROM KHACHHANG) OR DOANHSO = (SELECT MIN (DOANHSO) FROM KHACHHANG)
--d31. Cho biết danh sách khách hàng (MAKH, HOTEN) của khách hàng có năm sinh lớn nhất, nhỏ nhất.
SELECT MAKH, HOTEN 
FROM KHACHHANG 
WHERE NGSINH = (SELECT MAX(NGSINH) FROM KHACHHANG) 
OR NGSINH = (SELECT MIN(NGSINH) FROM KHACHHANG)

--d32. Với từng nước sản xuất (NUOCSX), tìm giá bán (GIA) cao nhất, thấp nhất, trung bình của các sản phẩm.
SELECT NUOCSX,MIN(GIA) [GIA THAP NHAT], AVG(GIA) [GIA TB], MAX(GIA) [GIA CAO NHAT]
FROM  SANPHAM
GROUP BY  NUOCSX


--d33. Tìm số hóa đơn (SOHD) có trị giá (TRIGIA) cao nhất trong năm 2006
SELECT TOP(1) SOHD FROM HOADON
WHERE  YEAR (NGHD) =2006
ORDER BY TRIGIA DESC



--d34. Tính tổng số lượng sản phẩm do từng nước sản xuất (NUOCSX).
 SELECT NUOCSX, COUNT(MASP) as So_SP
 FROM SANPHAM
 GROUP BY NUOCSX

--d35. Tính doanh thu bán hàng của từng tháng trong năm 2006
SeLECT SUM(TRIGIA) as DoanhThu, MONTH(NGHD) as Thang  FROM HOADON
WHERE YEAR(NGHD) = 2006
GROUP BY MONTH(NGHD)
