SELECT *
FROM person p
CROSS JOIN pizzeria zz
ORDER BY p.id, zz.id;