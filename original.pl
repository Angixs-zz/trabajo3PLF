/*
 DATOS PUBLICOS DEL PROYECTO: Travel Agency System (Sanjay-RK-27)
 FUENTE: https://github.com/Sanjay-RK-27/Travel-Agency-System
 REVISION: d1139ed15c25be332fbb7007759a2c4a41d10312
 DIAGRAMA ER: EER-Diagram.pdf (en repositorio original).
 TABLAS: 14. REGISTROS CONVERTIDOS: 558.

 Es una ADAPTACION de los archivos SQL a SWI-Prolog, NO un archivo .pl
 publicado por el autor. Nombres y orden de campos corresponden al esquema.
 Los IDs AUTO_INCREMENT no presentes en INSERT se reconstruyen por orden
 de aparicion. Se emplea null para valores NULL u omitidos en SQL.
 Los tipos, claves foraneas, triggers y restricciones se definen en SQL,
 pero no se ejecutan automaticamente al cargar estos hechos de Prolog.
 La actualizacion final de costos del SQL requiere ejecucion en MySQL.
*/

% Tabla Location: 40 registros
% location(LocationID, City, State, Country).
location(1, 'New York', 'NY', 'United States').
location(2, 'Los Angeles', 'CA', 'United States').
location(3, 'Chicago', 'IL', 'United States').
location(4, 'Miami', 'FL', 'United States').
location(5, 'Las Vegas', 'NV', 'United States').
location(6, 'San Francisco', 'CA', 'United States').
location(7, 'Orlando', 'FL', 'United States').
location(8, 'London', null, 'United Kingdom').
location(9, 'Paris', null, 'France').
location(10, 'Rome', null, 'Italy').
location(11, 'Barcelona', null, 'Spain').
location(12, 'Amsterdam', null, 'Netherlands').
location(13, 'Berlin', null, 'Germany').
location(14, 'Tokyo', null, 'Japan').
location(15, 'Sydney', 'NSW', 'Australia').
location(16, 'Dubai', null, 'United Arab Emirates').
location(17, 'Toronto', 'ON', 'Canada').
location(18, 'Vancouver', 'BC', 'Canada').
location(19, 'Cancun', 'Quintana Roo', 'Mexico').
location(20, 'Buenos Aires', null, 'Argentina').
location(21, 'Rio de Janeiro', null, 'Brazil').
location(22, 'Cape Town', null, 'South Africa').
location(23, 'Bangkok', null, 'Thailand').
location(24, 'Singapore', null, 'Singapore').
location(25, 'Hong Kong', null, 'China').
location(26, 'Shanghai', null, 'China').
location(27, 'Mumbai', 'Maharashtra', 'India').
location(28, 'Delhi', null, 'India').
location(29, 'Istanbul', null, 'Turkey').
location(30, 'Athens', null, 'Greece').
location(31, 'Prague', null, 'Czech Republic').
location(32, 'Vienna', null, 'Austria').
location(33, 'Zurich', null, 'Switzerland').
location(34, 'Stockholm', null, 'Sweden').
location(35, 'Oslo', null, 'Norway').
location(36, 'Helsinki', null, 'Finland').
location(37, 'Cairo', null, 'Egypt').
location(38, 'Marrakech', null, 'Morocco').
location(39, 'Nairobi', null, 'Kenya').
location(40, 'Auckland', null, 'New Zealand').

% Tabla Passenger: 35 registros
% passenger(PassengerID, Name, Gender, Age, Email, Phone).
passenger(1, 'John Smith', 'Male', 35, 'john.smith@email.com', '+15551234567').
passenger(2, 'Emily Johnson', 'Female', 28, 'emily.j@email.com', '+15552345678').
passenger(3, 'Michael Williams', 'Male', 42, 'michael.w@email.com', '+15553456789').
passenger(4, 'Sarah Brown', 'Female', 31, 'sarah.b@email.com', '+15554567890').
passenger(5, 'David Jones', 'Male', 25, 'david.j@email.com', '+15555678901').
passenger(6, 'Jessica Garcia', 'Female', 38, 'jessica.g@email.com', '+15556789012').
passenger(7, 'Robert Miller', 'Male', 45, 'robert.m@email.com', '+15557890123').
passenger(8, 'Jennifer Davis', 'Female', 29, 'jennifer.d@email.com', '+15558901234').
passenger(9, 'Daniel Rodriguez', 'Male', 33, 'daniel.r@email.com', '+15550123456').
passenger(10, 'Lisa Martinez', 'Female', 27, 'lisa.m@email.com', '+15551234560').
passenger(11, 'Christopher Wilson', 'Male', 50, 'chris.w@email.com', '+15552345670').
passenger(12, 'Amanda Anderson', 'Female', 36, 'amanda.a@email.com', '+15553456780').
passenger(13, 'Matthew Taylor', 'Male', 41, 'matthew.t@email.com', '+15554567890').
passenger(14, 'Ashley Thomas', 'Female', 32, 'ashley.t@email.com', '+15555678901').
passenger(15, 'James Hernandez', 'Male', 39, 'james.h@email.com', '+15556789012').
passenger(16, 'Elizabeth Moore', 'Female', 44, 'elizabeth.m@email.com', '+15557890123').
passenger(17, 'Andrew Martin', 'Male', 30, 'andrew.m@email.com', '+15558901234').
passenger(18, 'Megan Jackson', 'Female', 26, 'megan.j@email.com', '+15550123456').
passenger(19, 'Joshua Thompson', 'Male', 48, 'joshua.t@email.com', '+15551234567').
passenger(20, 'Nicole White', 'Female', 37, 'nicole.w@email.com', '+15552345678').
passenger(21, 'Kevin Lopez', 'Male', 43, 'kevin.l@email.com', '+15553456789').
passenger(22, 'Stephanie Lee', 'Female', 34, 'stephanie.l@email.com', '+15554567890').
passenger(23, 'Brian Gonzalez', 'Male', 29, 'brian.g@email.com', '+15555678901').
passenger(24, 'Rebecca Harris', 'Female', 40, 'rebecca.h@email.com', '+15556789012').
passenger(25, 'Timothy Clark', 'Male', 31, 'timothy.c@email.com', '+15557890123').
passenger(26, 'Laura Lewis', 'Female', 28, 'laura.l@email.com', '+15558901234').
passenger(27, 'Jeffrey Robinson', 'Male', 52, 'jeffrey.r@email.com', '+15550123456').
passenger(28, 'Melissa Walker', 'Female', 45, 'melissa.w@email.com', '+15551234567').
passenger(29, 'Ryan Hall', 'Male', 38, 'ryan.h@email.com', '+15552345678').
passenger(30, 'Christina Young', 'Female', 33, 'christina.y@email.com', '+15553456789').
passenger(31, 'Jason Allen', 'Male', 41, 'jason.a@email.com', '+15554567890').
passenger(32, 'Rachel King', 'Female', 36, 'rachel.k@email.com', '+15555678901').
passenger(33, 'Scott Wright', 'Male', 47, 'scott.w@email.com', '+15556789012').
passenger(34, 'Heather Scott', 'Female', 39, 'heather.s@email.com', '+15557890123').
passenger(35, 'Eric Green', 'Male', 42, 'eric.g@email.com', '+15558901234').

