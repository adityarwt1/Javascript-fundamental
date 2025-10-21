CREATE TABLE employies (
emp_id SERIAL NOT NULL,
fname VARCHAR(100) NOT NULL,
lname VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE,
dept VARCHAR(100) NOT NULL DEFAULT 'IT',
salary INT NOT NULL,
hire_date DATE DEFAULT CURRENT_DATE
)
/* delete the whole table*/
DROP TABLE employies;

/*all values present in the table*/
SELECT * FROM employies;


// 

UPDATE employies SET dept = 'DEVELOPER' WHERE emp_id = 1;
UPDATE employies SET dept = 'HR' WHERE dept = 'DEVELOPER';


INSERT INTO employies(fname , lname, email, dept, salary) VALUES ('Aditya' , 'Rawat' , 'adityarawat2487@gmail.com' , 'HR' , 60000 );
INSERT INTO employies(fname , lname , email, dept , salary) VALUES ('Aman' , 'Rawat' , 'amanrawat26022004@gmail.com' , 'OPERATOR' , 30000  );
INSERT INTO employies(fname , lname , email, dept , salary) VALUES ('Raj' , 'Sharma' , 'rajsharma@gmai.com' , 'IT' , 50000 );
INSERT INTO employies(fname , lname , email, dept , salary) VALUES ('Priya' , 'Singh' , 'priyasingh@gmail.com' , 'HR' , 45000 );
INSERT INTO employies(fname , lname , email, dept , salary) VALUES ('Arjun' , 'Verjma' , 'arjunverma@gmail.com' , 'DEVELOPER' , 50000 );
INSERT INTO employies(fname , lname , email, dept , salary) VALUES ('Suman' , 'Patel' , 'sumanpate@gmail.com' , 'FINANCE' , 60000 );
INSERT INTO employies(fname , lname , email, dept , salary) VALUES ('Vijay' , 'Nair' , 'vijyanair@gmail.com' , 'MARKETING' , 52000 );



ALTER TABLE majdoor RENAME TO employies;

DELETE FROM employies;


SELECT * FROM employies WHERE emp_id = 1 ;
SELECT * FROM employies WHERE dept= 'HR' ;

SELECT * FROM employies ORDER BY emp_id;

/* select between two values*/

SELECT * FROM employies WHERE dept = 'HR' OR dept= 'OPERATOR';

/*matching valuest*/

SELECT * FROM employies WHERE dept = 'HR' AND salary > 50000;

/*in operator use*/

SELECT * FROM employies WHERE dept IN ('HR' , 'OPERATOR');

/*NOT IN operator use*/

SELECT * FROM employies WHERE dept NOT IN ('HR' , 'OPERATOR');


/*BETWEEN OPERATOR*/

SELECT * FROM employies WHERE salary BETWEEN 40000 AND 50000;


/* usnique values in the collum*/

SELECT DISTINCT dept FROM employies;


/* shorting of the accendig order data*/

SELECT * FROM employies ORDER BY fname;
SELECT * FROM employies ORDER BY dept;


/* shorting data according to the desceding order*/

SELECT * FROM employies ORDER BY salary DESC;
SELECT * FROM employies ORDER BY emp_id DESC;

/*limitintg*/

SELECT * FROM employies  LIMIT 3 ;

/*like operator*/

SELECT * FROM employies WHERE fname LIKE '%i%';

/* where only found the only two characrter*/

SELECT * FROM employies WHERE dept LIKE '__';

/*COUNT THE DATA RECORD*/

SELECT COUNT(emp_id) FROM employies;

/*sum aggregator*/

SELECT SUM(salary) FROM  employies;

/* average aggreagator*/
SELECT AVG(salary) FROM employies;

/*min in the agreegator*/

SELECT MIN(salary) FROM employies; 

/*max in the agreegator*/

SELECT MAX(salary) FROM employies; 


/*GROUP BY*/

SELECT dept FROM employies GROUP BY dept;

/*group from to aggregation*/

SELECT dept, COUNT(emp_id) FROM employies GROUP BY dept;

/*summy and the group by*/
SELECT dept, SUM(salary) FROM employies GROUP BY dept;

/*concat */
SELECT CONCAT('HELOO' ,' WORLD');

/*contatinbation with the databaser*/

