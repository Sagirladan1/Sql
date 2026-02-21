-- Common Table Expression (CTEs)


with cte_example as
(
SELECT gender, avg(salary) avg_sal, MAX(salary) max_sal, min(salary) min_sal, count(salary) count_sal
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
GROUP BY gender
)

select avg(avg_sal)
from cte_example
;
