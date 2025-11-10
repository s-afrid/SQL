## Creating a table

Now we will create a table that stores all the data.

To create a table we will run the following query
```sql
CREATE TABLE users (
 id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
 );
 ```

 We are using `CREATE TABLE` command to create a table called users. Then in the brackets we are giving the structure of the table. 

 Each element defines the column name - it's datatype - all constraints.

 - `id INT AUTO_INCREMENT PRIMARY KEY` : The table will have column called `id` whose datatype is integer. constraints - is auto incremented, and this column is the primary key.
 - `name VARCHAR(100) NOT NULL` : This is a column name with datatype variable characters of length 100. constraints - it can't be null.
 - `email VARCHAR(100) UNIQUE NOT NULL` : This is a email column with datatype variable characters of length 100. constraints - it is unique and can'y be null.
 - `gender ENUM('Male','Female', 'Other')` : This is a gender column where values can be male, female or others
 - `data_of_birth DATE` : This column contains date of birth and its datatype is date.
- `created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP` : This is a column with datatype TIMESTAMP and its default value is current time stamp for row when they were created.

Check if table is created, we read the table using `SELECT` query.
```sql
SELECT * FROM users;
```
It will fetch all the columns from table users.

## Droping a database
We can drop/delete a full database using the following query

```sql
DROP DATABASE database_name
```

## Writing script

We write a script that contains all the reusable commands. The script is of extension .sql like - my_first_script.sql
```sql
CREATE DATABASE starteresql;
USE startersql;
CREATE TABLE users (
 id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
 );
SELECT * FROM users;
```

We can re-use this file run all commands at once
