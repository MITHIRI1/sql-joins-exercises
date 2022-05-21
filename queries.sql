-- 1

SELECT *
FROM   owners as o 
FULL JOIN vehicles v ON o.id = v.owner_id
;

-- 2. 

SELECT o.first_name, o.last_name, COUNT(*) AS count
FROM   owners as o 
JOIN vehicles v ON o.id = v.owner_id
GROUP BY o.first_name, o.last_name
ORDER BY o.first_name, o.last_name
;

-- 3.


SELECT o.first_name, o.last_name, ROUND((CAST(AVG(price) AS NUMERIC)), 0), COUNT(*) AS count
FROM   owners as o 
JOIN vehicles v ON o.id = v.owner_id
GROUP BY o.first_name, o.last_name
HAVING COUNT(*) > 1 AND AVG(price) > 10000
ORDER BY o.first_name DESC
;
