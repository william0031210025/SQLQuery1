

use VLAPractica

go 

--PREGUNTA N° 1
--Seleccione todos los campos de la tabla cliente, ordenado por nombre del contacto de la compañía, alfabéticamente:


select a.CompanyName,a.ContactName
from suppliers as a 
order by a.ContactName asc


 go 
--PREGUNTA N° 2:
--Seleccione todos los campos de la tabla órdenes, ordenados por fecha de la orden, descendentemente.
select *
from Orders as a
order by a.OrderDate desc

go 


--PREGUNTA N° 3
--Seleccione todos los campos de la tabla detalle de la orden, ordenada por cantidad pedida. Ascendentemente.

select *
from [order Details] as a 
order by a.Quantity asc

go 

--PREGUNTA N° 4
--Obtener todos los productos, cuyo nombre comienzan con la letra P y tienen un precio unitario comprendido entre 10 y 120:


select a.ProductName, a.UnitPrice
from products as a
where ProductName like   ('P%')
and a.UnitPrice between 10 and 120
order by a.UnitPrice asc
go


--PREGUNTA N° 5
--Obtener todos os clientes de los países de: USA, Francia y UK:


select  a.CompanyName, a.Country
from suppliers as a 
where a.Country in ('uk' , 'usa' , 'france' ) 
order by a.Country desc



go 

--PREGUNTA N° 6
--Obtener todos los productos descontinuados y sin stock, que pertenecen a la categoria 1, 3, 4 y 7.

SELECT *
FROM Products AS B
WHERE B.Discontinued = 0 AND CategoryID in(1,3,4,7)

go

--PREGUNTA N° 7
--Obtener todas las órdenes hechas por el empleado con código: 2, 5 y 7 en el año 1996

select a.EmployeeID,a.OrderDate
from orders as a 
where year (a.OrderDate) = 1996 and a.EmployeeID in (2,5,7)
order by a.EmployeeID asc

go

--PREGUNTA N° 8
--Seleccionar todos los clientes que cuenten con Fax
SELECT *
FROM  CUSTOMERS AS C
WHERE C.FAX IS NOT NULL
--Pregunta 9
--Seleccionar todos los clientes que no cuenten con FAX, del País de USA

select a.CompanyName, a.Country,Fax from Suppliers as a 
where a.Country in ('USA') and Fax is null

go 



--Pregunta 10
--Seleccionar todos los empleados que cuentan con un jefe.

select a.FirstName, a.LastName
from Employees as a 


go 

--Pregunta 11
--Seleccionar todos los campos del cliente, cuya compania empiecen con letra
--A hata la D y pertenezcan al pais de USA, ordenarlos por la direccion.

select a.CompanyName, a.Country
from Suppliers as a
where a.CompanyName Between 'A' and 'D' and a.Country in ('USA')
order by a.Country asc

go 


--PREGUNTA N° 12
--Seleccionar todos los campos del cliente, cuya compania empiecen con las letras de la B a la G, 
--y pertenezcan al pais de UK, ordenarlos por nombre de la compania

select a.CompanyName,a.Country
from Suppliers as a 
where a.CompanyName Between 'B' and 'G' and a.Country in ('UK')
order by a.CompanyName asc


