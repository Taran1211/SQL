# [584. Find Customer Referee](https://leetcode.com/problems/find-customer-referee/description/?envType=study-plan-v2&envId=top-sql-50)

- **Platform:** LeetCode
- **Difficulty:** Easy
- **Category:** Database / SQL

## Problem Statement

Find the names of the customer that are either:
1. **referred by** any customer with `id != 2`.
2. **not referred by** any customer.

Return the result table in **any order**.

### Table: `Customer`

| Column Name | Type |
| :--- | :--- |
| id | int |
| name | varchar |
| referee_id | int |

- `id` is the primary key column for this table.
- Each row of this table indicates the ID of a customer, their name, and the ID of the customer who referred them.

## Solution Explanation

In SQL, comparison operators like `<>` (not equal) return `UNKNOWN` when evaluated against `NULL` values instead of `TRUE`. 

To ensure we include customers who were not referred by anyone (where `referee_id` is `NULL`), we must explicitly handle `NULL` values using the `IS NULL` condition alongside `referee_id <> 2`.

## Solution

```sql
# Write your MySQL query statement below
SELECT name 
FROM Customer 
WHERE referee_id <> 2 OR referee_id IS NULL;
