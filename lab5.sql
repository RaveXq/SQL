SELECT region, SUM(population) AS total_population
FROM cities
GROUP BY region;

SELECT region, SUM(population) AS total_population
FROM cities
GROUP BY region
HAVING COUNT(name) >= 10;

SELECT name, population
FROM cities
WHERE region IN (
SELECT uuid
FROM regions
WHERE area_quantity >= 5)
ORDER BY population DESC
LIMIT 5 OFFSET 10;

SELECT region, SUM(population) AS total_population
FROM cities
WHERE population > 300000
GROUP BY region;

SELECT name, population
FROM cities
WHERE (population < 150000 OR population > 500000)
AND region IN(
SELECT uuid
FROM regions
WHERE area_quantity <= 5);