-- SELECT ( SQL DE (--) YORUM SATIRIDIR.)
-- ANSII 
Select ContactName Adi,CompanyName SirketAdi,City Sehir from Customers -- Bu aslında bir TABLODUR. "Adi, SirketAdi ve Sehir" ALIAS DIR.

Select * from Customers where City = 'London' -- ŞEHİRLER ANSII STANDARTINDA TEK TIRNAK YAZILIR.

--CASE INSENSITIVE
select * from Products where CategoryID=1 or CategoryID=3

select * from Products where CategoryID=1 and UnitPrice>=10

select * from Products order by UnitPrice asc  -- ascending (artan)
select * from Products order by UnitPrice desc -- descending (azalan)

select count(*) from Products where CategoryID=2   -- Bütün ürünleri say demek.

-- "GROUP BY" YAPTIĞINDA HER BİR GRUP İÇİN ARKADA BİR TABLO OLUŞUR. Bu yüzden count(*) diyebiliriz. "Group By" larda yazılan kümülatif dataya "HAVING" uygularız.
select categoryId,count(*) from products where UnitPrice>20 group by CategoryID having count(*)<10


-- Kategorileri yada iki tabloyu "INNER JOIN" le birleştiririz ve bunu neye göre birleştireceğini "on" ile belirtiriz.
-- INNER JOIN sadece iki tabloda da eşleşen datayı getirir. Eşleşmiyorsa o datayı getirmez.
-- Buna C# ta DTO = Data Transformation Object diyoruz.

select Products.ProductID, Products.ProductName, Products.UnitPrice, Categories.CategoryName 
from Products inner join Categories on Products.CategoryID=Categories.CategoryID where Products.UnitPrice>10

-- "p" = product, "od" = order details. İkinci "inner join" ikiden fazla tabloyu birleştirmeye yarıyor.
select * from Products p inner join [Order Details] od on p.ProductID = od.ProductID inner join Orders o on o.OrderID = od.OrderID 

-- left join solda olup sağda olmayanlarıda getir demek.
select * from Products p left join [Order Details] od on p.ProductID = od.ProductID

-- Başka versiyon.
select * from Customers c inner join Orders o on c.CustomerID = o.CustomerID

select * from Customers c left join Orders o on c.CustomerID = o.CustomerID where o.CustomerID is null -- "is null" hiç ürün almamış müşterileri gösterir. 