% Tabla Employee: 30 registros
% employee(EmployeeID, Name, Role, JoinDate, SupervisorID).
employee(1, 'Robert Johnson', 'General Manager', '2010-05-15', null).
employee(2, 'Sarah Wilson', 'Sales Manager', '2012-08-22', 1).
employee(3, 'Michael Brown', 'IT Manager', '2013-03-10', 1).
employee(4, 'Jennifer Davis', 'HR Manager', '2014-01-05', 1).
employee(5, 'David Miller', 'Senior Travel Agent', '2015-06-18', 2).
employee(6, 'Lisa Taylor', 'Senior Travel Agent', '2015-07-22', 2).
employee(7, 'James Anderson', 'Travel Agent', '2016-02-14', 5).
employee(8, 'Jessica Thomas', 'Travel Agent', '2016-03-25', 5).
employee(9, 'Daniel Jackson', 'Travel Agent', '2016-05-30', 6).
employee(10, 'Emily White', 'Travel Agent', '2017-01-10', 6).
employee(11, 'Christopher Harris', 'Travel Agent', '2017-04-05', 5).
employee(12, 'Amanda Martin', 'Travel Agent', '2017-06-15', 6).
employee(13, 'Matthew Thompson', 'Travel Agent', '2018-02-20', 5).
employee(14, 'Ashley Garcia', 'Travel Agent', '2018-03-12', 6).
employee(15, 'Andrew Martinez', 'Travel Agent', '2018-05-18', 5).
employee(16, 'Megan Robinson', 'Travel Agent', '2018-07-22', 6).
employee(17, 'Joshua Clark', 'Travel Agent', '2019-01-08', 5).
employee(18, 'Nicole Rodriguez', 'Travel Agent', '2019-03-14', 6).
employee(19, 'Kevin Lewis', 'Travel Agent', '2019-06-25', 5).
employee(20, 'Stephanie Lee', 'Travel Agent', '2019-08-30', 6).
employee(21, 'Brian Walker', 'Travel Agent', '2020-02-10', 5).
employee(22, 'Rebecca Hall', 'Travel Agent', '2020-04-15', 6).
employee(23, 'Timothy Young', 'Travel Agent', '2020-07-20', 5).
employee(24, 'Laura Allen', 'Travel Agent', '2020-09-25', 6).
employee(25, 'Jeffrey Hernandez', 'Travel Agent', '2021-01-05', 5).
employee(26, 'Melissa King', 'Travel Agent', '2021-03-10', 6).
employee(27, 'Ryan Wright', 'Travel Agent', '2021-05-15', 5).
employee(28, 'Christina Scott', 'Travel Agent', '2021-07-20', 6).
employee(29, 'Jason Green', 'Travel Agent', '2021-09-25', 5).
employee(30, 'Rachel Adams', 'Travel Agent', '2022-01-10', 6).

% Tabla Accommodation: 35 registros
% accommodation(AccommodationID, Name, Type, Rate, Facilities, Discount, LocationID).
accommodation(1, 'Grand Hyatt New York', 'Hotel', 350.00, 'Pool, Spa, Gym, Restaurant, Bar', 0.10, 1).
accommodation(2, 'The Beverly Hills Hotel', 'Hotel', 450.00, 'Pool, Spa, Gym, Restaurant, Bar, Tennis Court', 0.15, 2).
accommodation(3, 'The Drake Chicago', 'Hotel', 275.00, 'Restaurant, Bar, Business Center', 0.05, 3).
accommodation(4, 'Fontainebleau Miami Beach', 'Resort', 400.00, 'Pool, Spa, Gym, Restaurant, Bar, Beach Access', 0.20, 4).
accommodation(5, 'Bellagio Las Vegas', 'Resort', 375.00, 'Pool, Spa, Casino, Multiple Restaurants, Shows', 0.10, 5).
accommodation(6, 'Fairmont San Francisco', 'Hotel', 325.00, 'Restaurant, Bar, Business Center', 0.05, 6).
accommodation(7, 'Walt Disney World Resorts', 'Resort', 300.00, 'Pool, Theme Park Access, Restaurants', 0.25, 7).
accommodation(8, 'The Ritz London', 'Hotel', 500.00, 'Pool, Spa, Gym, Restaurant, Bar', 0.10, 8).
accommodation(9, 'Le Meurice Paris', 'Hotel', 475.00, 'Spa, Gym, Restaurant, Bar', 0.15, 9).
accommodation(10, 'Hotel de Russie Rome', 'Hotel', 425.00, 'Pool, Spa, Restaurant, Bar', 0.10, 10).
accommodation(11, 'Hotel Arts Barcelona', 'Hotel', 350.00, 'Pool, Spa, Gym, Restaurant, Bar', 0.10, 11).
accommodation(12, 'Conservatorium Amsterdam', 'Hotel', 400.00, 'Spa, Gym, Restaurant, Bar', 0.10, 12).
accommodation(13, 'The Ritz-Carlton Berlin', 'Hotel', 375.00, 'Spa, Gym, Restaurant, Bar', 0.10, 13).
accommodation(14, 'Park Hotel Tokyo', 'Hotel', 425.00, 'Restaurant, Bar, Business Center', 0.05, 14).
accommodation(15, 'Four Seasons Sydney', 'Hotel', 450.00, 'Pool, Spa, Gym, Restaurant, Bar', 0.15, 15).
accommodation(16, 'Burj Al Arab Dubai', 'Hotel', 1000.00, 'Pool, Spa, Gym, Multiple Restaurants, Private Beach', 0.20, 16).
accommodation(17, 'Fairmont Royal York Toronto', 'Hotel', 300.00, 'Pool, Gym, Restaurant, Bar', 0.10, 17).
accommodation(18, 'Rosewood Hotel Georgia Vancouver', 'Hotel', 350.00, 'Spa, Gym, Restaurant, Bar', 0.10, 18).
accommodation(19, 'The Ritz-Carlton Cancun', 'Resort', 425.00, 'Pool, Spa, Gym, Restaurant, Bar, Beach Access', 0.20, 19).
accommodation(20, 'Palacio Duhau Buenos Aires', 'Hotel', 375.00, 'Pool, Spa, Gym, Restaurant, Bar', 0.15, 20).
accommodation(21, 'Copacabana Palace Rio', 'Hotel', 400.00, 'Pool, Spa, Gym, Restaurant, Bar, Beach Access', 0.15, 21).
accommodation(22, 'One&Only Cape Town', 'Resort', 450.00, 'Pool, Spa, Gym, Restaurant, Bar', 0.20, 22).
accommodation(23, 'Mandarin Oriental Bangkok', 'Hotel', 350.00, 'Pool, Spa, Gym, Restaurant, Bar', 0.10, 23).
accommodation(24, 'Marina Bay Sands Singapore', 'Hotel', 500.00, 'Infinity Pool, Casino, Multiple Restaurants', 0.15, 24).
accommodation(25, 'The Peninsula Hong Kong', 'Hotel', 475.00, 'Pool, Spa, Gym, Restaurant, Bar', 0.10, 25).
accommodation(26, 'Taj Mahal Palace Mumbai', 'Hotel', 300.00, 'Pool, Spa, Gym, Restaurant, Bar', 0.10, 26).
accommodation(27, 'The Leela Palace New Delhi', 'Hotel', 350.00, 'Pool, Spa, Gym, Restaurant, Bar', 0.10, 27).
accommodation(28, 'Çırağan Palace Istanbul', 'Hotel', 400.00, 'Pool, Spa, Gym, Restaurant, Bar, Bosphorus View', 0.15, 28).
accommodation(29, 'Grande Bretagne Athens', 'Hotel', 375.00, 'Pool, Spa, Gym, Restaurant, Bar', 0.10, 29).
accommodation(30, 'Four Seasons Prague', 'Hotel', 425.00, 'Spa, Gym, Restaurant, Bar', 0.10, 30).
accommodation(31, 'Hotel Sacher Vienna', 'Hotel', 450.00, 'Restaurant, Bar, Famous Sacher Torte', 0.15, 31).
accommodation(32, 'Baur au Lac Zurich', 'Hotel', 500.00, 'Restaurant, Bar, Lake View', 0.10, 32).
accommodation(33, 'Grand Hôtel Stockholm', 'Hotel', 400.00, 'Spa, Gym, Restaurant, Bar', 0.10, 33).
accommodation(34, 'The Thief Oslo', 'Hotel', 425.00, 'Spa, Gym, Restaurant, Bar', 0.10, 34).
accommodation(35, 'Hotel Kämp Helsinki', 'Hotel', 375.00, 'Spa, Gym, Restaurant, Bar', 0.10, 35).

