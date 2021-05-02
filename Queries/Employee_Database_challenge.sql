-- Create 'Retirement Titles' table and export .csv file
SELECT e.emp_no,
    e.first_name,
	  e.last_name,
    ti.title,
    ti.from_date,
    ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title

INTO unique_titles
FROM retirement_titles as rt 
ORDER BY rt.emp_no, rt.to_date DESC;

--Retrieve number of retiring employees by most recent job title 
SELECT COUNT(title),
  ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT DESC;

--Create 'Mentorship Eligibility' table and export .csv
SELECT DISTINCT ON (emp_no) e.emp_no,
    e.first_name,
	  e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
    ti.title
    
INTO mentorship_eligibility
FROM employees as e
  INNER JOIN dept_emp as de
    ON(e.emp_no = de.emp_no)
  INNER JOIN titles as ti
    ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = ('9999-01-01'))
ORDER BY e.emp_no, de.to_date;

--Retrieve number of mentor eligible employees by most recent job title 
SELECT COUNT(title),
  me.title
INTO mentorship_info
FROM mentorship_eligibility as me
GROUP BY me.title
ORDER BY COUNT DESC;

--Create mentorship_hire_date table for longest working employees eligible for mentorship program 
SELECT DISTINCT ON (emp_no) e.emp_no,
    e.first_name,
	  e.last_name,
    e.birth_date,
    de.hire_date,
    de.to_date,
    ti.title
    
INTO mentorship_hire_date
FROM employees as e
  INNER JOIN dept_emp as de
    ON(e.emp_no = de.emp_no)
  INNER JOIN titles as ti
    ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = ('9999-01-01'))
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
ORDER BY e.emp_no, de.to_date;
--query table to find number of longest working employees eligible for mentorship program
SELECT COUNT(mh.emp_no),
  mh.title
FROM mentorship_hire_date as mentorship_hire_date
GROUP BY mh.title;


