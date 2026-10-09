# IMDB Movies SQL Analysis

A SQL project that analyzes the IMDB Movies and Directors datasets using joins, aggregate functions, filtering, and sorting to answer business-style questions.

## What's inside

| File | Description |
|------|-------------|
| `imdb_data_analysis.sql` | All queries for the project, with comments |

## Database

- Database name: `project_movie_database`
- Tables: `movies`, `directors` (linked by `movies.director_id = directors.id`)
- The table data is not included in this repo. Import your own copy of the IMDB movies and directors datasets into MySQL before running the script.

## Questions answered

1. View all movie data and all director data
2. Count the total number of movies
3. Find specific directors (James Cameron, Luc Besson, John Woo)
4. Directors whose name starts with "S"
5. Count of female directors (`gender = 1`)
6. Name of the 10th female director
7. The 3 most popular movies
8. The 3 most bankable movies (revenue - budget)
9. Highest-rated movie released since 1 Jan 2000
10. Movies directed by Brenda Chapman
11. Director with the most movies
12. Most bankable director (total revenue - budget)
13. A combined movies + directors table (via `JOIN`)

## SQL concepts used

`SELECT`, `WHERE`, `LIKE`, `IN`, `ORDER BY`, `LIMIT/OFFSET`, `COUNT`, `SUM`, `GROUP BY`, `JOIN`, column aliases, calculated columns

## How to run

1. Install MySQL (or MySQL Workbench).
2. Create the database and import the `movies` and `directors` tables.
3. Open `imdb_data_analysis.sql` and run the queries.

## Conclusion

SQL joins and aggregate functions can turn raw relational data into useful insights on top movies, director productivity, profitability, and gender representation.
