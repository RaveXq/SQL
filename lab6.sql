SELECT cities.name AS city, regions.name AS region 
FROM cities, regions
WHERE regions.uuid = cities.region 
AND population > 350000;

SELECT cities.name AS city, regions.name AS region
FROM cities 
JOIN regions ON cities.region = regions.uuid
WHERE regions.name = 'Nord';
