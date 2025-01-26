---Its a database for offline Mobile Store, where they only sell mobile phone of 3 different brand---
create database Mobile_Shop
use Mobile_Shop

--We are here creating table for all the products that we have in store
create table Products
(
ProductID int primary key not null,
Model varchar(30) not null,
Brand varchar(30) not null,
Price decimal (10,2) not null
)

--create table for all the customer that have bought product from store
create table Customers
(
CustomerId int primary key not null,
Name varchar(50) not null,
Email varchar(50) not null,
Phone varchar(20) not null,
Address varchar(100) not null
)

--create table for all the customers that have bought products from the store
create table Sales
(
SalesID int primary key not null,
CustomerID int not null,
ProductID int not null,
PurchaseDate date not null,
PurchasePrice decimal(10,2) not null
Foreign key (ProductID) references Products(ProductID),
Foreign Key (CustomerID) references Customers(CustomerID)
)

--create table for inventory
create table Inventory
(
InventoryID int primary key not null,
ProductID int not null,
Quantity int not null,
Foreign Key (ProductID) references Products(ProductID)
)

--here we can check all the table 
select * from Products
select * from Customers
select * from Sales
select * from Inventory

--------------------------------------------------------------------------------------
---4 table have been created. Now we are going to insert value in all table.

-- inserting value into Products table
insert into Products (ProductID, model, Brand, Price)
values (1, 'Iphone 15 Pro', 'Apple', 100000.99),
       (2, 'Iphone 15 Pro Max', 'Apple', 120000.99),
	   (3, 'Iphone 15', 'Apple', 70000.99),
	   (4, 'Iphone 15 Plus', 'Apple', 80000.99),
	   (5, 'Iphone 14 Pro Max', 'Apple', 105000.99),
	   (6, 'Iphone 14 pro', 'Apple', 85000.99),
	   (7, 'Galaxy S24', 'Samsung', 76000.99),
	   (8, 'Galaxy S24 Plus', 'Samsung', 86000.99),
	   (9, 'Galaxy S23 Ultra', 'Samsung', 99000.99),
	   (10, 'Galaxy Flip 5', 'Samsung',78000.99),
	   (11, 'Galaxy Fold 5', 'Samsung', 98000.99),
	   (12, 'Pixel 8 Pro', 'Google', 97000.99),
	   (13, 'Pixel 8 Plus', 'Google', 86000.99),
	   (14, 'Pixel 8', 'Google', 69000.99),
	   (15, 'Iphone 13 pro', 'Apple', 74000.99),
	   (16, 'Iphone 13', 'Apple', 54000.99),
	   (17, 'Galaxy s23', 'Samsung', 59999.99),
	   (18, 'Galaxy S23 Ultra', 'Samsung', 73000.99),
	   (19, 'Galaxy S23 plus', 'Samsung', 65499.99),
	   (20, 'Pixel 7 Pro', 'Google', 85499.99)

--inserting value into customers table
insert into Customers(CustomerID, Name, Email, Phone, Address)
values (1, 'Abhishek Uniyal', 'Abhishekuniyal@gmail.com', '9765412345', '87d Shakti Khand'),
	   (2, 'Akash Sharma', 'Akashsharma@gmail.com', '9876545673', '27n Vishwas Nagar'),
	   (3, 'Rahul Rawat', 'Rahulrawat@gmail.com', '9867865463', '82b Laxmi Nagar'),
	   (4, 'Pankaj Kumar', 'Pankajkumar@gmai.com', '9076457863', '23d Dishad Garden'),
	   (5, 'Rohit Sharma', 'Rohitsharma@gmail.com', '9347658426', '36p Arjun Nagar'),
	   (6, 'Himashu Sharma', 'Himasnhusharma@gmail.com', '9764578654', '76s Vinod Nagar'),
	   (7, 'Aastha Kumar', 'Aasthakumar@gmail.com', '9568543768', '27j Laxmi Nagr'),
	   (8, 'Nikki Sharma', 'Nikkisharma@gmail.com', '9657865367', '29k Niti Khand'),
	   (9, 'Neha Joshi', 'Nehajoshi@gmail.com', '9637463287', '96f Abhay Khand'),
	   (10, 'Avneet Sikka', 'Avneetsikka@gmail.com', '9873547235', '32n Shretha Vihar')
	   
