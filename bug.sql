```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```

This SQL query might seem straightforward, but it can lead to unexpected results or errors if the `salary` column allows NULL values.  If an employee in the 'Sales' department has a NULL salary, they will be excluded from the results, even though the condition `salary > 100000` might seem like it should handle this case.  This can be a subtle bug that's hard to track down.