SELECT CONCAT(fname , lname) FROM employies;
SELECT  emp_id, CONCAT(fname , lname) AS FULLNAME , dept FROM employies;

/* with seperator*/

SELECT CONCAT_WS('-' , fname, lname) FROM employies;


/*subtring*/

SELECT SUBSTRING(fname, 1,2) FROM employies;

SELECT REPLACE(fname ,'Aditya','Useless') FROM employies;

/*reverse order*/

SELECT REVERSE(fname) FROM employies;

/*length findin the array*/
SELECT * FROM employies WHERE LENGTH(fname) > 5;

/** upper and the lower*/
SELECT LOWER(fname) FROM employies;
SELECT UPPER(fname) FROM employies;

/*WORD FROM THE LEFTG*/

SELECT LEFT(fname, 3) FROM employies;
SELECT RIGHT(fname, 3) FROM employies;

/*TRIM IN THE STRING*/


SELECT TRIM(fname) FROM employies;


/*trim and lenght*/

SELECT LENGTH(TRIM('      asdfasdf     ')) ;

/*POSTITION IN THE STRING*/

SELECT POSITION('HE'IN 'HELLO');

SELECT * FROM employies;

/*CONCATINATION TASK*/

SELECT CONCAT_WS(':' , emp_id,fname,dept, salary) FROM employies;

/*concatination with the*/
SELECT CONCAT_WS(':' , emp_id,CONCAT_WS(' ' , fname, lname),dept, salary) FROM employies;

/*getting the department in the fronm of lowercase*/ 

SELECT CONCAT_WS(':' , emp_id, fname, LOWER(dept)) FROM employies;

/*GETTIN THE VALUES USING THE */
SELECT CONCAT(LEFT(dept, 1), emp_id, fname) FROM employies;

/*altering the table*/

/*adding the colum*/

ALTER TABLE employies ADD COLUMN age INT NOT NULL DEFAULT 18;

/*REMOVE THE COLUMN*/
ALTER TABLE employies DROP COLUMN age;

/*rename the colums*/
ALTER TABLE employies RENAME COLUMN hire_date TO joining_date;

/*rename the tabel*/
ALTER TABLE employees RENAME TO employies;

/*change the data type*/
ALTER TABLE employies ALTER COLUMN fname SET DATA TYPE VARCHAR(200);

/*GIVE THE DEFAULT VALUES WHEN THE NOT FOUND THE FIRST NAME*/

ALTER TABLE employies ALTER COLUMN fname SET DEFAULT 'unknow';

/*CHECK THE VALUES*/

ALTER TABLE employies ADD COLUMN phone VARCHAR(20) UNIQUE CHECK(LENGTH(phone) >= 10);

/*insert trying*/;
UPDATE employies SET phone = '9244524565' WHERE emp_id = 1;

/*remove the check values*/
ALTER TABLE employies DROP CONSTRAINT employies_phone_check;

/*naming the constraintg*/
ALTER TABLE employies DROP COLUMN phone;
ALTER TABLE employies ADD COLUMN phone VARCHAR(20) CONSTRAINT phone_no_less_than_10digit UNIQUE CHECK(LENGTH(phone) >= 10);

/*insertiin the phone number*/
UPDATE employies SET phone = 9244524565 WHERE 	emp_id = 1;

/*gettin the high and the low salary*/
SELECT 
    salary,
    fname,
    CASE 
        WHEN salary >= 40000 THEN 'HIGH'
        ELSE 'LOW'
    END AS sal_cat
FROM employies;


/*bonus of the salary*/

SELECT 
	salary,
	fname,
	CASE 
		WHEN salary  >= 10000 THEN salary / 10 
	END AS bonus
FROM employies;
 
/*calulatin the bonus high values */
SELECT 
    CASE 
        WHEN salary >= 40000 THEN 'HIGH'
        ELSE 'LOW'
    END AS sal_cat, COUNT(emp_id)
FROM employies GROUP BY sal_cat;

/**/
/**/
/**/
SELECT * FROM employies ORDER BY emp_id;


/*CREATE THE CUSTOMER TABBLE*/

CREATE TABLE customers(
cust_id SERIAL PRIMARY KEY,
cust_name VARCHAR(100) NOT NULL
);
/*creating the realtion and the order table*/

