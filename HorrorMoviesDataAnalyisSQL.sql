-- HorrorMoviesDataAnalyis_SQL_Project

--1.Verified data Load.
SELECT * FROM [HorrorMovieDB].[dbo].[moviedata]

-- 2. Top 10 Highest Worldwide Grossing Movies
SELECT TOP 10 movie, worldwide_gross
FROM [HorrorMovieDB].[dbo].[moviedata]
ORDER BY worldwide_gross DESC;

--3. Top 5 Most Expensive Movies to Produce
SELECT TOP 5 movie, production_budget
FROM [HorrorMovieDB].[dbo].[moviedata]
ORDER BY production_budget DESC;

--4. Movies Released After 2010
SELECT movie, release_date
FROM [HorrorMovieDB].[dbo].[moviedata]
WHERE release_date >= '2010-01-01';

--5. Movies with PG-13 Rating and Genre = 'Action'
SELECT movie, mpaa_rating, genre
FROM [HorrorMovieDB].[dbo].[moviedata]
WHERE mpaa_rating = 'PG-13' AND genre = 'Action';

--6. Total Domestic and Worldwide Gross by Distributor
SELECT distributor, 
       SUM(domestic_gross) AS total_domestic,
       SUM(worldwide_gross) AS total_worldwide
FROM [HorrorMovieDB].[dbo].[moviedata]
GROUP BY distributor
ORDER BY total_worldwide DESC;


--7. Movies Where Domestic Gross Exceeded Worldwide Gross (Data Anomaly)
SELECT movie, domestic_gross, worldwide_gross
FROM [HorrorMovieDB].[dbo].[moviedata]
WHERE domestic_gross > worldwide_gross;


--8. Number of Movies per MPAA Rating
SELECT mpaa_rating, COUNT(*) AS movie_count
FROM [HorrorMovieDB].[dbo].[moviedata]
GROUP BY mpaa_rating;

--9. Average Production Budget by Genre
SELECT genre, AVG(production_budget) AS avg_budget
FROM [HorrorMovieDB].[dbo].[moviedata]
GROUP BY genre;

--10. Movie with the Lowest Worldwide Gross
SELECT TOP 1 movie, worldwide_gross
FROM [HorrorMovieDB].[dbo].[moviedata]
ORDER BY worldwide_gross ASC;

--11. UNION Example: Combine Two Genre Queries
SELECT movie, genre 
FROM [HorrorMovieDB].[dbo].[moviedata]
WHERE genre = 'Action'
UNION
SELECT movie, genre 
FROM [HorrorMovieDB].[dbo].[moviedata]
WHERE genre = 'Adventure';

--12. Movies Distributed by 'Universal'
SELECT movie, distributor
FROM [HorrorMovieDB].[dbo].[moviedata]
WHERE distributor LIKE '%Universal%';

--13. Yearly Movie Count (Extracting Year)
SELECT YEAR(release_date) AS release_year, COUNT(*) AS movie_count
FROM [HorrorMovieDB].[dbo].[moviedata]
GROUP BY YEAR(release_date)
ORDER BY release_year;

--14. Movies with Budget Between $160M and $170M
SELECT movie, production_budget
FROM [HorrorMovieDB].[dbo].[moviedata]
WHERE production_budget BETWEEN 160000000 AND 170000000;

--15. Calculate Profit (Worldwide Gross - Budget)
SELECT movie, 
worldwide_gross - production_budget AS profit
FROM [HorrorMovieDB].[dbo].[moviedata]
ORDER BY profit DESC;





