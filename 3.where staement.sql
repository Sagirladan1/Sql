select *
from parks_and_recreation.employee_salary
where first_name = 'leslie';

select *
from parks_and_recreation.employee_salary
where salary <= 50000;

select * 
from employee_demographics
where first_name = 'leslie'
or age > 55
;

select * 
from employee_demographics
where birth_date > '1985-07-26'
or not gender = 'male'
;

select * 
from employee_demographics
where first_name like 'a___%'
;