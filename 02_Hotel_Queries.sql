-- Q1 Last booked
SELECT * FROM bookings
ORDER BY booking_date DESC
LIMIT 1;

-- Q2 Billing November
SELECT SUM(quantity * rate) AS total
FROM bookings b
JOIN booking_commercials bc ON b.booking_id = bc.booking_id
JOIN items i ON bc.item_id = i.item_id
WHERE MONTH(booking_date) = 11;

-- Q3 Bills > 1000
SELECT booking_id, SUM(quantity * rate) total
FROM booking_commercials bc
JOIN items i ON bc.item_id = i.item_id
GROUP BY booking_id
HAVING total > 1000;

-- Q4 Most ordered item
SELECT item_id, SUM(quantity) total
FROM booking_commercials
GROUP BY item_id
ORDER BY total DESC;

-- Q5 2nd highest bill
SELECT *
FROM (
    SELECT booking_id,
           SUM(quantity * rate) total,
           DENSE_RANK() OVER (ORDER BY SUM(quantity * rate) DESC) rnk
    FROM booking_commercials bc
    JOIN items i ON bc.item_id = i.item_id
    GROUP BY booking_id
) t
WHERE rnk = 2;