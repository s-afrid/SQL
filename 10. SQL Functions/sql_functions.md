## SQL Functions
SQL functions are built-in programs used to process, manipulate, or perform calculations on data within a database. SQL functions help you analyze, transform, or summarize data in your tables.

1. Aggregate Functions

    These return a ***single value*** from a set of rows.  

    - `COUNT()`:  
        count the total number of users
        ```sql
        SELECT COUNT(*) FROM users;
        ```
        Count users who are Female
        ```sql
        SELECT COUNT(*) FROM users WHERE gender='FEMALE';
        ```
    
    - `MIN()` and `MAX()`:  
        Get minimum and maximum salary
        ```sql
        SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM users;
        ```
    - `SUM()`:  
        Calculate total salary payout
        ```sql
        SELECT SUM(salary) AS total_payroll FROM users;
        ```
    - `AVG()`:  
        Find average salary
        ```sql
        SELECT AVG(salary) AS avg_salary FROM users;
        ```
        We will use `GROUP BY` to get average salary by gender
        ```sql
        SELECT gender, AVG(salary) AS avg_salary
        FROM users
        GROUP BY gender;
        ```
2. String Functions  
    