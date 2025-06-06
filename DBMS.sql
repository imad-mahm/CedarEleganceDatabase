-- Create the database
CREATE DATABASE CedarEleganceEvents;

USE CedarEleganceEvents;

-- Table for EVENT
CREATE TABLE
    `EVENT` (
        EventID INT PRIMARY KEY,
        `Name` VARCHAR(255) NOT NULL,
        `Start_Date` DATETIME NOT NULL,
        End_Date DATETIME NOT NULL,
        Price DECIMAL(10, 2) NOT NULL
    );
--Insert data into EVENT table
INSERT INTO `EVENT` (EventID, `Name`, `Start_Date`, End_Date, Price) 
VALUES (1, 'Enchanted Wedding', '2025-05-15 14:00:00', '2025-05-15 20:00:00', 5500.00);

INSERT INTO `EVENT` (EventID, `Name`, `Start_Date`, End_Date, Price) 
VALUES (2, 'Innovators Summit', '2025-06-01 09:00:00', '2025-06-01 17:00:00', 3500.00);

INSERT INTO `EVENT` (EventID, `Name`, `Start_Date`, End_Date, Price) 
VALUES (3, 'Magical Birthday Bash', '2025-07-10 18:00:00', '2025-07-10 23:00:00', 1800.00);

INSERT INTO `EVENT` (EventID, `Name`, `Start_Date`, End_Date, Price) 
VALUES (4, 'Rock the Night Concert', '2025-08-20 19:00:00', '2025-08-20 23:59:00', 8500.00);

INSERT INTO `EVENT` (EventID, `Name`, `Start_Date`, End_Date, Price) 
VALUES (5, 'Masterpiece Art Gala', '2025-09-05 10:00:00', '2025-09-05 18:00:00', 2500.00);

INSERT INTO `EVENT` (EventID, `Name`, `Start_Date`, End_Date, Price) 
VALUES (6, 'Golden Hearts Charity Ball', '2025-10-15 19:00:00', '2025-10-15 23:00:00', 12000.00);

INSERT INTO `EVENT` (EventID, `Name`, `Start_Date`, End_Date, Price) 
VALUES (7, 'Future Tech Expo', '2025-11-01 08:00:00', '2025-11-01 18:00:00', 7500.00);

INSERT INTO `EVENT` (EventID, `Name`, `Start_Date`, End_Date, Price) 
VALUES (8, 'Runway Dreams Fashion Show', '2025-12-10 18:00:00', '2025-12-10 22:00:00', 6500.00);

INSERT INTO `EVENT` (EventID, `Name`, `Start_Date`, End_Date, Price) 
VALUES (9, 'Literary Stars Book Launch', '2025-12-20 15:00:00', '2025-12-20 18:00:00', 3000.00);

INSERT INTO `EVENT` (EventID, `Name`, `Start_Date`, End_Date, Price) 
VALUES (10, 'Glamorous New Year Gala', '2025-12-31 20:00:00', '2026-01-01 02:00:00', 13000.00);

-- Table for VENUE
CREATE TABLE
    VENUE (
        VenueID INT PRIMARY KEY,
        `Name` VARCHAR(255) NOT NULL,
        `Address` VARCHAR(255) NOT NULL,
        Phone_Number VARCHAR(15)
    );

--Insert data into VENUE table
INSERT INTO VENUE (VenueID, `Name`, `Address`, Phone_Number) 
VALUES (1, 'Crystal Palace', 'Beirut Central District, Beirut, Lebanon', '+961-1-123456');

INSERT INTO VENUE (VenueID, `Name`, `Address`, Phone_Number) 
VALUES (2, 'Grand Horizon Hall', 'Al-Mina, Tripoli, Lebanon', '+961-6-654321');

INSERT INTO VENUE (VenueID, `Name`, `Address`, Phone_Number) 
VALUES (3, 'The Enchanted Garden', 'Byblos Old Souk, Byblos, Lebanon', '+961-9-555123');

INSERT INTO VENUE (VenueID, `Name`, `Address`, Phone_Number) 
VALUES (4, 'Skyline Rooftop', 'Corniche Sidon, Sidon, Lebanon', '+961-7-444987');

INSERT INTO VENUE (VenueID, `Name`, `Address`, Phone_Number) 
VALUES (5, 'Golden Pavilion', 'Boulevard Zahle, Zahle, Lebanon', '+961-8-333222');

INSERT INTO VENUE (VenueID, `Name`, `Address`, Phone_Number) 
VALUES (6, 'Moonlit Terrace', 'Tyre Coastal Area, Tyre, Lebanon', '+961-7-666555');

INSERT INTO VENUE (VenueID, `Name`, `Address`, Phone_Number) 
VALUES (7, 'Emerald Ballroom', 'Baalbek Ruins Area, Baalbek, Lebanon', '+961-8-777888');

INSERT INTO VENUE (VenueID, `Name`, `Address`, Phone_Number) 
VALUES (8, 'The Velvet Lounge', 'Jounieh Bay Area, Jounieh, Lebanon', '+961-9-222333');

INSERT INTO VENUE (VenueID, `Name`, `Address`, Phone_Number) 
VALUES (9, 'Aurora Banquet Hall', 'Batroun Coastal Area, Batroun, Lebanon', '+961-6-888777');

INSERT INTO VENUE (VenueID, `Name`, `Address`, Phone_Number) 
VALUES (10, 'Starlight Amphitheater', 'Aley Mountain Area, Aley, Lebanon', '+961-5-999000');


-- Table for ATTENDEE (Weak Entity)
CREATE TABLE
    ATTENDEE (
        EventID INT,
        SEAT_ASSIGNMENT INT,
        `Status` VARCHAR(50) NOT NULL,
        Total_Attendee INT NOT NULL,
        First_Name VARCHAR(50) NOT NULL,
        Middle_Name VARCHAR(50),
        Last_Name VARCHAR(50) NOT NULL,
        PRIMARY KEY (EventID, SEAT_ASSIGNMENT),
        FOREIGN KEY (EventID) REFERENCES EVENT (EventID)
    );

--Insert data into ATTENDEE table
-- EventID 1
INSERT INTO ATTENDEE (EventID, SEAT_ASSIGNMENT, `Status`, Total_Attendee, First_Name, Middle_Name, Last_Name) 
VALUES (1, 1, 'Confirmed', 2, 'Clark', 'Joseph', 'Kent');

INSERT INTO ATTENDEE (EventID, SEAT_ASSIGNMENT, `Status`, Total_Attendee, First_Name, Middle_Name, Last_Name) 
VALUES (1, 2, 'Confirmed', 2, 'Ramzi', NULL, 'Harati');

-- EventID 2
INSERT INTO ATTENDEE (EventID, SEAT_ASSIGNMENT, `Status`, Total_Attendee, First_Name, Middle_Name, Last_Name) 
VALUES (2, 1, 'Confirmed', 3, 'Bruce', NULL, 'Wayne');

INSERT INTO ATTENDEE (EventID, SEAT_ASSIGNMENT, `Status`, Total_Attendee, First_Name, Middle_Name, Last_Name) 
VALUES (2, 2, 'Pending', 3, 'Diana', 'Themyscira', 'Prince');

-- EventID 3
INSERT INTO ATTENDEE (EventID, SEAT_ASSIGNMENT, `Status`, Total_Attendee, First_Name, Middle_Name, Last_Name) 
VALUES (3, 1, 'Confirmed', 2, 'Barry', NULL, 'Allen');

INSERT INTO ATTENDEE (EventID, SEAT_ASSIGNMENT, `Status`, Total_Attendee, First_Name, Middle_Name, Last_Name) 
VALUES (3, 2, 'Pending', 2, 'Iris', NULL, 'West');

-- EventID 4
INSERT INTO ATTENDEE (EventID, SEAT_ASSIGNMENT, `Status`, Total_Attendee, First_Name, Middle_Name, Last_Name) 
VALUES (4, 1, 'Confirmed', 3, 'Arthur', NULL, 'Curry');

INSERT INTO ATTENDEE (EventID, SEAT_ASSIGNMENT, `Status`, Total_Attendee, First_Name, Middle_Name, Last_Name) 
VALUES (4, 2, 'Confirmed', 3, 'Mera', NULL, 'Queen');

-- EventID 5
INSERT INTO ATTENDEE (EventID, SEAT_ASSIGNMENT, `Status`, Total_Attendee, First_Name, Middle_Name, Last_Name) 
VALUES (5, 1, 'Confirmed', 2, 'Victor', NULL, 'Stone');

