SELECT p.name, m.pizza_name, m.price,  m.price * (100 - pd.discount) / 100 AS discount_price, p2.name
from person_order po
join menu m on po.menu_id = m.id
join person p on p.id = po.person_id
join person_discounts pd on p.id = pd.person_id
join pizzeria p2 on m.pizzeria_id = p2.id
order by 1,2;
