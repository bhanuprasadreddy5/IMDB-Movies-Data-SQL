-- IMDB movies data
-- it uses database 
use project_movie_database;

-- it show all tables
show tables;

-- retrive data from movies and directors tables
select*from movies;
select*from directors;

-- solving problams based on requirment in the data 

-- a) All data about movies
select *from movies;

-- b) All data about directors
select*from directors;

-- c) Count of movies in IMDB
select count(*) as total_movies from movies;

-- d) Find James Cameron, Luc Besson, John Woo
select *from directors
where name in('james Cameron', 'Luc Besson', 'John Woo');

-- e) Directors with name starting with S
select*from directors
where name like 's%';

-- f) Count female directors (gender = 1)
select count(*) as female_dirctors_count
from directors where gender=1;

-- g) Name of the 10th woman director
select name from directors
where gender=1
order by id
limit 1 offset 9;

-- h) 3 most popular movies
select title,popularity
from movies order by popularity desc
limit 3;

-- i) 3 most bankable movies (revenue − budget)
select title, budget, revenue, (revenue - budget) as profit
from  movies
order by profit desc
limit 3;

-- j) Highest average vote for movies released since Jan 1, 2000
select title, release_date, vote_average
from movies
where release_date >= '2000-01-01'
order by  vote_average desc
limit 1;

-- k) Movie(s) directed by Brenda Chapman
select m.title
from  movies m
join directors d on m.director_id = d.id
where d.name = 'Brenda Chapman';

-- l) Director who made the most movies
select d.name, COUNT(*) as movie_count
from movies m
join directors d on  m.director_id = d.id
group by d.name
order by movie_count desc
limit 1;

-- m) Most bankable director (total revenue − budget across all their movies)
select d.name, SUM(m.revenue - m.budget) as total_profit
from movies m
join  directors d on  m.director_id = d.id
group by d.name
order by total_profit desc
limit 1;


/* Note: movies.id is dropped (not selected), and d.id (from directors) is kept and 
aliased as id, as your instructions specify. This is a plain SELECT (not CREATE VIEW)
so it will run without needing extra privileges */

select m.original_title,m.budget,m.popularity,m.release_date,m.revenue,m.title,
m.vote_average,m.vote_count,m.overview,m.tagline,m.uid,d.id AS id,d.name,d.gender,d.department
FROM movies m JOIN directors d ON m.director_id = d.id;

/* Conclusion:-
This project used SQL to merge and analyze the IMDB Movies and Directors datasets, 
extracting insights on top movies, director productivity, bankability, and gender 
representation. The analysis demonstrates how SQL joins and aggregate functions can 
turn raw relational data into actionable business insights. */




