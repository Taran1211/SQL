---

### `1581_customer_who_visited_but_did_not_make_any_transactions.sql`

```sql
-- Problem: 1581. Customer Who Visited but Did Not Make Any Transactions
-- Link: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/
-- Language: MySQL

SELECT 
    v.customer_id, 
    COUNT(*) AS count_no_trans 
FROM 
    Visits v
LEFT JOIN 
    Transactions t 
ON 
    v.visit_id = t.visit_id
WHERE 
    t.transaction_id IS NULL
GROUP BY 
    v.customer_id;
