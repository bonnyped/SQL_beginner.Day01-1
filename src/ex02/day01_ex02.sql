SELECT m.pizza_name
FROM menu m
UNION SELECT pizza_name
FROM menu
ORDER BY pizza_name DESC;