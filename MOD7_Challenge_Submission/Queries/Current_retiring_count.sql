--Count of Total Current Employees
SELECT COUNT(t.title),t.title
INTO current_emp_title
FROM titles as t
WHERE (t.to_date = '9999-01-01')
GROUP BY t.title
ORDER BY t.count DESC;

--Determining Current Employees Retiring
SELECT e.emp_no,
e.first_name,
e.last_name,
ti.title,
ti.from_date,
ti.to_date
INTO curr_retire_emp
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31') AND (Ti.to_date = '9999-01-01');

SELECT DISTINCT ON (emp_no) cre.emp_no,
cre.first_name,
cre.last_name,
cre.title
INTO curr_retire_uniq
FROM curr_retire_emp as cre;

SELECT COUNT (cru.title), cru.title
FROM curr_retire_uniq as cru
GROUP BY cru.title
ORDER BY cru.count DESC;





