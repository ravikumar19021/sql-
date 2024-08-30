#-----------------ARTHIMETIC OPERATIONS--------------------------------

drop database operations;
create database operations;

use operations;

create table student(
a int,
b int
);

insert into student values 
(10,20),
(20,30),
(30,40),
(40,50),
(50,60),
(60,70),
(70,80),
(80,90),
(90,100),
(100,110),
(110,120),
(120,130),
(130,140),
(140,150),
(150,160),
(160,170),
(170,180),
(180,190),
(190,200);

#view the table data:
select * from student;

#performing the arthimetic operations
select 
a,
b, 
a + b as sum_result,
a - b as differnece_result,
a * b as product_result,
a / b as division_result,
a  % b as modulus_result,
power(a, b) AS exponential,   
floor(a / b) AS floor_division

from student;

#--------------------COMPARISION OPERATOR--------------------

#comparision operators:
#drop database logical;
create database logical;

use logical;

create table products_info(
product_id int,
product_name varchar(20),
product_price int,
product_quantity varchar(20)
);

insert into products_info values
(1,'rice',30,40),
(2,'Dal',96,47),
(3,'fruit',70,30),
(4, 'wheat', 50, 60),
(5, 'sugar', 25, 55),
(6, 'salt', 20, 35),
(7, 'oil', 80, 45),
(8, 'bread', 15, 25),
(9, 'milk', 40, 50),
(10, 'cheese', 60, 20),
(11, 'butter', 90, 40),
(12, 'eggs', 70, 55),
(13, 'chicken', 120, 60),
(14, 'fish', 110, 65),
(15, 'meat', 130, 70),
(16, 'vegetables', 45, 30),
(17, 'fruits', 75, 25),
(18, 'pasta', 55, 40),
(19, 'noodles', 35, 50),
(20, 'spices', 65, 20);

select * from products_info;

#equal to (=):
select * from products_info where product_id=11;

#not equal to (!= or <>)
select * from products_info where product_price !=250;

#less than(<):
select * from products_info where product_price <300;

#greter than(>):
select * from products_info where product_quantity >20;

# less than or equal to(<=)
select * from products_info where product_price <=250;

#greater than or equal to (>=):
select * from products_info where product_quantity >=30;

#=================LOGICAL OPERATORS================================

#logical operators:

create database logical1;

use logical1;

create table employees(
employee_id int primary key,
fname varchar(20),
lname varchar(20),
salary int,
department varchar(20)
);

INSERT INTO employees VALUES (1, 'John', 'Doe', 50000, 'Sales');
INSERT INTO employees VALUES (2, 'Jane', 'Smith', 60000, 'Marketing');
INSERT INTO employees VALUES (3, 'Bob', 'Johnson', 55000, 'Sales');
INSERT INTO employees VALUES (4, 'Alice', 'Williams', 70000, 'Finance');
INSERT INTO employees VALUES (5, 'Charlie', 'Brown', 48000, 'Marketing');
INSERT INTO employees VALUES (6, 'David', 'Clark', 65000, 'Sales');
INSERT INTO employees VALUES (7, 'Emma', 'Davis', 72000, 'Finance');
INSERT INTO employees VALUES (8, 'Frank', 'Miller', 52000, 'Sales');
INSERT INTO employees VALUES (9, 'Grace', 'Taylor', 58000, 'Marketing');
INSERT INTO employees VALUES (10, 'Hannah', 'Wilson', 63000, 'Sales');
INSERT INTO employees VALUES (11, 'Isaac', 'Moore', 71000, 'Finance');
INSERT INTO employees VALUES (12, 'Judy', 'Jackson', 56000, 'Marketing');
INSERT INTO employees VALUES (13, 'Kevin', 'White', 54000, 'Sales');
INSERT INTO employees VALUES (14, 'Linda', 'Harris', 69000, 'Finance');
INSERT INTO employees VALUES (15, 'Michael', 'Martin', 53000, 'Marketing');
INSERT INTO employees VALUES (16, 'Nancy', 'Thompson', 62000, 'Sales');
INSERT INTO employees VALUES (17, 'Oliver', 'Garcia', 64000, 'Finance');
INSERT INTO employees VALUES (18, 'Patricia', 'Martinez', 51000, 'Sales');
INSERT INTO employees VALUES (19, 'Quincy', 'Robinson', 59000, 'Marketing');
INSERT INTO employees VALUES (20, 'Rachel', 'Walker', 67000, 'Finance');

select * from employees;

#AND operator:(both true)
select * from employees 
where department = 'sales' AND salary > 30000;

