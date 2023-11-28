-- Table create scripts here

-- Client table
CREATE TABLE client (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    phone_number VARCHAR(20),
);

-- Stylist table
CREATE TABLE stylist (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    phone_number VARCHAR(20),
    commission_percentage NUMERIC(3,2)
);

-- Treatment table
CREATE TABLE treatment (
    id SERIAL PRIMARY KEY,
    type VARCHAR(255),
    code VARCHAR(3),
    price NUMERIC(10,2)
);

-- Booking table
CREATE TABLE booking (
    id SERIAL PRIMARY KEY,
    booking_date DATE,
    booking_time TIME,
    client_id INT,
    treatment_id INT,
    stylist_id INT,
    FOREIGN KEY (client_id) REFERENCES client(id),
    FOREIGN KEY (treatment_id) REFERENCES treatment(id),
    FOREIGN KEY (stylist_id) REFERENCES stylist(id)
);
