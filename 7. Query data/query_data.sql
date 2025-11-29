USE startsql;

SELECT * FROM employees WHERE department='IT';

SELECT * FROM employees WHERE department!='IT';
SELECT * FROM employees WHERE department<>'IT';

SELECT * FROM employees WHERE id > 5;
SELECT * FROM employees WHERE id < 5;

SELECT * FROM employees WHERE id >= 5;
SELECT * FROM employees WHERE id <= 5;

SELECT * FROM employees WHERE salary BETWEEN 40000 AND 50000;

SELECT * FROM employees WHERE salary IS NULL;
SELECT * FROM employees WHERE salary IS NOT NULL;

SELECT * FROM employees WHERE department IN ('IT','HR');

SELECT * FROM employees LIMIT 5;

SELECT * FROM employees ORDER BY salary ASC;
SELECT * FROM employees ORDER BY salary DESC;

SELECT * FROM employees WHERE name LIKE 'A%';

SELECT * FROM employees WHERE name LIKE 'A%' AND department = 'IT';
SELECT * FROM employees WHERE name LIKE '%a' OR department = 'IT';