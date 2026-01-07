## MySQL indexes

Indexes in MySQL are used to speed up data retrieval. They work like the index of a book — helping the database engine find rows faster, especially for searches, filters, and joins.

One major use of indexes is to make fast `SELECT` queries on a particular table.

### Viewing Indexes on a table

To see indexes on a table, use:
```sql
SHOW INDEXES FROM users;
```

This shows all the indexes currently defined on the automatically created **primary key** index.

Whenever a `SELECT` query is used with `WHERE` clause containing id column of users table, the query will run faster.

### Creating a Single-Column Index
Suppose you’re frequently searching users by email. You can speed this up their by indexing the email column.
```sql
CREATE INDEX idx_email ON users(email);
```
What this does:
- Creates an index named idx_email
- Improves performance of queries like:
```sql
SELECT * FROM users WHERE email = 'example@example.com';
```

### Important Notes

- Indexes consume extra disk space
- Indexes slow down INSERT , UPDATE , and DELETE operations slightly (because the index must be updated)
- Use indexes only when needed (i.e., for columns used in WHERE , JOIN ,ORDER BY )

### Creating a Multi-Column Index

If you often query users using both gender and salary , a multi-column index is more efficient than separate indexes.

```sql
CREATE INDEX idx_gender_salary ON users(gender, salary);
```
```sql
SELECT * FROM users
WHERE gender = 'Female' AND salary > 70000;
```
This query can take advantage of the combined index on gender and salary.

### Index order matters

For a multi-column index on (gender, salary) 
- This works efficiently:
    ```sql
    WHERE gender = 'Female' AND salary > 70000
    ```
- But this may not use the index effectively:
    ```sql
    WHERE salary > 70000
    ```
    Because the first column in the index (gender) is missing in the filter.

### Dropping an Index

To drop an index:
```sql
DROP INDEX idx_email ON users;
```