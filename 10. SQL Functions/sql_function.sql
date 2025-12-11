USE startersql;

SELECT COUNT(*) FROM users;

SELECT COUNT(*) FROM users WHERE gender = 'FEMALE';

SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM users;

SELECT SUM(salary) AS total_payroll FROM users;

SELECT AVG(salary) AS avg_salary FROM users;