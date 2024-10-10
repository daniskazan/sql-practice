SELECT
    flight_id,
    flight_no,
    departure_airport,
    arrival_airport
FROM flights
WHERE
    departure_airport IN ('DME', 'SVO', 'VKO', 'KZN') AND
    arrival_airport IN ('KZN', 'DME', 'SVO', 'VKO');
