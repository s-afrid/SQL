## My SQL joins
In SQL, ***JOINs*** are used to combine rows from two or more tables based on related
columns — usually a foreign key in one table referencing a primary key in another.

We will use two tables here:

#### user table
<table>
<tr>
<th>id</th>
<th>name</th>
</tr>

<tr>
<td>1</td>
<td>Aarav</td>
</tr>

<tr>
<td>2</td>
<td>Sneha</td>
</tr>

<tr>
<td>3</td>
<td>Raj</td>
</tr>
</table>

#### address table
<table>
<tr>
<th>id</th>
<th>user_id</th>
<th>city</th>
</tr>

<tr>
<td>1</td>
<td>1</td>
<td>Mumbai</td>
</tr>

<tr>
<td>2</td>
<td>2</td>
<td>Kolkata</td>
</tr>

<tr>
<td>3</td>
<td>4</td>
<td>Delhi</td>
</tr>
</table>

Note: `user_id` is a ***foreign key*** that references `user.id`
