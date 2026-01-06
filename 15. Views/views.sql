CREATE VIEW high_salary_users AS
SELECT id, name, salary
FROM users
WHERE salary > 70000;

SELECT * FROM high_salary_users;

UPDATE users
SET salary = 72000
WHERE name = 'Raj';

SELECT * FROM high_salary_users;

DROP VIEW high_salary_users;