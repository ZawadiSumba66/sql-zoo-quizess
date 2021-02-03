SELECT SUM(population)
FROM world

SELECT DISTINCT continent
FROM world

SELECT SUM(gdp)
FROM world
WHERE continent= 'Africa'

SELECT COUNT(area)
FROM world
WHERE area>=1000000

SELECT SUM(population)
FROM world
WHERE name IN ('Estonia', 'Latvia', 'Lithuania')

SELECT DISTINCT continent,COUNT(name)
FROM world 
GROUP BY continent

SELECT DISTINCT continent,COUNT(name)
FROM world 
WHERE population >= 10000000
GROUP BY Continent

SELECT DISTINCT continent
FROM world 
GROUP BY Continent
HAVING SUM(population) > 100000000