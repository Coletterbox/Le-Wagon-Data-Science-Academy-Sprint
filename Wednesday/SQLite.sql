-- Question 1: How do you get all data about movies?
SELECT * FROM movies;

-- Question 2: How do you get all data about directors?
SELECT * from directors;

-- Question 3: Check how many movies are present in the DB
select count(*) FROM movies;

-- Question 4: Can you find James Cameron? Luc Besson? John Woo?
SELECT * FROM directors WHERE directors.name="James Cameron";
-- (or I guess I didn't need to specify table)
SELECT * FROM directors WHERE name="Luc Besson";
SELECT * FROM directors WHERE name="John Woo";

-- Question 5: Find all directors with name starting with Steven
select * from directors where name LIKE "Steven%";

-- Question 6: How many directors are women?
SELECT COUNT(*) FROM directors WHERE gender=1;

-- Question 7: Find the name of the 10th first women directors?
-- SELECT TOP(10) FROM directors WHERE gender=1;
-- (okay apparently that won't fly in SQLite, or something)
-- (and also it might just be asking for the name specifically)
SELECT name FROM directors WHERE gender=1 LIMIT 10;