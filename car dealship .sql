-- Insert salesperson data
INSERT INTO Salesperson (Name, Phone)
VALUES ('John Smith', '555-1234'),
       ('Jane Doe', '555-5678');

-- Insert customer data
INSERT INTO Customer (Name, Phone)
VALUES ('Bob Johnson', '555-9876'),
       ('Alice Brown', '555-4321');

-- Insert car data
INSERT INTO Car (Make, Model, Year, SerialNumber, PurchasePrice, SalespersonID, CustomerID)
VALUES ('Ford', 'Mustang', 2022, '1234', 30000, 1, 1),
       ('Toyota', 'Corolla', 2021, '5678', 25000, 2, 2);

-- Insert service ticket data
INSERT INTO ServiceTicket (CarID, DateIn, DateOut, Description)
VALUES (1, '2023-02-01', '2023-02-03', 'Oil change and tire rotation'),
       (2, '2023-02-02', '2023-02-04', 'Brake replacement');

-- Insert mechanic data
INSERT INTO Mechanic (Name, Phone)
VALUES ('Joe Brown', '555-1111'),
       ('Sara Johnson', '555-2222');

-- Insert invoice data
INSERT INTO Invoice (InvoiceNumber, InvoiceDate, Amount, SalespersonID, CustomerID, CarID)
VALUES ('1234', '2023-02-04', 30000, 1, 1, 1),
       ('5678', '2023-02-05', 25000, 2, 2, 2);

-- Insert part data
INSERT INTO Part (Name, Price)
VALUES ('Oil filter', 10),
       ('Brake pad', 50);

-- Insert service record data
INSERT INTO ServiceRecord (ServiceTicketID, PartID, MechanicID, Quantity)
VALUES (1, 1, 1, 1),
       (2, 2, 2, 4);