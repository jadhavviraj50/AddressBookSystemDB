
UC1 : Create Address Book Service DB


Create Database AddressBookService;
Use AddressBookService;


UC2 : Create Address Book Table


CREATE TABLE AddressBook
(
Id INT PRIMARY KEY IDENTITY (1,1),
FirstName VARCHAR(100),
LastName VARCHAR(100),
Address VARCHAR(500),
City VARCHAR(50),
State VARCHAR(50),
Zip INT,
PhoneNumber VARCHAR(10),
Email VARCHAR(100)
);