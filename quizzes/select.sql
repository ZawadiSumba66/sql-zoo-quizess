SELECT population
  FROM world
 WHERE name = 'Cermany'

 SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

  SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000 