% Tabla TransportationType: 6 registros
% transportationtype(TransportTypeID, Name).
transportationtype(1, 'Flight').
transportationtype(2, 'Car Rental').
transportationtype(3, 'Bus').
transportationtype(4, 'Cruise').
transportationtype(5, 'Train').
transportationtype(6, 'Ferry').

% Tabla Flight: 40 registros
% flight(FlightID, FlightNumber, Carrier, SourceLocationID, DestLocationID, DepartureDateTime, ArrivalDateTime, Class, Fare).
flight(1, 'AA100', 'American Airlines', 1, 8, '2023-06-15 08:00:00', '2023-06-15 20:30:00', 'Business', 1200.00).
flight(2, 'BA215', 'British Airways', 2, 8, '2023-06-16 10:30:00', '2023-06-16 23:45:00', 'Premium Economy', 950.00).
flight(3, 'DL400', 'Delta Airlines', 3, 9, '2023-06-17 12:15:00', '2023-06-17 20:30:00', 'Economy', 650.00).
flight(4, 'AF350', 'Air France', 4, 9, '2023-06-18 14:00:00', '2023-06-18 22:15:00', 'Business', 1100.00).
flight(5, 'LH450', 'Lufthansa', 5, 13, '2023-06-19 16:45:00', '2023-06-20 08:30:00', 'First', 2500.00).
flight(6, 'UA200', 'United Airlines', 6, 11, '2023-06-20 09:30:00', '2023-06-20 18:45:00', 'Premium Economy', 850.00).
flight(7, 'EK205', 'Emirates', 7, 16, '2023-06-21 11:00:00', '2023-06-22 08:30:00', 'First', 3000.00).
flight(8, 'SQ305', 'Singapore Airlines', 8, 24, '2023-06-22 13:15:00', '2023-06-23 06:45:00', 'Business', 1800.00).
flight(9, 'JL100', 'Japan Airlines', 9, 14, '2023-06-23 15:30:00', '2023-06-24 09:15:00', 'Premium Economy', 1200.00).
flight(10, 'QF12', 'Qantas', 10, 15, '2023-06-24 17:45:00', '2023-06-25 14:30:00', 'Business', 2200.00).
flight(11, 'AC101', 'Air Canada', 11, 17, '2023-06-25 19:00:00', '2023-06-26 02:45:00', 'Economy', 600.00).
flight(12, 'CX888', 'Cathay Pacific', 12, 25, '2023-06-26 21:15:00', '2023-06-27 18:30:00', 'Business', 1900.00).
flight(13, 'AI161', 'Air India', 13, 26, '2023-06-27 23:30:00', '2023-06-28 12:45:00', 'Premium Economy', 1100.00).
flight(14, 'TK10', 'Turkish Airlines', 14, 28, '2023-06-28 01:45:00', '2023-06-28 10:30:00', 'Economy', 550.00).
flight(15, 'AZ305', 'Alitalia', 15, 10, '2023-06-29 03:00:00', '2023-06-29 12:15:00', 'Business', 1300.00).
flight(16, 'IB3450', 'Iberia', 16, 11, '2023-06-30 05:15:00', '2023-06-30 14:30:00', 'Economy', 500.00).
flight(17, 'KL602', 'KLM', 17, 12, '2023-07-01 07:30:00', '2023-07-01 16:45:00', 'Premium Economy', 900.00).
flight(18, 'LY315', 'El Al', 18, 29, '2023-07-02 09:45:00', '2023-07-02 19:00:00', 'Economy', 650.00).
flight(19, 'OS75', 'Austrian Airlines', 19, 31, '2023-07-03 11:00:00', '2023-07-03 20:15:00', 'Business', 1400.00).
flight(20, 'LX45', 'Swiss International', 20, 32, '2023-07-04 13:15:00', '2023-07-04 22:30:00', 'Premium Economy', 950.00).
flight(21, 'SK500', 'SAS', 21, 33, '2023-07-05 15:30:00', '2023-07-05 23:45:00', 'Economy', 700.00).
flight(22, 'DY7012', 'Norwegian', 22, 34, '2023-07-06 17:45:00', '2023-07-07 02:00:00', 'Premium Economy', 800.00).
flight(23, 'AY50', 'Finnair', 23, 35, '2023-07-07 19:00:00', '2023-07-08 04:15:00', 'Business', 1500.00).
flight(24, 'MS800', 'EgyptAir', 24, 36, '2023-07-08 21:15:00', '2023-07-09 06:30:00', 'Economy', 600.00).
flight(25, 'AT550', 'Royal Air Maroc', 25, 37, '2023-07-09 23:30:00', '2023-07-10 08:45:00', 'Premium Economy', 850.00).
flight(26, 'KQ400', 'Kenya Airways', 26, 38, '2023-07-10 01:45:00', '2023-07-10 11:00:00', 'Business', 1600.00).
flight(27, 'NZ1', 'Air New Zealand', 27, 39, '2023-07-11 03:00:00', '2023-07-12 06:15:00', 'First', 2800.00).
flight(28, 'AA75', 'American Airlines', 28, 1, '2023-07-12 05:15:00', '2023-07-12 14:30:00', 'Business', 1300.00).
flight(29, 'BA178', 'British Airways', 29, 2, '2023-07-13 07:30:00', '2023-07-13 16:45:00', 'Premium Economy', 950.00).
flight(30, 'DL60', 'Delta Airlines', 30, 3, '2023-07-14 09:45:00', '2023-07-14 19:00:00', 'Economy', 650.00).
flight(31, 'UA900', 'United Airlines', 31, 4, '2023-07-15 11:00:00', '2023-07-15 20:15:00', 'Business', 1200.00).
flight(32, 'LH490', 'Lufthansa', 32, 5, '2023-07-16 13:15:00', '2023-07-16 22:30:00', 'Premium Economy', 900.00).
flight(33, 'EK206', 'Emirates', 33, 6, '2023-07-17 15:30:00', '2023-07-18 10:45:00', 'First', 2900.00).
flight(34, 'SQ306', 'Singapore Airlines', 34, 7, '2023-07-18 17:45:00', '2023-07-19 12:00:00', 'Business', 1850.00).
flight(35, 'JL101', 'Japan Airlines', 35, 8, '2023-07-19 19:00:00', '2023-07-20 13:15:00', 'Premium Economy', 1250.00).
flight(36, 'QF11', 'Qantas', 36, 9, '2023-07-20 21:15:00', '2023-07-21 18:30:00', 'Business', 2250.00).
flight(37, 'AC102', 'Air Canada', 37, 10, '2023-07-21 23:30:00', '2023-07-22 08:45:00', 'Economy', 620.00).
flight(38, 'CX889', 'Cathay Pacific', 38, 11, '2023-07-22 01:45:00', '2023-07-22 20:00:00', 'Business', 1950.00).
flight(39, 'AI162', 'Air India', 39, 12, '2023-07-23 03:00:00', '2023-07-23 16:15:00', 'Premium Economy', 1150.00).
flight(40, 'TK11', 'Turkish Airlines', 40, 13, '2023-07-24 05:15:00', '2023-07-24 14:30:00', 'Economy', 570.00).

