# SQL Query Bug: Unexpected NULL Handling

This repository demonstrates a common, yet subtle, error in SQL queries involving NULL values in WHERE clauses.  The bug arises when a comparison is made against a column that might contain NULLs, leading to unexpected exclusion of records.

## Bug Description
The provided SQL query intends to select employees from the 'Sales' department with salaries greater than 100000. However, it fails to account for the possibility of NULL salary values.  Because any comparison with NULL evaluates to UNKNOWN, these records are effectively filtered out.

## How to Reproduce
1. Create a sample `employees` table with columns `department` (VARCHAR) and `salary` (NUMERIC, allowing NULL).
2. Insert some sample data, including at least one employee in the 'Sales' department with a NULL salary.
3. Run the buggy SQL query (found in `bug.sql`).
4. Observe that employees with NULL salaries are missing from the result set.

## Solution
The solution involves explicitly handling NULL values using the `IS NULL` or `IS NOT NULL` operators in conjunction with `OR` to handle both scenarios. 