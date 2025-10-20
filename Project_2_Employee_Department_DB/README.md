
# Project 2: Employee and Department Database

**Goal:** Model a HR database designed to track employee information, job roles, and department assignments using table creation, foreign key constraints, and relationships between entities.

**SQL File: Employee_Department_DB**

# Database Structure
Three tables were created and linked through primary–foreign key relationships:
- department: contains each department’s name and location.
- job: lists unique job titles across departments.
- employee: stores employee details (first name, last name, salary, hire date, performance rating, and bonus) while referencing both the department and job tables through foreign keys.

# Business Questions
1. Which **departments** have the highest average performance ratings?
2. Which **job** titles have the strongest average performance?
3. Is there a relationship between **salary** and **performance** rating across the company?

# Department Performance
HR has the highest average performance rating (4.7), followed by Sales (4.35).
This suggests HR employees consistently outperform other departments.
# Job Performance
HR Coordinator and Data Analyst roles recorded the highest average performance ratings (4.9 and 4.7).
These findings highlight key roles contributing significantly to overall company success.
# Salary vs. Performance
Higher performance ratings generally align with higher salaries, indicating a positive correlation between pay and employee output.

# Skills used
- `CREATE TABLE` statements with constraints  
- Querying with `JOIN`, `GROUP BY`, and aggregate functions  
- Database normalization and relationship design  
