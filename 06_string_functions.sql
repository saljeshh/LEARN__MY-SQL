show databases;

CREATE DATABASE string_functions;

use string_functions;

CREATE TABLE cats
(
	cat_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY(cat_id)
);

INSERT INTO cats(name,age)
VALUES('Charile',14);

INSERT INTO cats(name,age)
VALUES('Biralo',10);

SELECT * FROM cats;

-- GOTO BOOK.SQL