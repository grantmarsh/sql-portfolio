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
