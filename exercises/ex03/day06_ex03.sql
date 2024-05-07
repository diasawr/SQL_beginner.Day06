SET ENABLE_SEQSCAN TO OFF;

CREATE UNIQUE INDEX idx_person_discounts_unique
ON person_discounts(person_id, pizzeria_id);

EXPLAIN ANALYZE
SELECT p.name AS name
     , m.pizza_name AS pizza_name
     , m.price AS price
     ,  m.price * (100 - pd.discount) / 100  AS discount_price
     ,  p2.name AS pizzeria_name
FROM person_order po
    JOIN person p on p.id = po.person_id
    JOIN menu m on m.id = po.menu_id
    JOIN pizzeria p2 on p2.id = m.pizzeria_id
JOIN person_discounts pd on p.id = pd.person_id AND m.pizzeria_id = pd.pizzeria_id
ORDER BY p.name, m.pizza_name;