INSERT INTO ATTENDEE (EventID, SEAT_ASSIGNMENT, `Status`, Total_Attendee, First_Name, Middle_Name, Last_Name) 
VALUES (5, 2, 'Pending', 2, 'Silas', NULL, 'Stone');

-- EventID 6
INSERT INTO ATTENDEE (EventID, SEAT_ASSIGNMENT, `Status`, Total_Attendee, First_Name, Middle_Name, Last_Name) 
VALUES (6, 1, 'Confirmed', 2, 'Hal', NULL, 'Jordan');

INSERT INTO ATTENDEE (EventID, SEAT_ASSIGNMENT, `Status`, Total_Attendee, First_Name, Middle_Name, Last_Name) 
VALUES (6, 2, 'Pending', 2, 'Carol', NULL, 'Ferris');

-- EventID 7
INSERT INTO ATTENDEE (EventID, SEAT_ASSIGNMENT, `Status`, Total_Attendee, First_Name, Middle_Name, Last_Name) 
VALUES (7, 1, 'Confirmed', 2, 'Oliver', NULL, 'Queen');

INSERT INTO ATTENDEE (EventID, SEAT_ASSIGNMENT, `Status`, Total_Attendee, First_Name, Middle_Name, Last_Name) 
VALUES (7, 2, 'Pending', 2, 'Felicity', NULL, 'Smoak');

-- EventID 8
INSERT INTO ATTENDEE (EventID, SEAT_ASSIGNMENT, `Status`, Total_Attendee, First_Name, Middle_Name, Last_Name) 
VALUES (8, 1, 'Confirmed', 2, 'John', NULL, 'Constantine');

INSERT INTO ATTENDEE (EventID, SEAT_ASSIGNMENT, `Status`, Total_Attendee, First_Name, Middle_Name, Last_Name) 
VALUES (8, 2, 'Pending', 2, 'Zatanna', NULL, 'Zatara');

-- EventID 9
INSERT INTO ATTENDEE (EventID, SEAT_ASSIGNMENT, `Status`, Total_Attendee, First_Name, Middle_Name, Last_Name) 
VALUES (9, 1, 'Confirmed', 2, 'Billy', 'William', 'Batson');

INSERT INTO ATTENDEE (EventID, SEAT_ASSIGNMENT, `Status`, Total_Attendee, First_Name, Middle_Name, Last_Name) 
VALUES (9, 2, 'Pending', 2, 'Freddy', 'Eugene', 'Freeman');

-- EventID 10
INSERT INTO ATTENDEE (EventID, SEAT_ASSIGNMENT, `Status`, Total_Attendee, First_Name, Middle_Name, Last_Name) 
VALUES (10, 1, 'Confirmed', 2, 'Lex', NULL, 'Luthor');

INSERT INTO ATTENDEE (EventID, SEAT_ASSIGNMENT, `Status`, Total_Attendee, First_Name, Middle_Name, Last_Name) 
VALUES (10, 2, 'Pending', 2, 'Mercy', NULL, 'Graves');

-- Table for ORGANIZER
CREATE TABLE
    ORGANIZER (
        OrganizerID INT PRIMARY KEY,
        First_Name VARCHAR(50) NOT NULL,
        Middle_Name VARCHAR(50),
        Last_Name VARCHAR(50) NOT NULL,
        `Address` VARCHAR(255)
    );

--Insert data into ORGANIZER table
INSERT INTO ORGANIZER (OrganizerID, First_Name, Middle_Name, Last_Name, `Address`) 
VALUES (1, 'Ramzi', NULL, 'Haraty', 'Beirut, Lebanon');

INSERT INTO ORGANIZER (OrganizerID, First_Name, Middle_Name, Last_Name, `Address`) 
VALUES (2, 'Imad', NULL, 'Mahmoud', 'Tripoli, Lebanon');

INSERT INTO ORGANIZER (OrganizerID, First_Name, Middle_Name, Last_Name, `Address`) 
VALUES (3, 'Ali', NULL, 'Rida', 'Byblos, Lebanon');

INSERT INTO ORGANIZER (OrganizerID, First_Name, Middle_Name, Last_Name, `Address`) 
VALUES (4, 'Reina', NULL, 'Harake', 'Sidon, Lebanon');

INSERT INTO ORGANIZER (OrganizerID, First_Name, Middle_Name, Last_Name, `Address`) 
VALUES (5, 'Ali', NULL, 'El Hajj', 'Zahle, Lebanon');

INSERT INTO ORGANIZER (OrganizerID, First_Name, Middle_Name, Last_Name, `Address`) 
VALUES (6, 'Maher', NULL, 'Saadi', 'Tyre, Lebanon');

INSERT INTO ORGANIZER (OrganizerID, First_Name, Middle_Name, Last_Name, `Address`) 
VALUES (7, 'Cesar', NULL, 'Al Ayache', 'Baalbek, Lebanon');

INSERT INTO ORGANIZER (OrganizerID, First_Name, Middle_Name, Last_Name, `Address`) 
VALUES (8, 'Jean', 'Claude', 'Cherfane', 'Jounieh, Lebanon');

INSERT INTO ORGANIZER (OrganizerID, First_Name, Middle_Name, Last_Name, `Address`) 
VALUES (9, 'Alaa', 'Al Dine', 'Doumit', 'Batroun, Lebanon');

INSERT INTO ORGANIZER (OrganizerID, First_Name, Middle_Name, Last_Name, `Address`) 
VALUES (10, 'Sara', 'Lea', 'Fares', 'Aley, Lebanon');

-- Table for STAFF
CREATE TABLE
    STAFF (
        StaffID INT PRIMARY KEY,
        First_Name VARCHAR(50) NOT NULL,
        Middle_Name VARCHAR(50),
        Last_Name VARCHAR(50) NOT NULL,
        Phone_Number VARCHAR(15),
        Wage DECIMAL(10, 2) NOT NULL,
        OrganizerID INT,
        FOREIGN KEY (OrganizerID) REFERENCES ORGANIZER (OrganizerID)
    );

--Insert data into STAFF table
INSERT INTO STAFF (StaffID, First_Name, Middle_Name, Last_Name, Phone_Number, Wage, OrganizerID) 
VALUES (1, 'Ahmad', 'Fouad', 'Hassan', '+961-1-123456', 1200.00, 1);

INSERT INTO STAFF (StaffID, First_Name, Middle_Name, Last_Name, Phone_Number, Wage, OrganizerID) 
VALUES (2, 'Layla', 'Marie', 'Khalil', '+961-6-654321', 1500.00, 2);

INSERT INTO STAFF (StaffID, First_Name, Middle_Name, Last_Name, Phone_Number, Wage, OrganizerID) 
VALUES (3, 'Jad', 'Elie', 'Nasr', '+961-9-555123', 1100.00, 3);

INSERT INTO STAFF (StaffID, First_Name, Middle_Name, Last_Name, Phone_Number, Wage, OrganizerID) 
VALUES (4, 'Rana', 'Joseph', 'Saad', '+961-7-444987', 1300.00, 4);

INSERT INTO STAFF (StaffID, First_Name, Middle_Name, Last_Name, Phone_Number, Wage, OrganizerID) 
VALUES (5, 'Fouad', 'Michel', 'Ghanem', '+961-8-333222', 1400.00, 5);

INSERT INTO STAFF (StaffID, First_Name, Middle_Name, Last_Name, Phone_Number, Wage, OrganizerID) 
VALUES (6, 'Maya', 'Rita', 'Haddad', '+961-7-666555', 1250.00, 6);

INSERT INTO STAFF (StaffID, First_Name, Middle_Name, Last_Name, Phone_Number, Wage, OrganizerID) 
VALUES (7, 'Karim', 'Nour', 'Doumit', '+961-8-777888', 1350.00, 7);

INSERT INTO STAFF (StaffID, First_Name, Middle_Name, Last_Name, Phone_Number, Wage, OrganizerID) 
VALUES (8, 'Rita', 'Sami', 'Fares', '+961-9-222333', 1450.00, 8);

INSERT INTO STAFF (StaffID, First_Name, Middle_Name, Last_Name, Phone_Number, Wage, OrganizerID) 
VALUES (9, 'Elie', 'George', 'Cherfane', '+961-6-888777', 1500.00, 9);

INSERT INTO STAFF (StaffID, First_Name, Middle_Name, Last_Name, Phone_Number, Wage, OrganizerID) 
VALUES (10, 'Sara', 'Lea', 'Harb', '+961-5-999000', 1600.00, 10);

