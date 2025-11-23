USE startersql;

SELECT * FROM employees;

SELECT name, department, salary FROM employees;

ALTER TABLE employees ADD COLUMN is_active BOOLEAN DEFAULT TRUE;

ALTER TABLE employees DROP COLUMN is_active;

ALTER TABLE employees MODIFY COLUMN name VARCHAR(150);