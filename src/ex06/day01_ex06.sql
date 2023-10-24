SELECT action_date,
       name AS person_name
FROM(
    SELECT po.order_date AS action_date,
           po.person_id
             FROM person_order po
    INTERSECT
    SELECT pv.visit_date,
           pv.person_id
    FROM person_visits pv) AS result
    JOIN person ON result.person_id = person.id

ORDER BY action_date ASC, person_name DESC;