-- Table for CUSTOMER
CREATE TABLE
    CUSTOMER (
        CustomerID INT PRIMARY KEY,
        First_Name VARCHAR(50) NOT NULL,
        Middle_Name VARCHAR(50),
        Last_Name VARCHAR(50) NOT NULL,
        Email VARCHAR(255) NOT NULL,
        Payment_Types VARCHAR(50),
        Amount_Paid DECIMAL(10, 2),
        Amount_Due DECIMAL(10, 2),
        Payment_Day DATE,
        SO_ID INT,
        FOREIGN KEY (SO_ID) REFERENCES SPECIAL_OFFER (OfferID)
        );

--Insert data into CUSTOMER table
INSERT INTO CUSTOMER (CustomerID, First_Name, Middle_Name, Last_Name, Email, Payment_Types, Amount_Paid, Amount_Due, Payment_Day, SO_ID) 
VALUES (1, 'Rami', 'Joseph', 'Haddad', 'rami.haddad@example.com', 'Credit Card', 500.00, 0.00, '2025-04-01', NULL);

INSERT INTO CUSTOMER (CustomerID, First_Name, Middle_Name, Last_Name, Email, Payment_Types, Amount_Paid, Amount_Due, Payment_Day, SO_ID) 
VALUES (2, 'Lina', 'Marie', 'Karam', 'lina.karam@example.com', 'Cash', 300.00, 200.00, '2025-04-05', 1);

INSERT INTO CUSTOMER (CustomerID, First_Name, Middle_Name, Last_Name, Email, Payment_Types, Amount_Paid, Amount_Due, Payment_Day, SO_ID) 
VALUES (3, 'Fadi', 'George', 'Saliba', 'fadi.saliba@example.com', 'Bank Transfer', 1000.00, 0.00, '2025-04-10', 2);

INSERT INTO CUSTOMER (CustomerID, First_Name, Middle_Name, Last_Name, Email, Payment_Types, Amount_Paid, Amount_Due, Payment_Day, SO_ID) 
VALUES (4, 'Nadine', 'Elie', 'Chahine', 'nadine.chahine@example.com', 'Credit Card', 700.00, 300.00, '2025-04-15', 3);

INSERT INTO CUSTOMER (CustomerID, First_Name, Middle_Name, Last_Name, Email, Payment_Types, Amount_Paid, Amount_Due, Payment_Day, SO_ID) 
VALUES (5, 'Jad', 'Michel', 'Abou Khalil', 'jad.khalil@example.com', 'Cash', 250.00, 50.00, '2025-04-20', NULL);

INSERT INTO CUSTOMER (CustomerID, First_Name, Middle_Name, Last_Name, Email, Payment_Types, Amount_Paid, Amount_Due, Payment_Day, SO_ID) 
VALUES (6, 'Maya', 'Rita', 'Nasr', 'maya.nasr@example.com', 'Bank Transfer', 1200.00, 0.00, '2025-04-25', 4);

INSERT INTO CUSTOMER (CustomerID, First_Name, Middle_Name, Last_Name, Email, Payment_Types, Amount_Paid, Amount_Due, Payment_Day, SO_ID) 
VALUES (7, 'Karim', 'Fouad', 'Ghanem', 'karim.ghanem@example.com', 'Credit Card', 800.00, 200.00, '2025-04-28', 5);

INSERT INTO CUSTOMER (CustomerID, First_Name, Middle_Name, Last_Name, Email, Payment_Types, Amount_Paid, Amount_Due, Payment_Day, SO_ID) 
VALUES (8, 'Rita', 'Nour', 'Saad', 'rita.saad@example.com', 'Cash', 400.00, 100.00, '2025-04-30', NULL);

INSERT INTO CUSTOMER (CustomerID, First_Name, Middle_Name, Last_Name, Email, Payment_Types, Amount_Paid, Amount_Due, Payment_Day, SO_ID) 
VALUES (9, 'Elie', 'Sami', 'Doumit', 'elie.doumit@example.com', 'Bank Transfer', 1500.00, 0.00, '2025-05-01', 6);

INSERT INTO CUSTOMER (CustomerID, First_Name, Middle_Name, Last_Name, Email, Payment_Types, Amount_Paid, Amount_Due, Payment_Day, SO_ID) 
VALUES (10, 'Sara', 'Lea', 'Fares', 'sara.fares@example.com', 'Credit Card', 1000.00, 500.00, '2025-05-05', 7);

-- Table for SPECIAL OFFER
CREATE TABLE
    SPECIAL_OFFER (
        OfferID INT PRIMARY KEY,
         Valid_Date DATE NOT NULL
    );

--Insert data into SPECIAL_OFFER table
INSERT INTO SPECIAL_OFFER (OfferID, Valid_Date) 
VALUES (1, '2025-05-01');

INSERT INTO SPECIAL_OFFER (OfferID, Valid_Date) 
VALUES (2, '2025-06-01');

INSERT INTO SPECIAL_OFFER (OfferID, Valid_Date) 
VALUES (3, '2025-07-01');

INSERT INTO SPECIAL_OFFER (OfferID, Valid_Date) 
VALUES (4, '2025-08-01');

INSERT INTO SPECIAL_OFFER (OfferID, Valid_Date) 
VALUES (5, '2025-09-01');

INSERT INTO SPECIAL_OFFER (OfferID, Valid_Date) 
VALUES (6, '2025-10-01');

INSERT INTO SPECIAL_OFFER (OfferID, Valid_Date) 
VALUES (7, '2025-11-01');

INSERT INTO SPECIAL_OFFER (OfferID, Valid_Date) 
VALUES (8, '2025-12-01');

INSERT INTO SPECIAL_OFFER (OfferID, Valid_Date) 
VALUES (9, '2026-01-01');

INSERT INTO SPECIAL_OFFER (OfferID, Valid_Date) 
VALUES (10, '2026-02-01');

-- Table for SPONSOR
CREATE TABLE
    SPONSOR (
        SponsorID INT PRIMARY KEY,
        `Name` VARCHAR(255) NOT NULL,
        Phone_Number VARCHAR(15),
        Sponsorship_Amount DECIMAL(10, 2) NOT NULL
    );

--Insert data into SPONSOR table
INSERT INTO SPONSOR (SponsorID, `Name`, Phone_Number, Sponsorship_Amount) 
VALUES (1, 'Lebanon Bank', '+961-1-123456', 10000.00);

INSERT INTO SPONSOR (SponsorID, `Name`, Phone_Number, Sponsorship_Amount) 
VALUES (2, 'Cedars Insurance', '+961-6-654321', 8000.00);

INSERT INTO SPONSOR (SponsorID, `Name`, Phone_Number, Sponsorship_Amount) 
VALUES (3, 'Phoenicia Hotels', '+961-9-555123', 12000.00);

INSERT INTO SPONSOR (SponsorID, `Name`, Phone_Number, Sponsorship_Amount) 
VALUES (4, 'Beirut Traders', '+961-7-444987', 7000.00);

INSERT INTO SPONSOR (SponsorID, `Name`, Phone_Number, Sponsorship_Amount) 
VALUES (5, 'Golden Olive Oil', '+961-8-333222', 5000.00);

INSERT INTO SPONSOR (SponsorID, `Name`, Phone_Number, Sponsorship_Amount) 
VALUES (6, 'Tyre Tourism Board', '+961-7-666555', 6000.00);

INSERT INTO SPONSOR (SponsorID, `Name`, Phone_Number, Sponsorship_Amount) 
VALUES (7, 'Baalbek Cultural Association', '+961-8-777888', 9000.00);

INSERT INTO SPONSOR (SponsorID, `Name`, Phone_Number, Sponsorship_Amount) 
VALUES (8, 'Jounieh Marina', '+961-9-222333', 11000.00);

INSERT INTO SPONSOR (SponsorID, `Name`, Phone_Number, Sponsorship_Amount) 
VALUES (9, 'Batroun Brewery', '+961-6-888777', 4000.00);

INSERT INTO SPONSOR (SponsorID, `Name`, Phone_Number, Sponsorship_Amount) 
VALUES (10, 'Aley Mountain Resorts', '+961-5-999000', 15000.00);

-- Table for SERVICE
CREATE TABLE
    `SERVICE` (
        ServiceID INT PRIMARY KEY
    );

--Insert data into SERVICE table
INSERT INTO `SERVICE` (ServiceID) 
VALUES (1);

INSERT INTO `SERVICE` (ServiceID) 
VALUES (2);

INSERT INTO `SERVICE` (ServiceID) 
VALUES (3);

