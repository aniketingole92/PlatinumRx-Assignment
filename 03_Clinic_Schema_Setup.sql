CREATE TABLE clinic_sales (
    sale_id INT,
    sales_channel VARCHAR(50),
    amount INT,
    month VARCHAR(10)
);

CREATE TABLE expenses (
    expense_id INT,
    amount INT,
    month VARCHAR(10)
);

INSERT INTO clinic_sales VALUES
(1, 'Online', 5000, 'Nov'),
(2, 'Offline', 3000, 'Nov');

INSERT INTO expenses VALUES
(1, 2000, 'Nov'),
(2, 1000, 'Nov');