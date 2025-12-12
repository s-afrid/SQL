USE startersql;

SELECT COUNT(*) FROM users;

SELECT COUNT(*) FROM users WHERE gender = 'FEMALE';

SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM users;

SELECT SUM(salary) AS total_payroll FROM users;

SELECT AVG(salary) AS avg_salary FROM users;

SELECT gender, AVG(salary) AS avg_salary
        FROM users
        GROUP BY gender;

SELECT name, YEAR(date_of_birth) AS birth_year FROM users;

SELECT name, DATEDIFF(CURDATE(), date_of_birth) AS days_lived FROM users;

SELECT name, TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) AS age FROM users;

SELECT salary,
            ROUND(salary) AS rounded,
            FLOOR(salary) AS floored,
            CEIL(salary) AS ceiled
        FROM users;

SELECT id, MOD(id, 2) AS remainder FROM users;

SELECT name, gender,
       IF(gender ='Female','Yes','No') AS is_female
        FROM users;