INSERT INTO `SERVICE` (ServiceID) 
VALUES (4);

INSERT INTO `SERVICE` (ServiceID) 
VALUES (5);

INSERT INTO `SERVICE` (ServiceID) 
VALUES (6);

INSERT INTO `SERVICE` (ServiceID) 
VALUES (7);

INSERT INTO `SERVICE` (ServiceID) 
VALUES (8);

INSERT INTO `SERVICE` (ServiceID) 
VALUES (9);

INSERT INTO `SERVICE` (ServiceID) 
VALUES (10);

-- Table for SUPPLIER
CREATE TABLE
    SUPPLIER (
        SupplierID INT PRIMARY KEY,
        `Name` VARCHAR(255) NOT NULL,
        Fee VARCHAR(15),
        Details TEXT
    );

--Insert data into SUPPLIER table
INSERT INTO SUPPLIER (SupplierID, `Name`, Fee, Details) 
VALUES (1, 'Lebanon Catering Co.', '5000', 'Provides catering services for events.');

INSERT INTO SUPPLIER (SupplierID, `Name`, Fee, Details) 
VALUES (2, 'Elite Sound Systems', '3000', 'Offers sound and lighting equipment.');

INSERT INTO SUPPLIER (SupplierID, `Name`, Fee, Details) 
VALUES (3, 'Floral Creations', '2000', 'Specializes in floral decorations.');

INSERT INTO SUPPLIER (SupplierID, `Name`, Fee, Details) 
VALUES (4, 'Luxury Rentals', '4000', 'Provides luxury furniture and decor.');

INSERT INTO SUPPLIER (SupplierID, `Name`, Fee, Details) 
VALUES (5, 'Event Security Services', '2500', 'Offers professional security personnel.');

INSERT INTO SUPPLIER (SupplierID, `Name`, Fee, Details) 
VALUES (6, 'Tech Solutions', '3500', 'Provides audiovisual and technical support.');

INSERT INTO SUPPLIER (SupplierID, `Name`, Fee, Details) 
VALUES (7, 'Gourmet Desserts', '1500', 'Specializes in custom desserts and cakes.');

INSERT INTO SUPPLIER (SupplierID, `Name`, Fee, Details) 
VALUES (8, 'Photo Memories', '3000', 'Offers professional photography and videography.');

INSERT INTO SUPPLIER (SupplierID, `Name`, Fee, Details) 
VALUES (9, 'Sparkling Clean', '1000', 'Provides cleaning services before and after events.');

INSERT INTO SUPPLIER (SupplierID, `Name`, Fee, Details) 
VALUES (10, 'Transport Experts', '5000', 'Offers transportation and logistics services.');

-- Table for HOLD (M:N Relationship between EVENT and VENUE)
CREATE TABLE
    HOLD (
        EventID INT,
        VenueID INT,
        PRIMARY KEY (EventID, VenueID),
        FOREIGN KEY (EventID) REFERENCES EVENT (EventID),
        FOREIGN KEY (VenueID) REFERENCES VENUE (VenueID)
    );

-- Insert data into HOLD table
INSERT INTO HOLD (EventID, VenueID) 
VALUES (1, 1);

INSERT INTO HOLD (EventID, VenueID) 
VALUES (2, 2);

INSERT INTO HOLD (EventID, VenueID) 
VALUES (3, 3);

INSERT INTO HOLD (EventID, VenueID) 
VALUES (4, 4);

INSERT INTO HOLD (EventID, VenueID) 
VALUES (5, 5);

INSERT INTO HOLD (EventID, VenueID) 
VALUES (6, 6);

INSERT INTO HOLD (EventID, VenueID) 
VALUES (7, 7);

INSERT INTO HOLD (EventID, VenueID) 
VALUES (8, 8);

INSERT INTO HOLD (EventID, VenueID) 
VALUES (9, 9);

INSERT INTO HOLD (EventID, VenueID) 
VALUES (10, 10);

-- Table for USED_IN (M:N Relationship between EVENT and SERVICE)
CREATE TABLE
    USED_IN (
        EventID INT,
        ServiceID INT,
        PRIMARY KEY (EventID, ServiceID),
        FOREIGN KEY (EventID) REFERENCES EVENT (EventID),
        FOREIGN KEY (ServiceID) REFERENCES SERVICE (ServiceID)
    );

-- Insert data into USED_IN table
INSERT INTO USED_IN (EventID, ServiceID) 
VALUES (1, 1);

INSERT INTO USED_IN (EventID, ServiceID) 
VALUES (1, 2);

INSERT INTO USED_IN (EventID, ServiceID) 
VALUES (2, 3);

INSERT INTO USED_IN (EventID, ServiceID) 
VALUES (2, 4);

INSERT INTO USED_IN (EventID, ServiceID) 
VALUES (3, 5);

INSERT INTO USED_IN (EventID, ServiceID) 
VALUES (3, 6);

INSERT INTO USED_IN (EventID, ServiceID) 
VALUES (4, 7);

INSERT INTO USED_IN (EventID, ServiceID) 
VALUES (4, 8);

INSERT INTO USED_IN (EventID, ServiceID) 
VALUES (5, 9);

INSERT INTO USED_IN (EventID, ServiceID) 
VALUES (5, 10);

-- Table for WORKS_ON (M:N Relationship between STAFF and EVENT)
CREATE TABLE
    WORKS_ON (
        StaffID INT,
        EventID INT,
        PRIMARY KEY (StaffID, EventID),
        FOREIGN KEY (StaffID) REFERENCES STAFF (StaffID),
        FOREIGN KEY (EventID) REFERENCES EVENT (EventID)
    );

-- Insert data into WORKS_ON table
INSERT INTO WORKS_ON (StaffID, EventID) 
VALUES (1, 1);

INSERT INTO WORKS_ON (StaffID, EventID) 
VALUES (2, 1);

INSERT INTO WORKS_ON (StaffID, EventID) 
VALUES (3, 2);

INSERT INTO WORKS_ON (StaffID, EventID) 
VALUES (4, 2);

INSERT INTO WORKS_ON (StaffID, EventID) 
VALUES (5, 3);

INSERT INTO WORKS_ON (StaffID, EventID) 
VALUES (6, 3);

INSERT INTO WORKS_ON (StaffID, EventID) 
VALUES (7, 4);

INSERT INTO WORKS_ON (StaffID, EventID) 
VALUES (8, 4);

INSERT INTO WORKS_ON (StaffID, EventID) 
VALUES (9, 5);

INSERT INTO WORKS_ON (StaffID, EventID) 
VALUES (10, 5);

-- Table for SPONSORS (M:N Relationship between SPONSOR and EVENT)
CREATE TABLE
    SPONSORS (
        SponsorID INT,
        EventID INT,
        PRIMARY KEY (SponsorID, EventID),
        FOREIGN KEY (SponsorID) REFERENCES SPONSOR (SponsorID),
        FOREIGN KEY (EventID) REFERENCES EVENT (EventID)
    );

-- Insert data into SPONSORS table
INSERT INTO SPONSORS (SponsorID, EventID) 
VALUES (1, 1);

INSERT INTO SPONSORS (SponsorID, EventID) 
VALUES (2, 2);

INSERT INTO SPONSORS (SponsorID, EventID) 
VALUES (3, 3);

INSERT INTO SPONSORS (SponsorID, EventID) 
VALUES (4, 4);

INSERT INTO SPONSORS (SponsorID, EventID) 
VALUES (5, 5);

INSERT INTO SPONSORS (SponsorID, EventID) 
VALUES (6, 6);

INSERT INTO SPONSORS (SponsorID, EventID) 
VALUES (7, 7);

INSERT INTO SPONSORS (SponsorID, EventID) 
VALUES (8, 8);

INSERT INTO SPONSORS (SponsorID, EventID) 
VALUES (9, 9);

INSERT INTO SPONSORS (SponsorID, EventID) 
VALUES (10, 10);

-- Table for ORGANIZES (M:N Relationship between ORGANIZER and EVENT)
CREATE TABLE
    ORGANIZES (
        OrganizerID INT,
        EventID INT,
        Resposibility VARCHAR(250),
        PRIMARY KEY (OrganizerID, EventID),
        FOREIGN KEY (OrganizerID) REFERENCES ORGANIZER (OrganizerID),
        FOREIGN KEY (EventID) REFERENCES EVENT (EventID)
    );

-- Insert data into ORGANIZES table
INSERT INTO ORGANIZES (OrganizerID, EventID, Resposibility) 
VALUES (1, 1, 'Coordinate catering and decorations');

