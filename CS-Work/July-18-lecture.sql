use world;

select * from city;

select * from country;

select city.CountryCode, city.Name from city;

select country.code, country.name from country;

select city.CountryCode, city.Name AS cityname,
country.code, country.name AS countryname
from city 
JOIN country 
where CountryCode=country.code and city.name = 'Amsterdam';

-- city population country popualtion

select city.name as cityname, city.population as citypoupulation, 
country.name as countryname, country.population as countrypopulation from city
join country where city.countrycode = country.code;