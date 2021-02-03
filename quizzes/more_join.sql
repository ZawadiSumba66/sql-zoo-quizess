SELECT id, title
FROM movie
WHERE yr=1962

SELECT yr
FROM movie
WHERE title='Citizen Kane'

SELECT id,title,yr
FROM movie
WHERE title LIKE 'Star Trek%'
ORDER BY yr

SELECT actor.id
FROM movie INNER JOIN actor ON movie.id=actor.id
WHERE name=  'Glenn Close'

SELECT movie.id
FROM movie 
WHERE title=  'Casablanca'

SELECT name
FROM actor JOIN casting
ON id=actorid WHERE movieid =(SELECT id FROM movie WHERE title = 'Casablanca')

SELECT name
FROM actor JOIN casting
ON id=actorid WHERE movieid = (SELECT id FROM movie WHERE title = 'Alien')

SELECT title
FROM movie
JOIN casting ON id=movieid WHERE actorid = (SELECT id FROM actor WHERE name = 'Harrison Ford')

SELECT title
FROM movie
JOIN casting ON id=movieid WHERE actorid = (SELECT id FROM actor WHERE name = 'Harrison Ford') AND ord !=1

SELECT title, name
FROM movie JOIN casting ON movie.id=casting.movieid
JOIN actor ON actor.id = casting.actorid
WHERE ord=1 AND  yr = 1962

SELECT yr,COUNT(title) FROM
movie JOIN casting ON movie.id=movieid
JOIN actor  ON casting.actorid=actor.id
WHERE name='Rock Hudson'
GROUP BY yr
HAVING COUNT(title) >2

 SELECT title,name
 FROM movie JOIN casting ON casting.movieid=movie.id 
            AND ord=1 JOIN actor ON actor.id=casting.actorid
  WHERE movie.id IN (SELECT movieid FROM casting
  WHERE casting.actorid =(
  SELECT id FROM actor
  WHERE name='Julie Andrews'))

SELECT name
FROM casting JOIN actor ON actor.id=casting.actorid AND ord=1
GROUP BY name
HAVING COUNT(ord)>=15

SELECT title, COUNT(actorid) as Cast
FROM movie JOIN casting ON casting.movieid=movie.id 
WHERE yr=1978
GROUP BY title
ORDER BY Cast DESC ,title

SELECT DISTINCT name
FROM actor JOIN casting ON id=actorid
WHERE movieid IN (SELECT movieid FROM casting JOIN actor ON (actorid=id AND name='Art Garfunkel')) AND name != 'Art Garfunkel'
GROUP BY name 


