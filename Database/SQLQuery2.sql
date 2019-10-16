CREATE DATABASE Project1DB;
USE Project1DB;

----------------- Table Creation ------------------
CREATE TABLE Category(
Code INT IDENTITY(1000,1) PRIMARY KEY,
Name VARCHAR(255) UNIQUE NOT NULL
)

INSERT INTO Category (Name) VALUES ('Mobile');
INSERT INTO Category (Name) VALUES ('Desktop');
INSERT INTO Category (Name) VALUES ('Laptop');
INSERT INTO Category (Name) VALUES ('Headphone');

CREATE TABLE Product(
Code INT IDENTITY(1000,1) PRIMARY KEY,
Name VARCHAR(255) UNIQUE NOT NULL,
Category VARCHAR(255) NOT NULL,
ReorderLevel INT NOT NULL,
Description TEXT
)

INSERT INTO Product (Name, Category, ReorderLevel, Description) VALUES ('Samsung Galaxy Y', 'Mobile', 100, 'Old is gold');
INSERT INTO Product (Name, Category, ReorderLevel, Description) VALUES ('Samsung Galaxy S', 'Mobile', 50, 'New is smart');
INSERT INTO Product (Name, Category, ReorderLevel, Description) VALUES ('iPhone 8', 'Mobile', 80, 'Elegant');
INSERT INTO Product (Name, Category, ReorderLevel, Description) VALUES ('Nokia 800 Tough', 'Mobile', 200, 'Daddy is back.');
INSERT INTO Product (Name, Category, ReorderLevel, Description) VALUES (' JBL Everest Elite 750NC', 'Headphone', 100, 'Take a sound adventure with us');

CREATE TABLE Customer(
Code INT IDENTITY(1000,1) PRIMARY KEY,
Name VARCHAR(255) NOT NULL,
Address VARCHAR(255),
Email VARCHAR(255) UNIQUE NOT NULL,
Contact VARCHAR(255) UNIQUE NOT NULL,
LoyalityPoint INT NOT NULL
)

INSERT INTO Customer(Name, Address, Email, Contact, LoyalityPoint) VALUES ('Kuddus Mia', 'Mirpur 10', 'kuddusmia22@yahoo.com', '01527555555', 25);
INSERT INTO Customer(Name, Address, Email, Contact, LoyalityPoint) VALUES ('Sukkur Mia', 'Azimpur', 'sukkurMiaisBeauty@yahoo.com', '01527588555', 15);
INSERT INTO Customer(Name, Address, Email, Contact, LoyalityPoint) VALUES ('Ful Banu', 'Mirpur 11.5', 'flowerBanu@gmail.com', '01927555555', 29);
INSERT INTO Customer(Name, Address, Email, Contact, LoyalityPoint) VALUES ('Bilkiss', 'Azimpur', 'killbill@yahoo.com', '01520555555', 120);
INSERT INTO Customer(Name, Address, Email, Contact, LoyalityPoint) VALUES ('Jordan', 'Uttara', 'imjordan@gmail.com', '01527555999', 254);

CREATE TABLE Supplier(
Code INT IDENTITY(1000,1) PRIMARY KEY,
Name VARCHAR(255) UNIQUE NOT NULL,
Address VARCHAR(255),
Email VARCHAR(255) UNIQUE NOT NULL,
Contact VARCHAR(255) UNIQUE NOT NULL,
ContactPerson VARCHAR(255)
)

INSERT INTO Supplier(Name, Address, Email, Contact, ContactPerson) VALUES ('Kuddus Mia', 'Mirpur 10', 'kuddusmia22@yahoo.com', '01527555555', '01527578555');
INSERT INTO Supplier(Name, Address, Email, Contact, ContactPerson) VALUES ('Kuddus Mia', 'Mirpur 10', 'kuddusmia22@yahoo.com', '01527555555', '01527578555');
INSERT INTO Supplier(Name, Address, Email, Contact, ContactPerson) VALUES ('Kuddus Mia', 'Mirpur 10', 'kuddusmia22@yahoo.com', '01527555555', '01527578555');
INSERT INTO Supplier(Name, Address, Email, Contact, ContactPerson) VALUES ('Kuddus Mia', 'Mirpur 10', 'kuddusmia22@yahoo.com', '01527555555', '01527578555');
INSERT INTO Supplier(Name, Address, Email, Contact, ContactPerson) VALUES ('Kuddus Mia', 'Mirpur 10', 'kuddusmia22@yahoo.com', '01527555555', '01527578555');


CREATE TABLE Sales(
	SalesCode INT IDENTITY(20190001,1),
	Date DATE NOT NULL,
	Customer INT NOT NULL,
	Category INT NOT NULL,
	Product INT NOT NULL,
	Quantity NUMERIC(18,2) NOT NULL,
	CONSTRAINT PK_Sales PRIMARY KEY(SalesCode),
	CONSTRAINT FK_Customer FOREIGN KEY(Customer) REFERENCES Customer(Code),
	CONSTRAINT FK_Category FOREIGN KEY(Category) REFERENCES Category(Code),
	CONSTRAINT FK_Product FOREIGN KEY(Product) REFERENCES Product(Code)
)

CREATE TABLE Purchase(
	PurchaseCode INT IDENTITY(20190001,1),
	InvoiceNo VARCHAR(255) NOT NULL UNIQUE,
	Date DATE NOT NULL,
	Supplier INT NOT NULL,
	Category INT NOT NULL,
	Product INT NOT NULL,
	ManufactureDate DATE,
	ExpireDate DATE,
	Quantity NUMERIC(18,2) NOT NULL,
	UnitPrice NUMERIC(18,2) NOT NULL,
	MRP NUMERIC(18,2) NOT NULL,
	Remarks TEXT,

	CONSTRAINT PK_Purchase PRIMARY KEY(PurchaseCode),
	CONSTRAINT FK_SupplierP FOREIGN KEY(Supplier) REFERENCES Supplier(Code),
	CONSTRAINT FK_CategoryP FOREIGN KEY(Category) REFERENCES Category(Code),
	CONSTRAINT FK_ProductP FOREIGN KEY(Product) REFERENCES Product(Code)
)

/*
CREATE DATABASE Project1
USE Project1
CREATE TABLE Category(


Code INT IDENTITY(1000,1) PRIMARY KEY ,
Name VARCHAR(255) UNIQUE NOT NULL

)

SELECT * FROM Category
DROP TABLE Category

CREATE TABLE Product(

Code INT IDENTITY(1000,1) PRIMARY KEY NOT NULL,
Name VARCHAR(255) UNIQUE NOT NULL,
Category VARCHAR(255) NOT NULL,
ReorderLevel INT NOT NULL,
Description TEXT

)
SELECT * FROM Product

CREATE TABLE Customer(
Code INT IDENTITY(1000,1) PRIMARY KEY NOT NULL,
Name VARCHAR(255) NOT NULL,
Address VARCHAR(255) NOT NULL,
Email VARCHAR(255) UNIQUE NOT NULL,
Contact VARCHAR(11) UNIQUE NOT NULL,
LoyalityPoint INT
)
select * from Customer

CREATE TABLE Supplier(
Code INT IDENTITY(1000,1) PRIMARY KEY NOT NULL,
Name VARCHAR(255) NOT NULL,
Address VARCHAR(255) NOT NULL,
Email VARCHAR(255) UNIQUE NOT NULL,
Contact VARCHAR(11) UNIQUE NOT NULL,
ContactPerson VARCHAR(11) NOT NULL
)

select * from Supplier
*/