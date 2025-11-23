USE startersql;

-- Inserting a full row
INSERT INTO employees VALUES
(6, 'Alice', 'IT', 21, 40000);

-- Specifying columns
INSERT INTO employees (name, department, age, salary) VALUES
('Fardeen', 'HR', 32, 45000);

-- Insert multiple rows
INSERT INTO employees (name, department, age, salary) VALUES 
('Bob', 'IT',23,43000),
('Charlie', 'Finance', 24, 40000);
