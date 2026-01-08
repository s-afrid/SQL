## GROUP BY and HAVING

The `GROUP BY` clause is used to group rows that have the same values in specified columns. It is typically used with aggregate functions like `COUNT , SUM , AVG , MIN , MAX`.

The `HAVING` clause is used to filter groups after aggregation — similar to how `WHERE` filters individual rows.

Consider the table users

### Average salary by gender

We find the average salary of each group after we group them

```sql
SELECT gender, AVG(salary) AS average_salary
FROM users
GROUP BY gender;
```
  
- This groups users by gender.
- Then calculates the average salary for each group.

The output:

<table border=1>
<tr>
<th class='medium'>gender</th>
<th class='medium'>average_salary</th>
</tr>

<tr>
<td class='normal' valign='top'>Male</td>
<td class='normal' valign='top'>65083.333333</td>
</tr>

<tr>
<td class='normal' valign='top'>Female</td>
<td class='normal' valign='top'>63615.384615</td>
</tr>
</table>

### Count number of Referels

Find how many users were referred by each user

```sql
SELECT referred_by_id, COUNT(*) AS total_referred
FROM users
WHERE referred_by_id IS NOT NULL
GROUP BY referred_by_id;
```

The output:

<table border=1>
<tr>
<th class='medium'>referred_by_id</th>
<th class='medium'>total_referred</th>
</tr>

<tr>
<td class='normal' valign='top'>1</td>
<td class='normal' valign='top'>13</td>
</tr>
</table>