INSERT INTO ORGANIZES (OrganizerID, EventID, Resposibility) 
VALUES (2, 2, 'Manage guest list and invitations');

INSERT INTO ORGANIZES (OrganizerID, EventID, Resposibility) 
VALUES (3, 3, 'Oversee event setup and logistics');

INSERT INTO ORGANIZES (OrganizerID, EventID, Resposibility) 
VALUES (4, 4, 'Handle entertainment and performances');

INSERT INTO ORGANIZES (OrganizerID, EventID, Resposibility) 
VALUES (5, 5, 'Supervise art displays and auctions');

INSERT INTO ORGANIZES (OrganizerID, EventID, Resposibility) 
VALUES (6, 6, 'Plan charity activities and fundraising');

INSERT INTO ORGANIZES (OrganizerID, EventID, Resposibility) 
VALUES (7, 7, 'Coordinate technology and presentations');

INSERT INTO ORGANIZES (OrganizerID, EventID, Resposibility) 
VALUES (8, 8, 'Organize fashion show logistics');

INSERT INTO ORGANIZES (OrganizerID, EventID, Resposibility) 
VALUES (9, 9, 'Manage book launch and author interactions');

INSERT INTO ORGANIZES (OrganizerID, EventID, Resposibility) 
VALUES (10, 10, 'Plan New Year celebrations and fireworks');

-- Table for PROVIDES_FOR (M:N Relationship between SUPPLIER and EVENT)
CREATE TABLE
    PROVIDES_FOR (
        SupplierID INT,
        EventID INT,
        Invoice_Number VARCHAR(50),
        Supply_Status VARCHAR(50),
        PRIMARY KEY (SupplierID, EventID),
        FOREIGN KEY (SupplierID) REFERENCES SUPPLIER (SupplierID),
        FOREIGN KEY (EventID) REFERENCES EVENT (EventID)
    );

-- Insert data into PROVIDES_FOR table
INSERT INTO PROVIDES_FOR (SupplierID, EventID, Invoice_Number, Supply_Status) 
VALUES (1, 1, 'INV-1001', 'Delivered');

INSERT INTO PROVIDES_FOR (SupplierID, EventID, Invoice_Number, Supply_Status) 
VALUES (2, 2, 'INV-1002', 'Pending');

INSERT INTO PROVIDES_FOR (SupplierID, EventID, Invoice_Number, Supply_Status) 
VALUES (3, 3, 'INV-1003', 'Delivered');

INSERT INTO PROVIDES_FOR (SupplierID, EventID, Invoice_Number, Supply_Status) 
VALUES (4, 4, 'INV-1004', 'In Progress');

INSERT INTO PROVIDES_FOR (SupplierID, EventID, Invoice_Number, Supply_Status) 
VALUES (5, 5, 'INV-1005', 'Delivered');

INSERT INTO PROVIDES_FOR (SupplierID, EventID, Invoice_Number, Supply_Status) 
VALUES (6, 6, 'INV-1006', 'Pending');

INSERT INTO PROVIDES_FOR (SupplierID, EventID, Invoice_Number, Supply_Status) 
VALUES (7, 7, 'INV-1007', 'Delivered');

INSERT INTO PROVIDES_FOR (SupplierID, EventID, Invoice_Number, Supply_Status) 
VALUES (8, 8, 'INV-1008', 'In Progress');

INSERT INTO PROVIDES_FOR (SupplierID, EventID, Invoice_Number, Supply_Status) 
VALUES (9, 9, 'INV-1009', 'Delivered');

INSERT INTO PROVIDES_FOR (SupplierID, EventID, Invoice_Number, Supply_Status) 
VALUES (10, 10, 'INV-1010', 'Pending');

-- Table for HAS (M:N Relationship between CUSTOMER and EVENT)
CREATE TABLE
    HAS (
        CustomerID INT,
        EventID INT,
        PRIMARY KEY (CustomerID, EventID),
        FOREIGN KEY (CustomerID) REFERENCES CUSTOMER (CustomerID),
        FOREIGN KEY (EventID) REFERENCES EVENT (EventID)
    );

-- Insert data into HAS table
INSERT INTO HAS (CustomerID, EventID) 
VALUES (1, 1);

INSERT INTO HAS (CustomerID, EventID) 
VALUES (2, 2);

INSERT INTO HAS (CustomerID, EventID) 
VALUES (3, 3);

INSERT INTO HAS (CustomerID, EventID) 
VALUES (4, 4);

INSERT INTO HAS (CustomerID, EventID) 
VALUES (5, 5);

INSERT INTO HAS (CustomerID, EventID) 
VALUES (6, 6);

INSERT INTO HAS (CustomerID, EventID) 
VALUES (7, 7);

INSERT INTO HAS (CustomerID, EventID) 
VALUES (8, 8);

INSERT INTO HAS (CustomerID, EventID) 
VALUES (9, 9);

INSERT INTO HAS (CustomerID, EventID) 
VALUES (10, 10);

-- Table for PROVIDES (M:N Relationship between SUPPLIER and SERVICE)
CREATE TABLE
    PROVIDES (
        SupplierID INT,
        ServiceID INT,
        PRIMARY KEY (SupplierID, ServiceID),
        FOREIGN KEY (SupplierID) REFERENCES SUPPLIER (SupplierID),
        FOREIGN KEY (ServiceID) REFERENCES SERVICE (ServiceID)
    );

-- Insert data into PROVIDES table
INSERT INTO PROVIDES (SupplierID, ServiceID) 
VALUES (1, 1);

INSERT INTO PROVIDES (SupplierID, ServiceID) 
VALUES (2, 2);

INSERT INTO PROVIDES (SupplierID, ServiceID) 
VALUES (3, 3);

INSERT INTO PROVIDES (SupplierID, ServiceID) 
VALUES (4, 4);

INSERT INTO PROVIDES (SupplierID, ServiceID) 
VALUES (5, 5);

INSERT INTO PROVIDES (SupplierID, ServiceID) 
VALUES (6, 6);

INSERT INTO PROVIDES (SupplierID, ServiceID) 
VALUES (7, 7);

INSERT INTO PROVIDES (SupplierID, ServiceID) 
VALUES (8, 8);

INSERT INTO PROVIDES (SupplierID, ServiceID) 
VALUES (9, 9);

INSERT INTO PROVIDES (SupplierID, ServiceID) 
VALUES (10, 10);

-- Table for Event_Types (Multivalued Attribute for EVENT)
CREATE TABLE
    Event_Types (
        EventID INT,
        `Type` VARCHAR(50),
        PRIMARY KEY (EventID, Type),
        FOREIGN KEY (EventID) REFERENCES EVENT (EventID)
    );

-- Insert data into Event_Types table
INSERT INTO Event_Types (EventID, `Type`) 
VALUES (1, 'Wedding');

INSERT INTO Event_Types (EventID, `Type`) 
VALUES (2, 'Conference');

INSERT INTO Event_Types (EventID, `Type`) 
VALUES (3, 'Birthday');

INSERT INTO Event_Types (EventID, `Type`) 
VALUES (4, 'Concert');

INSERT INTO Event_Types (EventID, `Type`) 
VALUES (5, 'Art Gala');

INSERT INTO Event_Types (EventID, `Type`) 
VALUES (6, 'Charity');

INSERT INTO Event_Types (EventID, `Type`) 
VALUES (7, 'Expo');

INSERT INTO Event_Types (EventID, `Type`) 
VALUES (8, 'Fashion Show');

INSERT INTO Event_Types (EventID, `Type`) 
VALUES (9, 'Book Launch');

INSERT INTO Event_Types (EventID, `Type`) 
VALUES (10, 'New Year Celebration');

-- Table for Staff_Role (Multivalued Attribute for STAFF)
CREATE TABLE
    Staff_Role (
        StaffID INT,
        `Role` VARCHAR(50),
        PRIMARY KEY (StaffID, Role),
        FOREIGN KEY (StaffID) REFERENCES STAFF (StaffID)
    );

-- Insert data into Staff_Role table
INSERT INTO Staff_Role (StaffID, `Role`) 
VALUES (1, 'Event Manager');

INSERT INTO Staff_Role (StaffID, `Role`) 
VALUES (2, 'Catering Coordinator');

INSERT INTO Staff_Role (StaffID, `Role`) 
VALUES (3, 'Logistics Specialist');

INSERT INTO Staff_Role (StaffID, `Role`) 
VALUES (4, 'Entertainment Manager');

INSERT INTO Staff_Role (StaffID, `Role`) 
VALUES (5, 'Security Supervisor');

