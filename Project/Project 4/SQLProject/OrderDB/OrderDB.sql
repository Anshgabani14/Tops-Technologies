CREATE database orderDB;
use orderDB;
use classicmodels;

create table Customers(
CustomerID int primary key,
CustomerName varchar(255),
ContactNumber bigint,
Address varchar(255),
City varchar(255),
PostalCode varchar(50),
Cuntry varchar(255),
Price float,
SalesQTY int,
DateOfPurchase datetime,
Product enum("CPU","Keyboard","Mouse")
);

------------------------ Drop table  ------------------------


drop table employee;

------------------------ careate table ------------------------


create table Customers(
CustomerID int primary key,
CustomerName varchar(255) not null,
ContactNumber bigint not null,
Address varchar(255) not null,
City varchar(255) not null,
PostalCode varchar(50) not null,
Cuntry varchar(255) not null ,
Price float not null,
SalesQTY int not null,
DateOfPurchase datetime not null,
Product enum("CPU","Keyboard","Mouse") not null
);


CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    CustomerID int,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    ContactNumber BIGINT NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Address VARCHAR(255),
    City VARCHAR(255),
    PostalCode VARCHAR(50),
    Country VARCHAR(255),
    HireDate DATETIME NOT NULL,
    Department VARCHAR(255) NOT NULL,
    Salary FLOAT NOT NULL,
    JobTitle VARCHAR(255) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES customers (CustomerID)
);


------------------------ Insert data in table ------------------------


INSERT INTO Customers (CustomerID, CustomerName, ContactNumber, Address, City, PostalCode, Cuntry, Price, SalesQTY, DateOfPurchase, Product)
VALUES
(1, 'John Doe', 9876543210, '123 Maple Street', 'New York', '10001', 'USA', 499.99, 2, '2023-12-25 14:30:00', 'CPU'),
(2, 'Jane Smith', 9123456789, '456 Oak Avenue', 'Los Angeles', '90001', 'USA', 29.99, 5, '2024-01-01 10:00:00', 'Mouse'),
(3, 'Alex Brown', 9012345678, '789 Pine Road', 'Chicago', '60601', 'USA', 79.99, 1, '2024-01-05 16:15:00', 'Keyboard'),
(4, 'Emily White', 9988776655, '321 Elm Street', 'Houston', '77001', 'USA', 499.99, 3, '2024-01-06 11:45:00', 'CPU'),
(5, 'Michael Green', 8877665544, '654 Cedar Drive', 'Phoenix', '85001', 'USA', 29.99, 4, '2024-01-10 09:20:00', 'Mouse'),
(6, 'Liam Johnson', 9876541230, '987 Birch Street', 'Toronto', 'M4B1B3', 'Canada', 299.99, 1, '2024-01-11 14:00:00', 'Keyboard'),
(7, 'Sophia Williams', 9765432109, '432 Spruce Avenue', 'Vancouver', 'V6B2W1', 'Canada', 149.99, 3, '2024-01-15 10:30:00', 'Mouse'),
(8, 'Oliver Jones', 9654321987, '159 Pine Crescent', 'London', 'EC1A1BB', 'UK', 549.99, 2, '2024-01-18 16:45:00', 'CPU'),
(9, 'Amelia Taylor', 9543219876, '753 Willow Lane', 'Birmingham', 'B15 1AW', 'UK', 79.99, 4, '2024-01-20 13:15:00', 'Keyboard'),
(10, 'Lucas Brown', 9432198765, '246 Maple Avenue', 'Sydney', '2000', 'Australia', 399.99, 1, '2024-01-25 11:10:00', 'Mouse'),
(11, 'Mia Davis', 9321987654, '135 Oak Boulevard', 'Melbourne', '3000', 'Australia', 499.99, 2, '2024-01-28 15:30:00', 'CPU'),
(12, 'Ethan Wilson', 9219876543, '468 Cedar Street', 'Berlin', '10115', 'Germany', 59.99, 5, '2024-02-01 09:50:00', 'Mouse'),
(13, 'Isabella Martinez', 9109876542, '789 Elm Road', 'Munich', '80331', 'Germany', 299.99, 3, '2024-02-03 12:25:00', 'Keyboard'),
(14, 'James Anderson', 9098765432, '321 Fir Path', 'Paris', '75001', 'France', 649.99, 2, '2024-02-07 14:10:00', 'CPU'),
(15, 'Emily Clark', 8987654321, '654 Walnut Avenue', 'Lyon', '69001', 'France', 89.99, 4, '2024-02-10 10:20:00', 'Mouse');

