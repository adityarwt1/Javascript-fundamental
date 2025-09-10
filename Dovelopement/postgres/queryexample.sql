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