---

**`1683_invalid_tweets.sql`**

```sql
-- Problem: 1683. Invalid Tweets
-- Link: https://leetcode.com/problems/invalid-tweets/
-- Language: MySQL

SELECT 
    tweet_id 
FROM 
    Tweets 
WHERE 
    LENGTH(content) > 15;