% Tabla CarRental: 30 registros
% carrental(CarRentalID, Company, CarType, PickupLocationID, DropoffLocationID, PickupDateTime, DropoffDateTime, Rent).
carrental(1, 'Hertz', 'SUV', 1, 1, '2023-06-15 09:00:00', '2023-06-20 17:00:00', 450.00).
carrental(2, 'Avis', 'Sedan', 2, 2, '2023-06-16 10:00:00', '2023-06-21 18:00:00', 350.00).
carrental(3, 'Enterprise', 'Minivan', 3, 3, '2023-06-17 11:00:00', '2023-06-22 19:00:00', 500.00).
carrental(4, 'Budget', 'Convertible', 4, 4, '2023-06-18 12:00:00', '2023-06-23 20:00:00', 400.00).
carrental(5, 'National', 'Luxury', 5, 5, '2023-06-19 13:00:00', '2023-06-24 21:00:00', 600.00).
carrental(6, 'Alamo', 'Compact', 6, 6, '2023-06-20 14:00:00', '2023-06-25 22:00:00', 300.00).
carrental(7, 'Sixt', 'Sports Car', 7, 7, '2023-06-21 15:00:00', '2023-06-26 23:00:00', 550.00).
carrental(8, 'Europcar', 'Station Wagon', 8, 8, '2023-06-22 16:00:00', '2023-06-27 09:00:00', 380.00).
carrental(9, 'Thrifty', 'Hybrid', 9, 9, '2023-06-23 17:00:00', '2023-06-28 10:00:00', 420.00).
carrental(10, 'Dollar', 'Electric', 10, 10, '2023-06-24 18:00:00', '2023-06-29 11:00:00', 470.00).
carrental(11, 'Hertz', 'SUV', 11, 11, '2023-06-25 19:00:00', '2023-06-30 12:00:00', 450.00).
carrental(12, 'Avis', 'Sedan', 12, 12, '2023-06-26 20:00:00', '2023-07-01 13:00:00', 350.00).
carrental(13, 'Enterprise', 'Minivan', 13, 13, '2023-06-27 21:00:00', '2023-07-02 14:00:00', 500.00).
carrental(14, 'Budget', 'Convertible', 14, 14, '2023-06-28 22:00:00', '2023-07-03 15:00:00', 400.00).
carrental(15, 'National', 'Luxury', 15, 15, '2023-06-29 23:00:00', '2023-07-04 16:00:00', 600.00).
carrental(16, 'Alamo', 'Compact', 16, 16, '2023-06-30 08:00:00', '2023-07-05 17:00:00', 300.00).
carrental(17, 'Sixt', 'Sports Car', 17, 17, '2023-07-01 09:00:00', '2023-07-06 18:00:00', 550.00).
carrental(18, 'Europcar', 'Station Wagon', 18, 18, '2023-07-02 10:00:00', '2023-07-07 19:00:00', 380.00).
carrental(19, 'Thrifty', 'Hybrid', 19, 19, '2023-07-03 11:00:00', '2023-07-08 20:00:00', 420.00).
carrental(20, 'Dollar', 'Electric', 20, 20, '2023-07-04 12:00:00', '2023-07-09 21:00:00', 470.00).
carrental(21, 'Hertz', 'SUV', 21, 21, '2023-07-05 13:00:00', '2023-07-10 22:00:00', 450.00).
carrental(22, 'Avis', 'Sedan', 22, 22, '2023-07-06 14:00:00', '2023-07-11 23:00:00', 350.00).
carrental(23, 'Enterprise', 'Minivan', 23, 23, '2023-07-07 15:00:00', '2023-07-12 08:00:00', 500.00).
carrental(24, 'Budget', 'Convertible', 24, 24, '2023-07-08 16:00:00', '2023-07-13 09:00:00', 400.00).
carrental(25, 'National', 'Luxury', 25, 25, '2023-07-09 17:00:00', '2023-07-14 10:00:00', 600.00).
carrental(26, 'Alamo', 'Compact', 26, 26, '2023-07-10 18:00:00', '2023-07-15 11:00:00', 300.00).
carrental(27, 'Sixt', 'Sports Car', 27, 27, '2023-07-11 19:00:00', '2023-07-16 12:00:00', 550.00).
carrental(28, 'Europcar', 'Station Wagon', 28, 28, '2023-07-12 20:00:00', '2023-07-17 13:00:00', 380.00).
carrental(29, 'Thrifty', 'Hybrid', 29, 29, '2023-07-13 21:00:00', '2023-07-18 14:00:00', 420.00).
carrental(30, 'Dollar', 'Electric', 30, 30, '2023-07-14 22:00:00', '2023-07-19 15:00:00', 470.00).

% Tabla Cruise: 30 registros
% cruise(CruiseID, CruiseName, Line, SourceLocationID, DestLocationID, DepartureDate, ReturnDate, Fare).
cruise(1, 'Caribbean Princess', 'Princess Cruises', 4, 4, '2023-06-15', '2023-06-22', 1200.00).
cruise(2, 'Norwegian Escape', 'Norwegian Cruise Line', 5, 5, '2023-06-16', '2023-06-23', 1350.00).
cruise(3, 'Harmony of the Seas', 'Royal Caribbean', 6, 6, '2023-06-17', '2023-06-24', 1500.00).
cruise(4, 'Carnival Vista', 'Carnival Cruise Line', 7, 7, '2023-06-18', '2023-06-25', 1100.00).
cruise(5, 'MSC Meraviglia', 'MSC Cruises', 8, 8, '2023-06-19', '2023-06-26', 1250.00).
cruise(6, 'Celebrity Edge', 'Celebrity Cruises', 9, 9, '2023-06-20', '2023-06-27', 1400.00).
cruise(7, 'Disney Fantasy', 'Disney Cruise Line', 10, 10, '2023-06-21', '2023-06-28', 1600.00).
cruise(8, 'Queen Mary 2', 'Cunard Line', 11, 11, '2023-06-22', '2023-06-29', 1750.00).
cruise(9, 'Seabourn Odyssey', 'Seabourn Cruise Line', 12, 12, '2023-06-23', '2023-06-30', 2000.00).
cruise(10, 'Silver Muse', 'Silversea Cruises', 13, 13, '2023-06-24', '2023-07-01', 2200.00).
cruise(11, 'Viking Star', 'Viking Ocean Cruises', 14, 14, '2023-06-25', '2023-07-02', 1900.00).
cruise(12, 'Azamara Journey', 'Azamara Club Cruises', 15, 15, '2023-06-26', '2023-07-03', 1800.00).
cruise(13, 'Oceania Riviera', 'Oceania Cruises', 16, 16, '2023-06-27', '2023-07-04', 1700.00).
cruise(14, 'Regent Seven Seas Explorer', 'Regent Seven Seas Cruises', 17, 17, '2023-06-28', '2023-07-05', 2500.00).
cruise(15, 'Crystal Symphony', 'Crystal Cruises', 18, 18, '2023-06-29', '2023-07-06', 2300.00).
cruise(16, 'Windstar Surf', 'Windstar Cruises', 19, 19, '2023-06-30', '2023-07-07', 2100.00).
cruise(17, 'Paul Gauguin', 'Paul Gauguin Cruises', 20, 20, '2023-07-01', '2023-07-08', 2400.00).
cruise(18, 'Star Breeze', 'Star Clippers', 21, 21, '2023-07-02', '2023-07-09', 1950.00).
cruise(19, 'SeaDream I', 'SeaDream Yacht Club', 22, 22, '2023-07-03', '2023-07-10', 2600.00).
cruise(20, 'Le Ponant', 'Ponant', 23, 23, '2023-07-04', '2023-07-11', 2250.00).
cruise(21, 'Hanseatic Inspiration', 'Hapag-Lloyd Cruises', 24, 24, '2023-07-05', '2023-07-12', 2350.00).
cruise(22, 'Scenic Eclipse', 'Scenic Luxury Cruises', 25, 25, '2023-07-06', '2023-07-13', 2800.00).
cruise(23, 'River Duchess', 'Uniworld Boutique River Cruise', 26, 26, '2023-07-07', '2023-07-14', 1700.00).
cruise(24, 'AmaWaterways AmaMagna', 'AmaWaterways', 27, 27, '2023-07-08', '2023-07-15', 1850.00).
cruise(25, 'Viking Longship', 'Viking River Cruises', 28, 28, '2023-07-09', '2023-07-16', 1600.00).
cruise(26, 'American Queen', 'American Queen Steamboat Company', 29, 29, '2023-07-10', '2023-07-17', 1950.00).
cruise(27, 'Emerald Sun', 'Emerald Waterways', 30, 30, '2023-07-11', '2023-07-18', 1750.00).
cruise(28, 'Avalon Panorama', 'Avalon Waterways', 31, 31, '2023-07-12', '2023-07-19', 1800.00).
cruise(29, 'Tauck ms Savor', 'Tauck River Cruising', 32, 32, '2023-07-13', '2023-07-20', 2000.00).
cruise(30, 'CroisiEurope Lafayette', 'CroisiEurope', 33, 33, '2023-07-14', '2023-07-21', 1550.00).

