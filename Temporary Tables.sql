-- Temporary Tables


CREATE TEMPORARY TABLE temp_table
(first_name VARCHAR(50),
last_name VARCHAR(50),
favorite_movie VARCHAR(100)
);

SELECT *
 FROM temp_table;
 
 INSERT INTO temp_table
 VALUES('sagir','ladan','Mayor of kingstown');
 
 
CREATE TEMPORARY TABLE salary_over_50k
 SELECT *
 FROM employee_salary
 WHERE salary >= 50000;
 
 SELECT *
 FROM salary_over_50k
 WHERE salary >= 50000
;
 
CREATE TEMPORARY TABLE salary_over_50kk
 SELECT *
 FROM employee_salary
 WHERE salary >= 50000;
 
 SELECT *
 FROM salary_over_50kk
;
 