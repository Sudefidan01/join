-- Inner Join , Left Join , Right join , Full Join
--Joinler , birden fazla tabloyu birbirine bağlamak için kullanılan bir yöntemdir
--Joinler sayesinde ilişkilendirilmiş olan tabloları birbirleri ile bağlayıp sınırsız bir şekilde işlem yapabilirsiniz
--Tabloları bağlama bir tablonun PK(Primary Key) kolonu ile bir diğer tablonun FK(FOreign Key) kolonu birbirleri ile ilişkilendirilmiş ise sağlanabilir
--Bu eşleştirme işlemine Diagram tablosunda ulaşabilirsiniz

--Inner Join
--Tabloda birleştirdiğimiz alana göre sadece eşleşen veriler gelir

--Left Join
--Join ifadesinin solunda kalan tablodaki tüm veriler diğer tablonun sadece ilgili alanlarını getirir.Diğer tablo eşleşmiyor ise NUll sonuç gelir

--Right Join
--Left join mantığında çalışır .  2.Tablonun tüm verisi gelir 1.tablonun eşleşen kısımları gelir. Eşleşmeyen satırlar ise Null Gelir

--Full Join
--Her iki tabloda da tüm kayıtlar gelir . Eşleşmeyen kayıtlar var ise Null gelir

--Syntax
--Select <Kolon'lar>
--From <tablo1>    
--<joinTipi> <tablo2>
--on <birinciTabloKolon> = <ikinciTabloKolon>

--Inner Join
--Siparişler tablosundaki sipraiş Id 'si ,Müşteri ADı ve kargo firmasının adını listeleyelim
select
	Orders.OrderID,
	Customers.ContactName,
	Orders.ShipName
from Orders
	Inner join Customers on Orders.CustomerID=Customers.CustomerID

--Left Join
--Hangi Çalışanım Hangi Çalışanıma Bağlı
select
	(c.FirstName + ' ' +c.LastName) as FullName,
	(r.FirstName + ' ' +r.LastName) as ReportsTo
from Employees as c right join Employees as r
on c.ReportsTo=r.EmployeeID