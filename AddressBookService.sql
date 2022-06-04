
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


UC4: Ability to edit existing contact person using their name


UPDATE AddressBook SET Address='Mumbai',PhoneNumber=0985632147 where FirstName='Mayuri';



UC5: Ability to delete person using person's name



DELETE FROM AddressBook WHERE FirstName='Mitali';


UC6: Ability to retrieve person belonging to city or state from the address book


SELECT * FROM AddressBook WHERE City='Panvel' OR State='Maharastra';


UC7: Ability to understand size of AddressBook by city and state


SELECT COUNT(*) FROM AddressBook WHERE City='Panvel' AND State='Maharastra';