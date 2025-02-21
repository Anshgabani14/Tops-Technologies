use classicmodels;

select * from employees;

select * from offices;

select * from orderdetails;


select * from employees
where officeCode = 1 and jobTitle = "Sales Rep";

select quantityOrdered * priceEach as TotalOrderValue
from orderdetails;

SELECT productCode, (quantityOrdered * priceEach) >1000 AS TotalOrderValue 
FROM orderdetails;

SELECT productCode , quantityOrdered * priceEach AS TotalOrderValue 
FROM orderdetails
WHERE quantityOrdered * priceEach > 1000;





