WITH tmp AS (SELECT p.id AS person_id,
                    p.name,
                    p.age
             FROM person p
            )
SELECT
      order_date,
       concat(tmp.name, ' (age:', tmp.age, ')') AS person_information
FROM tmp
NATURAL JOIN person_order po
ORDER BY order_date, person_information;