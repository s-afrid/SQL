SELECT users.name, addresses.city
FROM users
INNER JOIN addresses ON users.id = addresses.user_id;


SELECT users.name, addresses.city
FROM users
LEFT JOIN addresses ON users.id = addresses.user_id;

SELECT users.name, addresses.city
FROM users
RIGHT JOIN addresses ON users.id = addresses.user_id;
