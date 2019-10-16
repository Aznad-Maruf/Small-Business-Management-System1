
----------------- Just press Execute ------------------

CREATE DATABASE Project1DB;
USE Project1DB;

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
INSERT INTO Product (Name, Category, ReorderLevel, Description) VALUES ('Apple iMac 21.5" MMQA2', 'Desktop', 150, 'It''s Apple!');


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

INSERT INTO Supplier(Name, Address, Email, Contact, ContactPerson) VALUES ('OK Mobile Bangladesh Limited', 'Mirpur 10', 'kuddusmia22@yahoo.com', '01527555555', '01527578555');
INSERT INTO Supplier(Name, Address, Email, Contact, ContactPerson) VALUES ('Famous BD', 'Bonani', 'korim@yahoo.com', '01527478555', '01527008555');
INSERT INTO Supplier(Name, Address, Email, Contact) VALUES ('Nasrin TElecom', 'Dhanmondi', 'nasrimabcd@gmail.com', '01527478885');
INSERT INTO Supplier(Name, Address, Email, Contact, ContactPerson) VALUES ('Best Electronics', 'Mirpur 10', 'be@yahoo.com', '01527555874', '01527578545');
INSERT INTO Supplier(Name, Address, Email, Contact, ContactPerson) VALUES ('Samsung BD', 'Mirpur 10', 'samsam@gamil.com', '01527559999', '01527578999');


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

INSERT INTO Sales(Date, Customer, Category, Product, Quantity) VALUES ('2018-02-03', '1000', '1001', '1005', '200');
INSERT INTO Sales(Date, Customer, Category, Product, Quantity) VALUES ('2018-12-09', '1000', '1003', '1004', '2');
INSERT INTO Sales(Date, Customer, Category, Product, Quantity) VALUES ('2018-08-03', '1003', '1000', '1002', '3');
INSERT INTO Sales(Date, Customer, Category, Product, Quantity) VALUES ('2018-07-13', '1004', '1000', '1003', '1');
INSERT INTO Sales(Date, Customer, Category, Product, Quantity) VALUES ('2018-07-23', '1001', '1003', '1004', '1');


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

INSERT INTO Purchase(InvoiceNo, Date, Supplier, Category, Product, ManufactureDate, Quantity, UnitPrice, MRP, Remarks) VALUES ('2929cc', '2018-07-23', '1002', '1001', '1005', '2009-02-11', '250', '70000', '90000', 'Sell kom lav besi.');
INSERT INTO Purchase(InvoiceNo, Date, Supplier, Category, Product, ManufactureDate, ExpireDate, Quantity, UnitPrice, MRP, Remarks) VALUES ('29287pc', '2018-07-23', '1003', '1000', '1000', '2007-01-01', '2017-12-30','500', '7000', '9500', 'Sell besi lav kom.');
INSERT INTO Purchase(InvoiceNo, Date, Supplier, Category, Product, ManufactureDate, Quantity, UnitPrice, MRP, Remarks) VALUES ('77729cc', '2018-07-29', '1003', '1000', '1003', '2019-08-01', '550', '2000', '5000', 'Sell besi lav besi.');
INSERT INTO Purchase(InvoiceNo, Date, Supplier, Category, Product, ManufactureDate, Quantity, UnitPrice, MRP, Remarks) VALUES ('292589cy', '2018-07-23', '1006', '1003', '1004', '2005-07-21', '750', '500', '1000', 'Sell besi lav mondo na.');
INSERT INTO Purchase(InvoiceNo, Date, Supplier, Category, Product, ManufactureDate, Quantity, UnitPrice, MRP, Remarks) VALUES ('aa29cc', '2019-01-03', '1000', '1000', '1002', '2010-02-01', '1050', '25000', '45000', 'Sell kom lav valoi.');
INSERT INTO Purchase(InvoiceNo, Date, Supplier, Category, Product, ManufactureDate, Quantity, UnitPrice, MRP, Remarks) VALUES ('888829cc', '2018-07-23', '1002', '1001', '1005', '2009-02-11', '250', '70000', '90000', 'Sell kom lav besi.');

SELECT * FROM Supplier;
SELECT * FROM Product;
SELECT * FROM Category;

/*------------ Select queries -------*/
--Category--
SELECT Code, Name FROM Category;
--Product--
SELECT Code, Name, Category, ReorderLevel AS 'Reorder Level', Description FROM Product;
--Customer--
SELECT Code, Name, Address, Email, Contact, LoyalityPoint AS 'Loyalty Point' FROM Customer;
--Supplier--
SELECT Code, Name, Address, Email, Contact, ContactPerson AS 'Contact Person' FROM Supplier;
--Purchase--
SELECT Product AS 'Products(Code)', ManufactureDate AS 'Manufactured Date', ExpireDate AS 'Expired Date', Quantity, UnitPrice AS 'Unit Price(Tk)', UnitPrice*Quantity AS 'Total Price(Tk)', MRP AS 'MRP(Tk)', Remarks FROM Purchase;
--Sales--










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