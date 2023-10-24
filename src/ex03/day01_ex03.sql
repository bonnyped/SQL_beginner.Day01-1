SELECT po.order_date,
       po.person_id
         FROM person_order po
INTERSECT
SELECT pv.visit_date,
       pv.person_id
FROM person_visits pv
ORDER BY order_date ASC, person_id DESC;
