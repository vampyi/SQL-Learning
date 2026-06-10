#SELECT - telling database what to output (specific columns or all)
#FROM - which table contains the data we want to output
SELECT employee_id, first_name, last_name
FROM parks_and_recreation.employee_demographics;

#WHERE - only output rows which meet a certain conditio
SELECT employee_id, first_name, last_name
FROM parks_and_recreation.employee_demographics
WHERE age>35; #all the employees who have age greater then 35

# other logical operators include =, <> or != (not equal to), > (greater than), < (less than), >= (greater than or eq to), <= (less than or equal to)

#AND - allows you to select rows that satisfy two or more conditions (all conditions need to be satisfied)
SELECT * #outputs all column names
FROM parks_and_recreation.employee_demographics
WHERE age > 30 
	AND age < 40 
	AND employee_id > 6;

#OR - satisfy either of two conditions (rows where condition 1 alone is met will be printed, where cond 2 alone is met will also be printed and both true also)
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE age > 30 or gender = "male" # in mysql strings should be in single or double quotes
	AND employee_id >= 10;
    
#NOT - used to display records for which the condition is not true
SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE NOT gender = "male";

#NOT BETWEEN
SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE age NOT BETWEEN 30 AND 40;

#BETWEEN - selects values within a given range, values can be dates, numbers or text. needs to be paired with AND
SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE age BETWEEN 30 and 40
	AND employee_id > 10;
    
# BETWEEN is inclusive that is both the start and end range values are also included
# BETWEEN also helps in avoiding multiple OR's 

#IN - allows us to specify multiple values in a single line's WHERE clause instead of using multiple OR's
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE age IN(44, 35, 37);

#LIKE - allows you to filter rows that match a string pattern 
# '%' - represents zero or multiple characters
# '_' - represents a single character
SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE first_name LIKE 'A%';

SELECT * 
FROM Parks_and_Recreation.employee_demographics
WHERE last_name LIKE "_e%"; #gets the names who have 'e' in the second place in last name

#whenever you mix AND and OR use parentheses - AND is evaluated before OR unless until you use parentheses

#ORDER BY - helps you to reorder result based on the data in one or more columns
SELECT employee_id, first_name, last_name, age
FROM Parks_and_Recreation.employee_demographics
ORDER BY age;

#order by multiple columns (default order is ASCENDING (ASC) but to change it to DESCENDING use DESC after column name)
SELECT employee_id, first_name, last_name, age
FROM Parks_and_Recreation.employee_demographics
ORDER BY employee_id ASC, age DESC;

#you can substitute numbers for column names you specify in the SELECT clause
SELECT employee_id, first_name, last_name, age
FROM Parks_and_Recreation.employee_demographics
ORDER BY 1 ASC, 4 DESC; #outputs same as above query

#LIMIT - helps to get the topmost 'X' rows
SELECT employee_id, first_name, last_name, age
FROM Parks_and_Recreation.employee_demographics
ORDER BY 4
LIMIT 5;

#OFFSET - disregard topmost 'X' rows and then output
SELECT employee_id, first_name, last_name, age
FROM Parks_and_Recreation.employee_demographics
ORDER BY 4
LIMIT 5 OFFSET 10;
#in MySQL OFFSET needs to be paired with LIMIT






