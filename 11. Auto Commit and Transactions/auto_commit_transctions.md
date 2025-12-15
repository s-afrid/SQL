## Auto Commit and Transactions

By default, MySQL operates in AutoCommit mode. This means that every SQL
statement is treated as a transaction and is committed automatically. However, for more control over when changes are saved, you can turn AutoCommit off and
manage transactions manually.

1. Disable Auto Commit:  

    When AutoCommit is off, you can explicitly control when to commit or rollback changes.  
    To disable auto-commit
    ```sql
    SET autocommit = 0;
    ```
    This turns off AutoCommit, meaning that changes you make won’t be saved to the database unless you explicitly tell MySQL to commit them.  
    Important: Until you execute a `COMMIT` , your changes are not permanent.

2. `COMMIT` - Save changes to the database:  

    Once you’ve made changes and you’re confident that everything is correct, you can use the COMMIT command to save those changes.  
    To commit a transaction:
    ```sql
    COMMIT;
    ```
    This saves all the changes made since the last `COMMIT` or `ROLLBACK` . After this point, the changes become permanent.

3. `ROLLBACK` - Revert Changes to the Last Safe Point:  
    
    If you make an error or decide you don’t want to save your changes, you can rollback the transaction to its previous state.  
    To rollback a transaction:
    ```sql
    ROLLBACK;
    ```
    This undoes all changes since the last COMMIT or ROLLBACK .

    Example workflow:

    - Turn-off Auto-commit  
    ```sql
    SET autocommit = 0;
    ```
    - Make some changes
    ```sql
    UPDATE users SET salary = 80000 WHERE id = 5;
    ```
    - Decide whether to commit or rollback  
        - If happy with changes, run:
        ```sql
        COMMIT;
        ```
        - If not happy and want to revert the changes, run:
        ```sql
        ROLLBACK;
        ```

4. Enable AutoCommit again:

    If you want to turn AutoCommit back on (so that every statement is automatically committed), you can do so with:
    ```sql
    SET autocommit = 1;
    ```
    
