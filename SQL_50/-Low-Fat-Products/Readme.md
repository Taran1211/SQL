# 1757. Recyclable and Low Fat Products

- **Platform:** LeetCode
- **Difficulty:** Easy
- **Category:** Database / SQL

## Problem Statement
Write a solution to find the IDs of products that are both low fat and recyclable.

Return the result table in any order.

### Table: Products
| Column Name | Type |
|---|---|
| product_id | int |
| low_fats | enum |
| recyclable | enum |

- `product_id` is the primary key for this table.
- `low_fats` is an `ENUM` of type ('Y', 'N') where 'Y' means product is low fat and 'N' means it is not.
- `recyclable` is an `ENUM` of type ('Y', 'N') where 'Y' means product is recyclable and 'N' means it is not.

## Solution Explanation
We filter the `Products` table using a `WHERE` clause with two conditions combined by the `AND` operator:
1. `low_fats = 'Y'`
2. `recyclable = 'Y'`
