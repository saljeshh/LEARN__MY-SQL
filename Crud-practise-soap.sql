CREATE DATABASE soap_store;

use soap_store;

CREATE TABLE lux(
	id int NOT NULL AUTO_INCREMENT,
    name varchar(10) NOT NULL,
    price int NOT NULL,
    stock int not null,
    primary key(id)
);


-- insert
INSERT INTO lux(name, price, stock)
VALUES("LUX V1.0", 560, 220),
("LUXY NIRMA", 450, 100),
("LUXY PU", 120, 40),
("LUXX NEW", 890, 10);

-- VIEW
select * from lux;


-- add one more item
INSERT INTO LUX(name, price, stock)
VALUES("Hania", 320, 78);
select * from lux;

-- update name of id 2 = nirma
UPDATE lux 
set name = "NIRMA" 
Where id = 2;
select * from lux;

-- update name and stock of id 3 to purni, stock - 50
UPDATE lux
set name = "PURNI", stock = 50
where id = 3;
select * from lux;

-- delete where name is Luxx new
DELETE FROM LUX where name = "LUXX NEw";

select * from lux;

-- delete where stock price is greater than 200
DELETE FROM LUX WHERE stock > 200;


-- delete all items 
DELETE FROM LUX;

-- drop table
DROP TABLE lux;

-- drop db
DROP DATABASE soap_store;

SHOW DATABASES;
