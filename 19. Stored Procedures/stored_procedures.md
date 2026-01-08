## Stored Procedures

A **stored procedure** is a saved SQL block that can be executed later. It’s useful when you want to encapsulate logic that can be reused multiple times — like queries, updates, or conditional operations.

By default, MySQL uses `;` to end SQL statements.

But when defining stored procedures, we use 
`;` inside the procedure as well. This can confuse MySQL. To avoid this, we temporarily change the delimiter (e.g. to `$$` or `//` ) while creating the procedure.

### Syntax for Creating a Stored Procedure
```sql
DELIMITER $$
CREATE PROCEDURE procedure_name()
BEGIN
    -- SQL statements go here
END$$
DELIMITER ;
```

After the procedure is created, we reset the delimiter back to `;`.

### Creating a stored procedure with input parameters

Let’s say you want to create a stored procedure that inserts a new user into the `users` table.

```sql
DELIMITER $$
CREATE PROCEDURE AddUser(
    IN p_name VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_gender ENUM('Male', 'Female', 'Other'),
    IN p_dob DATE,
    IN p_salary INT
)
BEGIN
 INSERT INTO users (name, email, gender, date_of_birth, salary)
    VALUES (p_name, p_email, p_gender, p_dob, p_salary);
END$$
  
DELIMITER ;
```

This creates a procedure named `AddUser` that accepts five input parameters.

### Calling the procedure

You can call the procedure using:

```sql
CALL AddUser('Kiran Sharma', 'kiran@example.com', 'Female', '1994-06-15', 72000);
```
- Input parameters are declared using the `IN` keyword.
- Stored procedures are stored in the database and can be reused.

### Showing and dropping

To show all stored procedures:
```sql
SHOW PROCEDURE STATUS WHERE Db = 'startersql';
```
To delete or drop the procedure
```sql
DROP PROCEDURE IF EXISTS AddUser;
```