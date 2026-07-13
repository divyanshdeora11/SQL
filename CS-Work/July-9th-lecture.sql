use world;

show tables;

select * from country;

select * from city;

select * from city where name='kabul';
select district, population from city where name='kabul';
select district, population, countrycode from city;
select district, population, countrycode from city where countrycode='IND';
select name, district, population, countrycode from city where countrycode='IND' and population>2000000;
select name, district, population, countrycode from city where countrycode='IND' or population>2000000;

select * from city;

select * from city where countrycode='AFG';
select * from city where countrycode = 'AFG' and countrycode='IND';

select * from city where countrycode='AFG' and district = 'Kabol';

select * from city where population>100000 and population<150000;

select * from city where population between 100000 and 150000;

select * from city where population=129170 or population=117196;
select * from city where population in(129170, 117196);  

-- like operator --
select * from city;
select * from city where name='breda';
select * from city where name like 'ka%';
select * from city where name like '%a';
select * from city where name like 'b%a';
select * from city where name like '%a%';

-- wildcard ("_") operator in like
select * from city where name like 'T__';
select * from city where name like 'T__%';

select * from city where name like 'A%_';
select * from city where name like 'A%__';
select * from city where name like '_A%_';

select * from city;
-- get the city and the population where you have the letter e in city name
select name, population from city where name like '%e%';
-- where the second should be b 
select name, population from city where name like '%b_';
-- where the city name have the second letter as 'a' and last is 'r'
select name, population from city where name like '_a%%r_';
-- where you have aa in the city name
select name, population from city where name like '%aa%';
-- get the city name and the population where the country name have the 2 chac ee, separte from both and it should be in middle
select name, population from city where name like '_%e_e%_'; 
 


