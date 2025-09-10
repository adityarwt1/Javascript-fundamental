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
/**/
SELECT * FROM employies;
