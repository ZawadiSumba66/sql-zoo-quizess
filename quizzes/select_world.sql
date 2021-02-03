SELECT name
  FROM world
 WHERE population > 200000000

SELECT name, GDP/population AS [per capita GDP]
FROM world
WHERE population > 200000000

SELECT name,population/1000000 
FROM world
WHERE continent= 'South America'

SELECT name,population
FROM world 
WHERE name IN ('France','Germany','Italy')

SELECT name 
FROM world
WHERE name LIKE '%United%'

SELECT name, population, area
FROM world
WHERE area > 3000000 OR population > 250000000

SELECT name, population, area
FROM world 
WHERE population > 250000000 XOR area > 3000000;

SELECT name,
ROUND((population/1000000),2) AS population,
ROUND((GDP/1000000000),2) AS GDP
FROM world
WHERE continent= 'South America'

SELECT name, ROUND((GDP/population),-3) AS [per-capita GDP]
FROM world
WHERE GDP >=1000000000000

SELECT name, capitaL
FROM world
WHERE LEN(name)= LEN(capital)

SELECT name, capital
FROM world
WHERE LEFT(name,1)=LEFT(capital,1) AND name <> capital

SELECT name FROM world
  WHERE name LIKE '%a%'
  AND name LIKE '%e%'
  AND name LIKE '%i%'
  AND name LIKE '%o%'
  AND name LIKE '%u%'
  AND name NOT LIKE '% %';
