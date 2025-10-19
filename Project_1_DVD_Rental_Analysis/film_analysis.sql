-- Film revenue and rental frequency by category
--The Sports and Sci-Fi categories generated the highest total rental revenue.
-- Action films had a total of 1,013 rentals (3rd place overall), but ranked only 7th in total revenue
SELECT c.name AS category_name, COUNT(r.rental_id) AS total_rentals,
SUM(p.amount) AS total_revenue
FROM film f
JOIN film_category fc
  ON f.film_id = fc.film_id
JOIN category c 
  ON fc.category_id = c.category_id
JOIN inventory i 
  ON f.film_id = i.film_id
JOIN rental r 
  ON i.inventory_id = r.inventory_id
JOIN payment p 
  ON r.rental_id = p.rental_id
GROUP BY c.name
ORDER BY total_revenue DESC;

-- Find the top 10 actors ranked by total film revenue
SELECT a.first_name || ' ' || a.last_name AS actor_name,
ROUND(SUM(p.amount), 2) AS total_revenue
FROM actor a
JOIN film_actor fa 
  ON a.actor_id = fa.actor_id
JOIN film f 
  ON fa.film_id = f.film_id
JOIN inventory i 
  ON f.film_id = i.film_id
JOIN rental r 
  ON i.inventory_id = r.inventory_id
JOIN payment p 
  ON r.rental_id = p.rental_id
GROUP BY actor_name
ORDER BY total_revenue DESC
LIMIT 10;







