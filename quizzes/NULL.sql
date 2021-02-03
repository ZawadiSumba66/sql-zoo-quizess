SELECT name FROM teacher WHERE dept IS NULL;

SELECT teacher.name, dept.name
FROM teacher INNER JOIN dept
ON (teacher.dept=dept.id)

SELECT teacher.name, dept.name
FROM teacher LEFT JOIN dept
ON (teacher.dept=dept.id)

SELECT teacher.name, dept.name
FROM teacher RIGHT JOIN dept
ON (teacher.dept=dept.id)

SELECT teacher.name, COALESCE( mobile,'07986 444 2266')
FROM teacher 

SELECT teacher.name,COALESCE(dept.name,'None')
FROM teacher LEFT JOIN dept
ON (teacher.dept=dept.id)

SELECT COUNT(teacher.name),COUNT(MOBILE)
from teacher

SELECT dept.name, COUNT(teacher.name) FROM teacher RIGHT JOIN dept ON (teacher.dept = dept.id) GROUP BY dept.name;

SELECT teacher.name,
CASE WHEN (teacher.dept = 1 OR teacher.dept = 2) THEN 'Sci'
ELSE 'Art' END
FROM teacher

SELECT teacher.name,
COALESCE(CASE WHEN (teacher.dept = 1 OR teacher.dept = 2) THEN 'Sci'
END,'None')
FROM teacher