% Tabla Booking: 50 registros
% booking(BookingID, GroupName, Purpose, BookingDate, EmployeeID, TotalCost, Status).
booking(1, 'Smith Family', 'Family', '2023-05-01 10:00:00', 5, null, 'Confirmed').
booking(2, 'Johnson Vacation', 'Leisure', '2023-05-02 11:15:00', 6, null, 'Confirmed').
booking(3, 'Williams Business', 'Business', '2023-05-03 12:30:00', 7, null, 'Completed').
booking(4, 'Brown Wedding', 'Honeymoon', '2023-05-04 13:45:00', 8, null, 'Confirmed').
booking(5, 'Jones Adventure', 'Adventure', '2023-05-05 14:00:00', 9, null, 'Confirmed').
booking(6, 'Garcia Group', 'Family', '2023-05-06 15:15:00', 10, null, 'Confirmed').
booking(7, 'Miller Getaway', 'Leisure', '2023-05-07 16:30:00', 11, null, 'Completed').
booking(8, 'Davis Conference', 'Business', '2023-05-08 17:45:00', 12, null, 'Confirmed').
booking(9, 'Rodriguez Anniversary', 'Leisure', '2023-05-09 18:00:00', 13, null, 'Confirmed').
booking(10, 'Martinez Family', 'Family', '2023-05-10 19:15:00', 14, null, 'Confirmed').
booking(11, 'Wilson Honeymoon', 'Honeymoon', '2023-05-11 20:30:00', 15, null, 'Completed').
booking(12, 'Anderson Business', 'Business', '2023-05-12 21:45:00', 16, null, 'Confirmed').
booking(13, 'Thomas Vacation', 'Leisure', '2023-05-13 22:00:00', 17, null, 'Confirmed').
booking(14, 'Jackson Group', 'Family', '2023-05-14 23:15:00', 18, null, 'Confirmed').
booking(15, 'White Adventure', 'Adventure', '2023-05-15 08:30:00', 19, null, 'Confirmed').
booking(16, 'Harris Business', 'Business', '2023-05-16 09:45:00', 20, null, 'Completed').
booking(17, 'Martin Getaway', 'Leisure', '2023-05-17 10:00:00', 21, null, 'Confirmed').
booking(18, 'Thompson Family', 'Family', '2023-05-18 11:15:00', 22, null, 'Confirmed').
booking(19, 'Garcia Wedding', 'Honeymoon', '2023-05-19 12:30:00', 23, null, 'Confirmed').
booking(20, 'Robinson Vacation', 'Leisure', '2023-05-20 13:45:00', 24, null, 'Completed').
booking(21, 'Clark Business', 'Business', '2023-05-21 14:00:00', 25, null, 'Confirmed').
booking(22, 'Rodriguez Group', 'Family', '2023-05-22 15:15:00', 26, null, 'Confirmed').
booking(23, 'Lewis Adventure', 'Adventure', '2023-05-23 16:30:00', 27, null, 'Confirmed').
booking(24, 'Lee Conference', 'Business', '2023-05-24 17:45:00', 28, null, 'Completed').
booking(25, 'Walker Getaway', 'Leisure', '2023-05-25 18:00:00', 29, null, 'Confirmed').
booking(26, 'Hall Family', 'Family', '2023-05-26 19:15:00', 30, null, 'Confirmed').
booking(27, 'Young Honeymoon', 'Honeymoon', '2023-05-27 20:30:00', 5, null, 'Confirmed').
booking(28, 'Allen Business', 'Business', '2023-05-28 21:45:00', 6, null, 'Completed').
booking(29, 'King Vacation', 'Leisure', '2023-05-29 22:00:00', 7, null, 'Confirmed').
booking(30, 'Wright Group', 'Family', '2023-05-30 23:15:00', 8, null, 'Confirmed').
booking(31, 'Scott Adventure', 'Adventure', '2023-05-31 08:30:00', 9, null, 'Confirmed').
booking(32, 'Green Business', 'Business', '2023-06-01 09:45:00', 10, null, 'Completed').
booking(33, 'Adams Getaway', 'Leisure', '2023-06-02 10:00:00', 11, null, 'Confirmed').
booking(34, 'Baker Family', 'Family', '2023-06-03 11:15:00', 12, null, 'Confirmed').
booking(35, 'Nelson Wedding', 'Honeymoon', '2023-06-04 12:30:00', 13, null, 'Confirmed').
booking(36, 'Carter Vacation', 'Leisure', '2023-06-05 13:45:00', 14, null, 'Completed').
booking(37, 'Mitchell Business', 'Business', '2023-06-06 14:00:00', 15, null, 'Confirmed').
booking(38, 'Perez Group', 'Family', '2023-06-07 15:15:00', 16, null, 'Confirmed').
booking(39, 'Roberts Adventure', 'Adventure', '2023-06-08 16:30:00', 17, null, 'Confirmed').
booking(40, 'Turner Conference', 'Business', '2023-06-09 17:45:00', 18, null, 'Completed').
booking(41, 'Phillips Getaway', 'Leisure', '2023-06-10 18:00:00', 19, null, 'Confirmed').
booking(42, 'Campbell Family', 'Family', '2023-06-11 19:15:00', 20, null, 'Confirmed').
booking(43, 'Parker Honeymoon', 'Honeymoon', '2023-06-12 20:30:00', 21, null, 'Confirmed').
booking(44, 'Evans Business', 'Business', '2023-06-13 21:45:00', 22, null, 'Completed').
booking(45, 'Edwards Vacation', 'Leisure', '2023-06-14 22:00:00', 23, null, 'Confirmed').
booking(46, 'Collins Group', 'Family', '2023-06-15 23:15:00', 24, null, 'Confirmed').
booking(47, 'Stewart Adventure', 'Adventure', '2023-06-16 08:30:00', 25, null, 'Confirmed').
booking(48, 'Sanchez Business', 'Business', '2023-06-17 09:45:00', 26, null, 'Completed').
booking(49, 'Morris Getaway', 'Leisure', '2023-06-18 10:00:00', 27, null, 'Confirmed').
booking(50, 'Rogers Family', 'Family', '2023-06-19 11:15:00', 28, null, 'Confirmed').

