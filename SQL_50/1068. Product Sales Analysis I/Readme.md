# 1068. Product Sales Analysis I

**Difficulty:** Easy  
**Topic:** Basic Joins  

## Problem Description

Table: `Sales`

| Column Name | Type |
| :---        | :--- |
| sale_id     | int  |
| product_id  | int  |
| year        | int  |
| quantity    | int  |
| price       | int  |

`(sale_id, year)` is the primary key for this table.  
`product_id` is a foreign key to the `Product` table.  
Each row of this table shows a sale on the product `product_id` in a certain `year`.

Table: `Product`

| Column Name  | Type    |
| :---         | :---    |
| product_id   | int     |
| product_name | varchar |

`product_id` is the primary key for this table.  
Each row of this table indicates the product name of each product.

Write a solution to report the `product_name`, `year`, and `price` for each `sale_id` in the `Sales` table.

Return the resulting table in **any order**.

---

## Approach

Use a `LEFT JOIN` (or `INNER JOIN`) to combine the `Sales` table with the `Product` table using `product_id` as the joining key. This allows us to fetch the corresponding `product_name` for each sale entry alongside its `year` and `price`.

---

## Solution

```sql
SELECT 
    p.product_name, 
    s.year, 
    s.price 
FROM 
    Sales s
LEFT JOIN 
    Product p 
ON 
    s.product_id = p.product_id;
