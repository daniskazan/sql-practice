-- Вывести самолёты Airbus {aircraft_code, model, range}

SELECT
    aircraft_code,
    model,
    range
FROM aircrafts_data
WHERE  model ->> 'en' LIKE '%Airbus%'