use firstdatabase;


/* ------------------------------------------------------------
   1. PRIMARY KEY
   ------------------------------------------------------------ */

CREATE TABLE students1 (
  id INT PRIMARY KEY,
  name VARCHAR(50)
);

INSERT INTO students1 VALUES (1, 'Ash');


/* ------------------------------------------------------------
   2. FOREIGN KEY
   ------------------------------------------------------------ */

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  student_id INT,
  FOREIGN KEY (student_id) REFERENCES students(id)
);

INSERT INTO orders VALUES (101, 1);


/* ------------------------------------------------------------
   3. UNIQUE
   ------------------------------------------------------------ */

CREATE TABLE users1 (
  user_id INT PRIMARY KEY,
  email VARCHAR(100) UNIQUE,
  username VARCHAR(50)
);

INSERT INTO users1 VALUES (1, 'ash@gmail.com', 'ash007');


/* ------------------------------------------------------------
   4. NOT NULL
   ------------------------------------------------------------ */

CREATE TABLE products1 (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(50) NOT NULL,
  price DECIMAL(10,2)
);

INSERT INTO products1 VALUES (1, 'Laptop', 59999.99);


/* ------------------------------------------------------------
   5. CHECK
   ------------------------------------------------------------ */

CREATE TABLE employees1 (
  emp_id INT PRIMARY KEY,
  age INT CHECK (age >= 18),
  salary DECIMAL(10,2)
);

INSERT INTO employees1 VALUES (1, 23, 35000);


-- This will FAIL:
-- INSERT INTO employees VALUES (2, 15, 20000);


/* ------------------------------------------------------------
   6. DEFAULT
   ------------------------------------------------------------ */

CREATE TABLE payments (
  payment_id INT PRIMARY KEY,
  amount DECIMAL(10,2),
  status VARCHAR(20) DEFAULT 'Pending'
);

INSERT INTO payments (payment_id, amount) VALUES (1, 500.00);


/* ------------------------------------------------------------
   7. AUTO_INCREMENT (MySQL) / IDENTITY (SQL Server)
   ------------------------------------------------------------ */

CREATE TABLE tickets (
  id INT AUTO_INCREMENT PRIMARY KEY,
  issue VARCHAR(100)
);

INSERT INTO tickets (issue) VALUES ('Login issue');


/* ------------------------------------------------------------
   8. INDEX (Not a constraint, but often grouped with them)
   ------------------------------------------------------------ */

CREATE TABLE accounts1 (
  acc_id INT PRIMARY KEY,
  username VARCHAR(50)
);

CREATE INDEX idx_username ON accounts1(username);


/* ------------------------------------------------------------
   9. COMPOSITE PRIMARY KEY
   ------------------------------------------------------------ */

CREATE TABLE enrollments (
  student_id INT,
  course_id INT,
  PRIMARY KEY (student_id, course_id)
);

INSERT INTO enrollments VALUES (1, 101);


/* ------------------------------------------------------------
   10. FOREIGN KEY WITH CASCADE
   ------------------------------------------------------------ */

CREATE TABLE departments (
  dept_id INT PRIMARY KEY,
  dept_name VARCHAR(50)
);

CREATE TABLE workers (
  worker_id INT PRIMARY KEY,
  dept_id INT,
  FOREIGN KEY (dept_id) REFERENCES departments(dept_id) ON DELETE CASCADE
);


/* ------------------------------------------------------------
   11. ENUM (MySQL Only)
   ------------------------------------------------------------ */

CREATE TABLE orders_status (
  order_id INT PRIMARY KEY,
  status ENUM('Pending', 'Processing', 'Delivered', 'Cancelled') DEFAULT 'Pending'
);

INSERT INTO orders_status VALUES (1, 'Delivered');