CREATE TABLE orders (
ord_id SERIAL PRIMARY KEY,
ord_date DATE NOT NULL,
price NUMERIC	NOT NULL,
cust_id INTEGER NOT NULL,
FOREIGN KEY (cust_id) 
REFERENCES customers(cust_id)
);


INSERT INTO customers(cust_name) VALUES ('Aditya' ),('Aman' ), ('Shivendra'),('Developer');

SELECT * FROM customers;


/*inserting the data to the order table */

INSERT INTO orders (ord_date, cust_id, price) VALUES ('2025-09-11',1,250.00),('2025-09-11',2,300), ('2025-09-11',3,400),('2025-09-11',1,300);


SELECT * FROM orders;

SELECT column_name, data_type, is_nullable, column_default
FROM information_schema.columns
WHERE table_name = 'orders';


/*reading with the two table */

SELECT * FROM customers CROSS JOIN orders ;

/*inner join*/
SELECT * FROM customers c  INNER JOIN orders o ON c.cust_id = o.cust_id;

/*inner joint and the group by name*/

SELECT c.cust_name, SUM(o.price) FROM customers c  
INNER JOIN orders o 
ON c.cust_id = o.cust_id 
GROUP BY cust_name;

/*left join*/
SELECT * FROM customers c  
LEFT  JOIN orders o 
ON c.cust_id = o.cust_id 
;
/*right join*/
SELECT * FROM customers c  
RIGHT  JOIN orders o 
ON c.cust_id = o.cust_id 
;

/*MANY MANY RELATIONSHIP*/

SELECT FROM orders;
-- Create Students table
CREATE TABLE students(
    s_id SERIAL PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL
);

-- Create Courses table
CREATE TABLE courses(
    c_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    fees NUMERIC NOT NULL
);

-- Create Enrollment table (junction table)
CREATE TABLE enrollment (
    enrollment_id SERIAL PRIMARY KEY,
    s_id INT NOT NULL,
    c_id INT NOT NULL,
    enrollment_date DATE DEFAULT CURRENT_DATE NOT NULL,
    FOREIGN KEY (s_id) REFERENCES students(s_id),
    FOREIGN KEY (c_id) REFERENCES courses(c_id)
);

-- Inserting data into Students
INSERT INTO students(student_name) 
VALUES ('RAJU'), ('SHYAM'), ('ALEX');

-- Inserting data into Courses
INSERT INTO courses (course_name, fees) 
VALUES ('MATHEMATICS', 500),
       ('PHYSICS', 600),
       ('CHEMISTRY', 700);

-- Inserting data into Enrollment
INSERT INTO enrollment(s_id, c_id) 
VALUES (1, 1),
       (1, 2),
       (2, 1),
       (2, 3),
       (3, 3);

-- Drop tables in correct order (first dependent, then parent)
-- DROP TABLE enrollment;
-- DROP TABLE courses;
-- DROP TABLE students;

SELECT * FROM students;
SELECT * FROM courses;
SELECT * FROM enrollment;


--- Gettin the values matched column

SELECT s.student_name, c.course_name , c.fees , e.enrollment_date FROM enrollment e JOIN students s ON e.s_id = s.s_id JOIN courses c ON c.c_id=e.c_id;



--- applesoter setup

CREATE TABLE customers (
    cust_id SERIAL PRIMARY KEY,
    cust_name VARCHAR(100) NOT NULL
);

INSERT INTO customers (cust_name)
VALUES
    ('Raju'), ('Sham'), ('Paul'), ('Alex');



CREATE TABLE orders (
    ord_id SERIAL PRIMARY KEY,
    ord_date DATE NOT NULL,
    cust_id INTEGER NOT NULL,
    FOREIGN KEY (cust_id) REFERENCES customers(cust_id)
);

INSERT INTO orders (ord_date, cust_id)
VALUES
    ('2024-01-01', 1),  -- Raju first order
    ('2024-02-01', 2),  -- Sham first order
    ('2024-03-01', 3),  -- Paul first order
    ('2024-04-04', 2);  -- Sham second order

CREATE TABLE order_items (
    item_id SERIAL PRIMARY KEY,
    ord_id INTEGER NOT NULL,
    p_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    FOREIGN KEY (ord_id) REFERENCES orders(ord_id),
    FOREIGN KEY (p_id) REFERENCES products(p_id)
);

