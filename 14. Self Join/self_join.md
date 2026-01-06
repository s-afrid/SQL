## Self JOIN

A `Self JOIN` is a regular join, but the table is joined with itself.

This is useful when rows in the same table are related to each other. For example, when users refer other users, and we store the ID of the person who referred them in the same `users` table.

1. Add a `referred_by_id` Column

    We’ll extend the existing which holds the users table to include a column called id of the user who referred them.

    ```sql
    ALTER TABLE users
    ADD COLUMN referred_by_id INT;
    ```
    This column:

    - Will be NULL for users who were not referred.
    - Will contain the id of another user who referred them.

2. Insert Referrel data

    Lets assume that user with id=1 will refer other users, we use update to update values

    ```sql
    UPDATE users SET referred_by_id = 1 WHERE id IN (2, 3);-- User 1 referred Users 2 and 3
    UPDATE users SET referred_by_id = 2 WHERE id = 4;-- User 2 referred User 4
    ```

3. Use a Self JOIN to get referrers name

    We want to get each user’s name along with the name of the person who referred
    them.

    ```sql
    SELECT 
    a.id,
    a.name AS user_name,
    b.name AS referred_by
    FROM users a
    INNER JOIN users b ON a.referred_by_id = b.id;
    ```

    You are telling SQL to pretend the users table is actually two different tables:
    - Table a (The Guest): This represents the person who joined - `user a`.
    - Table b (The Inviter): This represents the person who sent the referral link - `user b`.

    We are using `INNER JOIN` to avoid null values.

    The `ON` logics tells that - ***Look at the Guest's referred_by_id (in Table A). Then, go find that specific number in the id column of the Inviter list (Table B).***

    The output:

    <table border=1>
    <tr>
    <th class='medium'>id</th>
    <th class='medium'>user_name</th>
    <th class='medium'>referred_by</th>
    </tr>

    <tr>
    <td class='normal' valign='top'>2</td>
    <td class='normal' valign='top'>Ananya</td>
    <td class='normal' valign='top'>Aarav</td>
    </tr>

    <tr>
    <td class='normal' valign='top'>3</td>
    <td class='normal' valign='top'>Raj</td>
    <td class='normal' valign='top'>Aarav</td>
    </tr>

    <tr>
    <td class='normal' valign='top'>4</td>
    <td class='normal' valign='top'>Sneha</td>
    <td class='normal' valign='top'>Aarav</td>
    </tr>
    </table>

