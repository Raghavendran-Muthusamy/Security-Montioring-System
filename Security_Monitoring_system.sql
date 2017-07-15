use mysql;

-- create a new database cs320stu31

create database cs320stu31;

-- create a user cs320stu31, with password abcd, and grant the user
--    all privileges on the database cs320stu31. 

grant all privileges on cs320stu31.* to 'cs320stu31'@'localhost'
	identified by '6979' with grant option;

flush privileges;

use cs320stu31;


/*
DROP TABLE GROUP_TEAM;
DROP TABLE PROJECT;
DROP TABLE VIOLATION_HISTORY;
DROP TABLE DEVICE;
DROP table EMPLOYEE;
drop view V_Violation_history;

*/


-- CREATE TABLE PROJECT
CREATE TABLE PROJECT(
PROJECT_ID VARCHAR(15) PRIMARY KEY,
CLIENT_NAME VARCHAR(15) NOT NULL,
PROJECT_DESC TEXT,
BUDGET VARCHAR(15),
GROUP_ID VARCHAR(15)); 


-- INSERT DATA TO PROJECT
INSERT INTO  PROJECT  VALUES ('PROJECT001','GOOGLE','DEALS WITH CREATION OF A WEBPAGE FOR SECURITY','$1000000','G001');
INSERT INTO  PROJECT  VALUES ('PROJECT002','CITI_BANK','DOING SECURITY AUDIT FOR ALL BRANCHES','$1500000','G002');
INSERT INTO  PROJECT  VALUES ('PROJECT003','UBER','DEALS WITH CREATION OF A APPLICATION FOR UBER_AUTO DRIVE','$100000','G003');
INSERT INTO  PROJECT  VALUES ('PROJECT004','BANK OF AMERICA','DEALS WITH CREATION OF A MOBILE APPLICATION FOR BANKS','$112000','G004');

-- CREATE TABLE EMPLOYEE
CREATE TABLE EMPLOYEE (
EMP_ID		NUMERIC 	PRIMARY KEY,
EMP_TITLE	CHAR(10),	
EMP_LNAME	VARCHAR(15) NOT NULL,
EMP_FNAME	VARCHAR(15) NOT NULL,
EMP_INITIAL	CHAR(1),
EMP_DOB		varchar(15),
EMP_HIRE_DATE	varchar(15),
EMP_YEARS	NUMERIC,
EMP_AREACODE 	CHAR(3),
EMP_PHONE	CHAR(8),
USERNAME VARCHAR(15) NOT NULL,
PWD VARCHAR(10)  NOT NULL,
GROUP_ID VARCHAR(15));-- FOREIGN KEY (PROJECT_ID) REFERENCES PROJECT ON UPDATE CASCADE);

-- DATA FOR EMPLOYEE TABLE