INSERT INTO order_items (ord_id, p_id, quantity)
VALUES
    (1, 1, 1),  -- Raju ordered 1 Laptop
    (1, 4, 2),  -- Raju ordered 2 Cables
    (2, 1, 1),  -- Sham ordered 1 Laptop
    (3, 2, 1),  -- Paul ordered 1 Mouse
    (3, 4, 5),  -- Paul ordered 5 Cables
    (4, 3, 1);  -- Sham ordered 1 Keyboard


CREATE TABLE products (
    p_id SERIAL PRIMARY KEY,
    p_name VARCHAR(100) NOT NULL,
    price NUMERIC NOT NULL
);

INSERT INTO products (p_name, price)
VALUES
    ('Laptop', 55000.00), 
    ('Mouse', 500),
    ('Keyboard', 800.00),
    ('Cable', 250.00)
;
--select the order and the user data
SELECT 
	c.cust_name,
	o.ord_date,
	p.p_name,
	p.price,
	oi.quantity,
	(oi.quantity*p.price) AS total_price
FROM order_items oi
	JOIN
		products p ON oi.p_id=p.p_id
	JOIN
		orders o ON o.ord_id=oi.ord_id
	JOIN
		customers c ON o.cust_id=c.cust_id;


--views 
CREATE VIEW billing_info AS
SELECT 
	c.cust_name,
	o.ord_date,
	p.p_name,
	p.price,
	oi.quantity,
	(oi.quantity*p.price) AS total_price
FROM order_items oi
	JOIN
		products p ON oi.p_id=p.p_id
	JOIN
		orders o ON o.ord_id=oi.ord_id
	JOIN
		customers c ON o.cust_id=c.cust_id;
SELECT * FROM billing_info;


--having cluse


SELECT p_name, SUM(total_price) FROM billing_info GROUP BY p_name HAVING SUM(total_price) >500;
---ROLLUP
SELECT p_name, SUM(total_price) FROM billing_info GROUP BY ROLLUP( p_name );
--- COLLASE using for the tatal remove the null values
SELECT COALESCE(p_name, 'Total') p_name, SUM(total_price) FROM billing_info GROUP BY ROLLUP( p_name ) ORDER BY SUM(total_price);

---prsedure

CREATE OR REPLACE PROCEDURE update_emp_salary(
    p_employee_id INT,
    p_new_salary NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE employies
    SET salary = p_new_salary
    WHERE emp_id = p_employee_id;
END;
$$;

0
--calling the prosedure

CALL update_emp_salary(1,90000);

-----subquery

SELECT
    e.emp_id,
    e.fname,
    e.salary

FROM
    employees e
WHERE e.dept = 'HR'
    AND e.salary = (
    SELECT MAX(emp.salary)
    FROM employees emp
    WHERE emp.dept = 'HR'
);
---- function in the postgres sql

CREATE OR REPLACE FUNCTION dept_max_sal_emp1(dept_name VARCHAR)
RETURNS TABLE(emp_id INT, fname VARCHAR, salary NUMERIC)
AS $$
BEGIN
    RETURN QUERY
    SELECT
        e.emp_id, e.fname, e.salary
    FROM
        employies e
    WHERE
        e.dept = dept_name
        AND e.salary = (
            SELECT MAX(emp.salary)
            FROM employies emp
            WHERE emp.dept = dept_name
        );
END;
$$ LANGUAGE plpgsql;

SELECT * FROM dept_max_sal_emp1('HR');

SELECT fname, SUM(salary) OVER() FROM employies;


SELECT fname,salary, SUM(salary) OVER(ORDER BY salary) FROM employies;
--running the average
SELECT fname,salary, AVG(salary) OVER(PARTITION BY dept) FROM employies ;
--rank
SELECT fname, salary, RANK() OVER(ORDER BY salary) FROM employies;
---desce rank
SELECT fname, salary, DENSE_RANK() OVER(ORDER BY salary) FROM employies;
--LAG
SELECT fname, salary, LAG(salary) OVER() FROM employies;
--lead 
SELECT fname, salary, LEAD(salary) OVER() FROM employies;
SELECT * FROM employies;
 