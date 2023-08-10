-- Create Users Table
CREATE TABLE Users (
    UserId INT PRIMARY KEY,
    Username VARCHAR(50) NOT NULL,
    PasswordHash VARCHAR(100) NOT NULL
  
);

-- Create Vehicles Table
CREATE TABLE Vehicles (
    VehicleId INT PRIMARY KEY,
    UserId INT FOREIGN KEY REFERENCES Users(UserId),
    Year INT,
    Make VARCHAR(50),
    Model VARCHAR(50)
);

-- Create MaintenanceRecords Table
CREATE TABLE MaintenanceRecords (
    RecordId INT PRIMARY KEY,
    VehicleId INT FOREIGN KEY REFERENCES Vehicles(VehicleId),
    MaintenanceDate DATETIME,
    OdometerReading INT,
    MaintenanceDetails VARCHAR(MAX)
);

-- Create Receipts Table
CREATE TABLE Receipts (
    ReceiptId INT PRIMARY KEY,
    RecordId INT FOREIGN KEY REFERENCES MaintenanceRecords(RecordId),
    ReceiptDate DATETIME,
    TotalCost DECIMAL(10,2)
);

-- Create Parts Table
CREATE TABLE Parts (
    PartId INT PRIMARY KEY,
    ReceiptId INT FOREIGN KEY REFERENCES Receipts(ReceiptId),
    PartName VARCHAR(100),
    PartDescription VARCHAR(MAX),
    PartQuantity INT,
    PartCost DECIMAL(10,2)
);