select * from customers;
INSERT INTO Employee (EmployeeID,CustomerID, FirstName, LastName, ContactNumber, Email, Address, City, PostalCode, Country, HireDate, Department, Salary, JobTitle) 
VALUES
(1, 1,'Raj', 'Sharma', 9876543210, 'raj.sharma@example.com', '123 MG Road', 'Mumbai', '400001', 'India', '2020-01-15', 'IT', 85000.00, 'Software Engineer'),
(2, 2,'Priya', 'Verma', 9876543211, 'priya.verma@example.com', '456 Park Street', 'Delhi', '110001', 'India', '2019-11-20', 'HR', 75000.00, 'HR Manager'),
(3, 3,'Amit', 'Kumar', 9876543212, 'amit.kumar@example.com', '789 Mall Road', 'Bangalore', '560001', 'India', '2018-07-10', 'Finance', 95000.00, 'Financial Analyst'),
(4, 4,'Anjali', 'Singh', 9876543213, 'anjali.singh@example.com', '321 Nehru Place', 'Hyderabad', '500001', 'India', '2021-03-22', 'Marketing', 65000.00, 'Marketing Specialist'),
(5, 5,'Ravi', 'Reddy', 9876543214, 'ravi.reddy@example.com', '654 Jubilee Hills', 'Chennai', '600001', 'India', '2022-09-18', 'IT', 87000.00, 'System Administrator'),
(6, 6,'Neha', 'Joshi', 9876543215, 'neha.joshi@example.com', '987 Gachibowli', 'Pune', '411001', 'India', '2023-01-05', 'Operations', 78000.00, 'Operations Manager'),
(7, 7,'Manoj', 'Patel', 9876543216, 'manoj.patel@example.com', '159 Satellite Road', 'Ahmedabad', '380001', 'India', '2017-06-30', 'Legal', 88000.00, 'Legal Advisor'),
(8, 8,'Sneha', 'Nair', 9876543217, 'sneha.nair@example.com', '753 Brigade Road', 'Kochi', '682001', 'India', '2020-04-25', 'IT', 92000.00, 'Data Scientist'),
(9, 9,'Karan', 'Mehta', 9876543218, 'karan.mehta@example.com', '852 MG Road', 'Jaipur', '302001', 'India', '2019-12-15', 'Finance', 67000.00, 'Accountant'),
(10, 10,'Pooja', 'Kapoor', 9876543219, 'pooja.kapoor@example.com', '951 Hauz Khas', 'Lucknow', '226001', 'India', '2022-02-10', 'Marketing', 62000.00, 'SEO Specialist'),
(11, 11,'Arjun', 'Bhatia', 9876543220, 'arjun.bhatia@example.com', '357 Hitech City', 'Gurgaon', '122001', 'India', '2021-08-30', 'IT', 98000.00, 'DevOps Engineer'),
(12, 12,'Ritika', 'Chopra', 9876543221, 'ritika.chopra@example.com', '753 Koramangala', 'Indore', '452001', 'India', '2020-11-11', 'HR', 72000.00, 'Recruiter'),
(13, 13,'Sanjay', 'Yadav', 9876543222, 'sanjay.yadav@example.com', '159 Banjara Hills', 'Nagpur', '440001', 'India', '2018-05-20', 'Operations', 74000.00, 'Supply Chain Analyst'),
(14, 14,'Ishita', 'Malhotra', 9876543223, 'ishita.malhotra@example.com', '654 Vasant Vihar', 'Bhopal', '462001', 'India', '2023-07-07', 'Legal', 87000.00, 'Corporate Lawyer'),
(15, 15,'Abhishek', 'Gupta', 9876543224, 'abhishek.gupta@example.com', '852 Civil Lines', 'Patna', '800001', 'India', '2017-09-15', 'Finance', 89000.00, 'Investment Analyst');


------------------------ View Data ------------------------


select*from customers;

------------------------ Search------------------------


select CustomerName
from customers
where Product="CPU";

------------------------ UPDATE------------------------


update customers
set City = "Surat"
where CustomerID = 4;

------------------------ DELETE ------------------------

delete from customers
where customerID = 15;

------------------------ aerithmetic ------------------------

select Price * 10 as priseMulti
from Customers;

select SalesQTY * Price as Totalsales
from Customers;

select CustomerName , SalesQTY * Price as Totalsales
from Customers;

------------------------ Cnditional AND,OR,NOT ------------------------

select*from Customers
where Product ="CPU" and Price = 99.99;

------------------------ Set operstors, union, union all , intersect, except   ------------------------

use orderdb;


select CustomerName from customers
union select FirstName from employee;

select CustomerName from customers
union all select FirstName from employee;

select CustomerName from customers
INTERSECT select FirstName from employee;

select CustomerName from customers
except select FirstName from employee;


------------------------ IN, not in, between, LIKE, IS NULL  ------------------------

select * from customers
where City in ("New York", "Los Angeles","Chicago");

select * from customers
where City not in ("New York", "Los Angeles","Chicago");

select * from employee
where Salary between 80000 and 95000; 

select * from employee
where City like "B%"; 

select * from employee
where City is null; 


------------------------ Group_by (Count, avarage, min , max, having)   ------------------------

select Department, count("Department") as "Count "
from employee group by Department;

