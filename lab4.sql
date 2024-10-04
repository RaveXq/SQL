SELECT UPPER(name) AS upper_register
FROM cities
ORDER BY name ASC
LIMIT 5 OFFSET 5;

SELECT name, LENGTH(name) AS name_length
FROM cities
WHERE LENGTH(name) NOT IN (8, 9, 10);

SELECT SUM(population) AS population_in_C_S
FROM cities
WHERE region IN ('C', 'S');

SELECT AVG(population) AS avg_population_in_W
FROM cities
WHERE region = 'W';

SELECT COUNT(*) AS city_count_in_E
FROM cities
WHERE region = 'E';