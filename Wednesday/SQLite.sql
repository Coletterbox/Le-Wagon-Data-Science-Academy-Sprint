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

-- Question 8: What are the 3 most popular movies?
SELECT * FROM movies ORDER BY popularity DESC LIMIT 3;

-- Question 9: What are the 3 most bankable movies?
SELECT * FROM movies ORDER BY revenue DESC LIMIT 3;

-- Question 10: What is the most awarded average vote since the January 1st, 2000?
SELECT vote_average, COUNT(*) AS vote_average_count FROM movies WHERE release_date>"2000-01-01" GROUP BY vote_average ORDER BY vote_average_count DESC LIMIT 1;

-- Question 11: Which movie(s) were directed by Brenda Chapman?
SELECT movies.original_title, directors.name FROM movies INNER JOIN directors ON movies.director_id=directors.id WHERE directors.name="Brenda Chapman";

-- Question 12: Whose director made the most movies?
SELECT directors.name, COUNT(*) AS movie_count FROM movies INNER JOIN directors ON movies.director_id=directors.id GROUP BY directors.name ORDER BY movie_count DESC limit 1;

-- Question 13: Whose director is the most bankable?
SELECT directors.name, SUM(movies.revenue) AS total_revenue_per_director FROM movies INNER JOIN directors ON movies.director_id=directors.id ORDER BY total_revenue_per_director DESC LIMIT 1;
