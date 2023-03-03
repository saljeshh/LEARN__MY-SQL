use cat_app;


CREATE TABLE cats_crud(
	cat_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(20),
    breed VARCHAR(20),
    age INT, 
    PRIMARY KEY(cat_id)
);

desc cats_crud;

INSERT INTO cats_crud(name, breed,age)
VALUES('Ringo', 'Tabby', 4),
('Cindy','Maine Coon',10),
('Dumbledore', 'Maine Coon', 11),
('Egg', 'Persian', 4),
('Misty', 'Tabby',13),
('George Michael', 'Ragdoll', 9),
('Jackson','Sphynx', 7);


-- Read 

select * from cats_crud;

select name from cats_crud;

SELECT cat_id,age FROM cats_crud;


-- Where clause
SELECT * FROM cats_crud WHERE name = 'Egg'; -- case insensitive in name = 
SELECT * FROM cats_crud WHERE name = 'EGG';


-- Rapid fire test
SELECT cat_id FROM cats_crud;
SELECT name, breed FROM cats_crud;

SELECT name,age FROM cats_crud WHERE breed = 'tabby';
SELECT cat_id, age FROM cats_crud WHERE cat_id = age;


-- Alias
SELECT cat_id AS ID, name AS NAME, breed AS TYPE,  age AS YEAR_OLD
FROM cats_crud;



-- UPDATE--------
UPDATE cats_crud SET age = 12
WHERE name = 'Misty' AND cat_id > 0;
-- WE HAVE TO SPECIFY THE ID OR PIRMARY KEY IN WHERE CLAUSE IN SAFE MODE

UPDATE cats_crud SET breed = 'short-haired'
WHERE breed = 'tabby';


-- change jackson's nanme to jack
UPDATE cats_crud SET name = 'jack'
WHERE name = 'Jackson';

select * from cats_crud;

UPDATE cats_crud SET breed = 'British Shorthair'
WHERE name = 'Ringo';

UPDATE cats_crud SET age = 12
WHERE breed = 'Maine Coon';


-- Delete
DELETE FROM cats WHERE name = 'Egg';

DELETE FROM cats; -- delete all the cats

SELECT * FROM cats;
