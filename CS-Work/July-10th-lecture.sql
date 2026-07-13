-- functions
-- block of code, collection of statement => perform certain task
-- code reusuable,
-- code duplicacy is removed 
-- make your code divided into smaller section 


-- inbuilt functions
-- --> Scalar functions => applies on every row and return the output for every row

-- string, number, dates 

use world;
select name, continent, concat(continent, ' have ', name, ' country') from country;

-- concat_ws() --> concan with separator
select name, continent, concat_ws(' ',continent, 'have', name, 'country') from country;

select name, upper(name), substr(name,2) from country; -- extract string character

select name, substr(name,2), substr(name,2,4) from country;
-- length --> how many bits are there
-- char_length() -> return the number of char
-- replace 
select name, replace(name,'a','@') from country;
-- trip -->remove spaces 
select trim('        he  llo        ');

-- lpad and rpad
select name, lpad(name,6,'-') from country;
select name, rpad(name,6,'#') from country;

select current_date(), current_time(), current_timestamp(), now();

-- YYYY-MM-DD <== DD/MM/YYYY (we can covert)
-- adddate()
-- subdate()
select now(), adddate(now(),15), adddate(now(), -1), adddate(now(), interval 1 month), adddate(now(), interval 1 year), adddate(now(), interval 1 quarter);

select payment_date, adddate(payment_date,3) from sakila.payment;

select now(), year(now()), month(now());
select extract(month from now()), extract(minute from now()), weekday(now());

select now(), concat('current month is', month( now() ));

select now(), date_format( now(), 'year is %Y month is %M, weekday is %W');



