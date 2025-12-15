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

4. `DEFAULT`:  
    Sets a default value for a column if none is provided during insert.
    ```sql
    CREATE TABLE users (
    id INT PRIMARY KEY,
    is_active BOOLEAN DEFAULT TRUE
    );
    ```
    If not inserted then set value of is_active to TRUE as default value.
    ```sql
    ALTER TABLE users
    ALTER COLUMN is_active SET DEFAULT TRUE;
    ```
    Set existing column as default using `ALTER COLUMN` clause.

5. `PRIMARY KEY`:  
    Uniquely identifies each row. Must be NOT NULL and UNIQUE.
    ```sql
    CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(100)
    );
    ```
    The column id is set to primary key which means the value cannot be NULL or duplicate.
    ```sql
    ALTER TABLE users
    ADD PRIMARY KEY (id);
    ```
    Add a primary key to existing table.

6. `AUTO_INCREMENT`:  
    Used with PRIMARY KEY to automatically assign the next number.
    ```sql
    CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100)
    );
    ```
    Each new row gets the next available integer value in id .

Learn about [Primary Key](primary_key.md)