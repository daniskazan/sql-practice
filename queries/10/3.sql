-- Вывести количество аэропортов города Москва
-- (Moscow или Москва в зависимости от языка системы)
-- {moscow_airports_count}

SELECT
    count(distinct airport_name)
FROM airports_data ad
WHERE 1=1
    AND city->>'ru' = 'Москва'
    AND city->>'en' = 'Moscow'
