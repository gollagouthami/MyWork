select * from employees;

-- 1) Write a SQL query to find the salaries of all employees

SELECT SALARY FROM EMPLOYEES;

-- 2) Write a SQL query to find the unique designations of the employees. Return job name.

SELECT DISTINCT JOB_ID AS JOB_NAME FROM EMPLOYEES;

-- 3) write a SQL query to list the employees’ name, increased their salary by 15%, and expressed as number of Dollars.

SELECT FIRST_NAME AS EMPLOYEE_NAME,SALARY,CONCAT('$', FORMAT((SALARY+SALARY*0.15), 2)) AS NO_OF_DOLLAR FROM EMPLOYEES;

-- 4) Write a SQL query to list the employee's name and job name as the format of "Employee & Job".

SELECT FIRST_NAME AS EMPLOYEE_NAME,JOB_ID,CONCAT(FIRST_NAME,' & ',JOB_ID) AS EMPLOYEE_JOB from EMPLOYEES;

/* 5) Write a SQL query to find those employees with the hire date in a format like February 22, 1991.
 Return employee ID, employee name, salary, and hire date.*/
 
 SELECT EMPLOYEE_ID, CONCAT(FIRST_NAME,' ',LAST_NAME) as EMPLOYEE_NAME, SALARY,
 DATE_FORMAT(HIRE_DATE, "%M %d, %Y") AS HIRE_DATE 
 FROM EMPLOYEES;
  
 -- *** Sir, If we want exact 'February 22, 1991' date then we have to use LIKE OPERATOR, but there is no data with 'February 22, 1991'.
 
 SELECT EMPLOYEE_ID, CONCAT(FIRST_NAME,' ',LAST_NAME) as EMPLOYEE_NAME, SALARY,
 DATE_FORMAT(HIRE_DATE, "%M %d, %Y") AS HIRE_DATE 
 FROM EMPLOYEES WHERE DATE_FORMAT(HIRE_DATE, "%M %d, %Y") LIKE 'February 22, 1991%';
  
 
 -- 6) Write a SQL query to count the number of characters except for the spaces for each employee name. Return employee name length.
 
 SELECT CONCAT(FIRST_NAME,'',LAST_NAME) AS EMPLOYEE_NAME,
 CHAR_LENGTH(TRIM(CONCAT(FIRST_NAME,'',LAST_NAME))) AS EMP_NAME_LENGTH FROM EMPLOYEES;
 
 -- 7) Write a SQL query to find the employee ID, salary, and commission of all the employees. 
 

 SELECT EMPLOYEE_ID,SALARY,(SALARY*(COMMISSION_PCT)) AS COMMISION FROM EMPLOYEES;
 
 -- 8) Write a SQL query to find the unique department with jobs. Return department ID, Job name. 
 
 SELECT DISTINCT DEPARTMENT_ID,JOB_ID from EMPLOYEES;
  
 -- 9) Write a SQL query to find those employees who joined before 1991. Return complete information about the employees.
 
  SELECT * FROM EMPLOYEES 
 WHERE DATE_FORMAT(HIRE_DATE,"%Y") < '1991';
 
  -- AND 
  
 SELECT * FROM EMPLOYEES a,JOB_HISTORY b 
 where a.EMPLOYEE_ID = b.EMPLOYEE_ID and DATE_format(START_DATE,"%Y") < '1991';
 

 
 -- Write a SQL query to compute the average salary of those employees who work as ‘shipping clerk’. Return average salary.
 
 SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) AS EMPLOYEE_NAME,
 AVG(SALARY) AS AVG_SALARY FROM EMPLOYEES WHERE JOB_ID = 'SH_CLERK';
 

 
 
 