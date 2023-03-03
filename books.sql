CREATE TABLE books
(
	book_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(100),
    author_fname VARCHAR(100),
    author_lname VARCHAR(100),
    released_year INT,
    stock_quantity INT,
    pages INT,
    PRIMARY KEY(book_id)
);


INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);


SELECT * FROM books;



-- CONCAT = Combine data for cleaner output

SELECT CONCAT('Hello','World') AS GREET;

-- Print the name of author together and column name as Author
SELECT CONCAT(author_fname,' ',author_lname) AS Author
FROM books;


SELECT author_fname AS first,
author_lname AS last, 
CONCAT(author_fname,' ', author_lname) AS Full
FROM books;


-- CONCAT_WS == Concat with seperators
SELECT CONCAT_WS(' - ',author_fname, author_lname,title) AS description FROM books;


-- SUBSTRING - works with parts of strings  first one is string, second and third is range of letters selection.
SELECT SUBSTRING("hELLO world", 1,4); -- hELL

SELECT SUBSTRING("I Love You", 3); -- if only one then from that index all

SELECT SUBSTRING("HELLO",-3); -- END OF STRING TO 3 -- LLO

SELECT SUBSTRING(title, 1,10) AS ShortTitle FROM books;


SELECT CONCAT(SUBSTRING(title,1,10),'...') FROM books;



-- Replace method 
-- replaces all occurance , first is string second is which to replace and third is what to replace with
-- case sensitive hunxa

SELECT REPLACE("hello world hellO Hello", "hello", "repalced");

SELECT REPLACE('Cheese bread coffee milk', ' ', ' and ');


-- Replace all e in title with 3
SELECT REPLACE(title, 'e', '#') as newTitle FROM books;

SELECT SUBSTRING(REPLACE(title, 'e', ' '), 1,10) as subANDrepalce FROM BOOKS;


-- Reverse super straight forward
SELECT REVERSE(TITLE) AS REVERSEDTITLE FROM BOOKS;

 -- CHAR_LENGTH -> counts characters in string
 SELECT char_length("HELLO WORLD") AS COUNT;
 
 SELECT author_lname,  char_length(author_lname) as LENGTHOFLASTNAME, reverse(author_fname) as REversedName FROM books;


-- Upper and lower
SELECT UPPER("hello my lady");

select lower("HeLLo MY ladY");



-- --Exercises
-- Reverse and upercase the following sentece "Why does my cat look at me with such hatred?"
SELECT Upper(Reverse("Why does my cat look at me with such hatred?"));

-- what does this prints
SELECT replace(CONCAT('I',' ','like', ' ','cats'), ' ', '-');

-- replace space in title with ->
SELECT title, REPLACE(title,' ', '->') as REPLACEDTITLE from books;

-- print output like fordward and backward
SELECT author_fname as Fordward, REVERSE(author_fname) as Backwards FROM books;

-- full name of author in caps
SELECT UPPER(CONCAT(author_fname, ' ', author_lname)) as "Full name in caps" from books;

-- make this happen
SELECT concat_ws(' ',title,"was released in",released_year) AS blurb FROM BOOKS;

-- print book titles and the length of each title
DESC books;
SELECT TITLE, CHAR_LENGTH(TITLE) AS "Character Count" FROM BOOKS;

-- last one 
SELECT CONCAT(SUBSTRING(TITLE, 1,10),'...') as "short title", CONCAT_ws(' ',author_lname, author_fname) as author, CONCAT(stock_quantity," in stock") as quantity from books;


