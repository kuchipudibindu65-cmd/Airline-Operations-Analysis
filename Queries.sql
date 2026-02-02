-- Query 1: Total Flights by Status
SELECT
    status,
    COUNT(*) AS total_flights
FROM flights
GROUP BY status
ORDER BY total_flights DESC;

-- Query 2: Delayed vs On-Time Flights
SELECT
    status,
    COUNT(*) AS flight_count
FROM flights
GROUP BY status
ORDER BY flight_count DESC;


-- Query 3: Most Frequent Routes
SELECT
    departure_airport,
    arrival_airport,
    COUNT(*) AS total_flights
FROM flights
GROUP BY departure_airport, arrival_airport
ORDER BY total_flights DESC
LIMIT 10;

-- Query 4: Monthly Flight Trend
SELECT
    DATE_TRUNC('month', scheduled_departure) AS month,
    COUNT(*) AS total_flights
FROM flights
GROUP BY month
ORDER BY month;

-- Query 5: Aircraft Usage Analysis
SELECT
    aircraft_code,
    COUNT(*) AS total_flights
FROM flights
GROUP BY aircraft_code
ORDER BY total_flights DESC;
