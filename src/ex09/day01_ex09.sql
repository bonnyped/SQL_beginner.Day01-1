SELECT zz.name
FROM pizzeria zz
WHERE zz.id
           IN (
          SELECT zz.id
          FROM pizzeria zz
          WHERE zz.id NOT IN (SELECT pv.pizzeria_id
                              FROM person_visits pv)
      );

SELECT zz.name
FROM pizzeria zz
WHERE (SELECT id
FROM pizzeria
EXCEPT
SELECT pv.pizzeria_id
FROM person_visits pv) = zz.id

