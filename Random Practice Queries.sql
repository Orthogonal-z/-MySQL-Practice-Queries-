SELECT 
    d.emp_no, d.dept_no, e.emp_no, e.gender
FROM
    dept_emp d
        INNER JOIN
    employees e ON d.emp_no = e.emp_no

SELECT 
    e.emp_no, e.gender, e.hire_date, s.emp_no, s.salary
FROM
    employees e
        INNER JOIN
    salaries s ON e.emp_no = s.emp_no


SELECT 
    e.emp_no, e.first_name, e.last_name, s.emp_no, s.salary
FROM
    employees e
        INNER JOIN
    salaries s ON e.emp_no = s.emp_nofilm
ORDER BY e.first_name , e.last_name

SELECT 
    fa.actor_id,
    fa.film_id,
    fa.last_update,
    a.actor_id,
    a.first_name,
    a.last_name
FROM
    film_actor fa
        JOIN
    actor a ON fa.actor_id = a.actor_id
ORDER BY a.first_name


SELECT 
    to_date
FROM
    dept_emp


SELECT 
    a.actor_id, a.first_name, a.last_name, f.actor_id, f.film_id
FROM
    actor a
        JOIN
    film_actor f ON a.actor_id = f.actor_id
WHERE
    a.first_name = ('NICK')
    
    

SELECT 
    dp.dept_no,
    de.dept_no,
    dp.dept_name,
    de.from_date,
    de.to_date
FROM
    departments dp
        CROSS JOIN
    dept_emp de ON dp.dept_no = de.dept_no 
  
  SELECT DISTINCT dept_name FROM departments 
  
  
SELECT 
    e.gender, AVG(salary) AS avg_salary
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
GROUP BY COUNTgender


SELECT 
    gender, COUNT(gender) AS total_emp
FROM
    employees
GROUP BY gender

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    e.gender,
    e.hire_date,
    de.emp_no,
    de.dept_no,
    dep.dept_no,
    dep.dept_name
FROM
    employees e
        JOIN
    dept_manager dep ON e.emp_no = de.emp_no
        JOIN
    departments de ON de.dept_no = dept.dept_no 
    
    USE employees
    SELECT (from_date) FROM dept_emp 
    
    
    
    
SELECT 
    d.dept_no, d.dept_name, de.dept_no, de.from_date, de.to_date
FROM
    departments d
        JOIN
    dept_emp de ON d.dept_no = de.dept_no
WHERE
    de.from_date >= 1988 - 06 - 13
    
    USE sakila
SELECT 
    amount
FROM
    payment
    
SELECT 
    c.store_id,
    c.customer_id,
    c.first_name,
    c.last_name,
    c.email,
    p.payment_id,
    p.customer_id,
    p.amount,
    p.payment_date
FROM
    customer c
        JOIN
    payment p ON c.customer_id = p.customer_id
WHERE
    p.amount BETWEEN '2' AND '50'
GROUP BY c.customer_id
ORDER BY c.customer_id


SELECT * FROM paymentrental
SELECT 
    p.payment_id,
    p.staff_id,
    p.amount,
    p.customer_id,
    COUNT(r.staff_id),
    r.return_date
FROM
    payment p
        INNER JOIN
    rental r ON p.staff_id = r.staff_id
LIMIT 100



USE employees
SELECT 
    s.emp_no,
    s.salary,
    e.emp_no,
    e.gender,
    e.hire_date,
    t.emp_no
FROM
    salaries s
        INNER JOIN
    employees e ON s.emp_no = e.emp_no
        INNER JOIN
    titles t ON e.emp_no = t.emp_no
GROUP BY (gender)




SELECT 
    ROUND(AVG(salary), 1)
FROM
    salaries
USE sakila 
SELECT 
    amount
FROM
    payment;
SELECT 
    ROUND(AVG(amount), 1)
FROM
    payment

