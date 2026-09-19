---

### `1068_product_sales_analysis_i.sql`

```sql
-- Problem: 1068. Product Sales Analysis I
-- Link: https://leetcode.com/problems/product-sales-analysis-i/
-- Language: MySQL

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
