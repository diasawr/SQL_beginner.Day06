

COMMENT ON TABLE person_discounts IS 'Таблица скидок для клиентов';

COMMENT ON COLUMN person_discounts.id IS 'Уникальный идентификатор (первичный ключ)';
COMMENT ON COLUMN person_discounts.person_id IS 'Уникальный идентификатор клиента (внешний ключ)';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Уникальный идентификатор пиццерии (внешний ключ)';
COMMENT ON COLUMN person_discounts.discount IS 'Скидка для клиента';

COMMENT ON CONSTRAINT fk_person_discounts_person_id ON person_discounts IS 'Ссылка на ID в таблице person';
COMMENT ON CONSTRAINT fk_person_discounts_pizzeria_id ON person_discounts IS 'Ссылка на ID в таблице pizzeria';
COMMENT ON CONSTRAINT ch_nn_person_id ON person_discounts IS 'Колонка person_id не должна быть NULL (проверка)';
COMMENT ON CONSTRAINT ch_nn_pizzeria_id ON person_discounts IS 'Колонка pizzeria_id не должна быть NULL (проверка)';
COMMENT ON CONSTRAINT ch_nn_discount ON person_discounts IS 'Колонка discount не должна быть NULL (проверка)';
COMMENT ON CONSTRAINT ch_range_discount ON person_discounts IS 'Значения в колонке discount должны быть больше нуля и меньше 100 (проверка)';
COMMENT ON INDEX idx_person_discounts_unique IS 'Поля person_id и pizzeria_id становятся уникальными';