#OR operator:
select * from employees
where department = 'sales' OR salary > 30000;

#NOT operator:
select * from employees
where NOT department = 'sales';

#========================CONCEATENTAYTION OPERATOR====================

#.concatenation operator:

create database concat;

use concat;


create table employees(
employee_id int primary key,
fname varchar(20),
lname varchar(20),
salary int,
department varchar(20)
);

INSERT INTO employees VALUES (1, 'John', 'Doe', 50000, 'Sales');
INSERT INTO employees VALUES (2, 'Jane', 'Smith', 60000, 'Marketing');
INSERT INTO employees VALUES (3, 'Bob', 'Johnson', 55000, 'Sales');
INSERT INTO employees VALUES (4, 'Alice', 'Williams', 70000, 'Finance');
INSERT INTO employees VALUES (5, 'Charlie', 'Brown', 48000, 'Marketing');
INSERT INTO employees VALUES (6, 'David', 'Clark', 65000, 'Sales');
INSERT INTO employees VALUES (7, 'Emma', 'Davis', 72000, 'Finance');
INSERT INTO employees VALUES (8, 'Frank', 'Miller', 52000, 'Sales');
INSERT INTO employees VALUES (9, 'Grace', 'Taylor', 58000, 'Marketing');
INSERT INTO employees VALUES (10, 'Hannah', 'Wilson', 63000, 'Sales');
INSERT INTO employees VALUES (11, 'Isaac', 'Moore', 71000, 'Finance');
INSERT INTO employees VALUES (12, 'Judy', 'Jackson', 56000, 'Marketing');
INSERT INTO employees VALUES (13, 'Kevin', 'White', 54000, 'Sales');
INSERT INTO employees VALUES (14, 'Linda', 'Harris', 69000, 'Finance');
INSERT INTO employees VALUES (15, 'Michael', 'Martin', 53000, 'Marketing');
INSERT INTO employees VALUES (16, 'Nancy', 'Thompson', 62000, 'Sales');
INSERT INTO employees VALUES (17, 'Oliver', 'Garcia', 64000, 'Finance');
INSERT INTO employees VALUES (18, 'Patricia', 'Martinez', 51000, 'Sales');
INSERT INTO employees VALUES (19, 'Quincy', 'Robinson', 59000, 'Marketing');
INSERT INTO employees VALUES (20, 'Rachel', 'Walker', 67000, 'Finance');




select * from  employees1;

select employee_id, concat(fname, ' ', lname) AS full_name 
from employees;

#=================LIKE OPERATOR=========================

#drop database like1;
create database like1; 

use like1;

create table amazon_products(
product_id int primary key,
product_name varchar(20)
);

INSERT INTO amazon_products  VALUES 
(1, 'Mobile Phone'),
(2, 'Laptop'),
(3, 'Tablet'),
(4, 'Smartwatch'),
(5, 'Desktop Computer'),
 (6, 'Gaming Console'),
 (7, 'Smart TV'),
 (8, 'Bluetooth Speaker'),
(9, 'Wireless Earbuds'),
 (10, 'Smart Home Assistant'),
 (11, 'Digital Camera'),
 (12, 'Printer'),
(13, 'Monitor'),
 (14, 'External Hard Drive'),
 (15, 'Router'),
(16, 'Keyboard'),
 (17, 'Mouse'),
 (18, 'Smart Light Bulb'),
 (19, 'Fitness Tracker'),
 (20, 'VR Headset');

select * from amazon_products
where product_name like 'mobile%';

select * from amazon_products
where product_name like '%phone%';

#=========================IN OPERATOR================================


#drop database in1;
create database in1;

use in1;

create table employees(
employee_id int primary key,
fname varchar(20),
lname varchar(20),
salary int,
department varchar(20)
);

select * from employees;

