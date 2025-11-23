USE startsql;

SELECT * FROM employees WHERE department='IT';

SELECT * FROM employees WHERE department!='IT';
SELECT * FROM employees WHERE department<>'IT';

SELECT * FROM employees WHERE id > 5;
SELECT * FROM employees WHERE id < 5;

SELECT * FROM employees WHERE id >= 5;
SELECT * FROM employees WHERE id <= 5;