--inserting value into sales table. we have 11 salesID because avneet sikka with producID 10 has bought 2 phone.
insert into Sales(SalesID, CustomerID, ProductID, PurchaseDate, PurchasePrice)
values (1, 1, 3, '2024-03-11', '70000.99'),
	   (2, 2, 7, '2024-03-27', '76000.99'),
	   (3, 3, 3, '2024-04-03', '70000.99'),
	   (4, 4, 2, '2024-04-23', '120000.99'),
	   (5, 5, 1, '2024-05-03', '100000.99'),
	   (6, 6, 3, '2024-05-08', '70000.99'),
	   (7, 7, 16, '2024-06-27', '54000.99'),
	   (8, 8, 13, '2024-07-02', '86000.99'),
	   (9, 9, 8, '2024-07-21', '86000.99'),
	   (10, 10, 12, '2024-08-03', '97000.99'),
	   (11, 10, 19, '2024-10-22', '65499.99') 

--insert value into inventory table
insert into Inventory 
values (1, 1, 10),
       (2, 2, 15),
	   (3, 3, 10),
	   (4, 4, 8),
	   (5, 5, 13),
	   (6, 6, 17),
	   (7, 7, 19),
	   (8, 8, 11),
	   (9, 9, 13),
	   (10, 10, 20),
	   (11, 11, 3),
	   (12, 12, 14),
	   (13, 13, 15),
	   (14, 14, 23),
	   (15, 15, 6),
	   (16, 16, 9),
	   (17, 17, 2),
	   (18, 18, 4),
	   (19, 19, 17),
	   (20, 20, 07)
	   
--check all table after inserting data
select * from Products
select * from Customers
select * from Sales
select * from Inventory

------------------------------------------------------------------------------
--we can add new coulmn in existing table
Alter table Products  
Add color varchar(100)

--we can drop column from table 
Alter table Products  
drop column color 

---we have 3 different method to remove data in sql. drop, delete and truncate.

/*
truncate is use to remove all rows from table. it keep the table structure so that can be use in future.
truncate table Products
truncate table Products where ProductID=3

drop is use to remove entire table. it deosnt have where clause
drop table Products

delete is use to remove specific row from table. 
delete from Products
delete from Products where ProductID=4
*/

-----------------------------------------------------------------------------
--we can add new data in Products table
insert into Products (ProductID, model, Brand, Price)
values (21, 'Iphone 12 Pro', 'Apple', 39000.99),
	   (22, 'Galaxy S21', 'Samsung', 29000.99)
 
--we have add 2 new prodcut in Product table so we also have to update our inventory now
insert into Inventory (InventoryID, ProductID, Quantity)
values (21, 21, 7),
       (22, 22, 13)

--update value in table
update Products set price = 667777 
where ProductID=4

--------------------------------------------------------------------------------
--we can use where clause to find certain thing from lots of data
select * from Products
where Brand like 'G%'

select * from Products
where Brand like '%g'

select * from Products
where Brand like '[a-z]%'

select * from Products
where Brand like 'G_o_l_%'

select * from Products
where Brand like 'G%'

----------------------------------------------------------------------------------
--'in' and 'not in' keyword is use to filter query result based on set of values.
select * from Customers
where Name in ('Abhishek Uniyal')

select * from Customers
where Name not in ('Rahul Rawat','Rohit Sharma')

---------------------------------------------------------------------------
--we will apply aggregate function to summarize data coulmn wise.
select MAX(price) as 'Most Expensive Phone'
from Products

select Min(price) as 'Least Expensive Phone'
from Products

select Avg(price) as 'Average Phone Price'
from Products

select SUM(price) as 'sum of price of all Phone'
from Products

select Count(price) as 'No of phone'
from Products

-----------------------------------------------------------------------------
--upper() and lower() function for case conversion.
select Upper(Name) as 'Upper'
from Customers

select Lower(Name) as 'Lower'
from Customers

---------------------------------------------------------------------------------------
-- range operator is use to search for numeric value(salary/price). It cannot take text.
select * from Products where Price between 50000 and 70000
select * from Products where Price not between 40000 and 100000

-------------------------------------------------------------
--relation operator (<, >, >=, <=, =)
select * from Products
where Price >40000.99

select * from Products
where Price =39000.99

select * from Products
where Price <70000.99

select * from Products
where Price >=39000.99

select * from Products 
where Price <=70000.99

------------------------------------------------------------------
--'AND, OR and NOT' operator
--AND. it need both condition to be true.
Select * from Products
Where Brand = 'Apple'
and Price > 80000

--OR. it need only one condition to be true.
select * from Products
where Brand = 'Apple'
or Price < 60000

--NOT. it will show opposite of given condition.
select * from Products
where not Brand = 'Samsung'

------------------------------------------------------------
--Case Statement. it work like if-else
select ProductID, price,
case 
when price > 100000 then 'Expensive Product'
when price > 70000 then 'Moderate Product'
else 'inexpensive product'
end as product_status
from Products

