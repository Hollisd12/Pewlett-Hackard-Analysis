-- DELIVERABLE 1
-- determine number of retiring employees per title and identify employees who are eligible to participate
-- in a mentorship program
-- create # of retiring employees by title

SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date

INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title

INTO unique_titles
FROM retirement_titles AS rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY emp_no ASC, to_date DESC;

-- Retrieve the number of employees by their most recent job title that are about to retire
SELECT COUNT (title), title
INTO retiring_titles
FROM unique_titles
GROUP BY (title)
ORDER BY count DESC;

-- DELIVERABLE 2
-- create mentorship-eligibiloty table to hold current employees w/ birth date in 1965
SELECT DISTINCT ON(emp_no) e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
    t.title

INTO mentorship_eligibility
FROM employees AS e
    INNER JOIN dept_emp AS de
    ON (e.emp_no = de.emp_no)
    INNER JOIN titles AS t
    ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
    AND (de.to_date = '9999-01-01')
ORDER BY emp_no ASC
