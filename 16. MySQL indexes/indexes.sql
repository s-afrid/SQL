SHOW INDEXES FROM users;

CREATE INDEX idx_email ON users(email);

SELECT * FROM users WHERE email='aarav@example.com';

CREATE INDEX idx_gender_salary ON users(gender, salary);

SELECT * FROM users
WHERE gender = 'Female' AND salary > 70000;