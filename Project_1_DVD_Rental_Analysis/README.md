# Project 1: DVD Rental Business Analysis

**Dataset:** `dvdrental` (PostgreSQL)  
**Goal:** Analyze customer behavior, film performance, and store revenue.

## Objectives
- Identify top customers based on revenue  
- Determine high-performing films and categories  
- Analyze store revenue and identify inactive locations  

# Skills Used
- Writing SQL queries with `JOIN`, `GROUP BY`, and `CASE`  
- Handling `NULL` values using `COALESCE` and `NULLIF`  
- Creating `views` for reusable reporting  
- Data aggregation and ranking  

# 1. Customer Analysis
**SQL File: customer_analysis.sql**

**Description:**
This section examines customer spending patterns and engagement using the dvdrental dataset. Key metrics include total revenue, top customers, and average rentals.

**Insights from SQL Analysis:**
- Total revenue: $61,212.04
- Total number of customers: 599
- Top 10 customers contribution: $1,844.16 (~3% of total revenue)
- Average rentals per customer: 26.78

**Interpretation:**
The top 10 customers contribute only 3% of total revenue, indicating there aren’t any heavy spenders dominating sales.
Out of 599 total customers, revenue is broadly and evenly distributed, suggesting a balanced customer base.
On average, each customer rents 26.78 films, showing consistent engagement across the dataset.

# 2. Film Analysis
**SQL File: film_analysis.sql**

**Description:**
This section explores film performance by category and actor to understand what drives rental revenue in the dvdrental business.

**Insights and Interpretation from SQL Analysis:**
- Film Revenue by Category:
Sports films produced the highest revenue overall, followed by Sci-Fi and Animation.
The Action category ranked third in total rentals but only seventh in total revenue, indicating that while these films are popular among customers, they generate lower revenue per rental.
This suggests an opportunity to revisit pricing or promote higher-grossing Action titles to better align popularity with profitability.
- Top Actors by Revenue:
The highest-earning actors have appeared in films that generate the most total rental revenue, suggesting that popular actors are often associated with financially successful titles.




