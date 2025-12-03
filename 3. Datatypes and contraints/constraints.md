## Constraints

Constraints in MySQL are rules applied to table columns to ensure the accuracy,
validity, and integrity of the data.

1. `UNIQUE`:  
    Ensures that all values in a column are different.
    ```sql
    CREATE TABLE users (
    id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE
    );
    ```
    The above example is during the table creation where email column is set unique. No duplicate emails are allowed.
    ```sql
    ALTER TABLE users
    ADD CONSTRAINT unique_email UNIQUE (email);
    ```
    The email field is set to unique and also optionally we can name this constraint as unique_email.
