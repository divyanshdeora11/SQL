-- Group by --> collection of same values
--  _______________
-- | dept | salary |
-- | HR   |  100   |
-- | HR   |  200   |
-- | Engi |  250   |
-- | engi |  400   |
--  ---------------

show databases;
use world;

select continent from country;
select distinct(continent) from country;

select continent, count(name) from country group by continent;

select count(name) from country where continent = 'North America';
select count(name) from country where continent = 'Asia';

select count(name), count(distinct(name)) from country;
select name, count(name) from country group by name;

select count(name) from city where District = 'Zuid-Holland';

select district, count(name), sum(population) from city group by district;
select * from city;

select count(name) from city where countrycode = 'AFG'; 

select countryCode, count(name) from city group by CountryCode;

select * from country;
-- count func --> dont count the NULL value
select count(name), count(code), count(indepyear) from country;
select * from country;
-- count the number of countries which have lifeexpe 70.1 83.1
 select count(name) from country where lifeExpectancy Between 70.1 and 83.1;
-- get the total population of the country how got thier idep yr after 1990
select sum(population) from country where indepyear>1990;
-- count thenumbers of country which are not slaved by any other community
select count(name) from country where indepyear is null;
-- get the total countries and total surface area for each region
select region, count(name), sum(surfacearea) from country group by region; 
-- ** get the total countries in each continent 
select count(name), continent from country group by continent;
-- get the total country for each region for each continent 
select continent,  region, count(name) from country group by  continent, region;


select distinct(continent), count(name) from country;
select distinct(continent), name from country;
select continent, count(name) from country group by continent;
