
--d9. In ra danh sách các khách hàng (MAKH, HOTEN) đã mua hàng trong ngày 01/01/2007 (NGHD).
SELECT KHACHHANG.MAKH, HOTEN FROM KHACHHANG
INNER JOIN HOADON
ON HOADON.MAKH = KHACHHANG.MAKH
WHERE HOADON.NGHD = '01/01/2007'

--d10. In ra số hóa đơn (SOHD), trị giá (TRIGIA) các hóa đơn do nhân viên có tên “Nguyen Van B” (HOTEN) lập trong ngày 28/10/2006 (NGHD).
SET DATEFORMAT DMY
 SELECT SOHD,TRIGIA
FROM  HOADON A, NHANVIEN B
WHERE A.MANV=B.MANV AND NGHD='28/10/2006' AND HOTEN='NGUYEN VAN B' 

--d11. In ra danh sách nhân viên (MANV, HOTEN) của cửa hàng và số hóa đơn (SOHD) mà nhân viên đó thanh toán (nếu có)

SELECT NV.MANV,HOTEN ,SOHD 
FROM NHANVIEN NV LEFT JOIN HOADON HD
ON NV.MANV =HD.MANV

--d12. In ra danh sách tất cả các hóa đơn (SOHD) và họ tên (HOTEN) của khách hàng mua hóa đơn đó (nếu có).
SELECT SOHD ,HOTEN  FROM HOADON HD 
LEFT JOIN KHACHHANG KH  ON HD.MAKH = KH.MAKH

--d15. Cho biết số lượng sản phẩm khác nhau được bán ra trong năm 2006.
SELECT COUNT(DISTINCT MASP)
FROM CTHD C INNER JOIN HOADON H
ON C.SOHD = H.SOHD
WHERE YEAR(NGHD) = 2006

--d16. In ra danh sách khách hàng (MAKH, HOTEN, NGSINH) đã được sắp xếp theo thứ tự ngày sinh (NGSINH) tăng dần.
       SELECT MAKH, HOTEN,  NGSINH 
	   FROM KHACHHANG 
	   ORDER BY NGSINH  DESC
--d17. In ra danh sách 3 khách hàng đầu tiên (MAKH, HOTEN) sắp xếp theo doanh số (DOANHSO) giảm dần.
   SELECT TOP 3 MAKH, HOTEN
FROM KHACHHANG
ORDER BY DOANHSO DESC

--d18. In ra các số hóa đơn (SOHD), trị giá hóa đơn (TRIGIA) trong tháng 01/2007 (NGHD), sắp xếp theo trị giá của hóa đơn (TRIGIA) giảm dần.
SELECT SOHD, TRIGIA 
FROM HOADON WHERE MONTH(NGHD)  = 1 AND YEAR (NGHD) = 2007
ORDER BY TRIGIA DESC

