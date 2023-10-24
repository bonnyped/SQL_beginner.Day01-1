SELECT *
FROM person pe
CROSS JOIN pizzeria pi
ORDER BY pe.id, pi.id;