INSERT INTO Staff_Role (StaffID, `Role`) 
VALUES (6, 'Technical Support');

INSERT INTO Staff_Role (StaffID, `Role`) 
VALUES (7, 'Marketing Coordinator');

INSERT INTO Staff_Role (StaffID, `Role`) 
VALUES (8, 'Fashion Show Organizer');

INSERT INTO Staff_Role (StaffID, `Role`) 
VALUES (9, 'Photography Manager');

INSERT INTO Staff_Role (StaffID, `Role`) 
VALUES (10, 'Transportation Coordinator');

-- Table for Service_Decoration (Multivalued Attribute for SERVICE)
CREATE TABLE
    Service_Decoration (
        ServiceID INT,
        Decoration VARCHAR(50),
        PRIMARY KEY (ServiceID, Decoration),
        FOREIGN KEY (ServiceID) REFERENCES SERVICE (ServiceID)
    );

-- Insert data into Service_Decoration table
INSERT INTO Service_Decoration (ServiceID, Decoration) 
VALUES (1, 'Floral Arrangements');

INSERT INTO Service_Decoration (ServiceID, Decoration) 
VALUES (2, 'Balloon Decorations');

INSERT INTO Service_Decoration (ServiceID, Decoration) 
VALUES (3, 'Lighting Setup');

INSERT INTO Service_Decoration (ServiceID, Decoration) 
VALUES (4, 'Table Centerpieces');

INSERT INTO Service_Decoration (ServiceID, Decoration) 
VALUES (5, 'Stage Backdrops');

INSERT INTO Service_Decoration (ServiceID, Decoration) 
VALUES (6, 'Thematic Props');

INSERT INTO Service_Decoration (ServiceID, Decoration) 
VALUES (7, 'Ceiling Drapes');

INSERT INTO Service_Decoration (ServiceID, Decoration) 
VALUES (8, 'Photo Booth Setup');

INSERT INTO Service_Decoration (ServiceID, Decoration) 
VALUES (9, 'Outdoor Lighting');

INSERT INTO Service_Decoration (ServiceID, Decoration) 
VALUES (10, 'Custom Signage');

-- Table for Service_Types (Multivalued Attribute for SERVICE)
CREATE TABLE
    Service_Types (
        ServiceID INT,
        `Type` VARCHAR(50),
        PRIMARY KEY (ServiceID, Type),
        FOREIGN KEY (ServiceID) REFERENCES SERVICE (ServiceID)
    );

-- Insert data into Service_Types table
INSERT INTO Service_Types (ServiceID, `Type`) 
VALUES (1, 'Catering');

INSERT INTO Service_Types (ServiceID, `Type`) 
VALUES (2, 'Lighting');

INSERT INTO Service_Types (ServiceID, `Type`) 
VALUES (3, 'Floral Decoration');

INSERT INTO Service_Types (ServiceID, `Type`) 
VALUES (4, 'Furniture Rental');

INSERT INTO Service_Types (ServiceID, `Type`) 
VALUES (5, 'Security');

INSERT INTO Service_Types (ServiceID, `Type`) 
VALUES (6, 'Audio/Visual');

INSERT INTO Service_Types (ServiceID, `Type`) 
VALUES (7, 'Desserts');

INSERT INTO Service_Types (ServiceID, `Type`) 
VALUES (8, 'Photography');

INSERT INTO Service_Types (ServiceID, `Type`) 
VALUES (9, 'Cleaning');

INSERT INTO Service_Types (ServiceID, `Type`) 
VALUES (10, 'Transportation');

-- Table for Attendee_Preferences (Multivalued Attribute for ATTENDEE)
CREATE TABLE
    Attendee_Preferences (
        EventID INT,
        Seat_Assignment INT,
        Preference VARCHAR(50),
        PRIMARY KEY (EventID, Seat_Assignment, Preference),
        FOREIGN KEY (EventID, Seat_Assignment) REFERENCES ATTENDEE (EventID, Seat_Assignment)
    );

-- Insert data into Attendee_Preferences table
INSERT INTO Attendee_Preferences (EventID, Seat_Assignment, Preference) 
VALUES (1, 1, 'Vegetarian Meal');

INSERT INTO Attendee_Preferences (EventID, Seat_Assignment, Preference) 
VALUES (1, 2, 'Window Seat');

INSERT INTO Attendee_Preferences (EventID, Seat_Assignment, Preference) 
VALUES (2, 1, 'Front Row Seat');

INSERT INTO Attendee_Preferences (EventID, Seat_Assignment, Preference) 
VALUES (2, 2, 'Vegan Meal');

INSERT INTO Attendee_Preferences (EventID, Seat_Assignment, Preference) 
VALUES (3, 1, 'Gluten-Free Meal');

INSERT INTO Attendee_Preferences (EventID, Seat_Assignment, Preference) 
VALUES (3, 2, 'Aisle Seat');

INSERT INTO Attendee_Preferences (EventID, Seat_Assignment, Preference) 
VALUES (4, 1, 'Extra Legroom');

INSERT INTO Attendee_Preferences (EventID, Seat_Assignment, Preference) 
VALUES (4, 2, 'Non-Alcoholic Drinks');

INSERT INTO Attendee_Preferences (EventID, Seat_Assignment, Preference) 
VALUES (5, 1, 'Quiet Zone');

INSERT INTO Attendee_Preferences (EventID, Seat_Assignment, Preference) 
VALUES (5, 2, 'Kosher Meal');

-- Table for Offer_Types (Multivalued Attribute for SPECIAL_OFFER)
CREATE TABLE
    Offer_Types (
        OfferID INT,
        `Type` VARCHAR(50),
        PRIMARY KEY (OfferID, Type),
        FOREIGN KEY (OfferID) REFERENCES SPECIAL_OFFER (OfferID)
    );

-- Insert data into Offer_Types table
INSERT INTO Offer_Types (OfferID, `Type`) 
VALUES (1, 'Discount');

INSERT INTO Offer_Types (OfferID, `Type`) 
VALUES (2, 'Early Bird');

INSERT INTO Offer_Types (OfferID, `Type`) 
VALUES (3, 'Group Booking');

INSERT INTO Offer_Types (OfferID, `Type`) 
VALUES (4, 'Seasonal');

INSERT INTO Offer_Types (OfferID, `Type`) 
VALUES (5, 'Loyalty Reward');

INSERT INTO Offer_Types (OfferID, `Type`) 
VALUES (6, 'Flash Sale');

INSERT INTO Offer_Types (OfferID, `Type`) 
VALUES (7, 'Referral Bonus');

INSERT INTO Offer_Types (OfferID, `Type`) 
VALUES (8, 'Limited Time');

INSERT INTO Offer_Types (OfferID, `Type`) 
VALUES (9, 'Exclusive Access');

INSERT INTO Offer_Types (OfferID, `Type`) 
VALUES (10, 'VIP Package');

-- Table for Customer_Phone_Number (Multivalued Attribute for CUSTOMER)
CREATE TABLE
    Customer_Phone_Number (
        CustomerID INT,
        Phone_Number VARCHAR(15),
        PRIMARY KEY (CustomerID, Phone_Number),
        FOREIGN KEY (CustomerID) REFERENCES CUSTOMER (CustomerID)
    );

-- Insert data into Customer_Phone_Number table
INSERT INTO Customer_Phone_Number (CustomerID, Phone_Number) 
VALUES (1, '+961-1-123456');

INSERT INTO Customer_Phone_Number (CustomerID, Phone_Number) 
VALUES (2, '+961-6-654321');

INSERT INTO Customer_Phone_Number (CustomerID, Phone_Number) 
VALUES (3, '+961-9-555123');

INSERT INTO Customer_Phone_Number (CustomerID, Phone_Number) 
VALUES (4, '+961-7-444987');

INSERT INTO Customer_Phone_Number (CustomerID, Phone_Number) 
VALUES (5, '+961-8-333222');

INSERT INTO Customer_Phone_Number (CustomerID, Phone_Number) 
VALUES (6, '+961-7-666555');

INSERT INTO Customer_Phone_Number (CustomerID, Phone_Number) 
VALUES (7, '+961-8-777888');

INSERT INTO Customer_Phone_Number (CustomerID, Phone_Number) 
VALUES (8, '+961-9-222333');

INSERT INTO Customer_Phone_Number (CustomerID, Phone_Number) 
VALUES (9, '+961-6-888777');

INSERT INTO Customer_Phone_Number (CustomerID, Phone_Number) 
VALUES (10, '+961-5-999000');

