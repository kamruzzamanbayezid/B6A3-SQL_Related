-- Retrieve booking information along with Customer name and Vehicle name.
SELECT
  b.booking_id,
  u.name AS customer_name,
  v.name AS vehicle_name,
  b.start_date,
  b.end_date,
  b.booking_status AS status
FROM
  bookings AS b
  JOIN users AS u USING (user_id)
  JOIN vehicles AS v USING (vehicle_id)

  
-- Requirement: Find all vehicles that have never been booked.
SELECT
  v.vehicle_id,
  v.name,
  v.type,
  v.model,
  v.registration_number,
  v.rental_price,
  v.availability_status
FROM
  vehicles v
WHERE
  NOT EXISTS (
    SELECT
      1
    FROM
      bookings b
    WHERE
      b.vehicle_id = v.vehicle_id
  );



-- Requirement: Retrieve all available vehicles of a specific type (e.g. cars).
SELECT * FROM vehicles
WHERE availability_status = 'available' AND type = 'car';



-- Find the total number of bookings for each vehicle and display only those vehicles that have more than 2 bookings.
SELECT 
    v.name AS vehicle_name, 
    COUNT(b.booking_id) AS total_bookings
FROM 
    vehicles v
JOIN 
    bookings b USING(vehicle_id)
GROUP BY 
    v.vehicle_id, v.name
HAVING 
    COUNT(b.booking_id) > 2;
