use joindb;



-- find the dept name and the total no emp working in that department 
select d.dept_name, count(e.emp_name) from departments as d
left join employees as e 
on e.dept_id = d.dept_id
group by dept_name having count(e.emp_name)>=2;

--  ____________________________________________________________________________________
-- | where vs having 																	|
-- | where clause or having clase both are use with group by 							|
-- | where clause is used to filter the data from column								|
-- | where clause is independent														|
-- | having clause is dependent on group by 											|
-- | if we have agg function with select statement, use having clause with group by   	|
--  ------------------------------------------------------------------------------------

