CREATE TABLE User (
    id INT PRIMARY KEY,
    name NVARCHAR(255),
    email NVARCHAR(255),
    phone VARCHAR(255)
);

CREATE TABLE TicketVendingMachine (
    id INT PRIMARY KEY,
    location NVARCHAR(255),
    status NVARCHAR(255)
);

CREATE TABLE Destination (
    id INT PRIMARY KEY,
    name NVARCHAR(255),
    fare FLOAT
);

CREATE TABLE PaymentMethod (
    id INT PRIMARY KEY,
    name NVARCHAR(255),
    type NVARCHAR(255),
    fee FLOAT
);

CREATE TABLE Ticket (
    id INT PRIMARY KEY,
    destination_id INT,
    payment_method_id INT,
    price FLOAT,
    status NVARCHAR(255),
    issue_date DATETIME,
    FOREIGN KEY (destination_id) REFERENCES Destination(id),
    FOREIGN KEY (payment_method_id) REFERENCES PaymentMethod(id)
);

INSERT INTO User (id, name, email, phone)
VALUES (1, 'John Smith', 'john.smith@gmail.com', '84941234567');

INSERT INTO TicketVendingMachine (id, location, status)
VALUES (1, 'Metro Bến Thành - Suối Tiên', 'Operational');

INSERT INTO Destination (id, name, fare)
VALUES (1, 'Ho Chi Minh City', 2.50);

INSERT INTO PaymentMethod (id, name, type, fee)
VALUES (1, 'Credit Card', 'Card', 0.20);
VALUES (2, 'QR Code', 'QR', 0.50);

INSERT INTO Ticket (id, destination_id, payment_method_id, price, status, issue_date)
VALUES (1, 1, 1, 3.00, 'Issued', '2023-03-19 10:30:00');

SELECT * FROM User