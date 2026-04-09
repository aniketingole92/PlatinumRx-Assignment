CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE bookings (
    booking_id INT PRIMARY KEY,
    user_id INT,
    booking_date DATE
);

CREATE TABLE items (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(50),
    rate INT
);

CREATE TABLE booking_commercials (
    booking_id INT,
    item_id INT,
    quantity INT
);

-- Sample Data
INSERT INTO users VALUES (1, 'Aniket'), (2, 'Rahul');

INSERT INTO bookings VALUES
(101, 1, '2021-11-10'),
(102, 2, '2021-11-15');

INSERT INTO items VALUES
(1, 'Food', 200),
(2, 'Room', 800);

INSERT INTO booking_commercials VALUES
(101, 1, 2),
(101, 2, 1),
(102, 2, 2);