WITH rename AS(
    SELECT p.name AS person_name,
           p.id
    FROM person p
)

SELECT
       res.person_name,
       res.pizza_name pizza_name,
       res.name pizzeria_name
FROM (SELECT *
    FROM person_order po
     RIGHT JOIN rename r ON r.id = po.person_id
     JOIN menu m ON m.id = po.menu_id
     JOIN pizzeria zz ON zz.id = m.pizzeria_id) AS res
ORDER BY res.person_name, res.pizza_name, res.pizza_name