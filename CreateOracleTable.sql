DROP TABLE Branch;
DROP TABLE Staff;
DROP TABLE propertyForRent;
DROP TABLE Client;
DROP TABLE PrivateOwner;
DROP TABLE Viewing;
DROP TABLE Registration;

CREATE TABLE Branch
(
	branchNo	varchar2(4) NOT NULL,
	street 		varchar2(50),
	city 		varchar2(50),
	postcode	varchar2(8)
);
CREATE TABLE Staff
(
	staffNo 	varchar2(4) NOT NULL,
	fName		varchar2(30) NOT NULL,
	lName		varchar2(30) NOT NULL,
	position	varchar2(15),
	sex		char NOT NULL,
	DOB		date,
	salary		number,
	branchNo	varchar2(4)
);
CREATE TABLE PropertyForRent
(
	PropertyNo	varchar(4) NOT NULL,
	street 		varchar(50),
	city 		varchar(50),
	postcode	varchar(7),
	type		varchar(10),
	rooms		NUMBER(2),
	rent		NUMBER(4),
	ownerNo		varchar(4),
	staffNo 	varchar2(4),
	branchNo	varchar2(4)	
);
CREATE TABLE Client
(
	clientNo	varchar(4) NOT NULL,
	fName		varchar2(30) NOT NULL,
	lName		varchar2(30) NOT NULL,
	telNo		varchar2(14),
	preType		varchar2(6),
	maxRent		number(5)
);
CREATE TABLE PrivateOwner
(
	ownerNo		varchar2(4) 	NOT NULL,
	fName		varchar2(30) 	NOT NULL,
	lName		varchar2(30) 	NOT NULL,
	address		varchar2(60),
	telNo		varchar2(14)
);
CREATE TABLE Viewing
(
	clientNo	varchar(4) NOT NULL,
	PropertyNo	varchar(4) NOT NULL,
	viewingDate	date NOT NULL,
	comments	varchar2(30)	
);
CREATE TABLE Registration
(
	clientNo	varchar(4) NOT NULL,
	branchNo	varchar2(4),
	staffNo 	varchar2(4),
	dateJoined	date			
);	