INSERT INTO employees VALUES (1, 'John', 'Doe', 50000, 'Sales');
INSERT INTO employees VALUES (2, 'Jane', 'Smith', 60000, 'Marketing');
INSERT INTO employees VALUES (3, 'Bob', 'Johnson', 55000, 'Sales');
INSERT INTO employees VALUES (4, 'Alice', 'Williams', 70000, 'Finance');
INSERT INTO employees VALUES (5, 'Charlie', 'Brown', 48000, 'Marketing');
INSERT INTO employees VALUES (6, 'David', 'Clark', 65000, 'Sales');
INSERT INTO employees VALUES (7, 'Emma', 'Davis', 72000, 'Finance');
INSERT INTO employees VALUES (8, 'Frank', 'Miller', 52000, 'Sales');
INSERT INTO employees VALUES (9, 'Grace', 'Taylor', 58000, 'Marketing');
INSERT INTO employees VALUES (10, 'Hannah', 'Wilson', 63000, 'Sales');
INSERT INTO employees VALUES (11, 'Isaac', 'Moore', 71000, 'Finance');
INSERT INTO employees VALUES (12, 'Judy', 'Jackson', 56000, 'Marketing');
INSERT INTO employees VALUES (13, 'Kevin', 'White', 54000, 'Sales');
INSERT INTO employees VALUES (14, 'Linda', 'Harris', 69000, 'Finance');
INSERT INTO employees VALUES (15, 'Michael', 'Martin', 53000, 'Marketing');
INSERT INTO employees VALUES (16, 'Nancy', 'Thompson', 62000, 'Sales');
INSERT INTO employees VALUES (17, 'Oliver', 'Garcia', 64000, 'Finance');
INSERT INTO employees VALUES (18, 'Patricia', 'Martinez', 51000, 'Sales');
INSERT INTO employees VALUES (19, 'Quincy', 'Robinson', 59000, 'Marketing');
INSERT INTO employees VALUES (20, 'Rachel', 'Walker', 67000, 'Finance');

select * from employees 
where department IN ('sales', 'marketing');

select * from employees 
where department not IN ('sales', 'marketing');



#=============================IS NULL/NOT NULL  OPERATORS============================

create database null1;

use null1;

create table students(
student_id int primary key,
fname varchar(20),
lname varchar(20)
);

insert into students values
(1, 'ravi', 'kumar'),
(2, 'bob', null),
(3, null, 'dylan'),
(4, 'mahesh', null),
(5, null,' babu'),
(6,'ram', null),
(7, null, 'charan'),
(8, 'jr', null),
(9, null, 'ntr'),
(10, 'ravi', null),
(11, null, 'teja'),
(12, 'arjun', null),
(13, null, 'singh'),
(14, 'avi', null),
(15, null, 'gor'),
(16, 'eminem', null),
(17, null, 'slim'),
(18, 'taylor', null),
(19, null, 'swift'),
(20, 'ravi' , null);

SELECT * FROM students WHERE lname IS NULL;

SELECT * FROM students WHERE lname IS NOT NULL;


#=========================BETWEEN OPERATOR===================

create database between1;

use between1;

create table employees(
employee_id int primary key,
fname varchar(20),
lname varchar(20),
salary int,
department varchar(20)
);

INSERT INTO employees VALUES (1, 'John', 'Doe', 50000, 'Sales');
INSERT INTO employees VALUES (2, 'Jane', 'Smith', 60000, 'Marketing');
INSERT INTO employees VALUES (3, 'Bob', 'Johnson', 55000, 'Sales');
INSERT INTO employees VALUES (4, 'Alice', 'Williams', 70000, 'Finance');
INSERT INTO employees VALUES (5, 'Charlie', 'Brown', 48000, 'Marketing');
INSERT INTO employees VALUES (6, 'David', 'Clark', 65000, 'Sales');
INSERT INTO employees VALUES (7, 'Emma', 'Davis', 72000, 'Finance');
INSERT INTO employees VALUES (8, 'Frank', 'Miller', 52000, 'Sales');
INSERT INTO employees VALUES (9, 'Grace', 'Taylor', 58000, 'Marketing');
INSERT INTO employees VALUES (10, 'Hannah', 'Wilson', 63000, 'Sales');
INSERT INTO employees VALUES (11, 'Isaac', 'Moore', 71000, 'Finance');
INSERT INTO employees VALUES (12, 'Judy', 'Jackson', 56000, 'Marketing');
INSERT INTO employees VALUES (13, 'Kevin', 'White', 54000, 'Sales');
INSERT INTO employees VALUES (14, 'Linda', 'Harris', 69000, 'Finance');
INSERT INTO employees VALUES (15, 'Michael', 'Martin', 53000, 'Marketing');
INSERT INTO employees VALUES (16, 'Nancy', 'Thompson', 62000, 'Sales');
INSERT INTO employees VALUES (17, 'Oliver', 'Garcia', 64000, 'Finance');
INSERT INTO employees VALUES (18, 'Patricia', 'Martinez', 51000, 'Sales');
INSERT INTO employees VALUES (19, 'Quincy', 'Robinson', 59000, 'Marketing');
INSERT INTO employees VALUES (20, 'Rachel', 'Walker', 67000, 'Finance');


SELECT * FROM employees WHERE salary BETWEEN 50000 and 70000;

SELECT * FROM employees WHERE salary not BETWEEN 50000 and 70000;
