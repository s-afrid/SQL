SELECT gender, AVG(salary) AS average_salary
FROM users
GROUP BY gender;

SELECT referred_by_id, COUNT(*) AS total_referred
FROM users
WHERE referred_by_id IS NOT NULL
GROUP BY referred_by_id;