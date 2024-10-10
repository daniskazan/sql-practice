SELECT
    *,
    CASE
        WHEN
            scheduled_arrival - scheduled_departure < INTERVAL '1 hour'
            THEN 'Short flights'
        WHEN
            scheduled_arrival - scheduled_departure BETWEEN INTERVAL '1 hour' AND INTERVAL '2 hours'
            THEN 'Average flights'
        WHEN
            scheduled_arrival - scheduled_departure BETWEEN INTERVAL '2 hours' AND INTERVAL '4 hours'
            THEN 'Long flights'
        ELSE
            'Super long flights'
    END AS duration_cohorts
FROM flights;
