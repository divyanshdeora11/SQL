create database selfjoindb;

use selfjoindb;

create table employee(eid int, name varchar(20), manager_id int);

insert into employee values(1, "Tushar", null), (2, "Abhinav", 1), (3, "Saksham", 1), (4, "Akshay", 2);

select * from employee;

select e.eid, e.name, e.manager_id, mngr.eid, mngr.name from employee as e
join employee as mngr
where e.manager_id = mngr.eid;

select mngr.eid, mngr.name from employee as mngr;

select e.eid, e.name, e.manager_id, mngr.eid, mngr.name from employee as e
left join employee as mngr
on e.manager_id = mngr.eid;

