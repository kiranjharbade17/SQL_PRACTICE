use startersql;
-- Aggregate functions

SELECT COUNT(*) FROM users1;
SELECT COUNT(*) FROM users1 WHERE gender = "female";
SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM users1;
SELECT SUM(salary) AS total_payroll FROM users1;
SELECT AVG(salary) AS avg_salary FROM users1;
SELECT gender, AVG(salary) AS avg_salary
FROM users1
GROUP BY gender;

-- String functions

SELECT name, length(name) as name_length
from users1;
select name, upper(name) as uppercase_name
from users1;
select name, lower(name) as lowercase_name
from users1;
select concat(name,"<",email,">") as user_contact from users1;

-- Date function 

select now();
select id,year(date_of_birth) as birth_year
from users1;
select name, month(date_of_birth) as birth_year
from users1;
select name, day(date_of_birth) as birth_year
from users1;

-- mathematical functions

select salary,
      round(salary) as rounded,
      floor(salary) as floored,
	  ceil(salary) as ceiled
from users1;

select id,
mod(id,2) as remainder 
from users1;

-- conditional function

select name, gender,
if(gender = "female", "yes","no") as is_female
from users1;`





