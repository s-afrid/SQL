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

2. `NOT NULL`:  
    Ensure that a column cannot contain NULL values.
    ```sql
    CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
    );
    ```
    While creating a table set the name column to be not null. This field should never be empty.
    ```sql
    ALTER TABLE users
    MODIFY COLUMN name VARCHAR(100) NOT NULL;
    ```
    Set existing column to not null
    ```sql
    ALTER TABLE users
    MODIFY COLUMN name VARCHAR(100) NULL;
    ```
    Make the same column allow null value.

3. `CHECK`:  
    Ensures that values in a column satisfy a specific condition.
    ```sql
    ALTER TABLE users
    ADD CONSTRAINT chk_dob CHECK (date_of_birth > '2000-01-01');
    ```
    Allow date of births only above 1 Jan 2000. Naming the constraint ( chk_dob ) helps if you want to drop it later.