INSERT INTO EMPLOYEE VALUES(100,'Mr.' ,'Kolmycz'   ,'George' ,'D' ,'15-06-1942','15-03-1985',18,'615','324-5456','kolmycz'   ,'George','G001');
INSERT INTO EMPLOYEE VALUES(101,'Ms.' ,'Lewis'     ,'Rhonda' ,'G' ,'19-03-1965','25-APR-1986',16,'615','324-4472','Lewis'     ,'Rhonda','G001');
INSERT INTO EMPLOYEE VALUES(102,'Mr.' ,'Vandam'    ,'Rhett'  ,NULL,'14-11-1958','20-DEC-1990',12,'901','675-8993','Vandam'    ,'Rhett','G001');
INSERT INTO EMPLOYEE VALUES(103,'Ms.' ,'Jones'     ,'Anne'   ,'M' ,'16-10-1974','28-AUG-1994', 8,'615','898-3456','Jones'     ,'Anne' ,'G001');
INSERT INTO EMPLOYEE VALUES(104,'Mr.' ,'Lange'     ,'John'   ,'P' ,'08-11-1971','20-OCT-1994', 8,'901','504-4430','Lange'     ,'John','G002');
INSERT INTO EMPLOYEE VALUES(105,'Mr.' ,'Williams'  ,'Robert' ,'D' ,'14-03-1975','08-NOV-1998', 4,'615','890-3220','Williams'  ,'Robert','G002' );
INSERT INTO EMPLOYEE VALUES(106,'Mrs.','Smith'     ,'Jeanine','K' ,'12-02-1968','05-JAN-1989',14,'615','324-7883','Smith'     ,'Jeanine','G002');
INSERT INTO EMPLOYEE VALUES(107,'Mr.' ,'Diante'    ,'Jorge'  ,'D' ,'21-08-1974','02-JUL-1994', 8,'615','890-4567','Diante'    ,'Jorge','G002' );
INSERT INTO EMPLOYEE VALUES(108,'Mr.' ,'Wiesenbach','Paul'   ,'R' ,'14-02-1966','18-NOV-1992',10,'615','897-4358','Wiesenbach','Paul','G003 ' );
INSERT INTO EMPLOYEE VALUES(109,'Mr.' ,'Smith'     ,'George' ,'K' ,'18-06-1961','14-APR-1989',13,'901','504-3339','Smith'     ,'George','G003');
INSERT INTO EMPLOYEE VALUES(110,'Mrs.','Genkazi'   ,'Leighla','W' ,'19-05-1970','01-DEC-1990',12,'901','569-0093','Genkazi'   ,'Leighla','G003');
INSERT INTO EMPLOYEE VALUES(111,'Mr.' ,'Washington','Rupert' ,'E' ,'03-JAN-1966','21-JUN-1993', 9,'615','890-4925','Washington','Rupert','G004' );
INSERT INTO EMPLOYEE VALUES(112,'Mr.' ,'Johnson'   ,'Edward' ,'E' ,'14-MAY-1961','01-DEC-1983',19,'615','898-4387','Johnson'   ,'Edward','G004' );
INSERT INTO EMPLOYEE VALUES(113,'Ms.' ,'Smythe'    ,'Melanie','P' ,'15-SEP-1970','11-MAY-1999', 3,'615','324-9006','Manager'    ,'Melanie','G004');
INSERT INTO EMPLOYEE VALUES(114,'Ms.' ,'Brandon'   ,'Marie'  ,'G' ,'02-NOV-1956','15-NOV-1979',23,'901','882-0845','Brandon'   ,'Marie','G003');
INSERT INTO EMPLOYEE VALUES(115,'Mrs.','Saranda'   ,'Hermine','R' ,'25-JUL-1972','23-APR-1993', 9,'615','324-5505','employee'   ,'Hermine','G004');
INSERT INTO EMPLOYEE VALUES(116,'Mr.' ,'Smith'     ,'George' ,'A' ,'08-NOV-1965','10-DEC-1988',14,'615','890-2984' ,'Smith'     ,'George','G004' );

-- CREATE TABLE DEVICE
CREATE TABLE DEVICE(
MAC_ADDRESS VARCHAR(18) PRIMARY KEY,
MODEL_NO VARCHAR(15) NOT NULL,
EMPLOYEE_ID NUMERIC ,
FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE(EMP_ID) ON UPDATE CASCADE); 

-- DATA FOR DEVICE
INSERT INTO DEVICE VALUES('E9-D9-BE-51-F2-3D','8164514962',100);
INSERT INTO DEVICE VALUES('FC-86-54-CF-89-8D','5033019547',101);
INSERT INTO DEVICE VALUES('07-48-58-2B-51-4F','4641182053',102);
INSERT INTO DEVICE VALUES('2F-3D-07-44-4E-F7','9507612840',103);
INSERT INTO DEVICE VALUES('55-9F-85-17-65-3B','7422425101',104);
INSERT INTO DEVICE VALUES('81-9D-84-6F-E0-B5','3225410267',105);
INSERT INTO DEVICE VALUES('F9-96-67-E6-9F-B1','3225410267',106);
INSERT INTO DEVICE VALUES('F9-87-82-A8-5A-CF','3225410267',107);
INSERT INTO DEVICE VALUES('2A-27-4F-9A-0C-E0','1146829119',108);
INSERT INTO DEVICE VALUES('C4-F0-01-DA-61-A4','2785745946',109);
INSERT INTO DEVICE VALUES('B0-20-D8-9F-72-A5','1146829119',110);
INSERT INTO DEVICE VALUES('80-53-6A-C4-BD-AA','3225410267',111);
INSERT INTO DEVICE VALUES('9F-59-CE-77-BB-54','3225410267',112);
INSERT INTO DEVICE VALUES('EC-A8-6F-20-61-DE','3316474729',113);
INSERT INTO DEVICE VALUES('2C-07-1E-01-B5-37','3316474729',114);
INSERT INTO DEVICE VALUES('B3-D4-55-82-77-CA','2785745946',115);
INSERT INTO DEVICE VALUES('F2-C8-56-98-E2-05','1146829119',116);

-- create violation history table


