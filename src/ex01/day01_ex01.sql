SELECT object_name
FROM (
    SELECT  p.name AS object_name,
           1 AS n
    FROM person p
    UNION ALL SELECT m.pizza_name,
                     2 AS n
    FROM menu m
    ORDER BY n, object_name
    );
    
