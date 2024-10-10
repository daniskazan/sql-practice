SELECT
    COUNT(*)>0 AS moscow_to_moscow_flights_check
FROM flights
WHERE
    departure_airport IN ('DME', 'VKO', 'SVO') AND
    arrival_airport IN ('DME', 'VKO', 'SVO');
