
CREATE TABLE STUDENT_INFO
	(
	Sid         INT UNIQUE ,
	Stud_name   VARCHAR(20) NOT NULL,
	stude_score decimal(5,2) DEFAULT 20
    );
ALTER TABLE STUDENT_INFO MODIFY Sid int PRIMARY KEY;
desc STUDENT_INFO;
INSERT INTO STUDENT_INFO VALUES(1,'tim',23);
INSERT INTO STUDENT_INFO Values
(2,'raju',54),
(3,'bheem',35),
(4,'balu',78),
(5,'ram',56);

UPDATE STUDENT_INFO SET stude_score =stude_score + 5 WHERE stude_score > 150;
CREATE TABLE worker
      (
       Worker_ID    INT,
        first_name   VARCHAR(15),
        last_name    VARCHAR(15),
        salary       numeric(8),
        joining_date DATE,
        department   VARCHAR (15)
      );
drop table bonus;
CREATE TABLE bonus
     ( Worker_ID INT, bonus_date DATE, 
   bonus_amount numeric(6), 
    FOREIGN KEY(Worker_ID) 
           REFERENCES worker(Worker_ID) on delete cascade
           );

ALTER TABLE worker modify Worker_ID INT primary key;
INSERT INTO worker VALUES(1,'Monika','Arora',100000,'2014-02-20','HR');
INSERT INTO worker VALUES(2,'Niharika','Verma',80000,'2014-06-11','Admin'),
(3,'Vishal','Singhal',300000,'2014-02-20','HR'),
(4,'Amitabh','Singh',500000,'2014-02-20','Admin'),
(5, 'Vivek',' Bhati ',500000,'2014-06-11','Admin'),
(6,'Vipul','Diwan',200000, '2014-06-11','Account'),
(7,'Satish','Kumar',75000,'2014-01-20','Account'),
(8,' Geetika','Chauhan',90000, '2014-04-11','Admin');
INSERT INTO bonus VALUES(1,'2016-02-20',5000),
( 2, '2016-06-11', 3000),
( 3,'2016-02-20', 4000),
( 1,'2016-02-20', 4500),
( 2,'2016-06-11', 3500);
SELECT first_name AS worker_name FROM worker;
SELECT * FROM worker ORDER BY trim(first_name) ASC ;
SELECT * FROM worker WHERE first_name!= 'Vipul'and first_name !='Satish';
select * from worker where department= 'Admin';
SELECT * FROM worker WHERE salary BETWEEN 100000 AND 500000;
SELECT upper(first_name) FROM worker;
SELECT rtrim(first_name) FROM worker;
 SELECT ltrim(department) FROM worker;
 SELECT DISTINCT department, LENGTH(department) FROM worker ;
 update  worker set department='Account' where first_name ='vipul';
 SELECT REPLACE(first_name, 'a', 'A') AS fname FROM worker;
 SELECT first_name,last_name,department,salary,bonus_amount FROM worker,bonus
  WHERE worker.worker_id = bonus.worker_id AND bonus_amount> 4000 ;
  DELETE from worker WHERE worker_id=7;
  ALTER TABLE bonus ADD CONSTRAINT fk_cod_na
FOREIGN KEY(Worker_ID) REFERENCES
 worker(Worker_ID) ON DELETE no action ;
 select * from bonus;
 DELETE from worker WHERE worker_id=8;


 























