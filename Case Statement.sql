-- Case Statement


select first_name,
last_name,
age,
case
	when age <= 30 then 'Young'
    when age between 31 and 50 then 'old'
    when age >= 50 then 'On death door'
end as birth_bracke
from employee_demographics;

-- < 50000 = 5%
-- > 50000 = 7%
-- finance = bonus 10%
select first_name, last_name,
salary,
case
	when salary < 50000 then salary * 1.05
    when salary > 50000 then salary * 1.07
end as new_salary,
case
	when dept_id = 6 then salary * .10
end as bonus
from employee_salary;