% Tabla BookingPassenger: 72 registros
% bookingpassenger(BookingID, PassengerID, IsPrimary).
bookingpassenger(1, 1, true).
bookingpassenger(1, 2, false).
bookingpassenger(1, 3, false).
bookingpassenger(2, 4, true).
bookingpassenger(3, 5, true).
bookingpassenger(4, 6, true).
bookingpassenger(4, 7, false).
bookingpassenger(5, 8, true).
bookingpassenger(6, 9, true).
bookingpassenger(6, 10, false).
bookingpassenger(6, 11, false).
bookingpassenger(7, 12, true).
bookingpassenger(8, 13, true).
bookingpassenger(9, 14, true).
bookingpassenger(10, 15, true).
bookingpassenger(10, 16, false).
bookingpassenger(11, 17, true).
bookingpassenger(11, 18, false).
bookingpassenger(12, 19, true).
bookingpassenger(13, 20, true).
bookingpassenger(14, 21, true).
bookingpassenger(14, 22, false).
bookingpassenger(14, 23, false).
bookingpassenger(15, 24, true).
bookingpassenger(16, 25, true).
bookingpassenger(17, 26, true).
bookingpassenger(18, 27, true).
bookingpassenger(18, 28, false).
bookingpassenger(19, 29, true).
bookingpassenger(19, 30, false).
bookingpassenger(20, 31, true).
bookingpassenger(21, 32, true).
bookingpassenger(22, 33, true).
bookingpassenger(22, 34, false).
bookingpassenger(23, 35, true).
bookingpassenger(24, 1, true).
bookingpassenger(25, 2, true).
bookingpassenger(25, 3, false).
bookingpassenger(26, 4, true).
bookingpassenger(27, 5, true).
bookingpassenger(27, 6, false).
bookingpassenger(28, 7, true).
bookingpassenger(29, 8, true).
bookingpassenger(30, 9, true).
bookingpassenger(30, 10, false).
bookingpassenger(31, 11, true).
bookingpassenger(32, 12, true).
bookingpassenger(33, 13, true).
bookingpassenger(33, 14, false).
bookingpassenger(34, 15, true).
bookingpassenger(35, 16, true).
bookingpassenger(35, 17, false).
bookingpassenger(36, 18, true).
bookingpassenger(37, 19, true).
bookingpassenger(38, 20, true).
bookingpassenger(38, 21, false).
bookingpassenger(39, 22, true).
bookingpassenger(40, 23, true).
bookingpassenger(40, 24, false).
bookingpassenger(41, 25, true).
bookingpassenger(42, 26, true).
bookingpassenger(43, 27, true).
bookingpassenger(43, 28, false).
bookingpassenger(44, 29, true).
bookingpassenger(45, 30, true).
bookingpassenger(46, 31, true).
bookingpassenger(47, 32, true).
bookingpassenger(47, 33, false).
bookingpassenger(48, 34, true).
bookingpassenger(49, 35, true).
bookingpassenger(50, 1, true).
bookingpassenger(50, 2, false).

% Tabla BookingAccommodation: 50 registros
% bookingaccommodation(BookingAccommodationID, BookingID, AccommodationID, CheckInDate, CheckOutDate, Cost).
bookingaccommodation(1, 1, 1, '2023-06-15', '2023-06-20', 1575.00).
bookingaccommodation(2, 2, 2, '2023-06-16', '2023-06-21', 1912.50).
bookingaccommodation(3, 3, 3, '2023-06-17', '2023-06-22', 1306.25).
bookingaccommodation(4, 4, 4, '2023-06-18', '2023-06-23', 1600.00).
bookingaccommodation(5, 5, 5, '2023-06-19', '2023-06-24', 1687.50).
bookingaccommodation(6, 6, 6, '2023-06-20', '2023-06-25', 1425.00).
bookingaccommodation(7, 7, 7, '2023-06-21', '2023-06-26', 1125.00).
bookingaccommodation(8, 8, 8, '2023-06-22', '2023-06-27', 2250.00).
bookingaccommodation(9, 9, 9, '2023-06-23', '2023-06-28', 1785.00).
bookingaccommodation(10, 10, 10, '2023-06-24', '2023-06-29', 1645.00).
bookingaccommodation(11, 11, 11, '2023-06-25', '2023-06-30', 1912.50).
bookingaccommodation(12, 12, 12, '2023-06-26', '2023-07-01', 1800.00).
bookingaccommodation(13, 13, 13, '2023-06-27', '2023-07-02', 1687.50).
bookingaccommodation(14, 14, 14, '2023-06-28', '2023-07-03', 1440.00).
bookingaccommodation(15, 15, 15, '2023-06-29', '2023-07-04', 2025.00).
bookingaccommodation(16, 16, 16, '2023-06-30', '2023-07-05', 1200.00).
bookingaccommodation(17, 17, 17, '2023-07-01', '2023-07-06', 1575.00).
bookingaccommodation(18, 18, 18, '2023-07-02', '2023-07-07', 1575.00).
bookingaccommodation(19, 19, 19, '2023-07-03', '2023-07-08', 1700.00).
bookingaccommodation(20, 20, 20, '2023-07-04', '2023-07-09', 1645.00).
bookingaccommodation(21, 21, 21, '2023-07-05', '2023-07-10', 1912.50).
bookingaccommodation(22, 22, 22, '2023-07-06', '2023-07-11', 1312.50).
bookingaccommodation(23, 23, 23, '2023-07-07', '2023-07-12', 1750.00).
bookingaccommodation(24, 24, 24, '2023-07-08', '2023-07-13', 2125.00).
bookingaccommodation(25, 25, 25, '2023-07-09', '2023-07-14', 2250.00).
bookingaccommodation(26, 26, 26, '2023-07-10', '2023-07-15', 1350.00).
bookingaccommodation(27, 27, 27, '2023-07-11', '2023-07-16', 1575.00).
bookingaccommodation(28, 28, 28, '2023-07-12', '2023-07-17', 1700.00).
bookingaccommodation(29, 29, 29, '2023-07-13', '2023-07-18', 1785.00).
bookingaccommodation(30, 30, 30, '2023-07-14', '2023-07-19', 1687.50).
bookingaccommodation(31, 31, 31, '2023-07-15', '2023-07-20', 1800.00).
bookingaccommodation(32, 32, 32, '2023-07-16', '2023-07-21', 2125.00).
bookingaccommodation(33, 33, 33, '2023-07-17', '2023-07-22', 1800.00).
bookingaccommodation(34, 34, 34, '2023-07-18', '2023-07-23', 1912.50).
bookingaccommodation(35, 35, 35, '2023-07-19', '2023-07-24', 1575.00).
bookingaccommodation(36, 36, 1, '2023-07-20', '2023-07-25', 1575.00).
bookingaccommodation(37, 37, 2, '2023-07-21', '2023-07-26', 1912.50).
bookingaccommodation(38, 38, 3, '2023-07-22', '2023-07-27', 1306.25).
bookingaccommodation(39, 39, 4, '2023-07-23', '2023-07-28', 1600.00).
bookingaccommodation(40, 40, 5, '2023-07-24', '2023-07-29', 1687.50).
bookingaccommodation(41, 41, 6, '2023-07-25', '2023-07-30', 1425.00).
bookingaccommodation(42, 42, 7, '2023-07-26', '2023-07-31', 1125.00).
bookingaccommodation(43, 43, 8, '2023-07-27', '2023-08-01', 2250.00).
bookingaccommodation(44, 44, 9, '2023-07-28', '2023-08-02', 1785.00).
bookingaccommodation(45, 45, 10, '2023-07-29', '2023-08-03', 1645.00).
bookingaccommodation(46, 46, 11, '2023-07-30', '2023-08-04', 1912.50).
bookingaccommodation(47, 47, 12, '2023-07-31', '2023-08-05', 1800.00).
bookingaccommodation(48, 48, 13, '2023-08-01', '2023-08-06', 1687.50).
bookingaccommodation(49, 49, 14, '2023-08-02', '2023-08-07', 1440.00).
bookingaccommodation(50, 50, 15, '2023-08-03', '2023-08-08', 2025.00).

