use soap_store;

CREATE TABLE tweets(
	username varchar(15),
    content varchar(140),
    favorites int
);

desc tweets;


CREATE DATABASE cat_app;

use cat_app;

create table cats(
	name varchar(100),
    age int
);

desc cats;

show tables;

show columns from cats;

drop table cats;


drop database cat_app;

-- Create a pastries table 

CREATE DATABASE bakery;
use bakery;

CREATE TABLE pastries(
	name varchar(50),
    quantity int
);

desc pastries;

drop table pastries;

-- Insert into table and retrieve
CREATE DATABASE cat_app;

use cat_app;

create table cats(
	name varchar(100),
    age int
);

INSERT INTO cats(name, age) VALUES("Cutie",2);

INSERT INTO cats(age, name) VALUES(5, "mae");

select * from cats;

-- Multiple insertion

INSERT INTO cats(name, age)
VALUES('meumeu', 4),('cumie', 3),('pussy',2); 


-- Exercise on insert
CREATE TABLE people(
	first_name varchar(20),
    last_name varchar(20),
    age int
); 

INSERT INTO people(first_name, last_name, age) 
VALUES('Tina', 'Belcher', 13);

INSERT INTO people(first_name, last_name, age)
VALUES('Bob', 'Belcher', 42);

INSERT INTO people(first_name, last_name, age)
VALUES('Linda','Belcher', 45),('Phillip', 'Frond', 38),('Calvin', 'Fischoeder', 70);


SELECT * FROM people;


-- Note warning
INSERT INTO cats(name,age) 
VALUES('This is a cat named memeu people also call it meu meu, when the value will be greater than 50 its a messy things haha we get warning' ,10); 

show warnings;


-- null - when we dont pass any one value into table
INSERT INTO cats(name)
VALUES('nULLY');

INSERT INTO cats()
VALUES();

select * from cats;

-- to stop these null valid we make NOT NULL when defining the table

CREATE TABLE cats2(
	name varchar(100) NOT NULL,
    age INT NOT NULL
); 

INSERT INTO cats2()
VALUES();


select * from cats2;

show warnings;

INSERT INTO cats2(name)
VALUES('meu');

desc cats2;

-- Default values
CREATE TABLE cats3(
	name varchar(100) DEFAULT 'unnamed',
    age int DEFAULT 0
);

INSERT INTO cats3()
VALUES();

select * from cats3;

CREATE TABLE cat100(
	name varchar(10) NOT NULL DEFAULT 'NAMED',
    age int NOT NULL DEFAULT 0
);
 
 INSERT INTO cat100() VALUES();
 
SELECT * FROM cat100;

INSERT INTO cat100(name,age) VALUES ('montana' , NULL); -- cant send null in null 

INSERT INTO cats3(name,age) VALUES('MON', NULL); -- null allowed as not null no in schema 


-- Introducing keys now primary key 
-- Done so that when we have same data of all rows and column we can access them  using keys

CREATE TABLE cats_key(
	id int PRIMARY KEY  auto_increment,
    name varchar(10) NOT NULL default 'hola'
); 

INSERT INTO cats_key(name) VALUES ('saljesh'),('annika'),('rohan');

SELECT * FROM cats_key;


CREATE TABLE new_way_key(
	-- cat_id INT NOT NULL AUTO_INCREMENT is also another way
	cat_id INT NOT NULL,
    name varchar(10),
    age int, 
    primary key (cat_id)
);

Insert into new_way_key VALUES (1,'saljesh',21), (2, 'annika', 22);

SELECT * FROM new_way_key;


-- Exercise on table with constraints
-- Define an emp table

CREATE TABLE Employees(
	id int NOT NULL auto_increment,
    last_name varchar(20) NOT NULL,
    first_name varchar(20) NOT NULL,
    middle_name varchar(20) NOT NULL,
    age int NOT NULL,
    current_status varchar(10) NOT NULL default 'employed',
    PRIMARY KEY(id)
); 

INSERT INTO Employees(last_name, first_name,middle_name,age,current_status) VALUES('maharjan', 'saljesh', 'kumar', 21, 'single');

select * from Employees;

SELECT COUNT(*)
FROM EMPLOYEES;




