-- Вывести номер {flight_no},
-- время запланированного отправления {scheduled_departure},
-- время запланированного прибытия {scheduled_arrival} и статус {status}
-- первых 5 по времени отправления рейсов из Домодедово (DME) в Казань (KZN) за август 2017 года.

SELECT
    flight_no,
    scheduled_arrival,
    status
FROM flights f
WHERE 1=1
  AND departure_airport='DME'
  AND arrival_airport='KZN'
  AND scheduled_departure BETWEEN '2017-08-01' AND '2017-08-31'
ORDER BY  scheduled_departure
LIMIT 5

