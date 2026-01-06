## Views

A view in MySQL is a virtual table based on the result of a `SELECT` query. It does not store data itself — it always reflects the current data in the base tables.

Views are useful when:
- You want to simplify complex queries
- You want to reuse logic
- You want to hide certain columns from users
- You want a “live snapshot” of filtered data

### Creating a View
Suppose we want a view that lists all users earning more than ₹70,000.

```sql
CREATE VIEW high_salary_users AS
SELECT id, name, salary
FROM users
WHERE salary > 70000;
```
It saves a specific query under a name (high_salary_users) so you can use it later without rewriting the logic.

You can treat high_salary_users just like a real table.

The command `CREATE VIEW` has one strict rule: It must be followed by a `SELECT` statement. You cannot use `INSERT`, `UPDATE`, or `DELETE` inside the definition of a view.

### Querying the view

```sql
SELECT * FROM high_salary_users;
```

Once you run this code, the database will automatically run the complex underlying query `(... WHERE salary > 70000)` for you.

The output:

<table border=1>
<tr>
<th class='medium'>id</th>
<th class='medium'>name</th>
<th class='medium'>salary</th>
</tr>

<tr>
<td class='normal' valign='top'>2</td>
<td class='normal' valign='top'>Ananya</td>
<td class='normal' valign='top'>72000.00</td>
</tr>

<tr>
<td class='normal' valign='top'>6</td>
<td class='normal' valign='top'>Priyanka</td>
<td class='normal' valign='top'>84000.00</td>
</tr>

<tr>
<td class='normal' valign='top'>9</td>
<td class='normal' valign='top'>Meera</td>
<td class='normal' valign='top'>77000.00</td>
</tr>

<tr>
<td class='normal' valign='top'>12</td>
<td class='normal' valign='top'>Rohan</td>
<td class='normal' valign='top'>75000.00</td>
</tr>

<tr>
<td class='normal' valign='top'>15</td>
<td class='normal' valign='top'>Nikita</td>
<td class='normal' valign='top'>71000.00</td>
</tr>

<tr>
<td class='normal' valign='top'>22</td>
<td class='normal' valign='top'>Tushar</td>
<td class='normal' valign='top'>73000.00</td>
</tr>

<tr>
<td class='normal' valign='top'>23</td>
<td class='normal' valign='top'>Lata</td>
<td class='normal' valign='top'>78000.00</td>
</tr>
</table>

Let's try to update one user's salary

```sql
UPDATE users
SET salary = 72000
WHERE name = 'Raj';
```

Again query the view

```sql
SELECT * FROM high_salary_users;
```

New output:

<table border=1>
<tr>
<th class='medium'>id</th>
<th class='medium'>name</th>
<th class='medium'>salary</th>
</tr>

<tr>
<td class='normal' valign='top'>2</td>
<td class='normal' valign='top'>Ananya</td>
<td class='normal' valign='top'>72000.00</td>
</tr>

<tr>
<td class='normal' valign='top'>3</td>
<td class='normal' valign='top'>Raj</td>
<td class='normal' valign='top'>72000.00</td>
</tr>

<tr>
<td class='normal' valign='top'>6</td>
<td class='normal' valign='top'>Priyanka</td>
<td class='normal' valign='top'>84000.00</td>
</tr>

<tr>
<td class='normal' valign='top'>9</td>
<td class='normal' valign='top'>Meera</td>
<td class='normal' valign='top'>77000.00</td>
</tr>

<tr>
<td class='normal' valign='top'>12</td>
<td class='normal' valign='top'>Rohan</td>
<td class='normal' valign='top'>75000.00</td>
</tr>

<tr>
<td class='normal' valign='top'>15</td>
<td class='normal' valign='top'>Nikita</td>
<td class='normal' valign='top'>71000.00</td>
</tr>

<tr>
<td class='normal' valign='top'>22</td>
<td class='normal' valign='top'>Tushar</td>
<td class='normal' valign='top'>73000.00</td>
</tr>

<tr>
<td class='normal' valign='top'>23</td>
<td class='normal' valign='top'>Lata</td>
<td class='normal' valign='top'>78000.00</td>
</tr>
</table>

Notice how Raj is now included in the view — without updating the view itself. That’s because views always reflect live data from the original table.

### Dropping a view

To remove a view:
```sql
DROP VIEW high_salary_users;
```