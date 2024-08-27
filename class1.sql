
CREATE DATABASE temp1;
create database temp2 ;
CREATE DATABASE College;

DROP DATABASE temp1;
DROP DATABASE temp2;

USE College;

CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT NOT NULL
);
INSERT INTO student VALUES(1,"ELI",22);
INSERT INTO student VALUES(2,"PAMI",23);
INSERT INTO student VALUES(3,"SUMI",28);
INSERT INTO student VALUES(4,"LUSI",25);
INSERT INTO student VALUES(5,"LARENS",23);

SELECT * FROM student;

CREATE DATABASE college;
CREATE DATABASE IF NOT EXISTS college;

DROP DATABASE company;
 
SHOW DATABASES;
SHOW TABLES;


CREATE TABLE department(
id INT PRIMARY KEY,
name VARCHAR(50)
);

SELECT * FROM department;
INSERT INTO department (id,name) VALUES
(101,"ELI"),
(102,"PAMI"),
(103,"SUMI");
INSERT INTO department VALUES(104,"TANIA");

CREATE DATABASE jkctd;
USE jkctd;
CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(50),
salary DOUBLE
);

INSERT INTO employee VALUES
(1,"ELI",50000),
(2,"PAMI",40000),
(3,"SUMI",30000);
SELECT * FROM employee;
INSERT INTO employee VALUES
(4,"ELI",50000); 
CREATE TABLE temp1(
id INT UNIQUE
);
INSERT INTO temp1 VALUES(101);
INSERT INTO temp1 VALUES();
INSERT INTO temp1 VALUES();
INSERT INTO temp1 VALUES(102);
SELECT * FROM temp1;
CREATE TABLE temp2(
id INT UNIQUE,
name VARCHAR(50),
age INT,
city VARCHAR (30),
PRIMARY KEY (id,name)
);
SELECT * FROM temp2;
CREATE TABLE temp3(
temp3_id INT ,
FOREIGN KEY (temp3_id) references temp2(id)
);
CREATE TABLE temp4(
id INT ,
salary INT DEFAULT 25000
);
INSERT INTO temp4 VALUES(101,50000);
INSERT INTO temp4 VALUES(102,40000);
INSERT INTO temp4 (id)VALUES(103);
INSERT INTO temp4 VALUES(104,10000);
SELECT * FROM temp4;
CREATE TABLE temp5(
id INT ,
salary INT DEFAULT 25000
);
INSERT INTO temp5 (id) VALUES(103);
SELECT * FROM temp5;
CREATE TABLE city(
id INT UNIQUE,
name VARCHAR(50),
city VARCHAR (30),
age INT CHECK(age>=18)
);
INSERT INTO city VALUES(104,"eli","balasore",22);
CREATE DATABASE GIET;
USE GIET;
CREATE TABLE MCA_2ND_YEAR(
name VARCHAR(50),
rollno INT PRIMARY KEY,
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);
INSERT INTO MCA_2ND_YEAR(name,rollno,marks,grade,city) VALUES
("FDFDHF",101,78,"C","PUNE"),
("HHIDHF",102,98,"A","PUNE"),
("OILKHF",103,58,"E","PUNE"),
("KHDHF",104,68,"D","PUNE");
INSERT INTO MCA_2ND_YEAR(name,rollno,marks,grade,city) VALUES("HJGYGKUHF",105,95,"A","MUMBAI");
INSERT INTO MCA_2ND_YEAR(name,rollno,marks,grade,city) VALUES("GKUHF",106,85,"A","MUMBAI");
INSERT INTO MCA_2ND_YEAR(name,rollno,marks,grade,city) VALUES("GKUHF",107,96,"A","DELHI");
INSERT INTO MCA_2ND_YEAR(name,rollno,marks,grade,city) VALUES("GKUHF",108,87,"A","DELHI");

SELECT  name ,rollno FROM MCA_2ND_YEAR;
SELECT  DISTINCT city FROM MCA_2ND_YEAR;
SELECT  * FROM MCA_2ND_YEAR WHERE marks>80;
SELECT  * FROM MCA_2ND_YEAR WHERE marks>70 AND city="pune";
SELECT  * FROM MCA_2ND_YEAR WHERE marks+10>100;
SELECT  * FROM MCA_2ND_YEAR WHERE marks>70 AND city="pune";
SELECT  * FROM MCA_2ND_YEAR WHERE marks>70 OR city="pune";
SELECT  * FROM MCA_2ND_YEAR WHERE markS BETWEEN 80 AND 90;
SELECT  * FROM MCA_2ND_YEAR WHERE city IN ("PUNE","DELHI");
SELECT  * FROM MCA_2ND_YEAR WHERE city NOT IN ("PUNE","DELHI");
SELECT  * FROM MCA_2ND_YEAR LIMIT 3;
SELECT  name , rollno,city FROM MCA_2ND_YEAR LIMIT 5;
SELECT  * FROM MCA_2ND_YEAR WHERE marks>70 LIMIT 3;
SELECT  * FROM MCA_2ND_YEAR ORDER BY city ASC;
SELECT  * FROM MCA_2ND_YEAR ORDER BY rollno ASC;
SELECT  * FROM MCA_2ND_YEAR ORDER BY city DESC;
SELECT  * FROM MCA_2ND_YEAR ORDER BY MARKS DESC LIMIT 3;
SELECT MAX(marks) FROM  MCA_2ND_YEAR;
SELECT MIN(marks) FROM  MCA_2ND_YEAR;
SELECT SUM(marks) FROM  MCA_2ND_YEAR;
SELECT AVG(marks) FROM  MCA_2ND_YEAR;
SELECT COUNT(rollno) FROM  MCA_2ND_YEAR;
SELECT city,COUNT(rollno) 
FROM  MCA_2ND_YEAR
GROUP BY city;
SELECT  city,COUNT(name) 
FROM  MCA_2ND_YEAR
GROUP BY city;
SELECT  city,name, COUNT(name) 
FROM  MCA_2ND_YEAR
GROUP BY city,name;
SELECT  city,AVG(marks) 
FROM  MCA_2ND_YEAR
GROUP BY city
ORDER BY city ASC;
SELECT  city
FROM  MCA_2ND_YEAR
WHERE grade="A"
GROUP BY city
HAVING MAX(marks)>95
ORDER BY city DESC;


  
  






                   

