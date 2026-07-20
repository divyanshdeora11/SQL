create database joinsdb;
use joinsdb;
CREATE TABLE Departments (
DepartmentID INT PRIMARY KEY,
DepartmentName VARCHAR(50)
);
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Finance'),
(104, 'Marketing');
CREATE TABLE Employees (
EmployeeID INT PRIMARY KEY,
EmployeeName VARCHAR(50),
DepartmentID INT
);
INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID)
VALUES
(1, 'Alice', 101),
(2, 'Bob', 102),
(3, 'Charlie', 105), -- No matching department
(4, 'David', NULL), -- No department assigned
(5, 'Eva', 101);

-- where = on

select * from departments;
select * from employees;

select e.employeeid, e.employeename, e.departmentid, 
d.departmentid, d.departmentname 
from employees as e join departments as d
where e.departmentid=d.departmentid;

-- new 


-- left new syntax -> it will give you to the matching records, 
select e.employeeid, e.employeename, e.departmentid,
d.departmentid, d.departmentname
from employees as e left join departments as d
on e.departmentid=d.departmentid;

select e.employeeid, e.employeename, e.departmentid,
d.departmentid, d.departmentname
from departments as d left join employees as e
on e.departmentid=d.departmentid;


use world;
select * from city;
select * from country;

-- a primary key a set of role which can be used to identify key rows -> unique and not NULL
-- foreign is a key which is used to create connetion between two or more tables we called foreign key

select c.id, c.name, c.countrycode, coun.code, coun.name from city as c join country as coun
on c.countrycode=coun.code; 

-- cross join / cartesian join
-- will connect to every row
-- every row in one is connected with every row of another table

select c.id, c.name, c.countrycode, coun.code, coun.name from city as c cross join country as coun;

select c.id, c.name, c.countrycode, coun.code, coun.name from city as c join country as coun;

select count(*) from city; -- 4079
select count(*) from country; -- 239

select count(*) from city join country;