-- Table for Supplier_Phone_Number (Multivalued Attribute for SUPPLIER)
CREATE TABLE
    Supplier_Phone_Number (
        SupplierID INT,
        Phone_Number VARCHAR(15),
        PRIMARY KEY (SupplierID, Phone_Number),
        FOREIGN KEY (SupplierID) REFERENCES SUPPLIER (SupplierID)
    );

-- Insert data into Supplier_Phone_Number table
INSERT INTO Supplier_Phone_Number (SupplierID, Phone_Number) 
VALUES (1, '+961-1-123456');

INSERT INTO Supplier_Phone_Number (SupplierID, Phone_Number) 
VALUES (2, '+961-6-654321');

INSERT INTO Supplier_Phone_Number (SupplierID, Phone_Number) 
VALUES (3, '+961-9-555123');

INSERT INTO Supplier_Phone_Number (SupplierID, Phone_Number) 
VALUES (4, '+961-7-444987');

INSERT INTO Supplier_Phone_Number (SupplierID, Phone_Number) 
VALUES (5, '+961-8-333222');

INSERT INTO Supplier_Phone_Number (SupplierID, Phone_Number) 
VALUES (6, '+961-7-666555');

INSERT INTO Supplier_Phone_Number (SupplierID, Phone_Number) 
VALUES (7, '+961-8-777888');

INSERT INTO Supplier_Phone_Number (SupplierID, Phone_Number) 
VALUES (8, '+961-9-222333');

INSERT INTO Supplier_Phone_Number (SupplierID, Phone_Number) 
VALUES (9, '+961-6-888777');

INSERT INTO Supplier_Phone_Number (SupplierID, Phone_Number) 
VALUES (10, '+961-5-999000');

-- Table for Organizer_Contact_Information (Multivalued Attribute for ORGANIZER)
CREATE TABLE
    Organizer_Contact_Information (
        OrganizerID INT,
        Contact_Information VARCHAR(255),
        PRIMARY KEY (OrganizerID, Contact_Information),
        FOREIGN KEY (OrganizerID) REFERENCES ORGANIZER (OrganizerID)
    );

-- Insert data into Organizer_Contact_Information table
INSERT INTO Organizer_Contact_Information (OrganizerID, Contact_Information) 
VALUES (1, 'rharaty@lau.edu.lb');

INSERT INTO Organizer_Contact_Information (OrganizerID, Contact_Information) 
VALUES (2, 'imad.mahmoud@lau.edu');

INSERT INTO Organizer_Contact_Information (OrganizerID, Contact_Information) 
VALUES (3, 'ali.reda03@lau.edu ');

INSERT INTO Organizer_Contact_Information (OrganizerID, Contact_Information) 
VALUES (4, 'reina.harake@lau.edu');

INSERT INTO Organizer_Contact_Information (OrganizerID, Contact_Information) 
VALUES (5, 'ali.elhajj03@lau.edu');

INSERT INTO Organizer_Contact_Information (OrganizerID, Contact_Information) 
VALUES (6, 'maher.saadi@lau.edu');

INSERT INTO Organizer_Contact_Information (OrganizerID, Contact_Information) 
VALUES (7, 'cesar.ayache@example.com');

INSERT INTO Organizer_Contact_Information (OrganizerID, Contact_Information) 
VALUES (8, 'jean.cherfane@example.com');

INSERT INTO Organizer_Contact_Information (OrganizerID, Contact_Information) 
VALUES (9, 'alaa.doumit@example.com');

INSERT INTO Organizer_Contact_Information (OrganizerID, Contact_Information) 
VALUES (10, 'sara.fares@example.com');

-- Table for Organizer_Role (Multivalued Attribute for ORGANIZER)
CREATE TABLE
    Organizer_Role (
        OrganizerID INT,
        `Role` VARCHAR(50),
        PRIMARY KEY (OrganizerID, Role),
        FOREIGN KEY (OrganizerID) REFERENCES ORGANIZER (OrganizerID)
    );

-- Insert data into Organizer_Role table
INSERT INTO Organizer_Role (OrganizerID, `Role`) 
VALUES (1, 'Event Planner');

INSERT INTO Organizer_Role (OrganizerID, `Role`) 
VALUES (2, 'Logistics Manager');

INSERT INTO Organizer_Role (OrganizerID, `Role`) 
VALUES (3, 'Marketing Specialist');

INSERT INTO Organizer_Role (OrganizerID, `Role`) 
VALUES (4, 'Entertainment Coordinator');

INSERT INTO Organizer_Role (OrganizerID, `Role`) 
VALUES (5, 'Venue Manager');

INSERT INTO Organizer_Role (OrganizerID, `Role`) 
VALUES (6, 'Fundraising Coordinator');

INSERT INTO Organizer_Role (OrganizerID, `Role`) 
VALUES (7, 'Technical Supervisor');

INSERT INTO Organizer_Role (OrganizerID, `Role`) 
VALUES (8, 'Fashion Show Director');

INSERT INTO Organizer_Role (OrganizerID, `Role`) 
VALUES (9, 'Book Launch Organizer');

INSERT INTO Organizer_Role (OrganizerID, `Role`) 
VALUES (10, 'New Year Event Coordinator');

-- Table for Venue_Owner (Multivalued Attribute for VENUE)
CREATE TABLE
    Venue_Owner (
        VenueID INT,
        `Owner` VARCHAR(255),
        PRIMARY KEY (VenueID, Owner),
        FOREIGN KEY (VenueID) REFERENCES VENUE (VenueID)
    );

-- Insert data into Venue_Owner table
INSERT INTO Venue_Owner (VenueID, `Owner`) 
VALUES (1, 'Beirut Holdings');

INSERT INTO Venue_Owner (VenueID, `Owner`) 
VALUES (2, 'Tripoli Events Group');

INSERT INTO Venue_Owner (VenueID, `Owner`) 
VALUES (3, 'Byblos Heritage Foundation');

INSERT INTO Venue_Owner (VenueID, `Owner`) 
VALUES (4, 'Sidon Skyline Ventures');

INSERT INTO Venue_Owner (VenueID, `Owner`) 
VALUES (5, 'Zahle Cultural Society');

INSERT INTO Venue_Owner (VenueID, `Owner`) 
VALUES (6, 'Tyre Coastal Development');

INSERT INTO Venue_Owner (VenueID, `Owner`) 
VALUES (7, 'Baalbek Historical Trust');

INSERT INTO Venue_Owner (VenueID, `Owner`) 
VALUES (8, 'Jounieh Bay Enterprises');

INSERT INTO Venue_Owner (VenueID, `Owner`) 
VALUES (9, 'Batroun Coastal Properties');

INSERT INTO Venue_Owner (VenueID, `Owner`) 
VALUES (10, 'Aley Mountain Resorts');

--This query finds the StaffID of staff members who worked on events
--sponsored by sponsors with a sponsorship amount greater than 10,000
--and provided services categorized as "Catering"
SELECT 
    St1.StaffID
FROM 
    STAFF AS St1
    INNER JOIN WORKS_ON AS W1 ON St1.StaffID = W1.StaffID
    INNER JOIN SPONSORS AS S1 ON W1.EventID = S1.EventID
    INNER JOIN SPONSOR AS SP1 ON S1.SponsorID = SP1.SponsorID
    INNER JOIN USED_IN AS U1 ON W1.EventID = U1.EventID
    INNER JOIN SERVICE_Types AS ST1 ON U1.ServiceID = ST1.ServiceID
WHERE 
    SP1.Sponsorship_Amount > 10000
    AND ST1.Type = 'Catering'

INTERSECT

SELECT 
    St2.StaffID
FROM 
    STAFF AS St2
    INNER JOIN WORKS_ON AS W2 ON St2.StaffID = W2.StaffID
    INNER JOIN ORGANIZES AS O2 ON W2.EventID = O2.EventID
    INNER JOIN ORGANIZER AS ORG2 ON O2.OrganizerID = ORG2.OrganizerID
WHERE 
    ORG2.Address LIKE '%Lebanon%'
    AND St2.Wage > 1500;

--This query finds the CustomerID of customers who attended events
--organized by organizers located in Lebanon and where the
--event price is greater than 5000:
SELECT 
    C.CustomerID
FROM 
    CUSTOMER AS C
    INNER JOIN HAS AS H ON C.CustomerID = H.CustomerID
    INNER JOIN EVENT AS E ON H.EventID = E.EventID
    INNER JOIN ORGANIZES AS O ON E.EventID = O.EventID
    INNER JOIN ORGANIZER AS ORG ON O.OrganizerID = ORG.OrganizerID
