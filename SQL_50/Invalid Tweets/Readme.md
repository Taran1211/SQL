# 1683. Invalid Tweets

**Difficulty:** Easy  
**Topic:** Database / String Functions  

## Problem Description

Table: `Tweets`

| Column Name | Type    |
| :---        | :---    |
| tweet_id    | int     |
| content     | varchar |

- `tweet_id` is the primary key for this table.
- `content` consists of alphanumeric characters, `'!'`, or `' '`.

Write a solution to find the IDs of the invalid tweets. A tweet is considered invalid if the number of characters used in the content of the tweet is **strictly greater than 15**.

Return the result table in **any order**.

### Example

**Input:**

`Tweets` table:

| tweet_id | content                           |
| :---     | :---                              |
| 1        | Let us Code                       |
| 2        | More than fifteen chars are here! |

**Output:**

| tweet_id |
| :---     |
| 2        |

**Explanation:**
- Tweet 1 length = 11 (Valid)
- Tweet 2 length = 33 (Invalid, since 33 > 15)

---

## Approach

Use MySQL's built-in `LENGTH()` function inside a `WHERE` clause to filter out rows where the character length of `content` exceeds 15.

```sql
SELECT tweet_id 
FROM Tweets 
WHERE LENGTH(content) > 15;
