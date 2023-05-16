


            --1--

SELECT emp_no,last_name,first_name,sex
FROM employees
WHERE emp_no IN
(
	SELECT salary
	FROM salaries	
);
			
SELECT e.emp_no, e.last_name, e.first_name, s.salary
FROM employees as e
INNER JOIN salaries as s 
ON e.emp_no=s.emp_no;

            --2--
			
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

            --3--

SELECT dm.dept_no, dpt.dept_nam, dm.emp_no, e.last_name,e.first_name
FROM dept_manager AS dm
INNER JOIN departments AS dpt 
ON dm.dept_no=dpt.dept_no
INNER JOIN employees e 
ON dm.emp_no = e.emp_no;

--SELECT * FROM dept_manager
--SELECT * FROM employees

            --4--
			
SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, dpt.dept_nam
FROM dept_emp AS de
INNER JOIN employees AS e 
ON de.emp_no = e.emp_no
INNER JOIN departments AS dpt 
ON de.dept_no = dpt.dept_no

            --5--
			
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

            --6--

SELECT dpt.dept_nam, de.emp_no, e.last_name, e.first_name
FROM departments AS dpt
INNER JOIN dept_emp AS de 
ON dpt.dept_no = de.dept_no
INNER JOIN employees AS e 
ON de.emp_no = e.emp_no
WHERE dpt.dept_nam = 'Sales';

           --7--
		   
SELECT dpt.dept_nam, de.emp_no, e.last_name, e.first_name
FROM departments AS dpt
INNER JOIN dept_emp AS de 
ON dpt.dept_no = de.dept_no
INNER JOIN employees AS e 
ON de.emp_no = e.emp_no
WHERE dpt.dept_nam = 'Sales' 
OR dpt.dept_nam ='Development';

          --8--
		  		  
SELECT last_name, COUNT(last_name) AS "last_name counts"
FROM employees
GROUP BY last_name
ORDER BY "last_name counts" DESC;
