sp_tables;

select * from Shippers;
select * from Employees;

select CategoryName,description from Categories


select * from Employees;
select firstname,lastname,hiredate from Employees
where title='Sales Representative';

--4
select firstname,lastname,hiredate from Employees
where title='Sales Representative' and country ='usa';

/*select * from [Order Details];
select * from [Order Details]
where EmployeeID=5*/

--5
select * from Orders;
select * from Orders
where EmployeeID=5


--6
select supplierid,contactname,contacttitle from Suppliers
where ContactTitle !='marketing manager'

--7
select ProductID,ProductName from Products
where ProductName like '%queso%'

--8
select * from Orders
select orderid,customerid,shipcountry from Orders
where ShipCountry in ('france','belgium')

select orderid,customerid,shipcountry from Orders
where ShipCountry ='france' or ShipCountry ='belgium'


--9
select orderid,customerid,shipcountry from Orders
where ShipCountry in ('Brazil', 'Mexico', 'Argentina', 'Venezuela')

--10
select * from Employees;

select FirstName, LastName, Title, BirthDate from Employees
order by BirthDate desc;

--11
select FirstName, LastName, Title,CAST(BirthDate as date) as birthdate  from Employees
order by BirthDate desc ;


select FirstName, LastName, Title,CONVERT(date,BirthDate) as birthdate from Employees
order by BirthDate desc ;

--12
select FirstName, LastName,(FirstName+' ' +LastName) as Fullname from Employees


--13

select OrderID, ProductID, UnitPrice, Quantity, (UnitPrice*Quantity ) as TotalPrice from [Order Details]
order by OrderID , ProductID 

--14
select count(CustomerID) from Customers;

--15
select top 1 OrderDate as firstorder from Orders
order by OrderDate


select min(OrderDate) from Orders
select * from Orders

select  firstorder=min(OrderDate) from Orders


--16
select * from Customers

select distinct(country) from Customers


select country from Customers
group by Country

--17
select contacttitle,count(contacttitle) as TotalContactTitle from Customers
group by contacttitle
order by TotalContactTitle desc

--18
select p.productid,p.productname,s.companyname
from Suppliers s
right join Products p on s.SupplierID=p.ProductID
order by ProductID


--19
select * from Orders
select * from Shippers
select orderid,cast(orderdate,date) as odate,companyname 


select o.OrderID,cast(o.OrderDate as date) as orderdate ,s.CompanyName as shippers from Orders o
right join Shippers s on o.ShipVia=s.ShipperID
where orderid<10300
order by OrderID

