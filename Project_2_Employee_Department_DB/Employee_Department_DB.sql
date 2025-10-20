-- Project 2: Employee & Department Database

-- Department table
CREATE TABLE department (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL,
    location VARCHAR(50)
);
INSERT INTO department (department_name, location) 
  VALUES
('Administration', 'Greenville'),
('Marketing', 'Chicago'),
('HR', 'Richmond'),
('IT', 'Houston'),
('Sales', 'Dallas');


-- Job table (Job Titles)
CREATE TABLE job (
    job_id SERIAL PRIMARY KEY,
    job_title VARCHAR(100) UNIQUE NOT NULL
);
-- Jobs
INSERT INTO job (job_title) VALUES
('Software Engineer'),
('Data Analyst'),
('IT Manager'),
('HR Coordinator'),
('Recruiter'),
('Operations Specialist'),
('Operations Manager'),
('Marketing Associate'),
('Financial Analyst'),
('Accountant');

-- Employee table
CREATE TABLE employee (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department_id INT REFERENCES department(department_id),
    job_id INT REFERENCES job(job_id),
    hire_date DATE NOT NULL,
    salary NUMERIC(10,2) NOT NULL,
    performance_rating NUMERIC(3,2) CHECK (performance_rating >= 0 AND performance_rating <= 5),
    bonus NUMERIC(10,2)
);
-- Employees
INSERT INTO employee (first_name, last_name, department_id, job_id, hire_date, salary, performance_rating, bonus) VALUES
('Jacob', 'Johnson', 3, 1, '2018-05-12', 85000, 4.5, 5000),
('Bob', 'Dylan', 2, 4, '2020-02-10', 62000, 3.8, 2000),
('Ryan', 'Gosling', 3, 2, '2016-09-18', 95000, 4.7, 6000),
('David', 'Garcia', 5, 6, '2019-07-01', 72000, 4.2, 3500),
('Eve', 'Davis', 3, 3, '2015-01-22', 115000, 4.9, 7000),
('Frank', 'Wilson', 1, 9, '2017-03-15', 90000, 4.3, 4500),
('Anne', 'Hathaway', 4, 8, '2019-11-05', 68000, 4.0, 3000),
('Hannah', 'Kim', 2, 5, '2018-08-12', 64000, 3.9, 2500),
('Johnny', 'Depp', 1, 10, '2021-06-01', 75000, 4.1, 3800),
('Jack', 'White', 5, 7, '2016-12-20', 128000, 4.5, 5200);

-- Average salary by department
SELECT d.department_name,ROUND(AVG(e.performance_rating), 2) 
AS avg_performance FROM employee e
JOIN department d 
  ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY avg_performance DESC;


--Average Performance by Job Title
SELECT j.job_title, ROUND(AVG(e.performance_rating), 2) AS avg_performance
FROM employee e
JOIN job j ON e.job_id = j.job_id
GROUP BY j.job_title
ORDER BY avg_performance DESC;

--Salary vs. Performance Rating
SELECT FLOOR(performance_rating) AS rating_group,
ROUND(AVG(salary), 2) AS avg_salary
FROM employee
GROUP BY rating_group
ORDER BY rating_group DESC;