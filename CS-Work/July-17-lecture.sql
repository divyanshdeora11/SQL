show databases;

use world;
show tables;

select * from country;

select continent, count(*) from country group by continent having count(*) = 5;

select * from country;

select Indepyear, count(*) from country group by indepyear having count(name)>10;

select * from country;

select city, sum(salary) AS totalSalary from emplyee group by city order by totalSalary asc:

select name, dept, Salary from employe order by dept, salary desc;

select name, role, salary from emp order by  