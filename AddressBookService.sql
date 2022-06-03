
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


UC3 : Insert new contacts to AddressBook


INSERT INTO AddressBook VALUES ('Viraj','Jadhav','Panvel','Panvel','Maharastra',410206,'0123456789','virajjadhav@gmail.com'),
('Vaibhav','Jadhav','Calgary','Alberta','Canada',101256,'0123456789','vaibhavjadhav@gmail.com'),
('Varad','Jadhav','Panvel','Panvel','Maharastra',410206,'0123456789','varadjadhav@gmail.com'),
('Mayuri','Jadhav','Panvel','Panvel','Maharastra',410206,'0123456789','mayurijadhav@gmail.com'),
('Mitali','Jadhav','Panvel','Panvel','Maharastra',410206,'0123456789','mitalijadhav@gmail.com');

SELECT * FROM AddressBook;
