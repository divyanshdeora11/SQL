use world;

select distinct(continent) from country;

select name from country;

select distinct(name) from country;

select count(continent), count(distinct(continent)) from country;

-- country name

select count(name), count(distinct(name)) from country;

select count(name), count(distinct(continent)) from country;
-- aggragate => aggregate func are the func which are use to apply the calculation or set of rows 
-- count, max, min

select count(population), sum(population) , avg(population) from country;

select * from country;

select count(surfacearea) from country;
select sum(surfacearea), max(surfacearea), min(surfacearea) from country;

select count(continent), max(continent), min(continent) from country;

-- >maximumdate -> latest date or more recent dates 
-- >mindatae -> earliest date 

-- population => non-aggregate column
-- count(population) => aggregate function
select population, count(population) from country; -- error is occur because if we use aggregate func we cann't add column with that aggregate func

select population, replace(population, 1, 4) from country;

select avg(replace(population, 1, 4)) from country;

select avg(replace(population, 0, ' ')) from country;

-- sorting the data -> Order By clause 
select name, continent, region, population from country 
order by name desc;
select name, continent, region, population from country 
order by population, name;
select name, continent, region, population from country 
order by continent, name;

-- region ascending order sort;
-- in each region we sort the data based on pupulation in descending order;
select name, continent, region, population from country 
order by region, population desc;

