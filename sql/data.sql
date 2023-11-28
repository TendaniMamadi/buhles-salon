-- Add insert scripts here
INSERT INTO treatment (type, code, price)
VALUES
    ('pedicure', 'PED', 175.00),
    ('manicure', 'MAN', 215.00),
    ('make-up', 'MKP', 185.00),
    ('brows & lashes', 'BRL', 240.00);

INSERT INTO client (first_name, last_name, phone_number)
VALUES
    ('John', 'Doe', '089-456-7890'),
    ('Jane', 'Smith', '087-654-3210'),
    ('Alice', 'Johnson', '055-123-4567'),
    ('Mary', 'Care', '054-122-4545'),
    ('Mthunzi', 'Tom', '053-223-3567'),
    ('Kat', 'Dracula', '045-111-2345');

INSERT INTO stylist (first_name, last_name, phone_number, commission_percentage)
VALUES
    ('Kerry', 'Scott', '082-222-0000', 0.15),
    ('Siya', 'Gaya', '083-333-1111', 0.20),
    ('Tendani', 'Mamadi', '074-444-2222',0.7),
    ('Ngomso', 'Fente', '073-333-3333',0.10);


 