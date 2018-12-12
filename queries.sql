SELECT *,
FROM   info,
WHERE  sid = 10;

SELECT lyrics,
FROM   lyrics,
WHERE  sid = 10;

SELECT sname,
FROM   song,
WHERE  sid = 10;

SELECT artist,
FROM   song,
WHERE  sid = 10;

SELECT rank,
FROM   info,
WHERE  sid = 10;

SELECT year,
FROM   info,
WHERE  sid = 10;

SELECT   *,
FROM     info,
ORDER BY rank DESC;