--Case Expression. same as case statement, but it use exact value instead of condiiton
select ProductID,
case price
when 120000.99 then 'Most Expensive Phone'
when 29000.99 then 'Cheapest Phone'
else 'Others'
end as Product_Status
from Products
-----------------------------------------------------------------------

--order by clause. it will show customers name in ascending and descending order.
select * from Customers
order by Name asc

select * from Customers
order by Name desc

--group by clause. it will count the number of product by each brand
select Brand, count(*) as numberofProduct
from Products
group by Brand

--having clause. it will find brand that have more than 5 Products.
select Brand, count(*) as NumberOfProducts
from Products
Group by Brand
Having count(*)>5

--order by with group by clause. it will count number of products by each brand and order the 
--result by no of prodcuts in desc order
select Brand, count(*) AS NumberOfProducts
from Products
group by Brand
order by NumberOfProducts desc
-----------------------------------------------------------------------

--Joins. we are using joins to combine data from 2 or more table based on common columns.

--we will use inner join to check which customer bought which product. we are using Product, Customer and Sales table here.
select Products.Model, Customers.Name
from Sales
inner join Products on Sales.ProductID = Products.ProductID
inner join Customers on Sales.CustomerID = Customers.CustomerID

--Left outer join. It will match all record from Customers table and match it with Sales table
select Customers.CustomerID, Customers.Name, Products.Model, Sales.PurchaseDate, Sales.PurchasePrice
from Customers
left outer join Sales on Customers.CustomerID = Sales.CustomerID
left outer join Products on Sales.ProductID = Products.ProductID
 
--Right outer join. It will match all data from Sales table and match it with Customers table.
select Sales.SalesID, Customers.CustomerID, Customers.Name, Products.Model, Sales.PurchaseDate, Sales.PurchasePrice
from Sales
right outer join Customers on Sales.CustomerID = Customers.CustomerID
left outer join Products on Sales.ProductID = Products.ProductID

--Full join. List all Product and their sale, including product that are unsold.
select Products.ProductID, Products.Model, Products.Brand, Products.Price, Sales.SalesID, Sales.CustomerID,
Sales.PurchaseDate, Sales.PurchasePrice
from Products
full outer join Sales on Products.ProductID = Sales.ProductID

-------------------------------------------------------------------------------
--check contrant is use to apply a condition. in this we are apply age must be >=18.
create table constrant
(
id int primary key not null,
name varchar(30),
age int check (age>=18)
)
insert into constrant values(1, 'Abhishek', '22')
select * from constrant

-- default constrant is use to add default value in case value is missing.
create table salary
(
id int primary key not null,
name varchar(30),
salary decimal (10,2) default 27889
)
insert into salary (id, name, salary) values (1, 'Pankaj', 20000)
insert into salary (id, name)values (2, 'Rahul' )
select * from salary

----------------------------------------------------------------------------------------------------
--Auto Generated Id. in this we will stop autoGenID and insert our own id and then resume it
create table AgID3
(
ID int primary key identity(1,1),
Name varchar(20),
Salary decimal(10,2) not null,
)
insert into AGID3
values ('abhishek', 20000),
	   ('pankaj',30000),
	   ('rahul',40000),
	   ('rohit',50000)

--here we will stop AutoGenID and put our own ID
set identity_insert AgID3 on

insert into AgID3(ID, Name, Salary)
values (13, 'kunal', 33333)

--we will start AutoGen id again.
set identity_insert AgID3 off

insert into AgID3
values ('pooja', 60000)

select * from AgID3

------------------------------------------------------------------------------------
--Currency format
select format (234, 'c')result

--without decimal
select format (234, 'c0')result

--if you want certain number of decimal values
select format (234, 'c3')result
select format (234, 'c7')result

--for different country currency format
select
format (234, 'c', 'INr-in')'India',
format (234, 'c', 'fr-FR')'France',
format (234, 'c', 'zh-cn')'China',
format (234, 'c', 'th-TH')'Thailand',
format (234, 'c', 'de-DE')'Germany'

-------------------------------------------------------------------------
--String Concatenation. it means to add strings together
select  'Store owner: Abhishek, Employees: Pankaj, Rahul, Rohit' as Store_Details

-------------------------------------------------------------------------------------------
--Index. its a data strcture use to speed up data retrival operation, use especially for select query

-- Create index on Email for quicker search by Email
create nonclustered index email_index on Customers(Email)

-- Create index on Brand for quicker search by Brand
create index brand_index on Products(Brand)

--------------------------------------------------------------------------------------------
--other  important query

select getdate()
as 'Date'

