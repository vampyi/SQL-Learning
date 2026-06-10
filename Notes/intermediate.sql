#Intermediate SQL
SELECT *
FROM Parks_and_Recreation.employee_salary;
#AGGREGATE FUNCTIONS 

#1. COUNT() - count the total number of rows of a table or of a column
SELECT COUNT(dept_id)
FROM Parks_and_Recreation.employee_salary;

#2. SUM() - calculates the sum of numeric values in a column
SELECT COUNT(dept_id), SUM(salary)
FROM Parks_and_Recreation.employee_salary
WHERE first_name LIKE 'A%';

#3. AVG() - calculates the average of numeric values in a column
SELECT AVG(salary)
FROM Parks_and_Recreation.employee_salary;

#4. MIN() - identifies the smallest value in a columnt
SELECT MIN(salary)
FROM Parks_and_Recreation.employee_salary;

#5. MAX() - identifies the largest value in a column
SELECT MAX(salary)
FROM Parks_and_Recreation.employee_salary;

# GROUP BY - 
#1.it's excel equivalent is Pivot tables
#2. command tells the database to separate your data into groups and then aggregate each group independently
#3. is similar to ORDER BY in syntax you can represent each column specified in select as numbers

SELECT dept_id, MIN(salary) as min_salary
FROM Parks_and_Recreation.employee_salary
GROUP BY dept_id
ORDER BY min_salary;

#NOTE - whatever value you want no duplicates in goes in GROUP BY and whatever you want to perform aggregations on goes in ORDER BY
#NOTE - When using GROUP BY, the SELECT colums should either be aggregated or be in GROUP BY or else it will throw error (because non-aggregated columns simply can't be printed (think about it like which employee_id can be printed for an aggregated MIN(salary) row?)



