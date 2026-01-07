SELECT id, name, salary
FROM users
WHERE salary > (
    SELECT AVG(salary) FROM users
);

SELECT id, name, referred_by_id
FROM users
WHERE referred_by_id IN (
    SELECT id FROM users WHERE salary > 75000
);

SELECT name, salary,
        (SELECT AVG(salary) FROM users) AS average_salary
    FROM users;

SELECT AVG(salary) as high_earner_avg
    FROM (
    SELECT * FROM users 
    WHERE salary > 80000
    ) AS HighEarnerTable; -- You MUST give this a name (alias)