select getutcdate()
As 'UTC_Date'

--isdate function()
select isdate('2023-8-23')
as 'Is it date'

select Isdate('2023')

select Isdate('Hello dk')

--month function()
select month('2019/8/11')
as 'Month name'

--Sysdatetime function()
select sysdatetime()
as 'System Date & time'

--year function()
select year('2000/01/20')
as 'year only'

--cast function()
select cast(120.21 as int)

--convert float value to varchar data type
select cast(12.11 as varchar)

--convert value to a datetime data type 
select cast('2020-02-12' as datetime)

--coalesce() function
--Return the first non-null value in a list 
select Coalesce(null, null, 'Abhishek_Mobile_Store.com', null, 'www.google.com')
select coalesce(null, 3, 4, 'Abhishek_Mobile_Store.com')

--use convert function()
select convert(int, 12.11)
select convert(varchar, 12.10)
select convert(datetime, '2020-02-12')

--Return the name of current user
select current_user

--IIF() Function
select iif(500<1000, 'Yes', 'No')
select iif(1000>500, 'True', 'No')

select iif(500<1000, 5, 20)
select iif('Hello' = 'bye', 'Yes', 'No')

--isnull function()
select isnull(null, 'Abhishek')
select isnull('Hello', 'Abhishek')

--isnumeric function()
select isnumeric(300)
select isnumeric('500')
select isnumeric(10*2)
select isnumeric('2020-01-12')
select isnumeric('Hello')

--nullif()function
select nullif(25,25)

---------------------------------------------------------------------------------------------
--view. it is a virutal table

-- Create a view to show basic product information
create view Product_view 
as
Select ProductID, Model, Brand
from Products
select * from Product_view

--how to alter view
alter view Product_view 
as
Select ProductID, Model, Brand, Price
from Products
select * from Product_view

sp_helptext Product_view

--how to do schemabinding using view
create view Product2_view
with schemabinding
as
select ProductID, Model, Brand, Price
from dbo.Products
select * from Product2_view

--how to drop the view
--drop view Product_view

--View catalog. It is a system catalog that contains metadata about the views defined in a database.
select * from 
sys.objects

select * from
sys.views

select * from 
sys.views
where type= 'v'

select * from
sys.views
where modify_date= '2024-06-15 18:17:36.357'

select * from
sys.all_objects

----------------------------------------------------------------------------
--Batch. It is a collection of sql statement, send as a single unit.
Create table Batch
(
ID int primary key,
Name varchar(50)
)
go
Insert into Batch (ID, Name)
values (1, 'Abhishek')
select * from Batch

--1 anonymous batches 
declare @id int
declare @name varchar(50)
select @id=5, @name='pankaj'
print @id
print @name

--conditional construct if-else.
declare @id int
set @id=4
if @id =4
begin
print('your selected id is 4')
end

else
begin
print('your id is not 4')
end

--store procedure. its executed by user or application
create procedure Select_Batch2
as 
select * from Batch
go 
exec Select_Batch2

--single procedure with single parameter
create procedure single_para
@Name char(30)
as
select * from Batch
where Name=@Name
go
exec single_para @Name='Abhishek'

--single procedure with multiple parameter
create procedure multi_para
@ID int, 
@Name char(30)
as 
select * from Batch
where ID=@ID and Name=@Name
go
exec multi_para @ID=1, @Name='Abhishek'

--drop sp
drop procedure multi_para

--Trigger. it automatically run when certain events occure like insert, update or delete
--create a trigger to insert the values
create trigger Tri_Batch_Insert
on Batch
for insert
as 
	print('insert the values in Batch')
	insert into Batch values (2,'Pankaj')

--create a trigger to update the values
create trigger Tri_Batch_Update
on Batch
for update
as
	print('update the values in Batch')
	update Batch set Name='Ravi'
	where ID=1
	
--create trigger to delete the values
create trigger Tri_Batch_Delete
on Batch
for delete
as
	print('Delte the values in Batch')
	delete from Batch
	where ID=2

----------------------------------------------------------------------------------------
--schema. it s a one kind of container which store the database object in database.
--by default schema name is in sql .dbo stand for database object.
--create Mobile_store another branch schema, add new table and add value in it.
create Schema mobile

create table Mobile.pune
(
id int primary key not null,
Name varchar(30)
)
insert into Mobile.pune 
values (1, 'Shop1'),
	   (2, 'Shop2'),
	   (3, 'Shop3')

select * from Mobile.pune
---------------------------------------------------------------------
--here we can check all the 4 table of Project 
select * from Products
select * from Customers
select * from Sales
select * from Inventory

--Project end here

