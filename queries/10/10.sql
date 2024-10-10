SELECT
    *
FROM aircrafts a
WHERE a.range in (SELECT max(a.range)from aircrafts a);


SELECT
    *
FROM aircrafts_data
ORDER BY range DESC
LIMIT 1;

