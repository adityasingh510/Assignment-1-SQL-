create database org;
use org;
CREATE TABLE Worker (
WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY INT(15),
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
);
INSERT INTO Worker
(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE,
DEPARTMENT) VALUES
(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');

-- Q1)Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name <WORKER_NAME>?
-- ANS
SELECT FIRST_NAME AS Worker_Name FROM Worker;

-- Q2) Write an SQL query to fetch unique values of DEPARTMENT from the worker table?
-- ANS
SELECT DISTINCT DEPARTMENT FROM Worker;

-- Q3: Write an SQL query to print the first three characters of FIRST_NAME from the worker table?
-- ANS we can approach in two ways 
SELECT SUBSTRING(FIRST_NAME, 1, 3) AS First_three_characters FROM Worker;
select first_name,substring(First_name,1,3) from worker;

-- Q4) Write an SQL query that fetches the unique values of DEPARTMENT from the Worker table and prints its length.
-- ANS
SELECT DISTINCT DEPARTMENT, LENGTH(DEPARTMENT) AS Department_Length


--- Question 5 th did not understand?

-- Q6) Write an SQL query to print details of workers  with Department name as "Admin"?
-- ANS
SELECT *FROM Worker WHERE DEPARTMENT = 'Admin';

-- Q7) Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000?
-- ANS
SELECT *FROM Worker WHERE SALARY BETWEEN 100000 AND 500000;

-- Q8) Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000?
-- ANS
SELECT FIRST_NAME,LAST_NAME FROM Worker WHERE SALARY BETWEEN 50000 AND 100000;

-- Q9)


-- Q10) Write an SQL query to print details of the Workers who joined in Feb’2014?

-- ANS
SELECT *FROM Worker WHERE JOINING_DATE >= '2014-02-01' AND JOINING_DATE <= '2014-02-28';
