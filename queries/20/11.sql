SELECT
    flight_id,
    flight_no,
    departure_airport,
    arrival_airport
FROM flights
WHERE departure_airport IN ('DME', 'VKO', 'SVO') AND
      arrival_airport IN ('KZN') OR
      departure_airport IN ('KZN') AND
      arrival_airport IN ('DME', 'VKO', 'SVO')
ORDER BY departure_airport