CREATE TABLE VIOLATION_HISTORY(
MAC_ADDRESS VARCHAR(25) ,
issue1 VARCHAR(155),
ACCESS_TIME DATEtime not null default now(),
DOMAIN_IP VARCHAR(20),
TRAINING_REQUIRED varchar(3) ,
MODEL_NO VARCHAR(15) ,
EMP_ID NUMERIC ,
primary key(mac_address,access_time,emp_id),
FOREIGN KEY (EMP_ID) REFERENCES EMPLOYEE(EMP_ID) ,
FOREIGN KEY (MAC_ADDRESS) REFERENCES DEVICE(MAC_ADDRESS) ON UPDATE CASCADE); 

insert into violation_history(MAC_ADDRESS,issue1,DOMAIN_IP,MODEL_NO,EMP_ID) values ('B3-D4-55-82-77-CA','user entered social website','10.1.20.0
','2785745946',115);
insert into violation_history(MAC_ADDRESS,issue1,DOMAIN_IP,MODEL_NO,EMP_ID) values ('F2-C8-56-98-E2-05','user entered facebook','10.1.20.0
','2785745946',116);

-- create team
CREATE TABLE GROUP_TEAM (
GROUP_ID VARCHAR(15) PRIMARY KEY,

MANAGER_ID NUMERIC ,
FOREIGN KEY (MANAGER_ID) REFERENCES EMPLOYEE(EMP_ID) ON UPDATE CASCADE,
PROJECT_ID VARCHAR(15) ,
FOREIGN KEY (PROJECT_ID) REFERENCES PROJECT(PROJECT_ID) ON UPDATE CASCADE);

INSERT INTO GROUP_TEAM VALUES ('G001',100,'PROJECT001');
INSERT INTO GROUP_TEAM VALUES ('G002',104,'PROJECT002');
INSERT INTO GROUP_TEAM VALUES ('G003',108,'PROJECT003');
INSERT INTO GROUP_TEAM VALUES ('G004',116,'PROJECT004');

-- Create View
create view V_Violation_history as select emp_id ,count(*)as new1 from violation_history as temp group by emp_id having new1 >=3 ;
































/*
delete  from violation_history where (MAC_ADDRESS='B3-D4-55-82-77-CA'&& EMP_ID = 115 && ACCESS_TIME ='2017-05-05 15:13:13' );
select * from violation_history;

insert into violation_history(MAC_ADDRESS,issue1,DOMAIN_IP,MODEL_NO,EMP_ID) values ('B3-D4-55-82-77-CA','user entered social website','10.1.20.0
','2785745946',115);
insert into violation_history(MAC_ADDRESS,issue1,DOMAIN_IP,MODEL_NO,EMP_ID) values ('B3-D4-55-82-77-CA','user entered social website','10.1.20.0
','2785745946',115);
insert into violation_history(MAC_ADDRESS,issue1,DOMAIN_IP,MODEL_NO,EMP_ID) values ('B3-D4-55-82-77-CA','user entered social website','10.1.20.0
','2785745946',115);


/*
select* FROM VIOLATION_HISTORY where EMP_ID = (select EMP_ID FROM employee where username ='employee');
select * from violation_history;
select * from device;

select * from employee left join  

select  DEVICE.EMPLOYEE_ID,employee.EMP_FNAME,employee.emp_lname,employee.EMP_PHONE,device.mac_address,
employee.GROUP_ID from device,EMPLOYEE where device.EMPLOYEE_ID =EMPLOYEE.EMP_ID AND device.EMPLOYEE_ID = 111;

use cs320stu31;
select * from employee

/*
alter table EMPLOYEE
add foreign key( GROUP_ID)REFERENCES GROUP_TEAM ON UPDATE CASCADE;



use cs320stu31;


select* FROM VIOLATION_HISTORY where EMP_ID = (select EMP_ID FROM employee where username ='Saranda');

select* FROM VIOLATION_HISTORY 
((select EMP_ID from  employee where GROUP_ID= (select GROUP_ID FROM employee where username ='Saranda'));


/*
 exec sp_help employee;
EXEC sp_fkeys EMPLOYEE;


 altering after referin with a different name
ALTER TABLE Orders
ADD CONSTRAINT FK_PersonOrder
FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);
  
  ALTER TABLE Orders
ADD FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);


select * from violation_history where EMP_ID in ((select emp_id from employee where group_id = ( select group_id FROM employee where USERNAME = 'Manager')))
group by emp_id;
  */
  

