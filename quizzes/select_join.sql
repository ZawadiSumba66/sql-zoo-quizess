SELECT matchid,player FROM goal 
WHERE teamid='GER'

SELECT id,stadium,team1,team2
FROM game 
WHERE game.id=1012

SELECT player,teamid,stadium,mdate
FROM game JOIN goal ON game.id=goal.matchid
WHERE teamid= 'GER'

SELECT team1, team2 , player
FROM game JOIN goal ON game.id=goal.matchid
WHERE player LIKE 'Mario%'

SELECT player, teamid, coach, gtime
FROM goal JOIN eteam on goal.teamid = eteam.id
WHERE gtime<=10

SELECT mdate,teamname 
FROM eteam JOIN game on game.team1 = eteam.id
WHERE coach='Fernando Santos'

SELECT player
FROM game JOIN goal on game.id = goal.matchid
WHERE stadium='National Stadium, Warsaw'

SELECT DISTINCT player FROM game JOIN goal ON matchid = id
WHERE teamid <> 'GER' AND (team1 = 'GER' OR team2 = 'GER');

SELECT teamname, COUNT(player) as goals
FROM eteam JOIN goal ON id=teamid
GROUP BY teamname

SELECT stadium, COUNT(player) as goals
FROM game JOIN goal ON id=matchid
GROUP BY stadium

SELECT matchid,mdate, COUNT(teamid)
  FROM game JOIN goal ON matchid = id 
 WHERE (team1 = 'POL' OR team2 = 'POL')
GROUP by matchid,mdate

SELECT matchid, mdate ,COUNT(player) as goals
FROM game JOIN goal ON matchid=id
WHERE teamid='GER'
GROUP BY matchid,mdate

SELECT mdate,
  team1,
  SUM(CASE WHEN teamid = team1 THEN 1 ELSE 0 END) score1,
  team2,
  SUM(CASE WHEN teamid = team2 THEN 1 ELSE 0 END) score2
  FROM game LEFT JOIN goal ON matchid = id
  GROUP BY id, mdate, team1, team2
  ORDER BY mdate,Mmatchid,team1, team2;