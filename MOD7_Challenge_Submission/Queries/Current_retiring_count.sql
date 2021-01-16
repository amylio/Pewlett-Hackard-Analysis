--Count of Total Current Employees
SELECT COUNT(t.title),t.title
INTO current_emp_title
FROM titles as t
WHERE (t.to_date = '9999-01-01')
GROUP BY t.title
ORDER BY t.count DESC;

DROP TABLE curr_retire_emp CASCADE;

--Determining Current Employees Retiring
SELECT e.emp_no,
e.first_name,
e.last_name, 
de.dept_no, 
d.dept_name,
ti.title,
ti.from_date,
ti.to_date,
s.salary
INTO curr_retire_emp
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN departments as d
ON (de.dept_no = d.dept_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
INNER JOIN salaries as s
ON (e.emp_no = s.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31') AND (Ti.to_date = '9999-01-01');

DROP TABLE curr_retire_uniq CASCADE;

SELECT DISTINCT ON (emp_no) cre.emp_no,
cre.first_name,
cre.last_name,
cre.title,
cre.dept_name,
cre.salary
INTO curr_retire_uniq
FROM curr_retire_emp as cre;

SELECT COUNT (cru.title), cru.title
FROM curr_retire_uniq as cru
GROUP BY cru.title
ORDER BY cru.count DESC;

SELECT COUNT (cru.dept_name), cru.dept_name
FROM curr_retire_uniq as cru
GROUP BY cru.dept_name
ORDER BY cru.count DESC;

SELECT * FROM curr_retire_uniq;

SELECT (cru.emp_no), 
SUM (cru.salary) AS total
FROM curr_retire_uniq as cru
GROUP BY cru.dept_name
ORDER BY cru.total DESC;

SELECT * FROM mentorship_eligibility;

SELECT DISTINCT ON (emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.dept_no,
de.from_date,
de.to_date,
d.dept_name,
t.title
INTO mentorship_elig_dept
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN departments as d
ON (de.dept_no = d.dept_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND (de.to_date = '9999-01-01')
ORDER BY emp_no;

SELECT COUNT (med.dept_name), med.dept_name
FROM mentorship_elig_dept as med
GROUP BY med.dept_name
ORDER BY med.count DESC;

--Create table based on employees with birth year of 1964
SELECT DISTINCT ON (emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.dept_no,
de.from_date,
de.to_date,
d.dept_name,
t.title
INTO mentorship_elig_dept_64
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN departments as d
ON (de.dept_no = d.dept_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1964-01-01' AND '1964-12-31') AND (de.to_date = '9999-01-01')
ORDER BY emp_no;

SELECT COUNT (md.dept_name), md.dept_name
FROM mentorship_elig_dept_64 as md
GROUP BY md.dept_name
ORDER BY md.count DESC;