WHERE 
    ORG.Address LIKE '%Lebanon%'
    AND E.Price > 5000

INTERSECT

SELECT 
    C2.CustomerID
FROM 
    CUSTOMER AS C2
    INNER JOIN HAS AS H2 ON C2.CustomerID = H2.CustomerID
    INNER JOIN EVENT AS E2 ON H2.EventID = E2.EventID
    INNER JOIN SPONSORS AS S ON E2.EventID = S.EventID
    INNER JOIN SPONSOR AS SP ON S.SponsorID = SP.SponsorID
WHERE 
    SP.Sponsorship_Amount > 10000;

--This query finds the SupplierID of suppliers who provided services 
--for events held in venues located in Lebanon and where the event type is "Charity"
SELECT 
    S.SupplierID
FROM 
    SUPPLIER AS S
    INNER JOIN PROVIDES AS P ON S.SupplierID = P.SupplierID
    INNER JOIN USED_IN AS U ON P.ServiceID = U.ServiceID
    INNER JOIN EVENT AS E ON U.EventID = E.EventID
    INNER JOIN HOLD AS H ON E.EventID = H.EventID
    INNER JOIN VENUE AS V ON H.VenueID = V.VenueID
WHERE 
    V.Address LIKE '%Lebanon%'

INTERSECT

SELECT 
    S2.SupplierID
FROM 
    SUPPLIER AS S2
    INNER JOIN PROVIDES AS P2 ON S2.SupplierID = P2.SupplierID
    INNER JOIN USED_IN AS U2 ON P2.ServiceID = U2.ServiceID
    INNER JOIN EVENT AS E2 ON U2.EventID = E2.EventID
    INNER JOIN Event_Types AS ET ON E2.EventID = ET.EventID
WHERE 
    ET.Type = 'Charity';

--This query finds the EventID of events that have both a sponsorship
--amount greater than 15,000 and use services categorized as "Audio/Visual"
SELECT 
    E.EventID
FROM 
    EVENT AS E
    INNER JOIN SPONSORS AS S ON E.EventID = S.EventID
    INNER JOIN SPONSOR AS SP ON S.SponsorID = SP.SponsorID
WHERE 
    SP.Sponsorship_Amount > 15000

INTERSECT

SELECT 
    E2.EventID
FROM 
    EVENT AS E2
    INNER JOIN USED_IN AS U ON E2.EventID = U.EventID
    INNER JOIN SERVICE_Types AS ST ON U.ServiceID = ST.ServiceID
WHERE 
    ST.Type = 'Audio/Visual';

--This query finds the CustomerID of customers who attended events 
--where the venue owner is "Beirut Holdings" and the event type is "Wedding"
SELECT 
    C.CustomerID
FROM 
    CUSTOMER AS C
    INNER JOIN HAS AS H ON C.CustomerID = H.CustomerID
    INNER JOIN EVENT AS E ON H.EventID = E.EventID
    INNER JOIN HOLD AS HO ON E.EventID = HO.EventID
    INNER JOIN VENUE AS V ON HO.VenueID = V.VenueID
    INNER JOIN Venue_Owner AS VO ON V.VenueID = VO.VenueID
WHERE 
    VO.Owner = 'Beirut Holdings'

INTERSECT

SELECT 
    C2.CustomerID
FROM 
    CUSTOMER AS C2
    INNER JOIN HAS AS H2 ON C2.CustomerID = H2.CustomerID
    INNER JOIN EVENT AS E2 ON H2.EventID = E2.EventID
    INNER JOIN Event_Types AS ET ON E2.EventID = ET.EventID
WHERE 
    ET.Type = 'Wedding';

--This query finds the StaffID of staff members who worked on events 
--where the service type is "Photography" and the event was 
--sponsored by sponsors with a sponsorship amount greater than 12,000
SELECT 
    St.StaffID
FROM 
    STAFF AS St
    INNER JOIN WORKS_ON AS W ON St.StaffID = W.StaffID
    INNER JOIN USED_IN AS U ON W.EventID = U.EventID
    INNER JOIN SERVICE_Types AS ST ON U.ServiceID = ST.ServiceID
WHERE 
    ST.Type = 'Photography'

INTERSECT

SELECT 
    St2.StaffID
FROM 
    STAFF AS St2
    INNER JOIN WORKS_ON AS W2 ON St2.StaffID = W2.StaffID
    INNER JOIN SPONSORS AS S ON W2.EventID = S.EventID
    INNER JOIN SPONSOR AS SP ON S.SponsorID = SP.SponsorID
WHERE 
    SP.Sponsorship_Amount > 12000;


--This query finds the CustomerID of customers who attended events,
-- used services, or were associated with special offers
-- Customers who attended events
(SELECT 
    C.CustomerID
FROM 
    CUSTOMER AS C
    INNER JOIN HAS AS H ON C.CustomerID = H.CustomerID
    INNER JOIN EVENT AS E ON H.EventID = E.EventID
WHERE 
    E.Price > 5000
)

UNION

(SELECT 
    C2.CustomerID
FROM 
    CUSTOMER AS C2
    INNER JOIN HAS AS H2 ON C2.CustomerID = H2.CustomerID
    INNER JOIN EVENT AS E2 ON H2.EventID = E2.EventID
    INNER JOIN USED_IN AS U ON E2.EventID = U.EventID
    INNER JOIN SERVICE_Types AS ST ON U.ServiceID = ST.ServiceID
WHERE 
    ST.Type = 'Catering'
)

UNION

(SELECT 
    C3.CustomerID
FROM 
    CUSTOMER AS C3
    INNER JOIN SPECIAL_OFFER AS SO ON C3.SO_ID = SO.OfferID
WHERE 
    SO.Valid_Date BETWEEN '2025-01-01' AND '2025-12-31'
);

--This query finds the EventID of events that were both organized 
--by organizers located in "Beirut" and used services provided by 
--suppliers with a fee greater than 4000
-- Events organized by organizers located in Beirut
(SELECT 
    E.EventID
FROM 
    EVENT AS E
    INNER JOIN ORGANIZES AS O ON E.EventID = O.EventID
    INNER JOIN ORGANIZER AS ORG ON O.OrganizerID = ORG.OrganizerID
WHERE 
    ORG.Address LIKE '%Beirut%'
)

INTERSECT

(SELECT 
    E2.EventID
FROM 
    EVENT AS E2
    INNER JOIN USED_IN AS U ON E2.EventID = U.EventID
    INNER JOIN PROVIDES AS P ON U.ServiceID = P.ServiceID
    INNER JOIN SUPPLIER AS S ON P.SupplierID = S.SupplierID
WHERE 
    CAST(S.Fee AS DECIMAL(10, 2)) > 4000
);

--query that used to find the EventID, Name, and total sponsorship amount 
--for events that have more than 3 sponsors and use at least 2 different types of services
SELECT 
    E.EventID,
    E.Name,
    (SELECT SUM(SP.Sponsorship_Amount)
     FROM SPONSORS AS S
     INNER JOIN SPONSOR AS SP ON S.SponsorID = SP.SponsorID
     WHERE S.EventID = E.EventID) AS Total_Sponsorship
FROM 
    EVENT AS E
WHERE 
    (SELECT COUNT(DISTINCT S.SponsorID)
     FROM SPONSORS AS S
     WHERE S.EventID = E.EventID) > 3
AND 
    (SELECT COUNT(DISTINCT ST.Type)
     FROM USED_IN AS U
     INNER JOIN SERVICE_Types AS ST ON U.ServiceID = ST.ServiceID
     WHERE U.EventID = E.EventID) >= 2;

--This query finds the SupplierID and Name of suppliers who provided 
--services for events attended by customers who have paid their full 
--amount (i.e., Amount_Due = 0) and where the event type is "Expo"
SELECT 
    DISTINCT S.SupplierID,
    S.Name
FROM 
    SUPPLIER AS S
    INNER JOIN PROVIDES AS P ON S.SupplierID = P.SupplierID
    INNER JOIN USED_IN AS U ON P.ServiceID = U.ServiceID
    INNER JOIN EVENT AS E ON U.EventID = E.EventID
    INNER JOIN HAS AS H ON E.EventID = H.EventID
    INNER JOIN CUSTOMER AS C ON H.CustomerID = C.CustomerID
WHERE 
    C.Amount_Due = 0
    AND E.EventID IN (
        SELECT ET.EventID
        FROM Event_Types AS ET
        WHERE ET.Type = 'Expo'
    );