USE employees
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    e.gender,
    e.hire_date,
    s.emp_no,
    s.salary
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
ORDER BY e.first_name , e.last_name





USE sakila
SELECT 
    a.city_id,
    a.district AS state,
    a.phone,
    c.city_id,
    c.country_id,
    c.city,
    co.country_id,
    co.country
FROM
    address a
        INNER JOIN
    city c ON a.city_id = c.city_id
        INNER JOIN
    country co ON c.country_id = co.country_id
ORDER BY country DESC
LIMIT 10

    
USE employees
SELECT 
    de.dept_no,
    de.dept_name,
    dep.emp_no,
    dep.dept_no,
    dep.from_date,
    dep.to_date,
    e.emp_no,
    e.gender,
    e.first_name,
    s.emp_no,
    ROUND(s.salary, 1) AS salary
FROM
    departments de
        INNER JOIN
    dept_emp dep ON de.dept_no = dep.dept_no
        INNER JOIN
    employees e ON dep.emp_no = e.emp_no
        INNER JOIN
    salaries s ON e.emp_no = s.emp_no
ORDER BY e.first_name
 
 
USE sakila
SELECT * FROM film_actor WHERE actor_id = 3 

USE employees

SELECT 
    d.dept_no AS employees_id,
    d.dept_name AS department,
    de.emp_no AS employees_id,
    de.dept_no,
    COUNT(s.emp_no),
    MAX(s.salary)
FROM
    departments d
        INNER JOIN
    dept_emp de ON d.dept_no = de.dept_no
        INNER JOIN
    salaries s ON de.emp_no = s.emp_no
WHERE
    dept_name = 'Finance' 

 
SELECT 
    d.dept_no AS employees_id,
    d.dept_name AS department,
    de.emp_no AS employees_id,
    de.dept_no,
    s.emp_no,
    s.salary
FROM
    departments d
        INNER JOIN
    dept_emp de ON d.dept_no = de.dept_no
        INNER JOIN
    salaries s ON de.emp_no = s.emp_no
WHERE
    dept_name = 'Finance'
LIMIT 55935 
 
e.hire_date BETWEEN '1992-01-01' AND '2000-01-01',  
USE employees

SELECT 
    d.dept_name,
    d.dept_no,
    de.dept_no,
    de.emp_no,
    de.from_date,
    e.emp_no,
    e.first_name,
    e.gender,
    e.hire_date
FROM
    departments d
        JOIN
    dept_emp de ON d.dept_no = de.dept_no
        JOIN
    employees e ON de.emp_no = e.emp_no
WHERE
    d.dept_name = 'Sales'

SELECT 
    d.dept_name,
    d.dept_no,
    de.dept_no,
    de.emp_no,
    de.from_date,
    e.emp_no,
    e.first_name,
    e.gender,
    e.hire_date
FROM
    departments d
        JOIN
    dept_emp de ON d.dept_no = de.dept_no
        JOIN
    employees e ON de.emp_no = e.emp_no
GROUP BY d.dept_name , e.gender



USE employees
SELECT 
    d.dept_no,
    d.dept_name AS department_name,
    m.dept_no,
    m.emp_no,
    m.from_date,
    m.to_date,
    s.emp_no,
    AVG(s.salary) AS salary
FROM
    departments d
        JOIN
    dept_manager m ON d.dept_no = m.dept_no
        JOIN
    salaries s ON m.emp_no = s.emp_no
GROUP BY d.dept_name

 
    
    
 
USE employees
SELECT 
    *
FROM
    departments ; 
SELECT 
    d.dept_name
FROM
    departments d
WHERE
    d.dept_no = 'd002' ;


USE sakila
SELECT 
    country
FROM
    country ;
SELECT 
    c.city, c.country_id, ct.country_id, ct.country
FROM
    city c
        JOIN
    country ct ON c.country_id = ct.country_id
WHERE
    ct.country = 'India'; 






 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
    
    
    
    
    
    
    
    


