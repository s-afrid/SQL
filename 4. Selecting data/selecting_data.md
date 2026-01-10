## Selecting data from tables

`SELECT` is used to fetch data from one or more tables in a database.

syntax:
```sql
SELECT column1, column2, ...
FROM table_name;
```
Example:
```sql
SELECT name, age FROM students;
```

- Selecting from all columns:
    ```sql
    SELECT * FROM students;
    ```
    `*` means return everything in the table.
    Useful for quick debugging, but not for production.

- Select specific columns:
    ```sql
    SELECT name, age FROM students;
    ```

- Selecting only unique values  
    `DISTINCT` is used to return only unique values.
    ```sql
    SELECT DISTINCT gender FROM users;
    ```
    Returns a list of unique gender values from the `users` table.

### Rename table
To rename an existing table:
```sql
RENAME TABLE users TO customers;
```
To rename it back:
```sql
RENAME TABLE customers TO users;
```