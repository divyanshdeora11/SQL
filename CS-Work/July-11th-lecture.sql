-- numeric functions 
use world;

select * from country;

select lifeexpectancy, round(lifeexpectancy) from country;

select 34.58, round(34.5);

select 76.469, round(76.469,1);
select 76.369, round(76.361,2);

-- round off to nearest 10, 100., 1000
select 9, round(9.2, -1);

-- -2 => 1
select 113.2, round(113.2, -2);

select 554.2, round(554.2, -3);

select 7654.2, round(7654.2, -3);

select round( 34.857,1), truncate(34.857,1), mod(3,5);

select floor(34.999999); -- convert to lowestvalue 
select ceil(34.00001); -- convert to uppervalue 

select abs(10.1111), abs(-10.949); -- convert negative to positive