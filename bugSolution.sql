```sql
SELECT * FROM employees WHERE (department = 'Sales' AND salary > 100000) OR (department = 'Sales' AND salary IS NULL);
```

This corrected query uses `OR` to include employees where the department is 'Sales' and the salary is either greater than 100000 or is NULL.  This accurately reflects the intention of selecting all sales employees regardless of salary value.