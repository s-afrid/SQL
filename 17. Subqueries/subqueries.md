## Subqueries

A subquery is a query nested inside another query. Subqueries are useful for
breaking down complex problems into smaller parts.

They can be used in:
- `SELECT` statements
- `WHERE` clauses
- `FROM` clauses

Suppose we want to find all users who ***earn more than the average salary*** of all users.

### Scalar subquery

This subquery returns a **single value** — the average salary — and we compare each user’s salary against it.

```sql
SELECT id, name, salary
FROM users
WHERE salary > (
    SELECT AVG(salary) FROM users
);
```

- The inner query: `SELECT AVG(salary) FROM users` returns the average salary
- The outer query selects all users with a salary greater than that average.

### Subquery with `IN`

Now let’s say we want to find users who have been referred by someone who earns
more than ₹75,000.

```sql
SELECT id, name, referred_by_id
FROM users
WHERE referred_by_id IN (
    SELECT id FROM users WHERE salary > 75000
);
```
- The inner query: `SELECT id FROM users WHERE salary > 75000` returns a list
of user IDs (referrers) who earn more than ₹75,000.
-  The outer query selects users whose referred_by_id is in that list.

### Other places subqueries are used

- Inside `SELECT` columns (called scalar subqueries)
    ```sql
    SELECT name, salary,
        (SELECT AVG(salary) FROM users) AS average_salary
    FROM users;
    ```
    This shows each user’s salary along with the overall average.

- In the `FROM` clause to create derived tables
    ```sql
    SELECT AVG(salary) as high_earner_avg
    FROM (
    SELECT * FROM employees 
    WHERE salary > 80000
    ) AS HighEarnerTable; -- You MUST give this a name (alias)
    ```