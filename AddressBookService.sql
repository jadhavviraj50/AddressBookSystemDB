
------------------------------------UC1 : Create Address Book Service DB---------------------------------------------


Create Database AddressBookService;
Use AddressBookService;


------------------------------------UC2 : Create Address Book Table--------------------------------------------------


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


------------------------------------------UC3 : Insert new contacts to AddressBook---------------------------------------------------


INSERT INTO AddressBook VALUES ('Viraj','Jadhav','Panvel','Panvel','Maharastra',410206,'0123456789','virajjadhav@gmail.com'),
('Vaibhav','Jadhav','Calgary','Alberta','Canada',101256,'0123456789','vaibhavjadhav@gmail.com'),
('Varad','Jadhav','Panvel','Panvel','Maharastra',410206,'0123456789','varadjadhav@gmail.com'),
('Mayuri','Jadhav','Panvel','Panvel','Maharastra',410206,'0123456789','mayurijadhav@gmail.com'),
('Mitali','Jadhav','Panvel','Panvel','Maharastra',410206,'0123456789','mitalijadhav@gmail.com');

SELECT * FROM AddressBook;


-------------------------------------UC4: Ability to edit existing contact person using their name----------------------------------------


UPDATE AddressBook SET Address='Mumbai',PhoneNumber=0985632147 where FirstName='Mayuri';



--------------------------------------UC5: Ability to delete person using person's name---------------------------------------------



DELETE FROM AddressBook WHERE FirstName='Mitali';


-------------------------------UC6: Ability to retrieve person belonging to city or state from the address book-----------------------------


SELECT * FROM AddressBook WHERE City='Panvel' OR State='Maharastra';


--------------------------------UC7: Ability to understand size of AddressBook by city and state-------------------------------------


SELECT COUNT(*) FROM AddressBook WHERE City='Panvel' AND State='Maharastra';


----------------------------UC8: Ability to retrieve entries sorted alphabetically by person's name for a given city-----------------------


SELECT FirstName,City FROM AddressBook ORDER BY City ASC;
SELECT FirstName,City FROM AddressBook ORDER BY City DESC;



--------------------------UC9: Ability to identify each address book with name and type---------------------------------------


ALTER TABLE AddressBook ADD FullName VARCHAR(100),TYPE VARCHAR(100);
SELECT * FROM AddressBook
UPDATE AddressBook SET Type='Family' WHERE FirstName='Varad';
UPDATE AddressBook SET Type='Profession' WHERE FirstName='Mayuri';
UPDATE AddressBook SET Type='Family' WHERE FirstName='Vaibhav';


---------------------------------UC10: Ability to get number of contact persons i.e. count by type--------------------------------------


SELECT COUNT (*) FROM AddressBook WHERE Type='Family';
SELECT COUNT (*) FROM AddressBook WHERE Type='Profession';


---------------------------------UC11: Ability to add person to both friend and family----------------------------------------


alter table AddressBook DROP COLUMN FullName

INSERT INTO AddressBook VALUES ('Nitesh','Gaikwad','Vidyanagar','Alibag','Maharashtra',402201,'7777568888','niteshgaikwad@gmail.com','Friend'),
('Vidya','Jadhav','Neral','Karjat','Maharashtra',410209,'8888885666','vidyajadhav@gmail.com','Family');

SELECT * FROM AddressBook;


------------------------------UC12-Creating table using ER Diagram-------------------------------------

Create table Address_Book(AddressBookId Int Identity(1,1) Primary Key,
						  AddressBookName varchar(100));
select *from Address_Book;



Create table PersonDetail(   PersonId Int Identity(1,1) Primary Key,
							 AddressBookId Int Foreign Key References Address_Book(AddressBookId),
							 FirstName varchar(50),
							 LastName varchar(50),
							 Address varchar(100),
							 City varchar(50),
							 State varchar(50),
							 Zip int,
							 PhoneNumber bigint,
							 Email_ID varchar(50)    );
select *from PersonDetail;



CREATE table PersonTypes(	 PersonTypeId Int Identity(1,1) Primary Key,
							 PersonType varchar(50), );
select *from PersonTypes;



CREATE table PersonsDetail_Type(PersonId Int Foreign Key References PersonDetail(PersonId),
								PersonTypeId Int Foreign Key References PersonTypes(PersonTypeId),
								EmployeeID Int Primary Key );
select *from PersonsDetail_Type;



CREATE table Employee_Department(PersonId Int Foreign Key References PersonDetail(PersonId),
								EmployeeID Int  ,
								DepartmentID int,);
select *from Employee_Department;


--------------------------Inserting values into Address_Book table---------------------------------

INSERT INTO Address_Book(AddressBookName) Values('Home'),('School'),('College'),('Office');
select *from Address_Book;

------------------------------Insert values in PersonDetail table--------------------------------

Insert INTO PersonDetail VALUES(1,'Nitesh','Gaikwad','Alibag','Alibag','Maharashtra',402201,1234567890,'niteshgaikwad@gmail.com'),
								(2,'Mahendra','Nirgude','Neral','Karjat','Maharashtra',410209,1234567891,'mahendranirgude@gmail.com'),
								(3,'Vivek','Kumbhar','Varsoli','Alibag','Maharashtra',410206,1234567892,'vivekkumbhar@gamil.com'),
								(4,'Nishant','Gangurde','Nashik','Nashik','Maharashtra',410204,1234567893,'nishantgangurde@gmail.com');
select *from PersonDetail;


---------------------------------Inserting values into persontype table--------------------------------------------

INSERT INTO PersonTypes(PersonType) VALUES('Family'),('SchoolFriend'),('Friend'),('Profession');
select *from PersonTypes;

-----------------------------Insert values in Employee_Department table------------------------------------------

INSERT INTO Employee_Department VALUES(1,123,818),(2,456,19112),(3,789,4512),(4,244,161815)
select *from Employee_Department;

--------------------------------Insert values in PersonsDetail_Type table-------------------------------------

INSERT INTO PersonsDetail_Type(PersonId,PersonTypeId,EmployeeID) VALUES(1,4,123),(2,3,456),(3,1,789),(4,2,244);
select *from PersonsDetail_Type;







