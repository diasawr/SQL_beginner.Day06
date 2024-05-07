CREATE TABLE  person_discounts(
        id BIGINT PRIMARY KEY,
        person_id BIGINT NOT NULL,
        pizzeria_id BIGINT NOT NULL,
        discount numeric not null default 0,
        constraint fk_person_discounts_person_id foreign key  (person_id) references person(id),
        constraint fk_person_discounts_pizzeria_id foreign key  (pizzeria_id) references pizzeria(id)

);
