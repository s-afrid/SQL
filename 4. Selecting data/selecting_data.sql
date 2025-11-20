USE startersql;


CREATE TABLE employees (
  id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  age INT,
  department VARCHAR(50),
  salary DECIMAL(10,2)
);


INSERT INTO employees (id, name, age, department, salary) VALUES
(1, 'Ash', 24, 'IT', 45000.00),
(2, 'Rahul', 30, 'HR', 50000.00),
(3, 'Neha', 28, 'Finance', 60000.00),
(4, 'Arjun', 22, 'IT', 40000.00),
(5, 'Sara', 27, 'Marketing', 52000.00);

SELECT * FROM employees;

SELECT name, department, salary FROM employees;