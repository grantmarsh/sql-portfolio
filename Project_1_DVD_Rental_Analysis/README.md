# Project 1: DVD Rental Business Analysis

**Dataset:** `dvdrental` (PostgreSQL)  
**Goal:** Analyze customer behavior, film performance, and store revenue.

## Objectives
- Identify top customers based on revenue  
- Determine high-performing films and categories  
- Analyze store revenue and identify inactive locations  

# Key Skills Applied
- Writing SQL queries with `JOIN`, `GROUP BY`, and `CASE`  
- Handling `NULL` values using `COALESCE` and `NULLIF`  
- Creating `views` for reusable reporting  
- Data aggregation and ranking  

# Example Query
```sql
-- Determine the top 5 film categories by total rental revenue --
SELECT c.name AS category_name,SUM(p.amount) AS total_revenue
FROM payment p
JOIN rental r
  ON p.rental_id = r.rental_id
JOIN inventory i
  ON r.inventory_id = i.inventory_id
JOIN film f
  ON i.film_id = f.film_id
JOIN film_category fc
  ON f.film_id = fc.film_id
JOIN category c
  ON fc.category_id = c.category_id
GROUP BY c.name
ORDER BY total_revenue DESC
LIMIT 5;
