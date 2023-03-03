CREATE DATABASE shirts_db;

use shirts_db;

CREATE TABLE shirts(
	shirt_id INT NOT NULL AUTO_INCREMENT,
    article VARCHAR(20) NOT NULL,
    color VARCHAR(20) NOT NULL,
    shirt_size VARCHAR(2) NOT NULL,
    last_worn INT NOT NULL,
    PRIMARY KEY(shirt_id)
);

desc shirts;

INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES
("t-shirt", "white", "S", 10),
("t-shirt", "green", "S", 200),
("polo shirt", "black", "M", 10),
("tank top", "blue", "S", 50),
("t-shirt", "pink", "S", 0),
("polo shirt", "red", "M", 5),
("tank top", "white", "S", 200),
("tank top", "blue", "M", 15);

-- next problem add single row
INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES
("polo shirt", "purple", "M", 50);


-- select all shirts, only article and color
SELECT article, color FROM shirts;

-- select all medium shirts
SELECT article, color, shirt_size, last_worn FROM shirts
WHERE shirt_size = "M";

-- update all polo shirst change size to L
UPDATE shirts set shirt_size = "L"
WHERE article = "polo shirt";

SELECT * FROM shirts;

-- update the shirt last worn 15 days ago . change to 0
UPDATE shirts set last_worn = 0
WHERE last_worn = 15;

UPDATE shirts set shirt_size = "XS", color = "off white"
WHERE color = "white";

-- DELETE all old shirts last worn 200 dyas ago
DELETE FROM shirts WHERE last_worn = 200;


-- delete all tank tops 
DELETE FROM shirts WHERE article = "tank top";


-- delete all shirts
DELETE FROM shirts;

-- DROP shirts table
DROP TABLE shirts;
