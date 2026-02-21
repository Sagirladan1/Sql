-- Trigger and Event
select *
from employee_demographics;


select *
from employee_salary;

delimiter $$
create trigger employee_insert1
	after INSERT ON employee_salary
    FOR EACH ROW
BEGIN
	INSERT INTO employee_demographics(employee_id, first_name, last_name)
    VALUES (new.employee_id, new.first_name, new.last_name);
END $$
delimiter ;

INSERT INTO employee_salary (employee_id, first_name, last_name, occupation,
salary, dept_id)
VALUES(15, 'ladan', 'sagir', 'data analyst', 5000000, NULL);


insert INTO employee_salary (employee_id,first_name,last_name,occupation,
salary, dept_id)
VALUES(10, 'sagir', 'ladan', 'data analyst', 2000000, NULL);


-- events

select *
FROM employee_demographics;



delimiter $$
CREATE EVENT delete_retirees
ON SCHEDULE EVERY 30 SECOND
DO
BEGIN
	DELETE
    FROM employee_demographics
    WHERE age >= 60;
END $$
delimiter ;

SHOW VARIABLES LIKE 'event%';