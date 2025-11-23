## Query data
The SELECT statement is used to query data from a table.

### Basic syntax
Selecting all columns
```sql
SELECT * FROM users;
```
To select specific columns
```sql
SELECT column1, column2 FROM table_name;
```

### Filtering rows with `WHERE`
The WHERE clause in SQL is used to filter rows in a table based on specific conditions so that only the records that match those conditions are returned or affected. It helps you narrow down results when selecting, updating, or deleting data. You can use comparison operators like =, >, <, !=, logical operators like AND, OR, NOT, and even pattern matching with LIKE. In short, the WHERE clause lets you control which rows your SQL query should work with.

```sql
-- Equal to
SELECT * FROM users WHERE gender = 'Male';
-- Not equal to
SELECT * FROM users WHERE gender != 'Female';
-- or
SELECT * FROM users WHERE gender <> 'Female';
-- Greater than and Less than
SELECT * FROM users WHERE date_of_birth < '1995-01-01';
SELECT * FROM users WHERE id > 10;
-- Greater than or equal and less than or equal
SELECT * FROM users WHERE id >= 5;
SELECT * FROM users WHERE id <= 20;
```