DROP TABLE Booking;
DROP TABLE Room;
DROP TABLE hotel;
DROP TABLE Guest;

CREATE TABLE Hotel
(
 hotelNo numeric(10) NOT NULL,
 hotelName varchar2(20),
 city  varchar2(10),
 CONSTRAINT Hotel_pk PRIMARY KEY (HotelNo)
); 


CREATE TABLE Room
(
  roomNo numeric(10) not null,
  hotelNo numeric(10) not null,
  type varchar2(50),
  price numeric(10),
  CONSTRAINT Room PRIMARY KEY (roomNO, hotelNo)
);

CREATE TABLE Booking
(
  hotelNo numeric(10) not null,
  guestNo numeric(20) not null,
  dateFrom date not null,
  dateTo date,
  roomNo numeric(10),
  CONSTRAINT Booking PRIMARY KEY (roomNO, hotelNo, dateFrom)
);

CREATE TABLE Guest
(
  guestNo numeric(10) not null,
  guestName varchar(20),
  guestAddress varchar(255), 
  CONSTRAINT Guest PRIMARY KEY (guestNo)
);
ALTER TABLE Booking
add CONSTRAINT BookingGuest_fk   
FOREIGN KEY (guestNo)    
REFERENCES Guest (guestNo); 

ALTER TABLE Booking
add CONSTRAINT BookingRoom_fk   
FOREIGN KEY (hotelNo, roomNo)    
REFERENCES Room (hotelNo, roomNo);

ALTER TABLE Booking
add CONSTRAINT BookingHotel_fk   
FOREIGN KEY (hotelNo)    
REFERENCES Hotel (hotelNo);

ALTER TABLE Room
add CONSTRAINT HotelRoom_fk   
FOREIGN KEY (hotelNo)    
REFERENCES Hotel (hotelNo);



