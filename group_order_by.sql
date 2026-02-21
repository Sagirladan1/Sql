select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender
;


select *
from employee_demographics
order by gender, age desc;