SELECT Department, AVG(Salary) AS average_Salary
FROM employee
GROUP BY Department;

SELECT Product, AVG(Price) AS average_Price
FROM customers
GROUP BY Product;

SELECT Product, sum(SalesQTY) AS Sum_of_Qty
FROM customers
GROUP BY Product
having Sum_of_Qty > 10;

------------------------ Distinct, limit, offset, DESC(decending) , ASC (assending)  ------------------------

select distinct City 
from customers
limit 5
offset 5;


select FirstName , avg(Salary) as avg_sal
from employee
group by FirstName
order by avg_sal
limit 5;

select Department , avg(Salary) as avg_sal
from employee
group by Department 
order by avg_sal
limit 5;

------------------------ Joins (inner, right , left, full)  ------------------------

select customers.CustomerName, employee.FirstName
from employee inner join customers on employee.EmployeeID = customers.CustomerID;

select * from customers;
select * from employee;
use classicmodels;
select customers.city,employee.Department
from employee left join customers on employee.EmployeeID = customers.CustomerID;

------------------------ sub queries  ------------------------

select * from employee 
where CustomerID in ( select CustomerID from customers where CustomerName
in ("John Doe","Alex Brown"));

select * from customers where CustomerName
in ("John Doe","Alex Brown");

select * from productlines 
where productline in (select productline from products where productName
 in ("1969 Harley Davidson Ultimate Chopper","1952 Alpine Renault 1300"));
 

------------------------ CTE  ------------------------

with salary as (
select EmployeeID,FirstName,Salary
from employee 
where Salary > 5000
)
select * from salary;

with avg_sal as (
select avg(Salary) as avg_Sal from employee
)
select EmployeeID,FirstName,Salary
from employee 
where Salary > ( select Avg_Sal from avg_sal);

with E_name as (
select firstName as E_Name from employees
)
select firstName,city from employees
where officeCode in  ( select officeCode from offices 
where city in ("NYC","Paris"));

with ofc as (
select officeCode, City from offices)
select firstName, officeCode
from employees
where officeCode in (
select officeCode from ofc where City in ("NYC","Paris"));

with emp as (
select officeCode ,city from offices where City in ("NYC","Paris")
)
select firstName from employees
where officeCode in (select officeCode from emp);


WITH E_name AS (
    SELECT firstName AS E_Name FROM employees
)
SELECT e.firstName, o.city
FROM employees e
JOIN offices o 
ON e.officeCode = o.officeCode
WHERE o.city IN ('NYC', 'Paris');


------------------------ Date Funtion  ------------------------

SELECT DATE_ADD(orderDate, INTERVAL 12 DAY) AS shippingDate
FROM orders;

select datediff(orderDate,shippedDate) 
from orders;

SELECT EXTRACT(YEAR FROM orderDate) AS year
FROM orders;

SELECT DATE_SUB(orderDate, INTERVAL 12 DAY) AS previousDate
FROM orders;

------------------------ store prosidure  ------------------------

select * from employees;

call Customers_info(103);

call EMP_INFO(4);

show procedure status;

------------------------ function ------------------------

select amount, Discount(amount) as discounted_amount 
from payments;

------------------------ Trigger ------------------------

create database sample;

use sample;


CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    marks decimal (5,2)
);

INSERT INTO students (name, marks) VALUES 
('Amit Kumar', 85.50),
('Priya Sharma', 90.25),
('Rohan Verma', 78.75),
('Neha Gupta', 88.40);

create table update_marks(
id INT PRIMARY KEY AUTO_INCREMENT,
Sid int ,
old_marks decimal (5,2),
new_marks decimal (5,2),
foreign key (Sid) references students(id)
);

CREATE TABLE archive_stud (
    aid INT PRIMARY KEY AUTO_INCREMENT,
    id INT,
    name VARCHAR(100) NOT NULL
);


delimiter $$
create trigger after_marks_update
after update on students
for each row 
begin 
	insert into update_marks(Sid,old_marks,new_marks)
    values(old.id, old.marks, new.marks);
end $$
delimiter ;

update students
set marks = 99.25
where id = 2;


select * from update_marks;

DELIMITER $$

CREATE TRIGGER after_drop_student
BEFORE DELETE ON students
FOR EACH ROW 
BEGIN 
    INSERT INTO archive_stud (id, name)
    VALUES (OLD.id, OLD.name);
END $$

DELIMITER ;

    
drop trigger after_drop_student;

DELETE FROM students WHERE id = 2;

select * from archive_stud; 



------------------------ insted of Trigger ------------------------

-- First create view

CREATE VIEW my_view AS 
SELECT id, name FROM my_table;

-- create trigger 


DELIMITER $$

CREATE TRIGGER my_trigger
INSTEAD OF INSERT ON my_view
FOR EACH ROW
BEGIN
    INSERT INTO my_table (id, name) VALUES (NEW.id, NEW.name);
END$$

DELIMITER ; 