% Tabla BookingTransportation: 50 registros
% bookingtransportation(BookingTransportationID, BookingID, TransportTypeID, FlightID, CarRentalID, CruiseID, Cost).
bookingtransportation(1, 1, 1, 1, null, null, 1200.00).
bookingtransportation(2, 2, 1, 2, null, null, 950.00).
bookingtransportation(3, 3, 1, 3, null, null, 650.00).
bookingtransportation(4, 4, 1, 4, null, null, 1100.00).
bookingtransportation(5, 5, 1, 5, null, null, 2500.00).
bookingtransportation(6, 6, 1, 6, null, null, 850.00).
bookingtransportation(7, 7, 1, 7, null, null, 3000.00).
bookingtransportation(8, 8, 1, 8, null, null, 1800.00).
bookingtransportation(9, 9, 1, 9, null, null, 1200.00).
bookingtransportation(10, 10, 1, 10, null, null, 2200.00).
bookingtransportation(11, 11, 1, 11, null, null, 600.00).
bookingtransportation(12, 12, 1, 12, null, null, 1900.00).
bookingtransportation(13, 13, 1, 13, null, null, 1100.00).
bookingtransportation(14, 14, 1, 14, null, null, 550.00).
bookingtransportation(15, 15, 1, 15, null, null, 1300.00).
bookingtransportation(16, 16, 1, 16, null, null, 500.00).
bookingtransportation(17, 17, 1, 17, null, null, 900.00).
bookingtransportation(18, 18, 1, 18, null, null, 650.00).
bookingtransportation(19, 19, 1, 19, null, null, 1400.00).
bookingtransportation(20, 20, 1, 20, null, null, 950.00).
bookingtransportation(21, 21, 1, 21, null, null, 700.00).
bookingtransportation(22, 22, 1, 22, null, null, 800.00).
bookingtransportation(23, 23, 1, 23, null, null, 1500.00).
bookingtransportation(24, 24, 1, 24, null, null, 600.00).
bookingtransportation(25, 25, 1, 25, null, null, 850.00).
bookingtransportation(26, 26, 1, 26, null, null, 1600.00).
bookingtransportation(27, 27, 1, 27, null, null, 2800.00).
bookingtransportation(28, 28, 1, 28, null, null, 1300.00).
bookingtransportation(29, 29, 1, 29, null, null, 950.00).
bookingtransportation(30, 30, 1, 30, null, null, 650.00).
bookingtransportation(31, 31, 2, null, 1, null, 450.00).
bookingtransportation(32, 32, 2, null, 2, null, 350.00).
bookingtransportation(33, 33, 2, null, 3, null, 500.00).
bookingtransportation(34, 34, 2, null, 4, null, 400.00).
bookingtransportation(35, 35, 2, null, 5, null, 600.00).
bookingtransportation(36, 36, 2, null, 6, null, 300.00).
bookingtransportation(37, 37, 2, null, 7, null, 550.00).
bookingtransportation(38, 38, 2, null, 8, null, 380.00).
bookingtransportation(39, 39, 2, null, 9, null, 420.00).
bookingtransportation(40, 40, 2, null, 10, null, 470.00).
bookingtransportation(41, 41, 3, null, null, 1, 1200.00).
bookingtransportation(42, 42, 3, null, null, 2, 1350.00).
bookingtransportation(43, 43, 3, null, null, 3, 1500.00).
bookingtransportation(44, 44, 3, null, null, 4, 1100.00).
bookingtransportation(45, 45, 3, null, null, 5, 1250.00).
bookingtransportation(46, 46, 3, null, null, 6, 1400.00).
bookingtransportation(47, 47, 3, null, null, 7, 1600.00).
bookingtransportation(48, 48, 3, null, null, 8, 1750.00).
bookingtransportation(49, 49, 3, null, null, 9, 2000.00).
bookingtransportation(50, 50, 3, null, null, 10, 2200.00).

