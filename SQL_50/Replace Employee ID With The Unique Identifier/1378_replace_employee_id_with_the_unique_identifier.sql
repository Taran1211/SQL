---

### `1378_replace_employee_id_with_the_unique_identifier.sql`

```sql
-- Problem: 1378. Replace Employee ID With The Unique Identifier
-- Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/
-- Language: MySQL

SELECT 
    eu.unique_id, 
    e.name 
FROM 
    Employees e
LEFT JOIN 
    EmployeeUNI eu
ON 
    e.id = eu.id;
