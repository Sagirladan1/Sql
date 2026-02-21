-- Store Procedure



SELECT *
FROM employee_salary
WHERE salary >= 50000;


CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

CALL large_salaries();

DELIMITER $$
CREATE PROCEDURE large_salaries3()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;

call large_salaries3();

DELIMITER $$
CREATE PROCEDURE large_salaries4(param int)
BEGIN
	SELECT *
	FROM employee_salary
	where employee_id = param
    ;
END $$
DELIMITER ;


call large_salaries4(1);