% Tabla Payment: 50 registros
% payment(PaymentID, BookingID, PaymentDate, Amount, PaymentType, CardLastFour, ExpiryDate).
payment(1, 1, '2023-05-01 10:05:00', 2775.00, 'Credit Card', '1234', '12/2025').
payment(2, 2, '2023-05-02 11:20:00', 2862.50, 'Credit Card', '2345', '03/2026').
payment(3, 3, '2023-05-03 12:35:00', 1956.25, 'Debit Card', '3456', '06/2024').
payment(4, 4, '2023-05-04 13:50:00', 2700.00, 'Credit Card', '4567', '09/2025').
payment(5, 5, '2023-05-05 14:05:00', 4187.50, 'Credit Card', '5678', '12/2026').
payment(6, 6, '2023-05-06 15:20:00', 2275.00, 'Debit Card', '6789', '03/2024').
payment(7, 7, '2023-05-07 16:35:00', 4125.00, 'Credit Card', '7890', '06/2025').
payment(8, 8, '2023-05-08 17:50:00', 4050.00, 'Credit Card', '8901', '09/2026').
payment(9, 9, '2023-05-09 18:05:00', 2985.00, 'Debit Card', '9012', '12/2024').
payment(10, 10, '2023-05-10 19:20:00', 3845.00, 'Credit Card', '0123', '03/2025').
payment(11, 11, '2023-05-11 20:35:00', 2512.50, 'Credit Card', '1234', '06/2026').
payment(12, 12, '2023-05-12 21:50:00', 3700.00, 'Debit Card', '2345', '09/2024').
payment(13, 13, '2023-05-13 22:05:00', 2787.50, 'Credit Card', '3456', '12/2025').
payment(14, 14, '2023-05-14 23:20:00', 1990.00, 'Credit Card', '4567', '03/2026').
payment(15, 15, '2023-05-15 08:35:00', 3325.00, 'Debit Card', '5678', '06/2024').
payment(16, 16, '2023-05-16 09:50:00', 1700.00, 'Credit Card', '6789', '09/2025').
payment(17, 17, '2023-05-17 10:05:00', 2475.00, 'Credit Card', '7890', '12/2026').
payment(18, 18, '2023-05-18 11:20:00', 2225.00, 'Debit Card', '8901', '03/2024').
payment(19, 19, '2023-05-19 12:35:00', 3100.00, 'Credit Card', '9012', '06/2025').
payment(20, 20, '2023-05-20 13:50:00', 2595.00, 'Credit Card', '0123', '09/2026').
payment(21, 21, '2023-05-21 14:05:00', 2612.50, 'Debit Card', '1234', '12/2024').
payment(22, 22, '2023-05-22 15:20:00', 2112.50, 'Credit Card', '2345', '03/2025').
payment(23, 23, '2023-05-23 16:35:00', 3250.00, 'Credit Card', '3456', '06/2026').
payment(24, 24, '2023-05-24 17:50:00', 2725.00, 'Debit Card', '4567', '09/2024').
payment(25, 25, '2023-05-25 18:05:00', 3100.00, 'Credit Card', '5678', '12/2025').
payment(26, 26, '2023-05-26 19:20:00', 2950.00, 'Credit Card', '6789', '03/2026').
payment(27, 27, '2023-05-27 20:35:00', 4375.00, 'Debit Card', '7890', '06/2024').
payment(28, 28, '2023-05-28 21:50:00', 3000.00, 'Credit Card', '8901', '09/2025').
payment(29, 29, '2023-05-29 22:05:00', 2735.00, 'Credit Card', '9012', '12/2026').
payment(30, 30, '2023-05-30 23:20:00', 2337.50, 'Debit Card', '0123', '03/2024').
payment(31, 31, '2023-05-31 08:35:00', 2250.00, 'Credit Card', '1234', '06/2025').
payment(32, 32, '2023-06-01 09:50:00', 2475.00, 'Credit Card', '2345', '09/2026').
payment(33, 33, '2023-06-02 10:05:00', 2480.00, 'Debit Card', '3456', '12/2024').
payment(34, 34, '2023-06-03 11:20:00', 2312.50, 'Credit Card', '4567', '03/2025').
payment(35, 35, '2023-06-04 12:35:00', 2175.00, 'Credit Card', '5678', '06/2026').
payment(36, 36, '2023-06-05 13:50:00', 2775.00, 'Debit Card', '6789', '09/2024').
payment(37, 37, '2023-06-06 14:05:00', 2462.50, 'Credit Card', '7890', '12/2025').
payment(38, 38, '2023-06-07 15:20:00', 1686.25, 'Credit Card', '8901', '03/2026').
payment(39, 39, '2023-06-08 16:35:00', 2000.00, 'Debit Card', '9012', '06/2024').
payment(40, 40, '2023-06-09 17:50:00', 2157.50, 'Credit Card', '0123', '09/2025').
payment(41, 41, '2023-06-10 18:05:00', 2625.00, 'Credit Card', '1234', '12/2026').
payment(42, 42, '2023-06-11 19:20:00', 2475.00, 'Debit Card', '2345', '03/2024').
payment(43, 43, '2023-06-12 20:35:00', 3750.00, 'Credit Card', '3456', '06/2025').
payment(44, 44, '2023-06-13 21:50:00', 3425.00, 'Credit Card', '4567', '09/2026').
payment(45, 45, '2023-06-14 22:05:00', 2895.00, 'Debit Card', '5678', '12/2024').
payment(46, 46, '2023-06-15 23:20:00', 3512.50, 'Credit Card', '6789', '03/2025').
payment(47, 47, '2023-06-16 08:35:00', 3400.00, 'Credit Card', '7890', '06/2026').
payment(48, 48, '2023-06-17 09:50:00', 3437.50, 'Debit Card', '8901', '09/2024').
payment(49, 49, '2023-06-18 10:05:00', 3440.00, 'Credit Card', '9012', '12/2025').
payment(50, 50, '2023-06-19 11:20:00', 4225.00, 'Credit Card', '0123', '03/2026').

% Tabla Review: 40 registros
% review(ReviewID, BookingID, PassengerID, Rating, Text, ReviewDate).
review(1, 1, 1, 5, 'Excellent service and accommodations!', '2023-06-21 10:00:00').
review(2, 2, 4, 4, 'Great trip overall, but the flight was delayed.', '2023-06-22 11:15:00').
review(3, 3, 5, 5, 'Perfect business trip, everything was well organized.', '2023-06-23 12:30:00').
review(4, 4, 6, 5, 'Amazing honeymoon! The resort was beautiful.', '2023-06-24 13:45:00').
review(5, 5, 8, 4, 'Adventure of a lifetime! Would recommend.', '2023-06-25 14:00:00').
review(6, 6, 9, 3, 'Good family vacation, but the room was smaller than expected.', '2023-06-26 15:15:00').
review(7, 7, 12, 5, 'Fantastic getaway, will book again!', '2023-06-27 16:30:00').
review(8, 8, 13, 4, 'Smooth business trip, good hotel.', '2023-06-28 17:45:00').
review(9, 9, 14, 5, 'Wonderful anniversary trip!', '2023-06-29 18:00:00').
review(10, 10, 15, 4, 'Great family vacation, kids loved it.', '2023-06-30 19:15:00').
review(11, 11, 17, 5, 'Perfect honeymoon destination!', '2023-07-01 20:30:00').
review(12, 12, 19, 3, 'Business trip was okay, flight was uncomfortable.', '2023-07-02 21:45:00').
review(13, 13, 20, 4, 'Nice vacation, good value for money.', '2023-07-03 22:00:00').
review(14, 14, 21, 5, 'Family had a blast, would come back!', '2023-07-04 23:15:00').
review(15, 15, 24, 4, 'Exciting adventure, some minor issues with transport.', '2023-07-05 08:30:00').
review(16, 16, 25, 5, 'Excellent business facilities.', '2023-07-06 09:45:00').
review(17, 17, 26, 4, 'Relaxing getaway, beautiful location.', '2023-07-07 10:00:00').
review(18, 18, 27, 5, 'Best family vacation ever!', '2023-07-08 11:15:00').
review(19, 19, 29, 5, 'Dream wedding trip, everything was perfect.', '2023-07-09 12:30:00').
review(20, 20, 31, 4, 'Good vacation, but weather could have been better.', '2023-07-10 13:45:00').
review(21, 21, 32, 3, 'Average business trip, nothing special.', '2023-07-11 14:00:00').
review(22, 22, 33, 5, 'Amazing group trip, well organized.', '2023-07-12 15:15:00').
review(23, 23, 35, 4, 'Great adventure, some activities were cancelled.', '2023-07-13 16:30:00').
review(24, 24, 1, 5, 'Perfect business conference trip.', '2023-07-14 17:45:00').
review(25, 25, 2, 4, 'Nice getaway, hotel was comfortable.', '2023-07-15 18:00:00').
review(26, 26, 4, 5, 'Family loved the cruise!', '2023-07-16 19:15:00').
review(27, 27, 5, 5, 'Honeymoon was magical, exceeded expectations.', '2023-07-17 20:30:00').
review(28, 28, 7, 4, 'Good business trip, efficient service.', '2023-07-18 21:45:00').
review(29, 29, 8, 3, 'Vacation was okay, had some issues with booking.', '2023-07-19 22:00:00').
review(30, 30, 9, 5, 'Perfect family reunion trip!', '2023-07-20 23:15:00').
review(31, 31, 11, 4, 'Good car rental experience.', '2023-07-21 08:30:00').
review(32, 32, 12, 5, 'Excellent business trip, no complaints.', '2023-07-22 09:45:00').
review(33, 33, 13, 4, 'Nice vacation, beautiful destination.', '2023-07-23 10:00:00').
review(34, 34, 15, 5, 'Family had a wonderful time!', '2023-07-24 11:15:00').
review(35, 35, 16, 3, 'Honeymoon was good but had some service issues.', '2023-07-25 12:30:00').
review(36, 36, 18, 5, 'Perfect business accommodations.', '2023-07-26 13:45:00').
review(37, 37, 19, 4, 'Enjoyable vacation, would recommend.', '2023-07-27 14:00:00').
review(38, 38, 20, 5, 'Great family trip, kids loved the activities.', '2023-07-28 15:15:00').
review(39, 39, 22, 4, 'Good adventure, some logistical challenges.', '2023-07-29 16:30:00').
review(40, 40, 23, 5, 'Perfect business conference experience.', '2023-07-30 17:45:00').
