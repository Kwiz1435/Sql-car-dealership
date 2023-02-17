CREATE TABLE Salesperson (
  SalespersonID INT PRIMARY KEY,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL
);

CREATE TABLE Customer (
  CustomerID INT PRIMARY KEY,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  Email VARCHAR(100) NOT NULL
);

CREATE TABLE Car (
  CarID INT PRIMARY KEY,
  Make VARCHAR(50) NOT NULL,
  Model VARCHAR(50) NOT NULL,
  Year INT NOT NULL,
  Price DECIMAL(10, 2) NOT NULL,
  SalespersonID INT NOT NULL,
  CustomerID INT NOT NULL,
  FOREIGN KEY (SalespersonID) REFERENCES Salesperson(SalespersonID),
  FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

CREATE TABLE ServiceTicket (
  ServiceTicketID INT PRIMARY KEY,
  CarID INT NOT NULL,
  ServiceDate DATE NOT NULL,
  ServiceDescription VARCHAR(1000) NOT NULL,
  MechanicNotes VARCHAR(1000),
  FOREIGN KEY (CarID) REFERENCES Car(CarID)
);

CREATE TABLE Mechanic (
  MechanicID INT PRIMARY KEY,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL
);

CREATE TABLE Invoice (
  InvoiceID INT PRIMARY KEY,
  CarID INT NOT NULL,
  InvoiceDate DATE NOT NULL,
  Total DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (CarID) REFERENCES Car(CarID)
);

CREATE TABLE Part (
  PartID INT PRIMARY KEY,
  Name VARCHAR(50) NOT NULL,
  Description VARCHAR(1000)
);

CREATE TABLE ServiceRecord (
  ServiceRecordID INT PRIMARY KEY,
  ServiceTicketID INT NOT NULL,
  PartID INT,
  MechanicID INT NOT NULL,
  Quantity INT NOT NULL,
  FOREIGN KEY (ServiceTicketID) REFERENCES ServiceTicket(ServiceTicketID),
  FOREIGN KEY (PartID) REFERENCES Part(PartID),
  FOREIGN KEY (MechanicID) REFERENCES Mechanic(MechanicID)
);