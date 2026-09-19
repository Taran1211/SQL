# 1378. Replace Employee ID With The Unique Identifier

**Difficulty:** Easy  
**Topic:** Basic Joins  

## Problem Description

Table: `Employees`

| Column Name | Type    |
| :---        | :---    |
| id          | int     |
| name        | varchar |

`id` is the primary key for this table.
Each row of this table contains the id and the name of an employee in a company.

Table: `EmployeeUNI`

| Column Name | Type    |
| :---        | :---    |
| id          | int     |
| unique_id   | int     |

`(id, unique_id)` is the primary key for this table.
Each row of this table contains the id and the corresponding unique id of an employee in the company.

Write a solution to show the **unique ID** of each user, If a user does not have a unique ID slot just show `null`.

Return the result table in **any order**.

---

## Approach

Use a `LEFT JOIN` between `Employees` and `EmployeeUNI` on `id`. A `LEFT JOIN` ensures all employees are listed, even if they do not have a matching entry in `EmployeeUNI` (which will naturally output `null` for `unique_id`).

> **Note on Aliases:** When defining table aliases (`Employees e`, `EmployeeUNI eu`), you must use the aliases in the `ON` clause (`e.id = eu.id`) instead of the original table names.

---

## Solution

```sql
SELECT 
    eu.unique_id, 
    e.name 
FROM 
    Employees e
LEFT JOIN 
    EmployeeUNI eu
ON 
    e.id = eu.id;
