--Q1
-- Verilen invoice tablosundaki NULL olan kayıtları saymaktadır.

SELECT COUNT(*) AS null_kayit_sayisi
FROM Invoice
WHERE invoice_id IS NULL 
AND customer_id IS NULL 
AND invoice_date IS NULL 
AND billing_address IS NULL 
AND billing_city IS NULL 
AND billing_state IS NULL 
AND billing_country IS NULL 
AND billingpostal_code IS NULL 
AND total IS NULL; --NULL satır sayısı yoktur

--Q2
-- Verilen invoice tablosundaki total değerleri iki katına çıkarılmıştır ve eski ve yeni değerler listelenmiştir.

SELECT invoice_id, total AS eski_total, total * 2 AS yeni_total
FROM Invoice
ORDER BY yeni_total DESC;

--Q3
-- Adres kolonunu kısaltıp 2013 yılının 8. ayına göre filtreleme işlemi yapılmıştır.

SELECT invoice_id, 
       LEFT(billing_address, 3) || '...' || RIGHT(billing_address, 4) AS acik_adres,
       invoice_date
FROM Invoice
WHERE EXTRACT(YEAR FROM invoice_date) = 2013 
AND EXTRACT(MONTH FROM invoice_date) = 8;



