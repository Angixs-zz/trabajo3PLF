/*
 BASE DE DATOS PUBLICA: Travel Agency System, WoshengDeng
 Fuente: https://github.com/WoshengDeng/travel-agency-system
 SQL: database/schema.sql y database/seed.sql
 Revision de origen (commit): 35c392168896b3ec4f1aee7366352e9bd8dbe62f
 Traduccion academica a hechos SWI-Prolog (NO es SQL original).
 Se conservan los nombres, los campos, el orden del esquema y los valores;
 columnas omitidas en INSERT quedan como null. Booleanos 0/1 se mantienen.
 Las restricciones SQL PK/FK/CHECK no se imponen automaticamente en Prolog.
*/

% location/4 (10 registros)
% location(LocationID, City, StateProvince, Country).
location('LOC0001', 'Boston', 'Massachusetts', 'USA').
location('LOC0002', 'Providence', 'Rhode Island', 'USA').
location('LOC0003', 'New York', 'New York', 'USA').
location('LOC0004', 'Philadelphia', 'Pennsylvania', 'USA').
location('LOC0005', 'Baltimore', 'Maryland', 'USA').
location('LOC0006', 'Washington', 'District of Columbia', 'USA').
location('LOC0007', 'Richmond', 'Virginia', 'USA').
location('LOC0008', 'Charlotte', 'North Carolina', 'USA').
location('LOC0009', 'Jacksonville', 'Florida', 'USA').
location('LOC0010', 'Miami', 'Florida', 'USA').

% insurance/6 (30 registros)
% insurance(InsuranceID, TYPE, CoverageAmount, Premium, StartDate, EndDate).
insurance('INS001', 'Travel', 1000.00, 50.00, '2025-04-27', '2025-05-04').
insurance('INS002', 'Accident', 2000.00, 70.00, '2025-04-27', '2025-05-04').
insurance('INS003', 'Luggage', 1500.00, 60.00, '2025-04-27', '2025-05-04').
insurance('INS004', 'Health', 5000.00, 80.00, '2025-04-27', '2025-05-04').
insurance('INS005', 'Vehicle', 3000.00, 55.00, '2025-04-27', '2025-05-04').
insurance('INS006', 'Other', 1200.00, 30.00, '2025-04-27', '2025-05-04').
insurance('INS007', 'Travel', 1000.00, 50.00, '2025-04-27', '2025-05-04').
insurance('INS008', 'Accident', 2000.00, 70.00, '2025-04-27', '2025-05-04').
insurance('INS009', 'Luggage', 1500.00, 60.00, '2025-04-27', '2025-05-04').
insurance('INS010', 'Health', 5000.00, 80.00, '2025-04-27', '2025-05-04').
insurance('INS011', 'Travel', 1000.00, 50.00, '2025-04-27', '2025-05-04').
insurance('INS012', 'Accident', 800.00, 40.00, '2025-04-27', '2025-05-04').
insurance('INS013', 'Luggage', 500.00, 30.00, '2025-04-27', '2025-05-04').
insurance('INS014', 'Travel', 800.00, 60.00, '2025-04-27', '2025-05-04').
insurance('INS015', 'Luggage', 500.00, 35.00, '2025-04-27', '2025-05-04').
insurance('INS016', 'Vehicle', 1500.00, 90.00, '2025-04-27', '2025-05-04').
insurance('INS017', 'Health', 1000.00, 75.00, '2025-04-27', '2025-05-04').
insurance('INS018', 'Accident', 1200.00, 55.00, '2025-04-27', '2025-05-04').
insurance('INS019', 'Travel', 700.00, 50.00, '2025-04-27', '2025-05-04').
insurance('INS020', 'Other', 650.00, 40.00, '2025-04-27', '2025-05-04').
insurance('INS021', 'Travel', 1000.00, 50.00, '2025-04-27', '2025-05-04').
insurance('INS022', 'Health', 1500.00, 75.00, '2025-04-27', '2025-05-04').
insurance('INS023', 'Accident', 2000.00, 60.00, '2025-04-27', '2025-05-04').
insurance('INS024', 'Luggage', 1200.00, 55.00, '2025-04-27', '2025-05-04').
insurance('INS025', 'Other', 650.00, 40.00, '2025-04-27', '2025-05-04').
insurance('INS026', 'Travel', 1000.00, 50.00, '2025-04-27', '2025-05-04').
insurance('INS027', 'Health', 1500.00, 75.00, '2025-04-27', '2025-05-04').
insurance('INS028', 'Accident', 2000.00, 60.00, '2025-04-27', '2025-05-04').
insurance('INS029', 'Luggage', 1200.00, 55.00, '2025-04-27', '2025-05-04').
insurance('INS030', 'Luggage', 1200.00, 55.00, '2025-04-27', '2025-05-04').

% transportation/3 (150 registros)
% transportation(TransportationID, TYPE, Capacity).
transportation('TRANS0001', 'Car', 4).
transportation('TRANS0002', 'Car', 5).
transportation('TRANS0003', 'Car', 7).
transportation('TRANS0004', 'Car', 4).
transportation('TRANS0005', 'Car', 5).
transportation('TRANS0006', 'Car', 2).
transportation('TRANS0007', 'Car', 4).
transportation('TRANS0008', 'Car', 6).
transportation('TRANS0009', 'Car', 4).
transportation('TRANS0010', 'Car', 5).
transportation('TRANS0011', 'Car', 5).
transportation('TRANS0012', 'Car', 4).
transportation('TRANS0013', 'Car', 5).
transportation('TRANS0014', 'Car', 7).
transportation('TRANS0015', 'Car', 4).
transportation('TRANS0016', 'Car', 2).
transportation('TRANS0017', 'Car', 6).
transportation('TRANS0018', 'Car', 5).
transportation('TRANS0019', 'Car', 4).
transportation('TRANS0020', 'Car', 5).
transportation('TRANS0021', 'Car', 4).
transportation('TRANS0022', 'Car', 7).
transportation('TRANS0023', 'Car', 5).
transportation('TRANS0024', 'Car', 4).
transportation('TRANS0025', 'Car', 5).
transportation('TRANS0026', 'Car', 6).
transportation('TRANS0027', 'Car', 2).
transportation('TRANS0028', 'Car', 4).
transportation('TRANS0029', 'Car', 5).
transportation('TRANS0030', 'Car', 4).
transportation('TRANS0201', 'Ship', 5000).
transportation('TRANS0202', 'Ship', 2000).
transportation('TRANS0203', 'Ship', 100).
transportation('TRANS0204', 'Ship', 2000).
transportation('TRANS0205', 'Ship', 6000).
transportation('TRANS0206', 'Ship', 1500).
transportation('TRANS0207', 'Ship', 500).
transportation('TRANS0208', 'Ship', 2500).
transportation('TRANS0209', 'Ship', 8000).
transportation('TRANS0210', 'Ship', 1200).
transportation('TRANS0211', 'Ship', 5000).
transportation('TRANS0212', 'Ship', 2000).
transportation('TRANS0213', 'Ship', 100).
transportation('TRANS0214', 'Ship', 2000).
transportation('TRANS0215', 'Ship', 6000).
transportation('TRANS0216', 'Ship', 1500).
transportation('TRANS0217', 'Ship', 500).
transportation('TRANS0218', 'Ship', 2500).
transportation('TRANS0219', 'Ship', 8000).
transportation('TRANS0220', 'Ship', 1200).
transportation('TRANS0301', 'Plane', 180).
transportation('TRANS0302', 'Plane', 150).
transportation('TRANS0303', 'Plane', 350).
transportation('TRANS0304', 'Plane', 250).
transportation('TRANS0305', 'Plane', 220).
transportation('TRANS0306', 'Plane', 200).
transportation('TRANS0307', 'Plane', 400).
transportation('TRANS0308', 'Plane', 300).
transportation('TRANS0309', 'Plane', 250).
transportation('TRANS0310', 'Plane', 180).
transportation('TRANS0311', 'Plane', 150).
transportation('TRANS0312', 'Plane', 350).
transportation('TRANS0313', 'Plane', 250).
transportation('TRANS0314', 'Plane', 220).
transportation('TRANS0315', 'Plane', 200).
transportation('TRANS0316', 'Plane', 400).
transportation('TRANS0317', 'Plane', 300).
transportation('TRANS0318', 'Plane', 250).
transportation('TRANS0319', 'Plane', 180).
transportation('TRANS0320', 'Plane', 150).
transportation('TRANS0321', 'Plane', 180).
transportation('TRANS0322', 'Plane', 150).
transportation('TRANS0323', 'Plane', 350).
transportation('TRANS0324', 'Plane', 250).
transportation('TRANS0325', 'Plane', 220).
transportation('TRANS0326', 'Plane', 200).
transportation('TRANS0327', 'Plane', 400).
transportation('TRANS0328', 'Plane', 300).
transportation('TRANS0329', 'Plane', 250).
transportation('TRANS0330', 'Plane', 180).
transportation('TRANS0331', 'Plane', 150).
transportation('TRANS0332', 'Plane', 350).
transportation('TRANS0333', 'Plane', 250).
transportation('TRANS0334', 'Plane', 220).
transportation('TRANS0335', 'Plane', 200).
transportation('TRANS0336', 'Plane', 400).
transportation('TRANS0337', 'Plane', 300).
transportation('TRANS0338', 'Plane', 250).
transportation('TRANS0339', 'Plane', 180).
transportation('TRANS0340', 'Plane', 150).
transportation('TRANS0401', 'Train', 600).
transportation('TRANS0402', 'Train', 550).
transportation('TRANS0403', 'Train', 500).
transportation('TRANS0404', 'Train', 400).
transportation('TRANS0405', 'Train', 800).
transportation('TRANS0406', 'Train', 300).
transportation('TRANS0407', 'Train', 700).
transportation('TRANS0408', 'Train', 650).
transportation('TRANS0409', 'Train', 600).
transportation('TRANS0410', 'Train', 550).
transportation('TRANS0411', 'Train', 500).
transportation('TRANS0412', 'Train', 450).
transportation('TRANS0413', 'Train', 750).
transportation('TRANS0414', 'Train', 620).
transportation('TRANS0415', 'Train', 470).
transportation('TRANS0416', 'Train', 390).
transportation('TRANS0417', 'Train', 800).
transportation('TRANS0418', 'Train', 710).
transportation('TRANS0419', 'Train', 690).
transportation('TRANS0420', 'Train', 720).
transportation('TRANS0421', 'Train', 530).
transportation('TRANS0422', 'Train', 680).
transportation('TRANS0423', 'Train', 610).
transportation('TRANS0424', 'Train', 570).
transportation('TRANS0425', 'Train', 490).
transportation('TRANS0426', 'Train', 430).
transportation('TRANS0427', 'Train', 580).
transportation('TRANS0428', 'Train', 620).
transportation('TRANS0429', 'Train', 610).
transportation('TRANS0430', 'Train', 590).
transportation('TRANS0501', 'Bus', 50).
transportation('TRANS0502', 'Bus', 60).
transportation('TRANS0503', 'Bus', 55).
transportation('TRANS0504', 'Bus', 40).
transportation('TRANS0505', 'Bus', 45).
transportation('TRANS0506', 'Bus', 50).
transportation('TRANS0507', 'Bus', 48).
transportation('TRANS0508', 'Bus', 52).
transportation('TRANS0509', 'Bus', 60).
transportation('TRANS0510', 'Bus', 57).
transportation('TRANS0511', 'Bus', 53).
transportation('TRANS0512', 'Bus', 47).
transportation('TRANS0513', 'Bus', 49).
transportation('TRANS0514', 'Bus', 51).
transportation('TRANS0515', 'Bus', 46).
transportation('TRANS0516', 'Bus', 54).
transportation('TRANS0517', 'Bus', 58).
transportation('TRANS0518', 'Bus', 50).
transportation('TRANS0519', 'Bus', 45).
transportation('TRANS0520', 'Bus', 60).
transportation('TRANS0521', 'Bus', 59).
transportation('TRANS0522', 'Bus', 56).
transportation('TRANS0523', 'Bus', 43).
transportation('TRANS0524', 'Bus', 48).
transportation('TRANS0525', 'Bus', 52).
transportation('TRANS0526', 'Bus', 44).
transportation('TRANS0527', 'Bus', 55).
transportation('TRANS0528', 'Bus', 46).
transportation('TRANS0529', 'Bus', 50).
transportation('TRANS0530', 'Bus', 49).

% public_transport/2 (120 registros)
% public_transport(TransportationID, Facility).
public_transport('TRANS0201', 'Dining Hall, Swimming Pool, Spa').
public_transport('TRANS0202', 'Basic Seating, Snack Bar').
public_transport('TRANS0203', 'Luxury Cabins, Casino, Gym').
public_transport('TRANS0204', 'Lounge, Restroom Facilities').
public_transport('TRANS0205', 'Cabins, Open Deck, Entertainment').
public_transport('TRANS0206', 'Food Court, Shops').
public_transport('TRANS0207', 'Basic Cabins, Dining Area').
public_transport('TRANS0208', 'Luxury Suites, Pool Deck').
public_transport('TRANS0209', 'Basic Rest Area, Observation Deck').
public_transport('TRANS0210', 'Restaurants, Fitness Center').
public_transport('TRANS0211', 'Dining Hall, Swimming Pool, Spa').
public_transport('TRANS0212', 'Dining Hall, Swimming Pool, Spa').
public_transport('TRANS0213', 'Dining Hall, Swimming Pool, Spa').
public_transport('TRANS0214', 'Dining Hall, Swimming Pool, Spa').
public_transport('TRANS0215', 'Dining Hall, Swimming Pool, Spa').
public_transport('TRANS0216', 'Dining Hall, Swimming Pool, Spa').
public_transport('TRANS0217', 'Dining Hall, Swimming Pool, Spa').
public_transport('TRANS0218', 'Dining Hall, Swimming Pool, Spa').
public_transport('TRANS0219', 'Dining Hall, Swimming Pool, Spa').
public_transport('TRANS0220', 'Dining Hall, Swimming Pool, Spa').
public_transport('TRANS0301', 'In-flight Entertainment, Wi-Fi').
public_transport('TRANS0302', 'Basic Seating, Restroom').
public_transport('TRANS0303', 'Wi-Fi, Extra Legroom').
public_transport('TRANS0304', 'Business Class, Premium Meals').
public_transport('TRANS0305', 'In-flight Movies, Power Outlets').
public_transport('TRANS0306', 'Basic Cabin, Light Snacks').
public_transport('TRANS0307', 'Premium Economy, Reclining Seats').
public_transport('TRANS0308', 'First Class, Lie-Flat Beds').
public_transport('TRANS0309', 'In-flight Shopping, Entertainment').
public_transport('TRANS0310', 'Comfort Seats, Restroom').
public_transport('TRANS0311', 'Basic Seating, Reading Lights').
public_transport('TRANS0312', 'In-flight Wi-Fi, USB Ports').
public_transport('TRANS0313', 'Economy Plus, Extra Storage').
public_transport('TRANS0314', 'Luxury Seating, Meal Service').
public_transport('TRANS0315', 'Wi-Fi, Quiet Cabin').
public_transport('TRANS0316', 'In-flight TV, Restroom Access').
public_transport('TRANS0317', 'Touchscreen Entertainment, Recliner').
public_transport('TRANS0318', 'Basic Cabin, Power Outlets').
public_transport('TRANS0319', 'Business Class, Lounge Access').
public_transport('TRANS0320', 'Economy Class, Onboard Snacks').
public_transport('TRANS0321', 'In-flight Entertainment, Wi-Fi').
public_transport('TRANS0322', 'Basic Seating, Restroom').
public_transport('TRANS0323', 'Wi-Fi, Extra Legroom').
public_transport('TRANS0324', 'Business Class, Premium Meals').
public_transport('TRANS0325', 'In-flight Movies, Power Outlets').
public_transport('TRANS0326', 'Basic Cabin, Light Snacks').
public_transport('TRANS0327', 'Premium Economy, Reclining Seats').
public_transport('TRANS0328', 'First Class, Lie-Flat Beds').
public_transport('TRANS0329', 'In-flight Shopping, Entertainment').
public_transport('TRANS0330', 'Comfort Seats, Restroom').
public_transport('TRANS0331', 'Basic Seating, Reading Lights').
public_transport('TRANS0332', 'In-flight Wi-Fi, USB Ports').
public_transport('TRANS0333', 'Economy Plus, Extra Storage').
public_transport('TRANS0334', 'Luxury Seating, Meal Service').
public_transport('TRANS0335', 'Wi-Fi, Quiet Cabin').
public_transport('TRANS0336', 'In-flight TV, Restroom Access').
public_transport('TRANS0337', 'Touchscreen Entertainment, Recliner').
public_transport('TRANS0338', 'Basic Cabin, Power Outlets').
public_transport('TRANS0339', 'Business Class, Lounge Access').
public_transport('TRANS0340', 'Economy Class, Onboard Snacks').
public_transport('TRANS0401', 'Wi-Fi, Dining Car, Power Outlets').
public_transport('TRANS0402', 'Basic Seats, Restroom').
public_transport('TRANS0403', 'Wi-Fi, Quiet Car').
public_transport('TRANS0404', 'Restroom, Luggage Storage').
public_transport('TRANS0405', 'Wi-Fi, Dining Car').
public_transport('TRANS0406', 'Air Conditioning, Basic Seats').
public_transport('TRANS0407', 'Reclining Seats, Power Outlets').
public_transport('TRANS0408', 'Restroom, Quiet Car').
public_transport('TRANS0409', 'Wi-Fi, Charging Ports').
public_transport('TRANS0410', 'Basic Facilities').
public_transport('TRANS0411', 'Dining Car, Restroom').
public_transport('TRANS0412', 'Power Outlets, Luggage Storage').
public_transport('TRANS0413', 'Wi-Fi, Entertainment Screens').
public_transport('TRANS0414', 'Air Conditioning').
public_transport('TRANS0415', 'Restroom, Wi-Fi').
public_transport('TRANS0416', 'Basic Seats, Power Outlets').
public_transport('TRANS0417', 'Wi-Fi, Dining Car, Entertainment').
public_transport('TRANS0418', 'Quiet Car, Charging Ports').
public_transport('TRANS0419', 'Luggage Storage, Power Outlets').
public_transport('TRANS0420', 'Wi-Fi, Quiet Car').
public_transport('TRANS0421', 'Reclining Seats, Dining Car').
public_transport('TRANS0422', 'Wi-Fi, Power Outlets').
public_transport('TRANS0423', 'Wi-Fi, Basic Facilities').
public_transport('TRANS0424', 'Restroom, Air Conditioning').
public_transport('TRANS0425', 'Charging Ports, Basic Seats').
public_transport('TRANS0426', 'Wi-Fi, Restroom').
public_transport('TRANS0427', 'Entertainment Screens, Reclining Seats').
public_transport('TRANS0428', 'Dining Car, Quiet Car').
public_transport('TRANS0429', 'Air Conditioning, Power Outlets').
public_transport('TRANS0430', 'Wi-Fi, Restroom').
public_transport('TRANS0501', 'Air Conditioning, Wi-Fi').
public_transport('TRANS0502', 'Open-top, Audio Guide').
public_transport('TRANS0503', 'Wi-Fi, Luggage Rack').
public_transport('TRANS0504', 'Basic Seats, Air Conditioning').
public_transport('TRANS0505', 'Panoramic View, Audio System').
public_transport('TRANS0506', 'Comfort Seats, Wi-Fi').
public_transport('TRANS0507', 'Air Conditioning, USB Charging').
public_transport('TRANS0508', 'Audio Guide, LED Display').
public_transport('TRANS0509', 'Restroom, Reclining Seats').
public_transport('TRANS0510', 'Wi-Fi, Overhead Storage').
public_transport('TRANS0511', 'Double Deck, Air Conditioning').
public_transport('TRANS0512', 'Entertainment System, Wi-Fi').
public_transport('TRANS0513', 'Basic Comfort, USB Charging').
public_transport('TRANS0514', 'Panoramic Roof, Wi-Fi').
public_transport('TRANS0515', 'Quiet Cabin, Reclining Seats').
public_transport('TRANS0516', 'Touchscreen Info Panel, Wi-Fi').
public_transport('TRANS0517', 'Overhead Display, Air Conditioning').
public_transport('TRANS0518', 'Luggage Compartment, USB Charging').
public_transport('TRANS0519', 'Basic Facilities, Reclining Seats').
public_transport('TRANS0520', 'Air Conditioning, Wi-Fi').
public_transport('TRANS0521', 'Double Deck, USB Charging').
public_transport('TRANS0522', 'Entertainment System, Restroom').
public_transport('TRANS0523', 'Tour Guide Audio, LED Sign').
public_transport('TRANS0524', 'Quiet Ride, Basic Comfort').
public_transport('TRANS0525', 'Panoramic Windows, Wi-Fi').
public_transport('TRANS0526', 'Air Conditioning, Power Outlets').
public_transport('TRANS0527', 'Entertainment Screens, USB').
public_transport('TRANS0528', 'Wi-Fi, Reclining Seats').
public_transport('TRANS0529', 'Double Deck, Entertainment System').
public_transport('TRANS0530', 'Restroom, Wi-Fi').

% plane/4 (20 registros)
% plane(TransportationID, PlaneModel, AirlineCode, FlightNumber).
plane('TRANS0301', 'Boeing 737', 'AA', 'AA101').
plane('TRANS0302', 'Airbus A320', 'DL', 'DL202').
plane('TRANS0303', 'Boeing 777', 'UA', 'UA303').
plane('TRANS0304', 'Airbus A350', 'AF', 'AF404').
plane('TRANS0305', 'Boeing 787', 'BA', 'BA505').
plane('TRANS0306', 'Airbus A321', 'LH', 'LH606').
plane('TRANS0307', 'Boeing 747', 'QF', 'QF707').
plane('TRANS0308', 'Airbus A330', 'EK', 'EK808').
plane('TRANS0309', 'Boeing 767', 'JAL', 'JAL909').
plane('TRANS0310', 'Airbus A320', 'AA', 'AA102').
plane('TRANS0311', 'Boeing 737', 'DL', 'DL203').
plane('TRANS0312', 'Airbus A350', 'UA', 'UA304').
plane('TRANS0313', 'Boeing 777', 'AF', 'AF405').
plane('TRANS0314', 'Airbus A321', 'BA', 'BA506').
plane('TRANS0315', 'Boeing 787', 'LH', 'LH607').
plane('TRANS0316', 'Airbus A330', 'QF', 'QF708').
plane('TRANS0317', 'Boeing 747', 'EK', 'EK810').
plane('TRANS0318', 'Airbus A320', 'JAL', 'JAL990').
plane('TRANS0319', 'Boeing 737', 'AA', 'AA103').
plane('TRANS0320', 'Airbus A320', 'DL', 'DL204').

% ship/4 (20 registros)
% ship(TransportationID, ShipType, DeckCount, Tonnage).
ship('TRANS0201', 'Cruise', 15, 50000.00).
ship('TRANS0202', 'Ferry', 5, 15000.00).
ship('TRANS0203', 'Yacht', 3, 8000.00).
ship('TRANS0204', 'PassengerShip', 12, 20000.00).
ship('TRANS0205', 'Cruise', 18, 60000.00).
ship('TRANS0206', 'Ferry', 4, 10000.00).
ship('TRANS0207', 'Yacht', 2, 7000.00).
ship('TRANS0208', 'PassengerShip', 10, 25000.00).
ship('TRANS0209', 'Cruise', 20, 80000.00).
ship('TRANS0210', 'Ferry', 6, 12000.00).
ship('TRANS0211', 'Cruise', 15, 50000.00).
ship('TRANS0212', 'Ferry', 5, 15000.00).
ship('TRANS0213', 'Yacht', 3, 8000.00).
ship('TRANS0214', 'PassengerShip', 12, 20000.00).
ship('TRANS0215', 'Cruise', 18, 60000.00).
ship('TRANS0216', 'Ferry', 4, 10000.00).
ship('TRANS0217', 'Yacht', 2, 7000.00).
ship('TRANS0218', 'PassengerShip', 10, 25000.00).
ship('TRANS0219', 'Cruise', 20, 80000.00).
ship('TRANS0220', 'Ferry', 6, 12000.00).

% train/3 (30 registros)
% train(TransportationID, TrainType, NumberOfCarriages).
train('TRANS0401', 'High-speed', 8).
train('TRANS0402', 'Ordinary', 10).
train('TRANS0403', 'High-speed', 6).
train('TRANS0404', 'Ordinary', 12).
train('TRANS0405', 'High-speed', 10).
train('TRANS0406', 'Ordinary', 5).
train('TRANS0407', 'High-speed', 9).
train('TRANS0408', 'Ordinary', 11).
train('TRANS0409', 'High-speed', 7).
train('TRANS0410', 'Ordinary', 10).
train('TRANS0411', 'High-speed', 8).
train('TRANS0412', 'Ordinary', 12).
train('TRANS0413', 'High-speed', 10).
train('TRANS0414', 'Ordinary', 6).
train('TRANS0415', 'High-speed', 9).
train('TRANS0416', 'Ordinary', 5).
train('TRANS0417', 'High-speed', 11).
train('TRANS0418', 'Ordinary', 10).
train('TRANS0419', 'High-speed', 8).
train('TRANS0420', 'Ordinary', 9).
train('TRANS0421', 'High-speed', 10).
train('TRANS0422', 'Ordinary', 6).
train('TRANS0423', 'High-speed', 8).
train('TRANS0424', 'Ordinary', 7).
train('TRANS0425', 'High-speed', 6).
train('TRANS0426', 'Ordinary', 5).
train('TRANS0427', 'High-speed', 7).
train('TRANS0428', 'Ordinary', 8).
train('TRANS0429', 'High-speed', 6).
train('TRANS0430', 'Ordinary', 9).

% bus/3 (30 registros)
% bus(TransportationID, BusType, LicensePlate).
bus('TRANS0501', 'Ordinary', 'BUS1001').
bus('TRANS0502', 'DoubleDecker', 'BUS1002').
bus('TRANS0503', 'TouristBus', 'BUS1003').
bus('TRANS0504', 'Ordinary', 'BUS1004').
bus('TRANS0505', 'DoubleDecker', 'BUS1005').
bus('TRANS0506', 'TouristBus', 'BUS1006').
bus('TRANS0507', 'Ordinary', 'BUS1007').
bus('TRANS0508', 'DoubleDecker', 'BUS1008').
bus('TRANS0509', 'TouristBus', 'BUS1009').
bus('TRANS0510', 'Ordinary', 'BUS1010').
bus('TRANS0511', 'DoubleDecker', 'BUS1011').
bus('TRANS0512', 'TouristBus', 'BUS1012').
bus('TRANS0513', 'Ordinary', 'BUS1013').
bus('TRANS0514', 'DoubleDecker', 'BUS1014').
bus('TRANS0515', 'TouristBus', 'BUS1015').
bus('TRANS0516', 'Ordinary', 'BUS1016').
bus('TRANS0517', 'DoubleDecker', 'BUS1017').
bus('TRANS0518', 'TouristBus', 'BUS1018').
bus('TRANS0519', 'Ordinary', 'BUS1019').
bus('TRANS0520', 'DoubleDecker', 'BUS1020').
bus('TRANS0521', 'TouristBus', 'BUS1021').
bus('TRANS0522', 'Ordinary', 'BUS1022').
bus('TRANS0523', 'DoubleDecker', 'BUS1023').
bus('TRANS0524', 'TouristBus', 'BUS1024').
bus('TRANS0525', 'Ordinary', 'BUS1025').
bus('TRANS0526', 'DoubleDecker', 'BUS1026').
bus('TRANS0527', 'TouristBus', 'BUS1027').
bus('TRANS0528', 'Ordinary', 'BUS1028').
bus('TRANS0529', 'DoubleDecker', 'BUS1029').
bus('TRANS0530', 'TouristBus', 'BUS1030').

% car/8 (30 registros)
% car(TransportationID, Brand, Model, FuelType, TransmissionType, SeatNumber, CreateYear, LicensePlate).
car('TRANS0001', 'Toyota', 'Corolla', 'Gasoline', 'Automatic', 4, 2021, 'ABC1234').
car('TRANS0002', 'Honda', 'Civic', 'Diesel', 'Manual', 5, 2020, 'DEF5678').
car('TRANS0003', 'Ford', 'Explorer', 'Hybrid', 'Automatic', 7, 2022, 'GHI9012').
car('TRANS0004', 'Chevrolet', 'Malibu', 'Gasoline', 'Automatic', 4, 2019, 'JKL3456').
car('TRANS0005', 'Nissan', 'Altima', 'Electric', 'Manual', 5, 2021, 'MNO7890').
car('TRANS0006', 'BMW', 'Z4', 'Gasoline', 'Automatic', 2, 2023, 'PQR2345').
car('TRANS0007', 'Audi', 'A4', 'Diesel', 'Automatic', 4, 2020, 'STU6789').
car('TRANS0008', 'Mercedes', 'GLC', 'Hybrid', 'Manual', 6, 2021, 'VWX0123').
car('TRANS0009', 'Kia', 'Optima', 'Gasoline', 'Automatic', 4, 2022, 'YZA4567').
car('TRANS0010', 'Hyundai', 'Sonata', 'Electric', 'Manual', 5, 2021, 'BCD8901').
car('TRANS0011', 'Mazda', '3', 'Gasoline', 'Manual', 5, 2019, 'EFG1234').
car('TRANS0012', 'Volkswagen', 'Golf', 'Diesel', 'Automatic', 4, 2020, 'HIJ5678').
car('TRANS0013', 'Tesla', 'Model 3', 'Electric', 'Automatic', 5, 2022, 'KLM9012').
car('TRANS0014', 'Subaru', 'Outback', 'Gasoline', 'Manual', 7, 2021, 'NOP3456').
car('TRANS0015', 'Jeep', 'Renegade', 'Gasoline', 'Automatic', 4, 2021, 'QRS7890').
car('TRANS0016', 'Mini', 'Cooper', 'Gasoline', 'Manual', 2, 2023, 'TUV2345').
car('TRANS0017', 'Volvo', 'XC90', 'Hybrid', 'Automatic', 6, 2020, 'WXY6789').
car('TRANS0018', 'Peugeot', '308', 'Diesel', 'Manual', 5, 2021, 'ZAB0123').
car('TRANS0019', 'Skoda', 'Octavia', 'Gasoline', 'Automatic', 4, 2022, 'CDE4567').
car('TRANS0020', 'Fiat', '500', 'Electric', 'Manual', 5, 2020, 'FGH8901').
car('TRANS0021', 'Renault', 'Clio', 'Gasoline', 'Manual', 4, 2018, 'IJK2345').
car('TRANS0022', 'Toyota', 'Highlander', 'Hybrid', 'Automatic', 7, 2023, 'LMN6789').
car('TRANS0023', 'Honda', 'Fit', 'Gasoline', 'Manual', 5, 2020, 'OPQ0123').
car('TRANS0024', 'Ford', 'Focus', 'Diesel', 'Automatic', 4, 2021, 'RST4567').
car('TRANS0025', 'Chevrolet', 'Impala', 'Gasoline', 'Automatic', 5, 2019, 'UVW8901').
car('TRANS0026', 'Nissan', 'Rogue', 'Hybrid', 'Manual', 6, 2021, 'XYZ2345').
car('TRANS0027', 'BMW', 'i8', 'Electric', 'Automatic', 2, 2022, 'ABC6789').
car('TRANS0028', 'Audi', 'Q3', 'Gasoline', 'Manual', 4, 2020, 'DEF0123').
car('TRANS0029', 'Hyundai', 'Elantra', 'Gasoline', 'Automatic', 5, 2021, 'GHI4567').
car('TRANS0030', 'Kia', 'Soul', 'Electric', 'Manual', 4, 2022, 'JKL8901').

% car_rental/8 (50 registros)
% car_rental(RentalID, TransportationID, ScheduledPickup, ScheduledDropoff, ActualPickup, ActualDropoff, TotalCost, RentalStatus).
car_rental('RENT0001', 'TRANS0001', '2025-04-01 09:00:00', '2025-04-03 09:00:00', '2025-04-01 09:15:00', '2025-04-03 08:50:00', 150.00, 'Returned').
car_rental('RENT0002', 'TRANS0002', '2025-04-05 14:00:00', '2025-04-08 14:00:00', '2025-04-05 14:30:00', '2025-04-08 13:45:00', 220.00, 'Returned').
car_rental('RENT0003', 'TRANS0003', '2025-04-10 10:00:00', '2025-04-11 10:00:00', null, null, 0.00, 'Reserved').
car_rental('RENT0004', 'TRANS0004', '2025-04-12 08:00:00', '2025-04-13 08:00:00', '2025-04-12 08:05:00', '2025-04-13 08:10:00', 120.00, 'Returned').
car_rental('RENT0005', 'TRANS0005', '2025-04-15 12:00:00', '2025-04-16 12:00:00', null, null, 0.00, 'Cancelled').
car_rental('RENT0006', 'TRANS0006', '2025-04-17 09:00:00', '2025-04-18 09:00:00', '2025-04-17 09:10:00', '2025-04-18 08:50:00', 100.00, 'Returned').
car_rental('RENT0007', 'TRANS0007', '2025-04-20 10:00:00', '2025-04-22 10:00:00', null, null, 0.00, 'Reserved').
car_rental('RENT0008', 'TRANS0008', '2025-04-23 14:00:00', '2025-04-25 14:00:00', '2025-04-23 14:10:00', '2025-04-25 13:45:00', 200.00, 'Returned').
car_rental('RENT0009', 'TRANS0009', '2025-04-26 11:00:00', '2025-04-28 11:00:00', null, null, 0.00, 'Cancelled').
car_rental('RENT0010', 'TRANS0010', '2025-04-29 13:00:00', '2025-04-30 13:00:00', '2025-04-29 13:05:00', '2025-04-30 13:20:00', 110.00, 'Returned').
car_rental('RENT0011', 'TRANS0011', '2025-05-01 10:00:00', '2025-05-03 10:00:00', null, null, 0.00, 'Reserved').
car_rental('RENT0012', 'TRANS0012', '2025-05-02 09:00:00', '2025-05-04 09:00:00', '2025-05-02 09:15:00', null, 0.00, 'PickedUp').
car_rental('RENT0013', 'TRANS0013', '2025-05-03 08:00:00', '2025-05-05 08:00:00', null, null, 0.00, 'Reserved').
car_rental('RENT0014', 'TRANS0014', '2025-05-04 12:00:00', '2025-05-06 12:00:00', null, null, 0.00, 'Cancelled').
car_rental('RENT0015', 'TRANS0015', '2025-05-05 14:00:00', '2025-05-07 14:00:00', '2025-05-05 14:10:00', '2025-05-07 14:00:00', 175.00, 'Returned').
car_rental('RENT0016', 'TRANS0016', '2025-05-06 15:00:00', '2025-05-08 15:00:00', '2025-05-06 15:00:00', null, 0.00, 'PickedUp').
car_rental('RENT0017', 'TRANS0017', '2025-05-07 11:00:00', '2025-05-09 11:00:00', null, null, 0.00, 'Reserved').
car_rental('RENT0018', 'TRANS0018', '2025-05-08 10:00:00', '2025-05-10 10:00:00', '2025-05-08 10:05:00', null, 0.00, 'PickedUp').
car_rental('RENT0019', 'TRANS0019', '2025-05-09 09:00:00', '2025-05-11 09:00:00', null, null, 0.00, 'Reserved').
car_rental('RENT0020', 'TRANS0020', '2025-05-10 08:00:00', '2025-05-12 08:00:00', null, null, 0.00, 'Cancelled').
car_rental('RENT0021', 'TRANS0021', '2025-05-11 10:00:00', '2025-05-13 10:00:00', '2025-05-11 10:10:00', '2025-05-13 09:55:00', 130.00, 'Returned').
car_rental('RENT0022', 'TRANS0022', '2025-05-12 14:00:00', '2025-05-14 14:00:00', null, null, 0.00, 'Reserved').
car_rental('RENT0023', 'TRANS0023', '2025-05-13 15:00:00', '2025-05-15 15:00:00', '2025-05-13 15:00:00', null, 0.00, 'PickedUp').
car_rental('RENT0024', 'TRANS0024', '2025-05-14 09:00:00', '2025-05-16 09:00:00', null, null, 0.00, 'Reserved').
car_rental('RENT0025', 'TRANS0025', '2025-05-15 11:00:00', '2025-05-17 11:00:00', null, null, 0.00, 'Cancelled').
car_rental('RENT0026', 'TRANS0026', '2025-05-16 12:00:00', '2025-05-18 12:00:00', '2025-05-16 12:00:00', '2025-05-18 12:30:00', 190.00, 'Returned').
car_rental('RENT0027', 'TRANS0027', '2025-05-17 10:00:00', '2025-05-19 10:00:00', null, null, 0.00, 'Reserved').
car_rental('RENT0028', 'TRANS0028', '2025-05-18 08:00:00', '2025-05-20 08:00:00', null, null, 0.00, 'Cancelled').
car_rental('RENT0029', 'TRANS0029', '2025-05-19 14:00:00', '2025-05-21 14:00:00', '2025-05-19 14:15:00', '2025-05-21 13:45:00', 160.00, 'Returned').
car_rental('RENT0030', 'TRANS0030', '2025-05-20 13:00:00', '2025-05-22 13:00:00', '2025-05-20 13:00:00', null, 0.00, 'PickedUp').
car_rental('RENT0031', 'TRANS0001', '2025-05-21 09:00:00', '2025-05-23 09:00:00', null, null, 0.00, 'Reserved').
car_rental('RENT0032', 'TRANS0002', '2025-05-22 10:00:00', '2025-05-24 10:00:00', '2025-05-22 10:05:00', null, 0.00, 'PickedUp').
car_rental('RENT0033', 'TRANS0003', '2025-05-23 11:00:00', '2025-05-25 11:00:00', null, null, 0.00, 'Cancelled').
car_rental('RENT0034', 'TRANS0004', '2025-05-24 12:00:00', '2025-05-26 12:00:00', '2025-05-24 12:10:00', '2025-05-26 12:00:00', 145.00, 'Returned').
car_rental('RENT0035', 'TRANS0005', '2025-05-25 13:00:00', '2025-05-27 13:00:00', null, null, 0.00, 'Reserved').
car_rental('RENT0036', 'TRANS0006', '2025-05-26 14:00:00', '2025-05-28 14:00:00', '2025-05-26 14:00:00', null, 0.00, 'PickedUp').
car_rental('RENT0037', 'TRANS0007', '2025-05-27 15:00:00', '2025-05-29 15:00:00', null, null, 0.00, 'Cancelled').
car_rental('RENT0038', 'TRANS0008', '2025-05-28 16:00:00', '2025-05-30 16:00:00', '2025-05-28 16:10:00', null, 0.00, 'PickedUp').
car_rental('RENT0039', 'TRANS0009', '2025-05-29 17:00:00', '2025-05-31 17:00:00', null, null, 0.00, 'Reserved').
car_rental('RENT0040', 'TRANS0010', '2025-05-30 18:00:00', '2025-06-01 18:00:00', null, null, 0.00, 'Cancelled').
car_rental('RENT0041', 'TRANS0011', '2025-06-01 08:00:00', '2025-06-03 08:00:00', null, null, 0.00, 'Reserved').
car_rental('RENT0042', 'TRANS0012', '2025-06-02 09:00:00', '2025-06-04 09:00:00', '2025-06-02 09:15:00', null, 0.00, 'PickedUp').
car_rental('RENT0043', 'TRANS0013', '2025-06-03 10:00:00', '2025-06-05 10:00:00', null, null, 0.00, 'Reserved').
car_rental('RENT0044', 'TRANS0014', '2025-06-04 11:00:00', '2025-06-06 11:00:00', null, null, 0.00, 'Cancelled').
car_rental('RENT0045', 'TRANS0015', '2025-06-05 12:00:00', '2025-06-07 12:00:00', '2025-06-05 12:05:00', '2025-06-07 12:10:00', 180.00, 'Returned').
car_rental('RENT0046', 'TRANS0016', '2025-06-06 13:00:00', '2025-06-08 13:00:00', null, null, 0.00, 'Reserved').
car_rental('RENT0047', 'TRANS0017', '2025-06-07 14:00:00', '2025-06-09 14:00:00', null, null, 0.00, 'Cancelled').
car_rental('RENT0048', 'TRANS0018', '2025-06-08 15:00:00', '2025-06-10 15:00:00', '2025-06-08 15:00:00', null, 0.00, 'PickedUp').
car_rental('RENT0049', 'TRANS0019', '2025-06-09 16:00:00', '2025-06-11 16:00:00', null, null, 0.00, 'Reserved').
car_rental('RENT0050', 'TRANS0020', '2025-06-10 17:00:00', '2025-06-12 17:00:00', null, null, 0.00, 'Cancelled').

% accident/6 (30 registros)
% accident(AccidentID, TransportationID, OccurrenceTime, SeverityLevel, DESCRIPTION, STATUS).
accident('ACC0001', 'TRANS0001', '2024-05-10 14:30:00', 2, 'Minor fender bender in parking lot.', 'Resolved').
accident('ACC0002', 'TRANS0005', '2023-12-22 08:15:00', 3, 'Rear-end collision during rush hour.', 'Investigating').
accident('ACC0003', 'TRANS0007', '2024-03-05 19:50:00', 1, 'Scratched in a tight parking spot.', 'Archived').
accident('ACC0004', 'TRANS0009', '2023-10-17 11:40:00', 4, 'Involved in a multi-vehicle pile-up.', 'Investigating').
accident('ACC0005', 'TRANS0012', '2024-02-01 22:10:00', 2, 'Side impact at intersection.', 'Reported').
accident('ACC0006', 'TRANS0015', '2023-09-12 16:05:00', 1, 'Broken tail light from minor bump.', 'Resolved').
accident('ACC0007', 'TRANS0018', '2024-04-09 07:45:00', 3, 'Collision with cyclist.', 'Investigating').
accident('ACC0008', 'TRANS0020', '2023-11-03 13:25:00', 2, 'Minor accident in garage.', 'Archived').
accident('ACC0009', 'TRANS0023', '2024-01-18 17:00:00', 3, 'Highway crash due to poor visibility.', 'Investigating').
accident('ACC0010', 'TRANS0026', '2023-08-24 12:50:00', 5, 'Severe accident during storm.', 'Investigating').
accident('ACC0011', 'TRANS0202', '2023-07-30 06:00:00', 4, 'Engine failure in open sea.', 'Resolved').
accident('ACC0012', 'TRANS0205', '2023-06-18 15:35:00', 2, 'Docking collision with another ship.', 'Reported').
accident('ACC0013', 'TRANS0208', '2024-03-02 20:15:00', 1, 'Minor leak in lower hull.', 'Archived').
accident('ACC0014', 'TRANS0210', '2023-05-27 09:10:00', 3, 'Container lost during storm.', 'Investigating').
accident('ACC0015', 'TRANS0302', '2023-10-14 21:00:00', 5, 'Emergency landing due to engine failure.', 'Investigating').
accident('ACC0016', 'TRANS0309', '2024-01-05 05:30:00', 2, 'Bird strike on descent.', 'Resolved').
accident('ACC0017', 'TRANS0401', '2023-11-21 04:45:00', 3, 'Brake failure at station.', 'Reported').
accident('ACC0018', 'TRANS0406', '2024-02-11 12:00:00', 2, 'Signal miscommunication caused delay.', 'Archived').
accident('ACC0019', 'TRANS0413', '2023-09-19 18:30:00', 4, 'Derailment at junction.', 'Investigating').
accident('ACC0020', 'TRANS0503', '2023-08-07 10:20:00', 2, 'Minor collision with car.', 'Resolved').
accident('ACC0021', 'TRANS0508', '2023-12-10 09:50:00', 1, 'Passenger slip and fall.', 'Reported').
accident('ACC0022', 'TRANS0512', '2024-04-01 13:40:00', 3, 'Bus veered off slippery road.', 'Investigating').
accident('ACC0023', 'TRANS0515', '2024-03-25 06:30:00', 4, 'Hit by falling tree branch.', 'Investigating').
accident('ACC0024', 'TRANS0002', '2023-07-01 23:15:00', 1, 'Slight dent during parallel parking.', 'Resolved').
accident('ACC0025', 'TRANS0003', '2023-11-13 14:00:00', 2, 'Tire blowout on highway.', 'Archived').
accident('ACC0026', 'TRANS0004', '2024-01-29 10:45:00', 3, 'Accident while reversing.', 'Investigating').
accident('ACC0027', 'TRANS0011', '2024-03-12 16:10:00', 4, 'Rear-end collision.', 'Investigating').
accident('ACC0028', 'TRANS0014', '2023-10-03 20:30:00', 5, 'Major crash during rain.', 'Reported').
accident('ACC0029', 'TRANS0017', '2023-06-11 18:20:00', 1, 'Window broken by debris.', 'Archived').
accident('ACC0030', 'TRANS0022', '2024-02-28 08:55:00', 3, 'Crash during snowy conditions.', 'Investigating').

% travel_unit/4 (60 registros)
% travel_unit(TransportationID, UnitNumber, TYPE, Class).
travel_unit('TRANS0301', 'U001', 'Seat', 'Economy').
travel_unit('TRANS0301', 'U002', 'Seat', 'Economy').
travel_unit('TRANS0301', 'U003', 'Seat', 'Economy').
travel_unit('TRANS0301', 'U004', 'Seat', 'Economy').
travel_unit('TRANS0301', 'U005', 'Seat', 'Economy').
travel_unit('TRANS0301', 'U006', 'Seat', 'Economy').
travel_unit('TRANS0301', 'U007', 'Seat', 'Economy').
travel_unit('TRANS0301', 'U008', 'Seat', 'Economy').
travel_unit('TRANS0301', 'U009', 'Seat', 'Economy').
travel_unit('TRANS0301', 'U010', 'Seat', 'Economy').
travel_unit('TRANS0301', 'U011', 'Seat', 'Economy').
travel_unit('TRANS0301', 'U012', 'Seat', 'Economy').
travel_unit('TRANS0301', 'U013', 'Seat', 'Economy').
travel_unit('TRANS0301', 'U014', 'Seat', 'Economy').
travel_unit('TRANS0301', 'U015', 'Seat', 'Economy').
travel_unit('TRANS0301', 'U016', 'Seat', 'Business').
travel_unit('TRANS0301', 'U017', 'Seat', 'Business').
travel_unit('TRANS0301', 'U018', 'Seat', 'Business').
travel_unit('TRANS0301', 'U019', 'Seat', 'Business').
travel_unit('TRANS0301', 'U020', 'Seat', 'Business').
travel_unit('TRANS0301', 'U021', 'Seat', 'First').
travel_unit('TRANS0301', 'U022', 'Seat', 'First').
travel_unit('TRANS0301', 'U023', 'Seat', 'First').
travel_unit('TRANS0301', 'U024', 'Seat', 'First').
travel_unit('TRANS0301', 'U025', 'Seat', 'First').
travel_unit('TRANS0301', 'U026', 'Seat', 'Business').
travel_unit('TRANS0301', 'U027', 'Seat', 'Business').
travel_unit('TRANS0301', 'U028', 'Seat', 'Business').
travel_unit('TRANS0301', 'U029', 'Seat', 'Business').
travel_unit('TRANS0301', 'U030', 'Seat', 'Business').
travel_unit('TRANS0401', 'U101', 'Seat', 'Economy').
travel_unit('TRANS0401', 'U102', 'Seat', 'Economy').
travel_unit('TRANS0401', 'U103', 'Seat', 'Economy').
travel_unit('TRANS0401', 'U104', 'Seat', 'Economy').
travel_unit('TRANS0401', 'U105', 'Seat', 'Economy').
travel_unit('TRANS0401', 'U106', 'Seat', 'Economy').
travel_unit('TRANS0401', 'U107', 'Seat', 'Economy').
travel_unit('TRANS0401', 'U108', 'Seat', 'Economy').
travel_unit('TRANS0401', 'U109', 'Seat', 'Economy').
travel_unit('TRANS0401', 'U110', 'Seat', 'Economy').
travel_unit('TRANS0401', 'U111', 'Seat', 'Economy').
travel_unit('TRANS0401', 'U112', 'Seat', 'Economy').
travel_unit('TRANS0401', 'U113', 'Seat', 'Economy').
travel_unit('TRANS0401', 'U114', 'Seat', 'Economy').
travel_unit('TRANS0401', 'U115', 'Seat', 'Economy').
travel_unit('TRANS0401', 'U116', 'Seat', 'Business').
travel_unit('TRANS0401', 'U117', 'Seat', 'Business').
travel_unit('TRANS0401', 'U118', 'Seat', 'Business').
travel_unit('TRANS0401', 'U119', 'Seat', 'Business').
travel_unit('TRANS0401', 'U120', 'Seat', 'Business').
travel_unit('TRANS0401', 'U121', 'Seat', 'First').
travel_unit('TRANS0401', 'U122', 'Seat', 'First').
travel_unit('TRANS0401', 'U123', 'Seat', 'First').
travel_unit('TRANS0401', 'U124', 'Seat', 'First').
travel_unit('TRANS0401', 'U125', 'Seat', 'First').
travel_unit('TRANS0401', 'U126', 'Seat', 'Business').
travel_unit('TRANS0401', 'U127', 'Seat', 'Business').
travel_unit('TRANS0401', 'U128', 'Seat', 'Business').
travel_unit('TRANS0401', 'U129', 'Seat', 'Business').
travel_unit('TRANS0401', 'U130', 'Seat', 'Business').

% route/11 (479 registros)
% route(RouteID, ScheduledDeparture, ScheduledArrival, ActualDeparture, ActualArrival, STATUS, DelayReason, SourceLocationID, DestinationLocationID, BaseFare, TransportationID).
route('ROUTEBUS001', '2025-04-27 09:00:00', '2025-04-27 09:30:00', '2025-04-27 09:00:00', '2025-04-27 09:30:00', 'OnTime', null, 'LOC0001', 'LOC0002', 15, 'TRANS0501').
route('ROUTEBUS002', '2025-04-27 09:30:00', '2025-04-27 11:30:00', '2025-04-27 09:30:00', '2025-04-27 11:30:00', 'OnTime', null, 'LOC0002', 'LOC0003', 30, 'TRANS0501').
route('ROUTEBUS003', '2025-04-27 11:30:00', '2025-04-27 16:00:00', '2025-04-27 11:30:00', '2025-04-27 16:00:00', 'OnTime', null, 'LOC0003', 'LOC0004', 30, 'TRANS0501').
route('ROUTEBUS004', '2025-04-27 16:00:00', '2025-04-27 19:00:00', '2025-04-27 16:00:00', '2025-04-27 19:00:00', 'OnTime', null, 'LOC0004', 'LOC0005', 30, 'TRANS0501').
route('ROUTEBUS005', '2025-04-27 19:00:00', '2025-04-27 21:30:00', '2025-04-27 19:00:00', '2025-04-27 21:30:00', 'OnTime', null, 'LOC0005', 'LOC0006', 30, 'TRANS0501').
route('ROUTEBUS006', '2025-04-27 21:30:00', '2025-04-27 23:30:00', '2025-04-27 21:30:00', '2025-04-27 23:30:00', 'OnTime', null, 'LOC0006', 'LOC0007', 30, 'TRANS0501').
route('ROUTEBUS007', '2025-04-27 23:30:00', '2025-04-28 02:30:00', '2025-04-27 23:30:00', '2025-04-28 02:30:00', 'OnTime', null, 'LOC0007', 'LOC0008', 30, 'TRANS0501').
route('ROUTEBUS008', '2025-04-28 02:30:00', '2025-04-28 09:00:00', '2025-04-28 02:30:00', '2025-04-28 09:00:00', 'OnTime', null, 'LOC0008', 'LOC0009', 40, 'TRANS0501').
route('ROUTEBUS009', '2025-04-28 09:00:00', '2025-04-28 17:00:00', '2025-04-28 09:00:00', '2025-04-28 17:00:00', 'OnTime', null, 'LOC0009', 'LOC0010', 40, 'TRANS0501').
route('ROUTEBUS011', '2025-04-28 09:00:00', '2025-04-28 09:30:00', '2025-04-28 09:00:00', '2025-04-28 09:30:00', 'OnTime', null, 'LOC0001', 'LOC0002', 15, 'TRANS0502').
route('ROUTEBUS012', '2025-04-28 09:30:00', '2025-04-28 11:30:00', '2025-04-28 09:30:00', '2025-04-28 11:30:00', 'OnTime', null, 'LOC0002', 'LOC0003', 30, 'TRANS0502').
route('ROUTEBUS013', '2025-04-28 11:30:00', '2025-04-28 16:00:00', '2025-04-28 11:30:00', '2025-04-28 16:00:00', 'OnTime', null, 'LOC0003', 'LOC0004', 30, 'TRANS0502').
route('ROUTEBUS014', '2025-04-28 16:00:00', '2025-04-28 19:00:00', '2025-04-28 16:00:00', '2025-04-28 19:00:00', 'OnTime', null, 'LOC0004', 'LOC0005', 30, 'TRANS0502').
route('ROUTEBUS015', '2025-04-28 19:00:00', '2025-04-28 21:30:00', '2025-04-28 19:00:00', '2025-04-28 21:30:00', 'OnTime', null, 'LOC0005', 'LOC0006', 30, 'TRANS0502').
route('ROUTEBUS016', '2025-04-28 21:30:00', '2025-04-28 23:30:00', '2025-04-28 21:30:00', '2025-04-28 23:30:00', 'OnTime', null, 'LOC0006', 'LOC0007', 30, 'TRANS0502').
route('ROUTEBUS017', '2025-04-28 23:30:00', '2025-04-29 02:30:00', '2025-04-28 23:30:00', '2025-04-29 02:30:00', 'OnTime', null, 'LOC0007', 'LOC0008', 30, 'TRANS0502').
route('ROUTEBUS018', '2025-04-29 02:30:00', '2025-04-29 09:00:00', '2025-04-29 02:30:00', '2025-04-29 09:00:00', 'OnTime', null, 'LOC0008', 'LOC0009', 40, 'TRANS0502').
route('ROUTEBUS019', '2025-04-29 09:00:00', '2025-04-29 17:00:00', '2025-04-29 09:00:00', '2025-04-29 17:00:00', 'OnTime', null, 'LOC0009', 'LOC0010', 40, 'TRANS0502').
route('ROUTEBUS021', '2025-04-29 09:00:00', '2025-04-29 09:30:00', '2025-04-29 09:00:00', '2025-04-29 09:30:00', 'OnTime', null, 'LOC0001', 'LOC0002', 15, 'TRANS0503').
route('ROUTEBUS022', '2025-04-29 09:30:00', '2025-04-29 11:30:00', '2025-04-29 09:30:00', '2025-04-29 11:30:00', 'OnTime', null, 'LOC0002', 'LOC0003', 30, 'TRANS0503').
route('ROUTEBUS023', '2025-04-29 11:30:00', '2025-04-29 16:00:00', '2025-04-29 11:30:00', '2025-04-29 16:00:00', 'OnTime', null, 'LOC0003', 'LOC0004', 30, 'TRANS0503').
route('ROUTEBUS024', '2025-04-29 16:00:00', '2025-04-29 19:00:00', '2025-04-29 16:00:00', '2025-04-29 19:00:00', 'OnTime', null, 'LOC0004', 'LOC0005', 30, 'TRANS0503').
route('ROUTEBUS025', '2025-04-29 19:00:00', '2025-04-29 21:30:00', '2025-04-29 19:00:00', '2025-04-29 21:30:00', 'OnTime', null, 'LOC0005', 'LOC0006', 30, 'TRANS0503').
route('ROUTEBUS026', '2025-04-29 21:30:00', '2025-04-29 23:30:00', '2025-04-29 21:30:00', '2025-04-29 23:30:00', 'OnTime', null, 'LOC0006', 'LOC0007', 30, 'TRANS0503').
route('ROUTEBUS027', '2025-04-29 23:30:00', '2025-04-30 02:30:00', '2025-04-29 23:30:00', '2025-04-30 02:30:00', 'OnTime', null, 'LOC0007', 'LOC0008', 30, 'TRANS0503').
route('ROUTEBUS028', '2025-04-30 02:30:00', '2025-04-30 09:00:00', '2025-04-30 02:30:00', '2025-04-30 09:00:00', 'OnTime', null, 'LOC0008', 'LOC0009', 40, 'TRANS0503').
route('ROUTEBUS029', '2025-04-30 09:00:00', '2025-04-30 17:00:00', '2025-04-30 09:00:00', '2025-04-30 17:00:00', 'OnTime', null, 'LOC0009', 'LOC0010', 40, 'TRANS0503').
route('ROUTEBUS031', '2025-04-30 09:00:00', '2025-04-30 09:30:00', '2025-04-30 09:00:00', '2025-04-30 09:30:00', 'OnTime', null, 'LOC0001', 'LOC0002', 15, 'TRANS0504').
route('ROUTEBUS032', '2025-04-30 09:30:00', '2025-04-30 11:30:00', '2025-04-30 09:30:00', '2025-04-30 11:30:00', 'OnTime', null, 'LOC0002', 'LOC0003', 30, 'TRANS0504').
route('ROUTEBUS033', '2025-04-30 11:30:00', '2025-04-30 16:00:00', '2025-04-30 11:30:00', '2025-04-30 16:00:00', 'OnTime', null, 'LOC0003', 'LOC0004', 30, 'TRANS0504').
route('ROUTEBUS034', '2025-04-30 16:00:00', '2025-04-30 19:00:00', '2025-04-30 16:00:00', '2025-04-30 19:00:00', 'OnTime', null, 'LOC0004', 'LOC0005', 30, 'TRANS0504').
route('ROUTEBUS035', '2025-04-30 19:00:00', '2025-04-30 21:30:00', '2025-04-30 19:00:00', '2025-04-30 21:30:00', 'OnTime', null, 'LOC0005', 'LOC0006', 30, 'TRANS0504').
route('ROUTEBUS036', '2025-04-30 21:30:00', '2025-04-30 23:30:00', '2025-04-30 21:30:00', '2025-04-30 23:30:00', 'OnTime', null, 'LOC0006', 'LOC0007', 30, 'TRANS0504').
route('ROUTEBUS037', '2025-04-30 23:30:00', '2025-05-01 02:30:00', '2025-04-30 23:30:00', '2025-05-01 02:30:00', 'OnTime', null, 'LOC0007', 'LOC0008', 30, 'TRANS0504').
route('ROUTEBUS038', '2025-05-01 02:30:00', '2025-05-01 09:00:00', '2025-05-01 02:30:00', '2025-05-01 09:00:00', 'OnTime', null, 'LOC0008', 'LOC0009', 40, 'TRANS0504').
route('ROUTEBUS039', '2025-05-01 09:00:00', '2025-05-01 17:00:00', '2025-05-01 09:00:00', '2025-05-01 17:00:00', 'OnTime', null, 'LOC0009', 'LOC0010', 40, 'TRANS0504').
route('ROUTEBUS041', '2025-05-01 09:00:00', '2025-05-01 09:30:00', '2025-05-01 09:00:00', '2025-05-01 09:30:00', 'OnTime', null, 'LOC0001', 'LOC0002', 15, 'TRANS0505').
route('ROUTEBUS042', '2025-05-01 09:30:00', '2025-05-01 11:30:00', '2025-05-01 09:30:00', '2025-05-01 11:30:00', 'OnTime', null, 'LOC0002', 'LOC0003', 30, 'TRANS0505').
route('ROUTEBUS043', '2025-05-01 11:30:00', '2025-05-01 16:00:00', '2025-05-01 11:30:00', '2025-05-01 16:00:00', 'OnTime', null, 'LOC0003', 'LOC0004', 30, 'TRANS0505').
route('ROUTEBUS044', '2025-05-01 16:00:00', '2025-05-01 19:00:00', '2025-05-01 16:00:00', '2025-05-01 19:00:00', 'OnTime', null, 'LOC0004', 'LOC0005', 30, 'TRANS0505').
route('ROUTEBUS045', '2025-05-01 19:00:00', '2025-05-01 21:30:00', '2025-05-01 19:00:00', '2025-05-01 21:30:00', 'OnTime', null, 'LOC0005', 'LOC0006', 30, 'TRANS0505').
route('ROUTEBUS046', '2025-05-01 21:30:00', '2025-05-01 23:30:00', '2025-05-01 21:30:00', '2025-05-01 23:30:00', 'OnTime', null, 'LOC0006', 'LOC0007', 30, 'TRANS0505').
route('ROUTEBUS047', '2025-05-01 23:30:00', '2025-05-02 02:30:00', '2025-05-01 23:30:00', '2025-05-02 02:30:00', 'OnTime', null, 'LOC0007', 'LOC0008', 30, 'TRANS0505').
route('ROUTEBUS048', '2025-05-02 02:30:00', '2025-05-02 09:00:00', '2025-05-02 02:30:00', '2025-05-02 09:00:00', 'OnTime', null, 'LOC0008', 'LOC0009', 40, 'TRANS0505').
route('ROUTEBUS049', '2025-05-02 09:00:00', '2025-05-02 17:00:00', '2025-05-02 09:00:00', '2025-05-02 17:00:00', 'OnTime', null, 'LOC0009', 'LOC0010', 40, 'TRANS0505').
route('ROUTEBUS051', '2025-05-02 09:00:00', '2025-05-02 09:30:00', '2025-05-02 09:00:00', '2025-05-02 09:30:00', 'OnTime', null, 'LOC0001', 'LOC0002', 15, 'TRANS0506').
route('ROUTEBUS052', '2025-05-02 09:30:00', '2025-05-02 11:30:00', '2025-05-02 09:30:00', '2025-05-02 11:30:00', 'OnTime', null, 'LOC0002', 'LOC0003', 30, 'TRANS0506').
route('ROUTEBUS053', '2025-05-02 11:30:00', '2025-05-02 16:00:00', '2025-05-02 11:30:00', '2025-05-02 16:00:00', 'OnTime', null, 'LOC0003', 'LOC0004', 30, 'TRANS0506').
route('ROUTEBUS054', '2025-05-02 16:00:00', '2025-05-02 19:00:00', '2025-05-02 16:00:00', '2025-05-02 19:00:00', 'OnTime', null, 'LOC0004', 'LOC0005', 30, 'TRANS0506').
route('ROUTEBUS055', '2025-05-02 19:00:00', '2025-05-02 21:30:00', '2025-05-02 19:00:00', '2025-05-02 21:30:00', 'OnTime', null, 'LOC0005', 'LOC0006', 30, 'TRANS0506').
route('ROUTEBUS056', '2025-05-02 21:30:00', '2025-05-02 23:30:00', '2025-05-02 21:30:00', '2025-05-02 23:30:00', 'OnTime', null, 'LOC0006', 'LOC0007', 30, 'TRANS0506').
route('ROUTEBUS057', '2025-05-02 23:30:00', '2025-05-03 02:30:00', '2025-05-02 23:30:00', '2025-05-03 02:30:00', 'OnTime', null, 'LOC0007', 'LOC0008', 30, 'TRANS0506').
route('ROUTEBUS058', '2025-05-03 02:30:00', '2025-05-03 09:00:00', '2025-05-03 02:30:00', '2025-05-03 09:00:00', 'OnTime', null, 'LOC0008', 'LOC0009', 40, 'TRANS0506').
route('ROUTEBUS059', '2025-05-03 09:00:00', '2025-05-03 17:00:00', '2025-05-03 09:00:00', '2025-05-03 17:00:00', 'OnTime', null, 'LOC0009', 'LOC0010', 40, 'TRANS0506').
route('ROUTEBUS061', '2025-05-03 09:00:00', '2025-05-03 09:30:00', '2025-05-03 09:00:00', '2025-05-03 09:30:00', 'OnTime', null, 'LOC0001', 'LOC0002', 15, 'TRANS0507').
route('ROUTEBUS062', '2025-05-03 09:30:00', '2025-05-03 11:30:00', '2025-05-03 09:30:00', '2025-05-03 11:30:00', 'OnTime', null, 'LOC0002', 'LOC0003', 30, 'TRANS0507').
route('ROUTEBUS063', '2025-05-03 11:30:00', '2025-05-03 16:00:00', '2025-05-03 11:30:00', '2025-05-03 16:00:00', 'OnTime', null, 'LOC0003', 'LOC0004', 30, 'TRANS0507').
route('ROUTEBUS064', '2025-05-03 16:00:00', '2025-05-03 19:00:00', '2025-05-03 16:00:00', '2025-05-03 19:00:00', 'OnTime', null, 'LOC0004', 'LOC0005', 30, 'TRANS0507').
route('ROUTEBUS065', '2025-05-03 19:00:00', '2025-05-03 21:30:00', '2025-05-03 19:00:00', '2025-05-03 21:30:00', 'OnTime', null, 'LOC0005', 'LOC0006', 30, 'TRANS0507').
route('ROUTEBUS066', '2025-05-03 21:30:00', '2025-05-03 23:30:00', '2025-05-03 21:30:00', '2025-05-03 23:30:00', 'OnTime', null, 'LOC0006', 'LOC0007', 30, 'TRANS0507').
route('ROUTEBUS067', '2025-05-03 23:30:00', '2025-05-04 02:30:00', '2025-05-03 23:30:00', '2025-05-04 02:30:00', 'OnTime', null, 'LOC0007', 'LOC0008', 30, 'TRANS0507').
route('ROUTEBUS068', '2025-05-04 02:30:00', '2025-05-04 09:00:00', '2025-05-04 02:30:00', '2025-05-04 09:00:00', 'OnTime', null, 'LOC0008', 'LOC0009', 40, 'TRANS0507').
route('ROUTEBUS069', '2025-05-04 09:00:00', '2025-05-04 17:00:00', '2025-05-04 09:00:00', '2025-05-04 17:00:00', 'OnTime', null, 'LOC0009', 'LOC0010', 40, 'TRANS0507').
route('ROUTEBUS071', '2025-04-27 10:00:00', '2025-04-27 18:00:00', '2025-04-27 10:00:00', '2025-04-27 18:00:00', 'OnTime', null, 'LOC0010', 'LOC0009', 40, 'TRANS0508').
route('ROUTEBUS072', '2025-04-27 18:00:00', '2025-04-28 00:30:00', '2025-04-27 18:00:00', '2025-04-28 00:30:00', 'OnTime', null, 'LOC0009', 'LOC0008', 40, 'TRANS0508').
route('ROUTEBUS073', '2025-04-28 00:30:00', '2025-04-28 03:30:00', '2025-04-28 00:30:00', '2025-04-28 03:30:00', 'OnTime', null, 'LOC0008', 'LOC0007', 30, 'TRANS0508').
route('ROUTEBUS074', '2025-04-28 03:30:00', '2025-04-28 05:30:00', '2025-04-28 03:30:00', '2025-04-28 05:30:00', 'OnTime', null, 'LOC0007', 'LOC0006', 30, 'TRANS0508').
route('ROUTEBUS075', '2025-04-28 05:30:00', '2025-04-28 08:00:00', '2025-04-28 05:30:00', '2025-04-28 08:00:00', 'OnTime', null, 'LOC0006', 'LOC0005', 30, 'TRANS0508').
route('ROUTEBUS076', '2025-04-28 08:00:00', '2025-04-28 11:00:00', '2025-04-28 08:00:00', '2025-04-28 11:00:00', 'OnTime', null, 'LOC0005', 'LOC0004', 30, 'TRANS0508').
route('ROUTEBUS077', '2025-04-28 11:00:00', '2025-04-28 15:30:00', '2025-04-28 11:00:00', '2025-04-28 15:30:00', 'OnTime', null, 'LOC0004', 'LOC0003', 30, 'TRANS0508').
route('ROUTEBUS078', '2025-04-28 15:30:00', '2025-04-28 17:30:00', '2025-04-28 15:30:00', '2025-04-28 17:30:00', 'OnTime', null, 'LOC0003', 'LOC0002', 30, 'TRANS0508').
route('ROUTEBUS079', '2025-04-28 17:30:00', '2025-04-28 18:00:00', '2025-04-28 17:30:00', '2025-04-28 18:00:00', 'OnTime', null, 'LOC0002', 'LOC0001', 15, 'TRANS0508').
route('ROUTEBUS081', '2025-04-28 10:00:00', '2025-04-28 18:00:00', '2025-04-28 10:00:00', '2025-04-28 18:00:00', 'OnTime', null, 'LOC0010', 'LOC0009', 40, 'TRANS0509').
route('ROUTEBUS082', '2025-04-28 18:00:00', '2025-04-29 00:30:00', '2025-04-28 18:00:00', '2025-04-29 00:30:00', 'OnTime', null, 'LOC0009', 'LOC0008', 40, 'TRANS0509').
route('ROUTEBUS083', '2025-04-29 00:30:00', '2025-04-29 03:30:00', '2025-04-29 00:30:00', '2025-04-29 03:30:00', 'OnTime', null, 'LOC0008', 'LOC0007', 30, 'TRANS0509').
route('ROUTEBUS084', '2025-04-29 03:30:00', '2025-04-29 05:30:00', '2025-04-29 03:30:00', '2025-04-29 05:30:00', 'OnTime', null, 'LOC0007', 'LOC0006', 30, 'TRANS0509').
route('ROUTEBUS085', '2025-04-29 05:30:00', '2025-04-29 08:00:00', '2025-04-29 05:30:00', '2025-04-29 08:00:00', 'OnTime', null, 'LOC0006', 'LOC0005', 30, 'TRANS0509').
route('ROUTEBUS086', '2025-04-29 08:00:00', '2025-04-29 11:00:00', '2025-04-29 08:00:00', '2025-04-29 11:00:00', 'OnTime', null, 'LOC0005', 'LOC0004', 30, 'TRANS0509').
route('ROUTEBUS087', '2025-04-29 11:00:00', '2025-04-29 15:30:00', '2025-04-29 11:00:00', '2025-04-29 15:30:00', 'OnTime', null, 'LOC0004', 'LOC0003', 30, 'TRANS0509').
route('ROUTEBUS088', '2025-04-29 15:30:00', '2025-04-29 17:30:00', '2025-04-29 15:30:00', '2025-04-29 17:30:00', 'OnTime', null, 'LOC0003', 'LOC0002', 30, 'TRANS0509').
route('ROUTEBUS089', '2025-04-29 17:30:00', '2025-04-29 18:00:00', '2025-04-29 17:30:00', '2025-04-29 18:00:00', 'OnTime', null, 'LOC0002', 'LOC0001', 15, 'TRANS0509').
route('ROUTEBUS091', '2025-04-30 10:00:00', '2025-04-30 18:00:00', '2025-04-30 10:00:00', '2025-04-30 18:00:00', 'OnTime', null, 'LOC0010', 'LOC0009', 40, 'TRANS0510').
route('ROUTEBUS092', '2025-04-30 18:00:00', '2025-05-01 00:30:00', '2025-04-30 18:00:00', '2025-05-01 00:30:00', 'OnTime', null, 'LOC0009', 'LOC0008', 40, 'TRANS0510').
route('ROUTEBUS093', '2025-05-01 00:30:00', '2025-05-01 03:30:00', '2025-05-01 00:30:00', '2025-05-01 03:30:00', 'OnTime', null, 'LOC0008', 'LOC0007', 30, 'TRANS0510').
route('ROUTEBUS094', '2025-05-01 03:30:00', '2025-05-01 05:30:00', '2025-05-01 03:30:00', '2025-05-01 05:30:00', 'OnTime', null, 'LOC0007', 'LOC0006', 30, 'TRANS0510').
route('ROUTEBUS095', '2025-05-01 05:30:00', '2025-05-01 08:00:00', '2025-05-01 05:30:00', '2025-05-01 08:00:00', 'OnTime', null, 'LOC0006', 'LOC0005', 30, 'TRANS0510').
route('ROUTEBUS096', '2025-05-01 08:00:00', '2025-05-01 11:00:00', '2025-05-01 08:00:00', '2025-05-01 11:00:00', 'OnTime', null, 'LOC0005', 'LOC0004', 30, 'TRANS0510').
route('ROUTEBUS097', '2025-05-01 11:00:00', '2025-05-01 15:30:00', '2025-05-01 11:00:00', '2025-05-01 15:30:00', 'OnTime', null, 'LOC0004', 'LOC0003', 30, 'TRANS0510').
route('ROUTEBUS098', '2025-05-01 15:30:00', '2025-05-01 17:30:00', '2025-05-01 15:30:00', '2025-05-01 17:30:00', 'OnTime', null, 'LOC0003', 'LOC0002', 30, 'TRANS0510').
route('ROUTEBUS099', '2025-05-01 17:30:00', '2025-05-01 18:00:00', '2025-05-01 17:30:00', '2025-05-01 18:00:00', 'OnTime', null, 'LOC0002', 'LOC0001', 15, 'TRANS0510').
route('ROUTEBUS101', '2025-05-01 10:00:00', '2025-05-01 18:00:00', '2025-05-01 10:00:00', '2025-05-01 18:00:00', 'OnTime', null, 'LOC0010', 'LOC0009', 40, 'TRANS0511').
route('ROUTEBUS102', '2025-05-01 18:00:00', '2025-05-02 00:30:00', '2025-05-01 18:00:00', '2025-05-02 00:30:00', 'OnTime', null, 'LOC0009', 'LOC0008', 40, 'TRANS0511').
route('ROUTEBUS103', '2025-05-02 00:30:00', '2025-05-02 03:30:00', '2025-05-02 00:30:00', '2025-05-02 03:30:00', 'OnTime', null, 'LOC0008', 'LOC0007', 30, 'TRANS0511').
route('ROUTEBUS104', '2025-05-02 03:30:00', '2025-05-02 05:30:00', '2025-05-02 03:30:00', '2025-05-02 05:30:00', 'OnTime', null, 'LOC0007', 'LOC0006', 30, 'TRANS0511').
route('ROUTEBUS105', '2025-05-02 05:30:00', '2025-05-02 08:00:00', '2025-05-02 05:30:00', '2025-05-02 08:00:00', 'OnTime', null, 'LOC0006', 'LOC0005', 30, 'TRANS0511').
route('ROUTEBUS106', '2025-05-02 08:00:00', '2025-05-02 11:00:00', '2025-05-02 08:00:00', '2025-05-02 11:00:00', 'OnTime', null, 'LOC0005', 'LOC0004', 30, 'TRANS0511').
route('ROUTEBUS107', '2025-05-02 11:00:00', '2025-05-02 15:30:00', '2025-05-02 11:00:00', '2025-05-02 15:30:00', 'OnTime', null, 'LOC0004', 'LOC0003', 30, 'TRANS0511').
route('ROUTEBUS108', '2025-05-02 15:30:00', '2025-05-02 17:30:00', '2025-05-02 15:30:00', '2025-05-02 17:30:00', 'OnTime', null, 'LOC0003', 'LOC0002', 30, 'TRANS0511').
route('ROUTEBUS109', '2025-05-02 17:30:00', '2025-05-02 18:00:00', '2025-05-02 17:30:00', '2025-05-02 18:00:00', 'OnTime', null, 'LOC0002', 'LOC0001', 15, 'TRANS0511').
route('ROUTEBUS111', '2025-05-02 10:00:00', '2025-05-02 18:00:00', '2025-05-02 10:00:00', '2025-05-02 18:00:00', 'OnTime', null, 'LOC0010', 'LOC0009', 40, 'TRANS0512').
route('ROUTEBUS112', '2025-05-02 18:00:00', '2025-05-03 00:30:00', '2025-05-02 18:00:00', '2025-05-03 00:30:00', 'OnTime', null, 'LOC0009', 'LOC0008', 40, 'TRANS0512').
route('ROUTEBUS113', '2025-05-03 00:30:00', '2025-05-03 03:30:00', '2025-05-03 00:30:00', '2025-05-03 03:30:00', 'OnTime', null, 'LOC0008', 'LOC0007', 30, 'TRANS0512').
route('ROUTEBUS114', '2025-05-03 03:30:00', '2025-05-03 05:30:00', '2025-05-03 03:30:00', '2025-05-03 05:30:00', 'OnTime', null, 'LOC0007', 'LOC0006', 30, 'TRANS0512').
route('ROUTEBUS115', '2025-05-03 05:30:00', '2025-05-03 08:00:00', '2025-05-03 05:30:00', '2025-05-03 08:00:00', 'OnTime', null, 'LOC0006', 'LOC0005', 30, 'TRANS0512').
route('ROUTEBUS116', '2025-05-03 08:00:00', '2025-05-03 11:00:00', '2025-05-03 08:00:00', '2025-05-03 11:00:00', 'OnTime', null, 'LOC0005', 'LOC0004', 30, 'TRANS0512').
route('ROUTEBUS117', '2025-05-03 11:00:00', '2025-05-03 15:30:00', '2025-05-03 11:00:00', '2025-05-03 15:30:00', 'OnTime', null, 'LOC0004', 'LOC0003', 30, 'TRANS0512').
route('ROUTEBUS118', '2025-05-03 15:30:00', '2025-05-03 17:30:00', '2025-05-03 15:30:00', '2025-05-03 17:30:00', 'OnTime', null, 'LOC0003', 'LOC0002', 30, 'TRANS0512').
route('ROUTEBUS119', '2025-05-03 17:30:00', '2025-05-03 18:00:00', '2025-05-03 17:30:00', '2025-05-03 18:00:00', 'OnTime', null, 'LOC0002', 'LOC0001', 15, 'TRANS0512').
route('ROUTEBUS121', '2025-05-03 10:00:00', '2025-05-03 18:00:00', '2025-05-03 10:00:00', '2025-05-03 18:00:00', 'OnTime', null, 'LOC0010', 'LOC0009', 40, 'TRANS0513').
route('ROUTEBUS122', '2025-05-03 18:00:00', '2025-05-04 00:30:00', '2025-05-03 18:00:00', '2025-05-04 00:30:00', 'OnTime', null, 'LOC0009', 'LOC0008', 40, 'TRANS0513').
route('ROUTEBUS123', '2025-05-04 00:30:00', '2025-05-04 03:30:00', '2025-05-04 00:30:00', '2025-05-04 03:30:00', 'OnTime', null, 'LOC0008', 'LOC0007', 30, 'TRANS0513').
route('ROUTEBUS124', '2025-05-04 03:30:00', '2025-05-04 05:30:00', '2025-05-04 03:30:00', '2025-05-04 05:30:00', 'OnTime', null, 'LOC0007', 'LOC0006', 30, 'TRANS0513').
route('ROUTEBUS125', '2025-05-04 05:30:00', '2025-05-04 08:00:00', '2025-05-04 05:30:00', '2025-05-04 08:00:00', 'OnTime', null, 'LOC0006', 'LOC0005', 30, 'TRANS0513').
route('ROUTEBUS126', '2025-05-04 08:00:00', '2025-05-04 11:00:00', '2025-05-04 08:00:00', '2025-05-04 11:00:00', 'OnTime', null, 'LOC0005', 'LOC0004', 30, 'TRANS0513').
route('ROUTEBUS127', '2025-05-04 11:00:00', '2025-05-04 15:30:00', '2025-05-04 11:00:00', '2025-05-04 15:30:00', 'OnTime', null, 'LOC0004', 'LOC0003', 30, 'TRANS0513').
route('ROUTEBUS128', '2025-05-04 15:30:00', '2025-05-04 17:30:00', '2025-05-04 15:30:00', '2025-05-04 17:30:00', 'OnTime', null, 'LOC0003', 'LOC0002', 30, 'TRANS0513').
route('ROUTEBUS129', '2025-05-04 17:30:00', '2025-05-04 18:00:00', '2025-05-04 17:30:00', '2025-05-04 18:00:00', 'OnTime', null, 'LOC0002', 'LOC0001', 15, 'TRANS0513').
route('ROUTEBUS131', '2023-05-03 10:00:00', '2023-05-03 18:00:00', '2023-05-03 10:00:00', '2023-05-03 18:00:00', 'Delayed', 'Weather', 'LOC0010', 'LOC0009', 40, 'TRANS0513').
route('ROUTEBUS132', '2023-05-03 18:00:00', '2023-05-04 00:30:00', '2023-05-03 18:00:00', '2023-05-04 00:30:00', 'Delayed', 'Weather', 'LOC0009', 'LOC0008', 40, 'TRANS0513').
route('ROUTEBUS133', '2023-05-04 00:30:00', '2023-05-04 03:30:00', '2023-05-04 00:30:00', '2023-05-04 03:30:00', 'Delayed', 'Weather', 'LOC0008', 'LOC0007', 30, 'TRANS0513').
route('ROUTEBUS134', '2023-05-04 03:30:00', '2023-05-04 05:30:00', '2023-05-04 03:30:00', '2023-05-04 05:30:00', 'Delayed', 'Weather', 'LOC0007', 'LOC0006', 30, 'TRANS0513').
route('ROUTEBUS135', '2023-05-04 05:30:00', '2023-05-04 08:00:00', '2023-05-04 05:30:00', '2023-05-04 08:00:00', 'Delayed', 'Weather', 'LOC0006', 'LOC0005', 30, 'TRANS0513').
route('ROUTEBUS136', '2023-05-04 08:00:00', '2023-05-04 11:00:00', '2023-05-04 08:00:00', '2023-05-04 11:00:00', 'Delayed', 'Weather', 'LOC0005', 'LOC0004', 30, 'TRANS0513').
route('ROUTEBUS137', '2023-05-04 11:00:00', '2023-05-04 15:30:00', '2023-05-04 11:00:00', '2023-05-04 15:30:00', 'Delayed', 'Weather', 'LOC0004', 'LOC0003', 30, 'TRANS0513').
route('ROUTEBUS138', '2023-05-04 15:30:00', '2023-05-04 17:30:00', '2023-05-04 15:30:00', '2023-05-04 17:30:00', 'Delayed', 'Weather', 'LOC0003', 'LOC0002', 30, 'TRANS0513').
route('ROUTEBUS139', '2023-05-04 17:30:00', '2023-05-04 18:00:00', '2023-05-04 17:30:00', '2023-05-04 18:00:00', 'Delayed', 'Weather', 'LOC0002', 'LOC0001', 15, 'TRANS0513').
route('ROUTETRAIN001', '2025-04-27 10:00:00', '2025-04-27 11:00:00', '2025-04-27 10:00:00', '2025-04-27 11:00:00', 'OnTime', null, 'LOC0001', 'LOC0002', 15, 'TRANS0401').
route('ROUTETRAIN002', '2025-04-27 11:20:00', '2025-04-27 14:20:00', '2025-04-27 11:20:00', '2025-04-27 14:20:00', 'OnTime', null, 'LOC0002', 'LOC0003', 20, 'TRANS0401').
route('ROUTETRAIN003', '2025-04-27 14:40:00', '2025-04-27 16:10:00', '2025-04-27 14:40:00', '2025-04-27 16:10:00', 'OnTime', null, 'LOC0003', 'LOC0004', 15, 'TRANS0401').
route('ROUTETRAIN004', '2025-04-27 16:30:00', '2025-04-27 17:30:00', '2025-04-27 16:30:00', '2025-04-27 17:30:00', 'OnTime', null, 'LOC0004', 'LOC0005', 15, 'TRANS0401').
route('ROUTETRAIN005', '2025-04-27 17:50:00', '2025-04-27 19:50:00', '2025-04-27 17:50:00', '2025-04-27 19:50:00', 'OnTime', null, 'LOC0005', 'LOC0006', 30, 'TRANS0401').
route('ROUTETRAIN006', '2025-04-27 20:10:00', '2025-04-27 22:10:00', '2025-04-27 20:10:00', '2025-04-27 22:10:00', 'OnTime', null, 'LOC0006', 'LOC0007', 30, 'TRANS0401').
route('ROUTETRAIN007', '2025-04-27 22:30:00', '2025-04-28 03:30:00', '2025-04-27 22:30:00', '2025-04-28 03:30:00', 'OnTime', null, 'LOC0007', 'LOC0008', 40, 'TRANS0401').
route('ROUTETRAIN008', '2025-04-28 03:50:00', '2025-04-28 09:50:00', '2025-04-28 03:50:00', '2025-04-28 09:50:00', 'OnTime', null, 'LOC0008', 'LOC0009', 50, 'TRANS0401').
route('ROUTETRAIN009', '2025-04-28 10:10:00', '2025-04-28 16:40:00', '2025-04-28 10:10:00', '2025-04-28 16:40:00', 'OnTime', null, 'LOC0009', 'LOC0010', 50, 'TRANS0401').
route('ROUTETRAIN011', '2025-04-28 10:00:00', '2025-04-28 11:00:00', '2025-04-28 10:00:00', '2025-04-28 11:00:00', 'OnTime', null, 'LOC0001', 'LOC0002', 15, 'TRANS0402').
route('ROUTETRAIN012', '2025-04-28 11:20:00', '2025-04-28 14:20:00', '2025-04-28 11:20:00', '2025-04-28 14:20:00', 'OnTime', null, 'LOC0002', 'LOC0003', 20, 'TRANS0402').
route('ROUTETRAIN013', '2025-04-28 14:40:00', '2025-04-28 16:10:00', '2025-04-28 14:40:00', '2025-04-28 16:10:00', 'OnTime', null, 'LOC0003', 'LOC0004', 15, 'TRANS0402').
route('ROUTETRAIN014', '2025-04-28 16:30:00', '2025-04-28 17:30:00', '2025-04-28 16:30:00', '2025-04-28 17:30:00', 'OnTime', null, 'LOC0004', 'LOC0005', 15, 'TRANS0402').
route('ROUTETRAIN015', '2025-04-28 17:50:00', '2025-04-28 19:50:00', '2025-04-28 17:50:00', '2025-04-28 19:50:00', 'OnTime', null, 'LOC0005', 'LOC0006', 30, 'TRANS0402').
route('ROUTETRAIN016', '2025-04-28 20:10:00', '2025-04-28 22:10:00', '2025-04-28 20:10:00', '2025-04-28 22:10:00', 'OnTime', null, 'LOC0006', 'LOC0007', 30, 'TRANS0402').
route('ROUTETRAIN017', '2025-04-28 22:30:00', '2025-04-29 03:30:00', '2025-04-28 22:30:00', '2025-04-29 03:30:00', 'OnTime', null, 'LOC0007', 'LOC0008', 40, 'TRANS0402').
route('ROUTETRAIN018', '2025-04-29 03:50:00', '2025-04-29 09:50:00', '2025-04-29 03:50:00', '2025-04-29 09:50:00', 'OnTime', null, 'LOC0008', 'LOC0009', 50, 'TRANS0402').
route('ROUTETRAIN019', '2025-04-29 10:10:00', '2025-04-29 16:40:00', '2025-04-29 10:10:00', '2025-04-29 16:40:00', 'OnTime', null, 'LOC0009', 'LOC0010', 50, 'TRANS0402').
route('ROUTETRAIN021', '2025-04-29 10:00:00', '2025-04-29 11:00:00', '2025-04-29 10:00:00', '2025-04-29 11:00:00', 'OnTime', null, 'LOC0001', 'LOC0002', 15, 'TRANS0403').
route('ROUTETRAIN022', '2025-04-29 11:20:00', '2025-04-29 14:20:00', '2025-04-29 11:20:00', '2025-04-29 14:20:00', 'OnTime', null, 'LOC0002', 'LOC0003', 20, 'TRANS0403').
route('ROUTETRAIN023', '2025-04-29 14:40:00', '2025-04-29 16:10:00', '2025-04-29 14:40:00', '2025-04-29 16:10:00', 'OnTime', null, 'LOC0003', 'LOC0004', 15, 'TRANS0403').
route('ROUTETRAIN024', '2025-04-29 16:30:00', '2025-04-29 17:30:00', '2025-04-29 16:30:00', '2025-04-29 17:30:00', 'OnTime', null, 'LOC0004', 'LOC0005', 15, 'TRANS0403').
route('ROUTETRAIN025', '2025-04-29 17:50:00', '2025-04-29 19:50:00', '2025-04-29 17:50:00', '2025-04-29 19:50:00', 'OnTime', null, 'LOC0005', 'LOC0006', 30, 'TRANS0403').
route('ROUTETRAIN026', '2025-04-29 20:10:00', '2025-04-29 22:10:00', '2025-04-29 20:10:00', '2025-04-29 22:10:00', 'OnTime', null, 'LOC0006', 'LOC0007', 30, 'TRANS0403').
route('ROUTETRAIN027', '2025-04-29 22:30:00', '2025-04-30 03:30:00', '2025-04-29 22:30:00', '2025-04-30 03:30:00', 'OnTime', null, 'LOC0007', 'LOC0008', 40, 'TRANS0403').
route('ROUTETRAIN028', '2025-04-30 03:50:00', '2025-04-30 09:50:00', '2025-04-30 03:50:00', '2025-04-30 09:50:00', 'OnTime', null, 'LOC0008', 'LOC0009', 50, 'TRANS0403').
route('ROUTETRAIN029', '2025-04-30 10:10:00', '2025-04-30 16:40:00', '2025-04-30 10:10:00', '2025-04-30 16:40:00', 'OnTime', null, 'LOC0009', 'LOC0010', 50, 'TRANS0403').
route('ROUTETRAIN031', '2025-04-30 10:00:00', '2025-04-30 11:00:00', '2025-04-30 10:00:00', '2025-04-30 11:00:00', 'OnTime', null, 'LOC0001', 'LOC0002', 15, 'TRANS0404').
route('ROUTETRAIN032', '2025-04-30 11:20:00', '2025-04-30 14:20:00', '2025-04-30 11:20:00', '2025-04-30 14:20:00', 'OnTime', null, 'LOC0002', 'LOC0003', 20, 'TRANS0404').
route('ROUTETRAIN033', '2025-04-30 14:40:00', '2025-04-30 16:10:00', '2025-04-30 14:40:00', '2025-04-30 16:10:00', 'OnTime', null, 'LOC0003', 'LOC0004', 15, 'TRANS0404').
route('ROUTETRAIN034', '2025-04-30 16:30:00', '2025-04-30 17:30:00', '2025-04-30 16:30:00', '2025-04-30 17:30:00', 'OnTime', null, 'LOC0004', 'LOC0005', 15, 'TRANS0404').
route('ROUTETRAIN035', '2025-04-30 17:50:00', '2025-04-30 19:50:00', '2025-04-30 17:50:00', '2025-04-30 19:50:00', 'OnTime', null, 'LOC0005', 'LOC0006', 30, 'TRANS0404').
route('ROUTETRAIN036', '2025-04-30 20:10:00', '2025-04-30 22:10:00', '2025-04-30 20:10:00', '2025-04-30 22:10:00', 'OnTime', null, 'LOC0006', 'LOC0007', 30, 'TRANS0404').
route('ROUTETRAIN037', '2025-04-30 22:30:00', '2025-05-01 03:30:00', '2025-04-30 22:30:00', '2025-05-01 03:30:00', 'OnTime', null, 'LOC0007', 'LOC0008', 40, 'TRANS0404').
route('ROUTETRAIN038', '2025-05-01 03:50:00', '2025-05-01 09:50:00', '2025-05-01 03:50:00', '2025-05-01 09:50:00', 'OnTime', null, 'LOC0008', 'LOC0009', 50, 'TRANS0404').
route('ROUTETRAIN039', '2025-05-01 10:10:00', '2025-05-01 16:40:00', '2025-05-01 10:10:00', '2025-05-01 16:40:00', 'OnTime', null, 'LOC0009', 'LOC0010', 50, 'TRANS0404').
route('ROUTETRAIN041', '2025-05-01 10:00:00', '2025-05-01 11:00:00', '2025-05-01 10:00:00', '2025-05-01 11:00:00', 'OnTime', null, 'LOC0001', 'LOC0002', 15, 'TRANS0405').
route('ROUTETRAIN042', '2025-05-01 11:20:00', '2025-05-01 14:20:00', '2025-05-01 11:20:00', '2025-05-01 14:20:00', 'OnTime', null, 'LOC0002', 'LOC0003', 20, 'TRANS0405').
route('ROUTETRAIN043', '2025-05-01 14:40:00', '2025-05-01 16:10:00', '2025-05-01 14:40:00', '2025-05-01 16:10:00', 'OnTime', null, 'LOC0003', 'LOC0004', 15, 'TRANS0405').
route('ROUTETRAIN044', '2025-05-01 16:30:00', '2025-05-01 17:30:00', '2025-05-01 16:30:00', '2025-05-01 17:30:00', 'OnTime', null, 'LOC0004', 'LOC0005', 15, 'TRANS0405').
route('ROUTETRAIN045', '2025-05-01 17:50:00', '2025-05-01 19:50:00', '2025-05-01 17:50:00', '2025-05-01 19:50:00', 'OnTime', null, 'LOC0005', 'LOC0006', 30, 'TRANS0405').
route('ROUTETRAIN046', '2025-05-01 20:10:00', '2025-05-01 22:10:00', '2025-05-01 20:10:00', '2025-05-01 22:10:00', 'OnTime', null, 'LOC0006', 'LOC0007', 30, 'TRANS0405').
route('ROUTETRAIN047', '2025-05-01 22:30:00', '2025-05-02 03:30:00', '2025-05-01 22:30:00', '2025-05-02 03:30:00', 'OnTime', null, 'LOC0007', 'LOC0008', 40, 'TRANS0405').
route('ROUTETRAIN048', '2025-05-02 03:50:00', '2025-05-02 09:50:00', '2025-05-02 03:50:00', '2025-05-02 09:50:00', 'OnTime', null, 'LOC0008', 'LOC0009', 50, 'TRANS0405').
route('ROUTETRAIN049', '2025-05-02 10:10:00', '2025-05-02 16:40:00', '2025-05-02 10:10:00', '2025-05-02 16:40:00', 'OnTime', null, 'LOC0009', 'LOC0010', 50, 'TRANS0405').
route('ROUTETRAIN051', '2025-05-02 10:00:00', '2025-05-02 11:00:00', '2025-05-02 10:00:00', '2025-05-02 11:00:00', 'OnTime', null, 'LOC0001', 'LOC0002', 15, 'TRANS0406').
route('ROUTETRAIN052', '2025-05-02 11:20:00', '2025-05-02 14:20:00', '2025-05-02 11:20:00', '2025-05-02 14:20:00', 'OnTime', null, 'LOC0002', 'LOC0003', 20, 'TRANS0406').
route('ROUTETRAIN053', '2025-05-02 14:40:00', '2025-05-02 16:10:00', '2025-05-02 14:40:00', '2025-05-02 16:10:00', 'OnTime', null, 'LOC0003', 'LOC0004', 15, 'TRANS0406').
route('ROUTETRAIN054', '2025-05-02 16:30:00', '2025-05-02 17:30:00', '2025-05-02 16:30:00', '2025-05-02 17:30:00', 'OnTime', null, 'LOC0004', 'LOC0005', 15, 'TRANS0406').
route('ROUTETRAIN055', '2025-05-02 17:50:00', '2025-05-02 19:50:00', '2025-05-02 17:50:00', '2025-05-02 19:50:00', 'OnTime', null, 'LOC0005', 'LOC0006', 30, 'TRANS0406').
route('ROUTETRAIN056', '2025-05-02 20:10:00', '2025-05-02 22:10:00', '2025-05-02 20:10:00', '2025-05-02 22:10:00', 'OnTime', null, 'LOC0006', 'LOC0007', 30, 'TRANS0406').
route('ROUTETRAIN057', '2025-05-02 22:30:00', '2025-05-03 03:30:00', '2025-05-02 22:30:00', '2025-05-03 03:30:00', 'OnTime', null, 'LOC0007', 'LOC0008', 40, 'TRANS0406').
route('ROUTETRAIN058', '2025-05-03 03:50:00', '2025-05-03 09:50:00', '2025-05-03 03:50:00', '2025-05-03 09:50:00', 'OnTime', null, 'LOC0008', 'LOC0009', 50, 'TRANS0406').
route('ROUTETRAIN059', '2025-05-03 10:10:00', '2025-05-03 16:40:00', '2025-05-03 10:10:00', '2025-05-03 16:40:00', 'OnTime', null, 'LOC0009', 'LOC0010', 50, 'TRANS0406').
route('ROUTETRAIN061', '2025-05-03 10:00:00', '2025-05-03 11:00:00', '2025-05-03 10:00:00', '2025-05-03 11:00:00', 'OnTime', null, 'LOC0001', 'LOC0002', 15, 'TRANS0407').
route('ROUTETRAIN062', '2025-05-03 11:20:00', '2025-05-03 14:20:00', '2025-05-03 11:20:00', '2025-05-03 14:20:00', 'OnTime', null, 'LOC0002', 'LOC0003', 20, 'TRANS0407').
route('ROUTETRAIN063', '2025-05-03 14:40:00', '2025-05-03 16:10:00', '2025-05-03 14:40:00', '2025-05-03 16:10:00', 'OnTime', null, 'LOC0003', 'LOC0004', 15, 'TRANS0407').
route('ROUTETRAIN064', '2025-05-03 16:30:00', '2025-05-03 17:30:00', '2025-05-03 16:30:00', '2025-05-03 17:30:00', 'OnTime', null, 'LOC0004', 'LOC0005', 15, 'TRANS0407').
route('ROUTETRAIN065', '2025-05-03 17:50:00', '2025-05-03 19:50:00', '2025-05-03 17:50:00', '2025-05-03 19:50:00', 'OnTime', null, 'LOC0005', 'LOC0006', 30, 'TRANS0407').
route('ROUTETRAIN066', '2025-05-03 20:10:00', '2025-05-03 22:10:00', '2025-05-03 20:10:00', '2025-05-03 22:10:00', 'OnTime', null, 'LOC0006', 'LOC0007', 30, 'TRANS0407').
route('ROUTETRAIN067', '2025-05-03 22:30:00', '2025-05-04 03:30:00', '2025-05-03 22:30:00', '2025-05-04 03:30:00', 'OnTime', null, 'LOC0007', 'LOC0008', 40, 'TRANS0407').
route('ROUTETRAIN068', '2025-05-04 03:50:00', '2025-05-04 09:50:00', '2025-05-04 03:50:00', '2025-05-04 09:50:00', 'OnTime', null, 'LOC0008', 'LOC0009', 50, 'TRANS0407').
route('ROUTETRAIN069', '2025-05-04 10:10:00', '2025-05-04 16:40:00', '2025-05-04 10:10:00', '2025-05-04 16:40:00', 'OnTime', null, 'LOC0009', 'LOC0010', 50, 'TRANS0407').
route('ROUTETRAIN071', '2025-04-27 15:30:00', '2025-04-27 22:00:00', '2025-04-27 15:30:00', '2025-04-27 22:00:00', 'OnTime', null, 'LOC0010', 'LOC0009', 50, 'TRANS0408').
route('ROUTETRAIN072', '2025-04-27 22:20:00', '2025-04-28 04:20:00', '2025-04-27 22:20:00', '2025-04-28 04:20:00', 'OnTime', null, 'LOC0009', 'LOC0008', 50, 'TRANS0408').
route('ROUTETRAIN073', '2025-04-28 04:40:00', '2025-04-28 09:40:00', '2025-04-28 04:40:00', '2025-04-28 09:40:00', 'OnTime', null, 'LOC0008', 'LOC0007', 40, 'TRANS0408').
route('ROUTETRAIN074', '2025-04-28 10:00:00', '2025-04-28 12:00:00', '2025-04-28 10:00:00', '2025-04-28 12:00:00', 'OnTime', null, 'LOC0007', 'LOC0006', 30, 'TRANS0408').
route('ROUTETRAIN075', '2025-04-28 12:20:00', '2025-04-28 14:20:00', '2025-04-28 12:20:00', '2025-04-28 14:20:00', 'OnTime', null, 'LOC0006', 'LOC0005', 30, 'TRANS0408').
route('ROUTETRAIN076', '2025-04-28 14:40:00', '2025-04-28 15:40:00', '2025-04-28 14:40:00', '2025-04-28 15:40:00', 'OnTime', null, 'LOC0005', 'LOC0004', 15, 'TRANS0408').
route('ROUTETRAIN077', '2025-04-28 16:00:00', '2025-04-28 17:30:00', '2025-04-28 16:00:00', '2025-04-28 17:30:00', 'OnTime', null, 'LOC0004', 'LOC0003', 15, 'TRANS0408').
route('ROUTETRAIN078', '2025-04-28 17:50:00', '2025-04-28 20:50:00', '2025-04-28 17:50:00', '2025-04-28 20:50:00', 'OnTime', null, 'LOC0003', 'LOC0002', 20, 'TRANS0408').
route('ROUTETRAIN079', '2025-04-28 21:10:00', '2025-04-28 22:10:00', '2025-04-28 21:10:00', '2025-04-28 22:10:00', 'OnTime', null, 'LOC0002', 'LOC0001', 15, 'TRANS0408').
route('ROUTETRAIN081', '2025-04-28 15:30:00', '2025-04-28 22:00:00', '2025-04-28 15:30:00', '2025-04-28 22:00:00', 'OnTime', null, 'LOC0010', 'LOC0009', 50, 'TRANS0409').
route('ROUTETRAIN082', '2025-04-28 22:20:00', '2025-04-29 04:20:00', '2025-04-28 22:20:00', '2025-04-29 04:20:00', 'OnTime', null, 'LOC0009', 'LOC0008', 50, 'TRANS0409').
route('ROUTETRAIN083', '2025-04-29 04:40:00', '2025-04-29 09:40:00', '2025-04-29 04:40:00', '2025-04-29 09:40:00', 'OnTime', null, 'LOC0008', 'LOC0007', 40, 'TRANS0409').
route('ROUTETRAIN084', '2025-04-29 10:00:00', '2025-04-29 12:00:00', '2025-04-29 10:00:00', '2025-04-29 12:00:00', 'OnTime', null, 'LOC0007', 'LOC0006', 30, 'TRANS0409').
route('ROUTETRAIN085', '2025-04-29 12:20:00', '2025-04-29 14:20:00', '2025-04-29 12:20:00', '2025-04-29 14:20:00', 'OnTime', null, 'LOC0006', 'LOC0005', 30, 'TRANS0409').
route('ROUTETRAIN086', '2025-04-29 14:40:00', '2025-04-29 15:40:00', '2025-04-29 14:40:00', '2025-04-29 15:40:00', 'OnTime', null, 'LOC0005', 'LOC0004', 15, 'TRANS0409').
route('ROUTETRAIN087', '2025-04-29 16:00:00', '2025-04-29 17:30:00', '2025-04-29 16:00:00', '2025-04-29 17:30:00', 'OnTime', null, 'LOC0004', 'LOC0003', 15, 'TRANS0409').
route('ROUTETRAIN088', '2025-04-29 17:50:00', '2025-04-29 20:50:00', '2025-04-29 17:50:00', '2025-04-29 20:50:00', 'OnTime', null, 'LOC0003', 'LOC0002', 20, 'TRANS0409').
route('ROUTETRAIN089', '2025-04-29 21:10:00', '2025-04-29 22:10:00', '2025-04-29 21:10:00', '2025-04-29 22:10:00', 'OnTime', null, 'LOC0002', 'LOC0001', 15, 'TRANS0409').
route('ROUTETRAIN091', '2025-04-29 15:30:00', '2025-04-29 22:00:00', '2025-04-29 15:30:00', '2025-04-29 22:00:00', 'OnTime', null, 'LOC0010', 'LOC0009', 50, 'TRANS0410').
route('ROUTETRAIN092', '2025-04-29 22:20:00', '2025-04-30 04:20:00', '2025-04-29 22:20:00', '2025-04-30 04:20:00', 'OnTime', null, 'LOC0009', 'LOC0008', 50, 'TRANS0410').
route('ROUTETRAIN093', '2025-04-30 04:40:00', '2025-04-30 09:40:00', '2025-04-30 04:40:00', '2025-04-30 09:40:00', 'OnTime', null, 'LOC0008', 'LOC0007', 40, 'TRANS0410').
route('ROUTETRAIN094', '2025-04-30 10:00:00', '2025-04-30 12:00:00', '2025-04-30 10:00:00', '2025-04-30 12:00:00', 'OnTime', null, 'LOC0007', 'LOC0006', 30, 'TRANS0410').
route('ROUTETRAIN095', '2025-04-30 12:20:00', '2025-04-30 14:20:00', '2025-04-30 12:20:00', '2025-04-30 14:20:00', 'OnTime', null, 'LOC0006', 'LOC0005', 30, 'TRANS0410').
route('ROUTETRAIN096', '2025-04-30 14:40:00', '2025-04-30 15:40:00', '2025-04-30 14:40:00', '2025-04-30 15:40:00', 'OnTime', null, 'LOC0005', 'LOC0004', 15, 'TRANS0410').
route('ROUTETRAIN097', '2025-04-30 16:00:00', '2025-04-30 17:30:00', '2025-04-30 16:00:00', '2025-04-30 17:30:00', 'OnTime', null, 'LOC0004', 'LOC0003', 15, 'TRANS0410').
route('ROUTETRAIN098', '2025-04-30 17:50:00', '2025-04-30 20:50:00', '2025-04-30 17:50:00', '2025-04-30 20:50:00', 'OnTime', null, 'LOC0003', 'LOC0002', 20, 'TRANS0410').
route('ROUTETRAIN099', '2025-04-30 21:10:00', '2025-04-30 22:10:00', '2025-04-30 21:10:00', '2025-04-30 22:10:00', 'OnTime', null, 'LOC0002', 'LOC0001', 15, 'TRANS0410').
route('ROUTETRAIN101', '2025-04-30 15:30:00', '2025-04-30 22:00:00', '2025-04-30 15:30:00', '2025-04-30 22:00:00', 'OnTime', null, 'LOC0010', 'LOC0009', 50, 'TRANS0411').
route('ROUTETRAIN102', '2025-04-30 22:20:00', '2025-05-01 04:20:00', '2025-04-30 22:20:00', '2025-05-01 04:20:00', 'OnTime', null, 'LOC0009', 'LOC0008', 50, 'TRANS0411').
route('ROUTETRAIN103', '2025-05-01 04:40:00', '2025-05-01 09:40:00', '2025-05-01 04:40:00', '2025-05-01 09:40:00', 'OnTime', null, 'LOC0008', 'LOC0007', 40, 'TRANS0411').
route('ROUTETRAIN104', '2025-05-01 10:00:00', '2025-05-01 12:00:00', '2025-05-01 10:00:00', '2025-05-01 12:00:00', 'OnTime', null, 'LOC0007', 'LOC0006', 30, 'TRANS0411').
route('ROUTETRAIN105', '2025-05-01 12:20:00', '2025-05-01 14:20:00', '2025-05-01 12:20:00', '2025-05-01 14:20:00', 'OnTime', null, 'LOC0006', 'LOC0005', 30, 'TRANS0411').
route('ROUTETRAIN106', '2025-05-01 14:40:00', '2025-05-01 15:40:00', '2025-05-01 14:40:00', '2025-05-01 15:40:00', 'OnTime', null, 'LOC0005', 'LOC0004', 15, 'TRANS0411').
route('ROUTETRAIN107', '2025-05-01 16:00:00', '2025-05-01 17:30:00', '2025-05-01 16:00:00', '2025-05-01 17:30:00', 'OnTime', null, 'LOC0004', 'LOC0003', 15, 'TRANS0411').
route('ROUTETRAIN108', '2025-05-01 17:50:00', '2025-05-01 20:50:00', '2025-05-01 17:50:00', '2025-05-01 20:50:00', 'OnTime', null, 'LOC0003', 'LOC0002', 20, 'TRANS0411').
route('ROUTETRAIN109', '2025-05-01 21:10:00', '2025-05-01 22:10:00', '2025-05-01 21:10:00', '2025-05-01 22:10:00', 'OnTime', null, 'LOC0002', 'LOC0001', 15, 'TRANS0411').
route('ROUTETRAIN111', '2025-05-01 15:30:00', '2025-05-01 22:00:00', '2025-05-01 15:30:00', '2025-05-01 22:00:00', 'OnTime', null, 'LOC0010', 'LOC0009', 50, 'TRANS0412').
route('ROUTETRAIN112', '2025-05-01 22:20:00', '2025-05-02 04:20:00', '2025-05-01 22:20:00', '2025-05-02 04:20:00', 'OnTime', null, 'LOC0009', 'LOC0008', 50, 'TRANS0412').
route('ROUTETRAIN113', '2025-05-02 04:40:00', '2025-05-02 09:40:00', '2025-05-02 04:40:00', '2025-05-02 09:40:00', 'OnTime', null, 'LOC0008', 'LOC0007', 40, 'TRANS0412').
route('ROUTETRAIN114', '2025-05-02 10:00:00', '2025-05-02 12:00:00', '2025-05-02 10:00:00', '2025-05-02 12:00:00', 'OnTime', null, 'LOC0007', 'LOC0006', 30, 'TRANS0412').
route('ROUTETRAIN115', '2025-05-02 12:20:00', '2025-05-02 14:20:00', '2025-05-02 12:20:00', '2025-05-02 14:20:00', 'OnTime', null, 'LOC0006', 'LOC0005', 30, 'TRANS0412').
route('ROUTETRAIN116', '2025-05-02 14:40:00', '2025-05-02 15:40:00', '2025-05-02 14:40:00', '2025-05-02 15:40:00', 'OnTime', null, 'LOC0005', 'LOC0004', 15, 'TRANS0412').
route('ROUTETRAIN117', '2025-05-02 16:00:00', '2025-05-02 17:30:00', '2025-05-02 16:00:00', '2025-05-02 17:30:00', 'OnTime', null, 'LOC0004', 'LOC0003', 15, 'TRANS0412').
route('ROUTETRAIN118', '2025-05-02 17:50:00', '2025-05-02 20:50:00', '2025-05-02 17:50:00', '2025-05-02 20:50:00', 'OnTime', null, 'LOC0003', 'LOC0002', 20, 'TRANS0412').
route('ROUTETRAIN119', '2025-05-02 21:10:00', '2025-05-02 22:10:00', '2025-05-02 21:10:00', '2025-05-02 22:10:00', 'OnTime', null, 'LOC0002', 'LOC0001', 15, 'TRANS0412').
route('ROUTETRAIN121', '2025-05-02 15:30:00', '2025-05-02 22:00:00', '2025-05-02 15:30:00', '2025-05-02 22:00:00', 'OnTime', null, 'LOC0010', 'LOC0009', 50, 'TRANS0413').
route('ROUTETRAIN122', '2025-05-02 22:20:00', '2025-05-03 04:20:00', '2025-05-02 22:20:00', '2025-05-03 04:20:00', 'OnTime', null, 'LOC0009', 'LOC0008', 50, 'TRANS0413').
route('ROUTETRAIN123', '2025-05-03 04:40:00', '2025-05-03 09:40:00', '2025-05-03 04:40:00', '2025-05-03 09:40:00', 'OnTime', null, 'LOC0008', 'LOC0007', 40, 'TRANS0413').
route('ROUTETRAIN124', '2025-05-03 10:00:00', '2025-05-03 12:00:00', '2025-05-03 10:00:00', '2025-05-03 12:00:00', 'OnTime', null, 'LOC0007', 'LOC0006', 30, 'TRANS0413').
route('ROUTETRAIN125', '2025-05-03 12:20:00', '2025-05-03 14:20:00', '2025-05-03 12:20:00', '2025-05-03 14:20:00', 'OnTime', null, 'LOC0006', 'LOC0005', 30, 'TRANS0413').
route('ROUTETRAIN126', '2025-05-03 14:40:00', '2025-05-03 15:40:00', '2025-05-03 14:40:00', '2025-05-03 15:40:00', 'OnTime', null, 'LOC0005', 'LOC0004', 15, 'TRANS0413').
route('ROUTETRAIN127', '2025-05-03 16:00:00', '2025-05-03 17:30:00', '2025-05-03 16:00:00', '2025-05-03 17:30:00', 'OnTime', null, 'LOC0004', 'LOC0003', 15, 'TRANS0413').
route('ROUTETRAIN128', '2025-05-03 17:50:00', '2025-05-03 20:50:00', '2025-05-03 17:50:00', '2025-05-03 20:50:00', 'OnTime', null, 'LOC0003', 'LOC0002', 20, 'TRANS0413').
route('ROUTETRAIN129', '2025-05-03 21:10:00', '2025-05-03 22:10:00', '2025-05-03 21:10:00', '2025-05-03 22:10:00', 'OnTime', null, 'LOC0002', 'LOC0001', 15, 'TRANS0413').
route('ROUTETRAIN131', '2025-05-03 15:30:00', '2025-05-03 22:00:00', '2025-05-03 15:30:00', '2025-05-03 22:00:00', 'OnTime', null, 'LOC0010', 'LOC0009', 50, 'TRANS0414').
route('ROUTETRAIN132', '2025-05-03 22:20:00', '2025-05-04 04:20:00', '2025-05-03 22:20:00', '2025-05-04 04:20:00', 'OnTime', null, 'LOC0009', 'LOC0008', 50, 'TRANS0414').
route('ROUTETRAIN133', '2025-05-04 04:40:00', '2025-05-04 09:40:00', '2025-05-04 04:40:00', '2025-05-04 09:40:00', 'OnTime', null, 'LOC0008', 'LOC0007', 40, 'TRANS0414').
route('ROUTETRAIN134', '2025-05-04 10:00:00', '2025-05-04 12:00:00', '2025-05-04 10:00:00', '2025-05-04 12:00:00', 'OnTime', null, 'LOC0007', 'LOC0006', 30, 'TRANS0414').
route('ROUTETRAIN135', '2025-05-04 12:20:00', '2025-05-04 14:20:00', '2025-05-04 12:20:00', '2025-05-04 14:20:00', 'OnTime', null, 'LOC0006', 'LOC0005', 30, 'TRANS0414').
route('ROUTETRAIN136', '2025-05-04 14:40:00', '2025-05-04 15:40:00', '2025-05-04 14:40:00', '2025-05-04 15:40:00', 'OnTime', null, 'LOC0005', 'LOC0004', 15, 'TRANS0414').
route('ROUTETRAIN137', '2025-05-04 16:00:00', '2025-05-04 17:30:00', '2025-05-04 16:00:00', '2025-05-04 17:30:00', 'OnTime', null, 'LOC0004', 'LOC0003', 15, 'TRANS0414').
route('ROUTETRAIN138', '2025-05-04 17:50:00', '2025-05-04 20:50:00', '2025-05-04 17:50:00', '2025-05-04 20:50:00', 'OnTime', null, 'LOC0003', 'LOC0002', 20, 'TRANS0414').
route('ROUTETRAIN139', '2025-05-04 21:10:00', '2025-05-04 22:10:00', '2025-05-04 21:10:00', '2025-05-04 22:10:00', 'OnTime', null, 'LOC0002', 'LOC0001', 15, 'TRANS0414').
route('ROUTETRAIN141', '2023-05-03 15:30:00', '2023-05-03 22:00:00', '2023-05-03 15:30:00', '2023-05-03 22:00:00', 'Delayed', 'Weather', 'LOC0010', 'LOC0009', 50, 'TRANS0414').
route('ROUTETRAIN142', '2023-05-03 22:20:00', '2023-05-04 04:20:00', '2023-05-03 22:20:00', '2023-05-04 04:20:00', 'Delayed', 'Weather', 'LOC0009', 'LOC0008', 50, 'TRANS0414').
route('ROUTETRAIN143', '2023-05-04 04:40:00', '2023-05-04 09:40:00', '2023-05-04 04:40:00', '2023-05-04 09:40:00', 'Delayed', 'Weather', 'LOC0008', 'LOC0007', 40, 'TRANS0414').
route('ROUTETRAIN144', '2023-05-04 10:00:00', '2023-05-04 12:00:00', '2023-05-04 10:00:00', '2023-05-04 12:00:00', 'Delayed', 'Weather', 'LOC0007', 'LOC0006', 30, 'TRANS0414').
route('ROUTETRAIN145', '2023-05-04 12:20:00', '2023-05-04 14:20:00', '2023-05-04 12:20:00', '2023-05-04 14:20:00', 'Delayed', 'Weather', 'LOC0006', 'LOC0005', 30, 'TRANS0414').
route('ROUTETRAIN146', '2023-05-04 14:40:00', '2023-05-04 15:40:00', '2023-05-04 14:40:00', '2023-05-04 15:40:00', 'Delayed', 'Weather', 'LOC0005', 'LOC0004', 15, 'TRANS0414').
route('ROUTETRAIN147', '2023-05-04 16:00:00', '2023-05-04 17:30:00', '2023-05-04 16:00:00', '2023-05-04 17:30:00', 'Delayed', 'Weather', 'LOC0004', 'LOC0003', 15, 'TRANS0414').
route('ROUTESHIP001', '2025-04-27 08:30:00', '2025-04-27 11:00:00', '2025-04-27 08:30:00', '2025-04-27 11:00:00', 'OnTime', null, 'LOC0001', 'LOC0002', 25, 'TRANS0201').
route('ROUTESHIP002', '2025-04-27 12:00:00', '2025-04-27 16:00:00', '2025-04-27 12:00:00', '2025-04-27 16:00:00', 'OnTime', null, 'LOC0002', 'LOC0003', 35, 'TRANS0201').
route('ROUTESHIP003', '2025-04-27 17:00:00', '2025-04-27 20:30:00', '2025-04-27 17:00:00', '2025-04-27 20:30:00', 'OnTime', null, 'LOC0003', 'LOC0004', 30, 'TRANS0201').
route('ROUTESHIP004', '2025-04-27 21:00:00', '2025-04-28 00:00:00', '2025-04-27 21:00:00', '2025-04-28 00:00:00', 'OnTime', null, 'LOC0004', 'LOC0005', 25, 'TRANS0201').
route('ROUTESHIP005', '2025-04-28 01:00:00', '2025-04-28 03:00:00', '2025-04-28 01:00:00', '2025-04-28 03:00:00', 'OnTime', null, 'LOC0005', 'LOC0006', 20, 'TRANS0201').
route('ROUTESHIP006', '2025-04-28 04:00:00', '2025-04-28 08:30:00', '2025-04-28 04:00:00', '2025-04-28 08:30:00', 'OnTime', null, 'LOC0006', 'LOC0007', 40, 'TRANS0201').
route('ROUTESHIP011', '2025-04-28 08:30:00', '2025-04-28 11:00:00', '2025-04-28 08:30:00', '2025-04-28 11:00:00', 'OnTime', null, 'LOC0001', 'LOC0002', 25, 'TRANS0202').
route('ROUTESHIP012', '2025-04-28 12:00:00', '2025-04-28 16:00:00', '2025-04-28 12:00:00', '2025-04-28 16:00:00', 'OnTime', null, 'LOC0002', 'LOC0003', 35, 'TRANS0202').
route('ROUTESHIP013', '2025-04-28 17:00:00', '2025-04-28 20:30:00', '2025-04-28 17:00:00', '2025-04-28 20:30:00', 'OnTime', null, 'LOC0003', 'LOC0004', 30, 'TRANS0202').
route('ROUTESHIP014', '2025-04-28 21:00:00', '2025-04-29 00:00:00', '2025-04-28 21:00:00', '2025-04-29 00:00:00', 'OnTime', null, 'LOC0004', 'LOC0005', 25, 'TRANS0202').
route('ROUTESHIP015', '2025-04-29 01:00:00', '2025-04-29 03:00:00', '2025-04-29 01:00:00', '2025-04-29 03:00:00', 'OnTime', null, 'LOC0005', 'LOC0006', 20, 'TRANS0202').
route('ROUTESHIP016', '2025-04-29 04:00:00', '2025-04-29 08:30:00', '2025-04-29 04:00:00', '2025-04-29 08:30:00', 'OnTime', null, 'LOC0006', 'LOC0007', 40, 'TRANS0202').
route('ROUTESHIP021', '2025-04-29 08:30:00', '2025-04-29 11:00:00', '2025-04-29 08:30:00', '2025-04-29 11:00:00', 'OnTime', null, 'LOC0001', 'LOC0002', 25, 'TRANS0203').
route('ROUTESHIP022', '2025-04-29 12:00:00', '2025-04-29 16:00:00', '2025-04-29 12:00:00', '2025-04-29 16:00:00', 'OnTime', null, 'LOC0002', 'LOC0003', 35, 'TRANS0203').
route('ROUTESHIP023', '2025-04-29 17:00:00', '2025-04-29 20:30:00', '2025-04-29 17:00:00', '2025-04-29 20:30:00', 'OnTime', null, 'LOC0003', 'LOC0004', 30, 'TRANS0203').
route('ROUTESHIP024', '2025-04-29 21:00:00', '2025-04-30 00:00:00', '2025-04-29 21:00:00', '2025-04-30 00:00:00', 'OnTime', null, 'LOC0004', 'LOC0005', 25, 'TRANS0203').
route('ROUTESHIP025', '2025-04-30 01:00:00', '2025-04-30 03:00:00', '2025-04-30 01:00:00', '2025-04-30 03:00:00', 'OnTime', null, 'LOC0005', 'LOC0006', 20, 'TRANS0203').
route('ROUTESHIP026', '2025-04-30 04:00:00', '2025-04-30 08:30:00', '2025-04-30 04:00:00', '2025-04-30 08:30:00', 'OnTime', null, 'LOC0006', 'LOC0007', 40, 'TRANS0203').
route('ROUTESHIP031', '2025-04-30 08:30:00', '2025-04-30 11:00:00', '2025-04-30 08:30:00', '2025-04-30 11:00:00', 'OnTime', null, 'LOC0001', 'LOC0002', 25, 'TRANS0204').
route('ROUTESHIP032', '2025-04-30 12:00:00', '2025-04-30 16:00:00', '2025-04-30 12:00:00', '2025-04-30 16:00:00', 'OnTime', null, 'LOC0002', 'LOC0003', 35, 'TRANS0204').
route('ROUTESHIP033', '2025-04-30 17:00:00', '2025-04-30 20:30:00', '2025-04-30 17:00:00', '2025-04-30 20:30:00', 'OnTime', null, 'LOC0003', 'LOC0004', 30, 'TRANS0204').
route('ROUTESHIP034', '2025-04-30 21:00:00', '2025-05-01 00:00:00', '2025-04-30 21:00:00', '2025-05-01 00:00:00', 'OnTime', null, 'LOC0004', 'LOC0005', 25, 'TRANS0204').
route('ROUTESHIP035', '2025-05-01 01:00:00', '2025-05-01 03:00:00', '2025-05-01 01:00:00', '2025-05-01 03:00:00', 'OnTime', null, 'LOC0005', 'LOC0006', 20, 'TRANS0204').
route('ROUTESHIP036', '2025-05-01 04:00:00', '2025-05-01 08:30:00', '2025-05-01 04:00:00', '2025-05-01 08:30:00', 'OnTime', null, 'LOC0006', 'LOC0007', 40, 'TRANS0204').
route('ROUTESHIP041', '2025-05-01 08:30:00', '2025-05-01 11:00:00', '2025-05-01 08:30:00', '2025-05-01 11:00:00', 'OnTime', null, 'LOC0001', 'LOC0002', 25, 'TRANS0205').
route('ROUTESHIP042', '2025-05-01 12:00:00', '2025-05-01 16:00:00', '2025-05-01 12:00:00', '2025-05-01 16:00:00', 'OnTime', null, 'LOC0002', 'LOC0003', 35, 'TRANS0205').
route('ROUTESHIP043', '2025-05-01 17:00:00', '2025-05-01 20:30:00', '2025-05-01 17:00:00', '2025-05-01 20:30:00', 'OnTime', null, 'LOC0003', 'LOC0004', 30, 'TRANS0205').
route('ROUTESHIP044', '2025-05-01 21:00:00', '2025-05-02 00:00:00', '2025-05-01 21:00:00', '2025-05-02 00:00:00', 'OnTime', null, 'LOC0004', 'LOC0005', 25, 'TRANS0205').
route('ROUTESHIP045', '2025-05-02 01:00:00', '2025-05-02 03:00:00', '2025-05-02 01:00:00', '2025-05-02 03:00:00', 'OnTime', null, 'LOC0005', 'LOC0006', 20, 'TRANS0205').
route('ROUTESHIP046', '2025-05-02 04:00:00', '2025-05-02 08:30:00', '2025-05-02 04:00:00', '2025-05-02 08:30:00', 'OnTime', null, 'LOC0006', 'LOC0007', 40, 'TRANS0205').
route('ROUTESHIP051', '2025-05-02 08:30:00', '2025-05-02 11:00:00', '2025-05-02 08:30:00', '2025-05-02 11:00:00', 'OnTime', null, 'LOC0001', 'LOC0002', 25, 'TRANS0206').
route('ROUTESHIP052', '2025-05-02 12:00:00', '2025-05-02 16:00:00', '2025-05-02 12:00:00', '2025-05-02 16:00:00', 'OnTime', null, 'LOC0002', 'LOC0003', 35, 'TRANS0206').
route('ROUTESHIP053', '2025-05-02 17:00:00', '2025-05-02 20:30:00', '2025-05-02 17:00:00', '2025-05-02 20:30:00', 'OnTime', null, 'LOC0003', 'LOC0004', 30, 'TRANS0206').
route('ROUTESHIP054', '2025-05-02 21:00:00', '2025-05-03 00:00:00', '2025-05-02 21:00:00', '2025-05-03 00:00:00', 'OnTime', null, 'LOC0004', 'LOC0005', 25, 'TRANS0206').
route('ROUTESHIP055', '2025-05-03 01:00:00', '2025-05-03 03:00:00', '2025-05-03 01:00:00', '2025-05-03 03:00:00', 'OnTime', null, 'LOC0005', 'LOC0006', 20, 'TRANS0206').
route('ROUTESHIP056', '2025-05-03 04:00:00', '2025-05-03 08:30:00', '2025-05-03 04:00:00', '2025-05-03 08:30:00', 'OnTime', null, 'LOC0006', 'LOC0007', 40, 'TRANS0206').
route('ROUTESHIP061', '2025-05-03 08:30:00', '2025-05-03 11:00:00', '2025-05-03 08:30:00', '2025-05-03 11:00:00', 'OnTime', null, 'LOC0001', 'LOC0002', 25, 'TRANS0207').
route('ROUTESHIP062', '2025-05-03 12:00:00', '2025-05-03 16:00:00', '2025-05-03 12:00:00', '2025-05-03 16:00:00', 'OnTime', null, 'LOC0002', 'LOC0003', 35, 'TRANS0207').
route('ROUTESHIP063', '2025-05-03 17:00:00', '2025-05-03 20:30:00', '2025-05-03 17:00:00', '2025-05-03 20:30:00', 'OnTime', null, 'LOC0003', 'LOC0004', 30, 'TRANS0207').
route('ROUTESHIP064', '2025-05-03 21:00:00', '2025-05-04 00:00:00', '2025-05-03 21:00:00', '2025-05-04 00:00:00', 'OnTime', null, 'LOC0004', 'LOC0005', 25, 'TRANS0207').
route('ROUTESHIP065', '2025-05-04 01:00:00', '2025-05-04 03:00:00', '2025-05-04 01:00:00', '2025-05-04 03:00:00', 'OnTime', null, 'LOC0005', 'LOC0006', 20, 'TRANS0207').
route('ROUTESHIP066', '2025-05-04 04:00:00', '2025-05-04 08:30:00', '2025-05-04 04:00:00', '2025-05-04 08:30:00', 'OnTime', null, 'LOC0006', 'LOC0007', 40, 'TRANS0207').
route('ROUTESHIP101', '2025-04-27 12:00:00', '2025-04-27 16:30:00', '2025-04-27 12:00:00', '2025-04-27 16:30:00', 'OnTime', null, 'LOC0007', 'LOC0006', 40, 'TRANS0208').
route('ROUTESHIP102', '2025-04-27 17:30:00', '2025-04-27 19:30:00', '2025-04-27 17:30:00', '2025-04-27 19:30:00', 'OnTime', null, 'LOC0006', 'LOC0005', 20, 'TRANS0208').
route('ROUTESHIP103', '2025-04-27 20:30:00', '2025-04-27 23:30:00', '2025-04-27 20:30:00', '2025-04-27 23:30:00', 'OnTime', null, 'LOC0005', 'LOC0004', 25, 'TRANS0208').
route('ROUTESHIP104', '2025-04-28 00:30:00', '2025-04-28 04:00:00', '2025-04-28 00:30:00', '2025-04-28 04:00:00', 'OnTime', null, 'LOC0004', 'LOC0003', 30, 'TRANS0208').
route('ROUTESHIP105', '2025-04-28 05:00:00', '2025-04-28 09:00:00', '2025-04-28 05:00:00', '2025-04-28 09:00:00', 'OnTime', null, 'LOC0003', 'LOC0002', 35, 'TRANS0208').
route('ROUTESHIP106', '2025-04-28 10:00:00', '2025-04-28 12:30:00', '2025-04-28 10:00:00', '2025-04-28 12:30:00', 'OnTime', null, 'LOC0002', 'LOC0001', 25, 'TRANS0208').
route('ROUTESHIP111', '2025-04-28 12:00:00', '2025-04-28 16:30:00', '2025-04-28 12:00:00', '2025-04-28 16:30:00', 'OnTime', null, 'LOC0007', 'LOC0006', 40, 'TRANS0209').
route('ROUTESHIP112', '2025-04-28 17:30:00', '2025-04-28 19:30:00', '2025-04-28 17:30:00', '2025-04-28 19:30:00', 'OnTime', null, 'LOC0006', 'LOC0005', 20, 'TRANS0209').
route('ROUTESHIP113', '2025-04-28 20:30:00', '2025-04-28 23:30:00', '2025-04-28 20:30:00', '2025-04-28 23:30:00', 'OnTime', null, 'LOC0005', 'LOC0004', 25, 'TRANS0209').
route('ROUTESHIP114', '2025-04-29 00:30:00', '2025-04-29 04:00:00', '2025-04-29 00:30:00', '2025-04-29 04:00:00', 'OnTime', null, 'LOC0004', 'LOC0003', 30, 'TRANS0209').
route('ROUTESHIP115', '2025-04-29 05:00:00', '2025-04-29 09:00:00', '2025-04-29 05:00:00', '2025-04-29 09:00:00', 'OnTime', null, 'LOC0003', 'LOC0002', 35, 'TRANS0209').
route('ROUTESHIP116', '2025-04-29 10:00:00', '2025-04-29 12:30:00', '2025-04-29 10:00:00', '2025-04-29 12:30:00', 'OnTime', null, 'LOC0002', 'LOC0001', 25, 'TRANS0209').
route('ROUTESHIP121', '2025-04-29 12:00:00', '2025-04-29 16:30:00', '2025-04-29 12:00:00', '2025-04-29 16:30:00', 'OnTime', null, 'LOC0007', 'LOC0006', 40, 'TRANS0210').
route('ROUTESHIP122', '2025-04-29 17:30:00', '2025-04-29 19:30:00', '2025-04-29 17:30:00', '2025-04-29 19:30:00', 'OnTime', null, 'LOC0006', 'LOC0005', 20, 'TRANS0210').
route('ROUTESHIP123', '2025-04-29 20:30:00', '2025-04-29 23:30:00', '2025-04-29 20:30:00', '2025-04-29 23:30:00', 'OnTime', null, 'LOC0005', 'LOC0004', 25, 'TRANS0210').
route('ROUTESHIP124', '2025-04-30 00:30:00', '2025-04-30 04:00:00', '2025-04-30 00:30:00', '2025-04-30 04:00:00', 'OnTime', null, 'LOC0004', 'LOC0003', 30, 'TRANS0210').
route('ROUTESHIP125', '2025-04-30 05:00:00', '2025-04-30 09:00:00', '2025-04-30 05:00:00', '2025-04-30 09:00:00', 'OnTime', null, 'LOC0003', 'LOC0002', 35, 'TRANS0210').
route('ROUTESHIP126', '2025-04-30 10:00:00', '2025-04-30 12:30:00', '2025-04-30 10:00:00', '2025-04-30 12:30:00', 'OnTime', null, 'LOC0002', 'LOC0001', 25, 'TRANS0210').
route('ROUTESHIP131', '2025-04-30 12:00:00', '2025-04-30 16:30:00', '2025-04-30 12:00:00', '2025-04-30 16:30:00', 'OnTime', null, 'LOC0007', 'LOC0006', 40, 'TRANS0211').
route('ROUTESHIP132', '2025-04-30 17:30:00', '2025-04-30 19:30:00', '2025-04-30 17:30:00', '2025-04-30 19:30:00', 'OnTime', null, 'LOC0006', 'LOC0005', 20, 'TRANS0211').
route('ROUTESHIP133', '2025-04-30 20:30:00', '2025-04-30 23:30:00', '2025-04-30 20:30:00', '2025-04-30 23:30:00', 'OnTime', null, 'LOC0005', 'LOC0004', 25, 'TRANS0211').
route('ROUTESHIP134', '2025-05-01 00:30:00', '2025-05-01 04:00:00', '2025-05-01 00:30:00', '2025-05-01 04:00:00', 'OnTime', null, 'LOC0004', 'LOC0003', 30, 'TRANS0211').
route('ROUTESHIP135', '2025-05-01 05:00:00', '2025-05-01 09:00:00', '2025-05-01 05:00:00', '2025-05-01 09:00:00', 'OnTime', null, 'LOC0003', 'LOC0002', 35, 'TRANS0211').
route('ROUTESHIP136', '2025-05-01 10:00:00', '2025-05-01 12:30:00', '2025-05-01 10:00:00', '2025-05-01 12:30:00', 'OnTime', null, 'LOC0002', 'LOC0001', 25, 'TRANS0211').
route('ROUTESHIP141', '2025-05-01 12:00:00', '2025-05-01 16:30:00', '2025-05-01 12:00:00', '2025-05-01 16:30:00', 'OnTime', null, 'LOC0007', 'LOC0006', 40, 'TRANS0212').
route('ROUTESHIP142', '2025-05-01 17:30:00', '2025-05-01 19:30:00', '2025-05-01 17:30:00', '2025-05-01 19:30:00', 'OnTime', null, 'LOC0006', 'LOC0005', 20, 'TRANS0212').
route('ROUTESHIP143', '2025-05-01 20:30:00', '2025-05-01 23:30:00', '2025-05-01 20:30:00', '2025-05-01 23:30:00', 'OnTime', null, 'LOC0005', 'LOC0004', 25, 'TRANS0212').
route('ROUTESHIP144', '2025-05-02 00:30:00', '2025-05-02 04:00:00', '2025-05-02 00:30:00', '2025-05-02 04:00:00', 'OnTime', null, 'LOC0004', 'LOC0003', 30, 'TRANS0212').
route('ROUTESHIP145', '2025-05-02 05:00:00', '2025-05-02 09:00:00', '2025-05-02 05:00:00', '2025-05-02 09:00:00', 'OnTime', null, 'LOC0003', 'LOC0002', 35, 'TRANS0212').
route('ROUTESHIP146', '2025-05-02 10:00:00', '2025-05-02 12:30:00', '2025-05-02 10:00:00', '2025-05-02 12:30:00', 'OnTime', null, 'LOC0002', 'LOC0001', 25, 'TRANS0212').
route('ROUTESHIP151', '2025-05-02 12:00:00', '2025-05-02 16:30:00', '2025-05-02 12:00:00', '2025-05-02 16:30:00', 'OnTime', null, 'LOC0007', 'LOC0006', 40, 'TRANS0213').
route('ROUTESHIP152', '2025-05-02 17:30:00', '2025-05-02 19:30:00', '2025-05-02 17:30:00', '2025-05-02 19:30:00', 'OnTime', null, 'LOC0006', 'LOC0005', 20, 'TRANS0213').
route('ROUTESHIP153', '2025-05-02 20:30:00', '2025-05-02 23:30:00', '2025-05-02 20:30:00', '2025-05-02 23:30:00', 'OnTime', null, 'LOC0005', 'LOC0004', 25, 'TRANS0213').
route('ROUTESHIP154', '2025-05-03 00:30:00', '2025-05-03 04:00:00', '2025-05-03 00:30:00', '2025-05-03 04:00:00', 'OnTime', null, 'LOC0004', 'LOC0003', 30, 'TRANS0213').
route('ROUTESHIP155', '2025-05-03 05:00:00', '2025-05-03 09:00:00', '2025-05-03 05:00:00', '2025-05-03 09:00:00', 'OnTime', null, 'LOC0003', 'LOC0002', 35, 'TRANS0213').
route('ROUTESHIP156', '2025-05-03 10:00:00', '2025-05-03 12:30:00', '2025-05-03 10:00:00', '2025-05-03 12:30:00', 'OnTime', null, 'LOC0002', 'LOC0001', 25, 'TRANS0213').
route('ROUTESHIP161', '2023-05-02 12:00:00', '2023-05-02 16:30:00', '2023-05-02 13:00:00', '2023-05-02 17:30:00', 'Cancelled', 'Weather', 'LOC0007', 'LOC0006', 40, 'TRANS0219').
route('ROUTESHIP162', '2023-05-02 17:30:00', '2023-05-02 19:30:00', '2023-03-02 18:30:00', '2023-05-02 20:30:00', 'Delayed', 'Weather', 'LOC0006', 'LOC0005', 20, 'TRANS0219').
route('ROUTESHIP163', '2023-05-02 20:30:00', '2023-05-02 23:30:00', '2023-05-02 21:30:00', '2023-05-03 00:30:00', 'Delayed', 'Weather', 'LOC0005', 'LOC0004', 25, 'TRANS0219').
route('ROUTESHIP164', '2023-05-03 00:30:00', '2023-05-03 04:00:00', '2023-05-03 01:30:00', '2023-05-03 05:00:00', 'Cancelled', 'Weather', 'LOC0004', 'LOC0003', 30, 'TRANS0219').
route('ROUTESHIP165', '2023-05-03 05:00:00', '2023-05-03 09:00:00', '2023-05-03 06:00:00', '2023-05-03 10:00:00', 'Cancelled', 'Weather', 'LOC0003', 'LOC0002', 35, 'TRANS0219').
route('ROUTESHIP166', '2023-05-03 10:00:00', '2023-05-03 12:30:00', '2023-05-03 11:00:00', '2023-05-03 13:30:00', 'Delayed', 'Weather', 'LOC0002', 'LOC0001', 25, 'TRANS0219').
route('ROUTEPLANE001', '2025-04-27 16:00:00', '2025-04-27 18:30:00', '2025-04-27 16:00:00', '2025-04-27 18:30:00', 'OnTime', null, 'LOC0001', 'LOC0008', 250, 'TRANS0301').
route('ROUTEPLANE002', '2025-04-28 16:00:00', '2025-04-28 18:30:00', '2025-04-28 16:00:00', '2025-04-28 18:30:00', 'OnTime', null, 'LOC0001', 'LOC0008', 250, 'TRANS0301').
route('ROUTEPLANE003', '2025-04-29 16:00:00', '2025-04-29 18:30:00', '2025-04-29 16:00:00', '2025-04-29 18:30:00', 'OnTime', null, 'LOC0001', 'LOC0008', 250, 'TRANS0301').
route('ROUTEPLANE004', '2025-04-30 16:00:00', '2025-04-30 18:30:00', '2025-04-30 16:00:00', '2025-04-30 18:30:00', 'OnTime', null, 'LOC0001', 'LOC0008', 250, 'TRANS0301').
route('ROUTEPLANE005', '2025-05-01 16:00:00', '2025-05-01 18:30:00', '2025-05-01 16:00:00', '2025-05-01 18:30:00', 'OnTime', null, 'LOC0001', 'LOC0008', 250, 'TRANS0301').
route('ROUTEPLANE006', '2025-05-02 16:00:00', '2025-05-02 18:30:00', '2025-05-02 16:00:00', '2025-05-02 18:30:00', 'OnTime', null, 'LOC0001', 'LOC0008', 250, 'TRANS0301').
route('ROUTEPLANE007', '2025-05-03 16:00:00', '2025-05-03 18:30:00', '2025-05-03 16:00:00', '2025-05-03 18:30:00', 'OnTime', null, 'LOC0001', 'LOC0008', 250, 'TRANS0301').
route('ROUTEPLANE008', '2025-05-04 16:00:00', '2025-05-04 18:30:00', '2025-05-04 16:00:00', '2025-05-04 18:30:00', 'OnTime', null, 'LOC0001', 'LOC0008', 250, 'TRANS0301').
route('ROUTEPLANE011', '2025-04-27 09:00:00', '2025-04-27 12:00:00', '2025-04-27 09:00:00', '2025-04-27 12:00:00', 'OnTime', null, 'LOC0001', 'LOC0009', 300, 'TRANS0302').
route('ROUTEPLANE012', '2025-04-28 09:00:00', '2025-04-28 12:00:00', '2025-04-28 09:00:00', '2025-04-28 12:00:00', 'OnTime', null, 'LOC0001', 'LOC0008', 300, 'TRANS0302').
route('ROUTEPLANE013', '2025-04-29 09:00:00', '2025-04-29 12:00:00', '2025-04-29 09:00:00', '2025-04-29 12:00:00', 'OnTime', null, 'LOC0001', 'LOC0008', 300, 'TRANS0302').
route('ROUTEPLANE014', '2025-04-30 09:00:00', '2025-04-30 12:00:00', '2025-04-30 09:00:00', '2025-04-30 12:00:00', 'OnTime', null, 'LOC0001', 'LOC0008', 300, 'TRANS0302').
route('ROUTEPLANE015', '2025-05-01 09:00:00', '2025-05-01 12:00:00', '2025-05-01 09:00:00', '2025-05-01 12:00:00', 'OnTime', null, 'LOC0001', 'LOC0008', 300, 'TRANS0302').
route('ROUTEPLANE016', '2025-05-02 09:00:00', '2025-05-02 12:00:00', '2025-05-02 09:00:00', '2025-05-02 12:00:00', 'OnTime', null, 'LOC0001', 'LOC0008', 300, 'TRANS0302').
route('ROUTEPLANE017', '2025-05-03 09:00:00', '2025-05-03 12:00:00', '2025-05-03 09:00:00', '2025-05-03 12:00:00', 'OnTime', null, 'LOC0001', 'LOC0008', 300, 'TRANS0302').
route('ROUTEPLANE018', '2025-05-04 09:00:00', '2025-05-04 12:00:00', '2025-05-04 09:00:00', '2025-05-04 12:00:00', 'OnTime', null, 'LOC0001', 'LOC0008', 300, 'TRANS0302').
route('ROUTEPLANE021', '2025-04-27 11:00:00', '2025-04-27 14:00:00', '2025-04-27 11:00:00', '2025-04-27 14:00:00', 'OnTime', null, 'LOC0001', 'LOC0010', 300, 'TRANS0303').
route('ROUTEPLANE022', '2025-04-28 11:00:00', '2025-04-28 14:00:00', '2025-04-28 11:00:00', '2025-04-28 14:00:00', 'OnTime', null, 'LOC0001', 'LOC0010', 300, 'TRANS0303').
route('ROUTEPLANE023', '2025-04-29 11:00:00', '2025-04-29 14:00:00', '2025-04-29 11:00:00', '2025-04-29 14:00:00', 'OnTime', null, 'LOC0001', 'LOC0010', 300, 'TRANS0303').
route('ROUTEPLANE024', '2025-04-30 11:00:00', '2025-04-30 14:00:00', '2025-04-30 11:00:00', '2025-04-30 14:00:00', 'OnTime', null, 'LOC0001', 'LOC0010', 300, 'TRANS0303').
route('ROUTEPLANE025', '2025-05-01 11:00:00', '2025-05-01 14:00:00', '2025-05-01 11:00:00', '2025-05-01 14:00:00', 'OnTime', null, 'LOC0001', 'LOC0010', 300, 'TRANS0303').
route('ROUTEPLANE026', '2025-05-02 11:00:00', '2025-05-02 14:00:00', '2025-05-02 11:00:00', '2025-05-02 14:00:00', 'OnTime', null, 'LOC0001', 'LOC0010', 300, 'TRANS0303').
route('ROUTEPLANE027', '2025-05-03 11:00:00', '2025-05-03 14:00:00', '2025-05-03 11:00:00', '2025-05-03 14:00:00', 'OnTime', null, 'LOC0001', 'LOC0010', 300, 'TRANS0303').
route('ROUTEPLANE028', '2025-05-04 11:00:00', '2025-05-04 14:00:00', '2025-05-04 11:00:00', '2025-05-04 14:00:00', 'OnTime', null, 'LOC0001', 'LOC0010', 300, 'TRANS0303').
route('ROUTEPLANE031', '2025-04-27 20:30:00', '2025-04-27 22:42:00', '2025-04-27 20:30:00', '2025-04-27 22:42:00', 'OnTime', null, 'LOC0002', 'LOC0009', 327, 'TRANS0303').
route('ROUTEPLANE032', '2025-04-28 20:30:00', '2025-04-28 22:42:00', '2025-04-28 20:30:00', '2025-04-28 22:42:00', 'OnTime', null, 'LOC0002', 'LOC0009', 327, 'TRANS0303').
route('ROUTEPLANE033', '2025-04-29 20:30:00', '2025-04-29 22:42:00', '2025-04-29 20:30:00', '2025-04-29 22:42:00', 'OnTime', null, 'LOC0002', 'LOC0009', 327, 'TRANS0303').
route('ROUTEPLANE034', '2025-04-30 20:30:00', '2025-04-30 22:42:00', '2025-04-30 20:30:00', '2025-04-30 22:42:00', 'OnTime', null, 'LOC0002', 'LOC0009', 327, 'TRANS0303').
route('ROUTEPLANE035', '2025-05-01 20:30:00', '2025-05-01 22:42:00', '2025-05-01 20:30:00', '2025-05-01 22:42:00', 'OnTime', null, 'LOC0002', 'LOC0009', 327, 'TRANS0303').
route('ROUTEPLANE036', '2025-05-02 20:30:00', '2025-05-02 22:42:00', '2025-05-02 20:30:00', '2025-05-02 22:42:00', 'OnTime', null, 'LOC0002', 'LOC0009', 327, 'TRANS0303').
route('ROUTEPLANE037', '2025-05-03 20:30:00', '2025-05-03 22:42:00', '2025-05-03 20:30:00', '2025-05-03 22:42:00', 'OnTime', null, 'LOC0002', 'LOC0009', 327, 'TRANS0303').
route('ROUTEPLANE038', '2025-05-04 20:30:00', '2025-05-04 22:42:00', '2025-05-04 20:30:00', '2025-05-04 22:42:00', 'OnTime', null, 'LOC0002', 'LOC0009', 327, 'TRANS0303').
route('ROUTEPLANE041', '2025-04-27 23:12:00', '2025-04-28 02:12:00', '2025-04-27 23:12:00', '2025-04-28 02:12:00', 'OnTime', null, 'LOC0002', 'LOC0010', 352, 'TRANS0304').
route('ROUTEPLANE042', '2025-04-28 23:12:00', '2025-04-29 02:12:00', '2025-04-28 23:12:00', '2025-04-29 02:12:00', 'OnTime', null, 'LOC0002', 'LOC0010', 352, 'TRANS0304').
route('ROUTEPLANE043', '2025-04-29 23:12:00', '2025-04-30 02:12:00', '2025-04-29 23:12:00', '2025-04-30 02:12:00', 'OnTime', null, 'LOC0002', 'LOC0010', 352, 'TRANS0304').
route('ROUTEPLANE044', '2025-04-30 23:12:00', '2025-05-01 02:12:00', '2025-04-30 23:12:00', '2025-05-01 02:12:00', 'OnTime', null, 'LOC0002', 'LOC0010', 352, 'TRANS0304').
route('ROUTEPLANE045', '2025-05-01 23:12:00', '2025-05-02 02:12:00', '2025-05-01 23:12:00', '2025-05-02 02:12:00', 'OnTime', null, 'LOC0002', 'LOC0010', 352, 'TRANS0304').
route('ROUTEPLANE046', '2025-05-02 23:12:00', '2025-05-03 02:12:00', '2025-05-02 23:12:00', '2025-05-03 02:12:00', 'OnTime', null, 'LOC0002', 'LOC0010', 352, 'TRANS0304').
route('ROUTEPLANE047', '2025-05-03 23:12:00', '2025-05-04 02:12:00', '2025-05-03 23:12:00', '2025-05-04 02:12:00', 'OnTime', null, 'LOC0002', 'LOC0010', 352, 'TRANS0304').
route('ROUTEPLANE048', '2025-05-04 23:12:00', '2025-05-05 02:12:00', '2025-05-04 23:12:00', '2025-05-05 02:12:00', 'OnTime', null, 'LOC0002', 'LOC0010', 352, 'TRANS0304').
route('ROUTEPLANE051', '2025-04-27 02:42:00', '2025-04-27 04:52:00', '2025-04-27 02:42:00', '2025-04-27 04:52:00', 'OnTime', null, 'LOC0003', 'LOC0010', 337, 'TRANS0305').
route('ROUTEPLANE052', '2025-04-28 02:42:00', '2025-04-28 04:52:00', '2025-04-28 02:42:00', '2025-04-28 04:52:00', 'OnTime', null, 'LOC0003', 'LOC0010', 337, 'TRANS0305').
route('ROUTEPLANE053', '2025-04-29 02:42:00', '2025-04-29 04:52:00', '2025-04-29 02:42:00', '2025-04-29 04:52:00', 'OnTime', null, 'LOC0003', 'LOC0010', 337, 'TRANS0305').
route('ROUTEPLANE054', '2025-04-30 02:42:00', '2025-04-30 04:52:00', '2025-04-30 02:42:00', '2025-04-30 04:52:00', 'OnTime', null, 'LOC0003', 'LOC0010', 337, 'TRANS0305').
route('ROUTEPLANE055', '2025-05-01 02:42:00', '2025-05-01 04:52:00', '2025-05-01 02:42:00', '2025-05-01 04:52:00', 'OnTime', null, 'LOC0003', 'LOC0010', 337, 'TRANS0305').
route('ROUTEPLANE056', '2025-05-02 02:42:00', '2025-05-02 04:52:00', '2025-05-02 02:42:00', '2025-05-02 04:52:00', 'OnTime', null, 'LOC0003', 'LOC0010', 337, 'TRANS0305').
route('ROUTEPLANE057', '2025-05-03 02:42:00', '2025-05-03 04:52:00', '2025-05-03 02:42:00', '2025-05-03 04:52:00', 'OnTime', null, 'LOC0003', 'LOC0010', 337, 'TRANS0305').
route('ROUTEPLANE058', '2025-05-04 02:42:00', '2025-05-04 04:52:00', '2025-05-04 02:42:00', '2025-05-04 04:52:00', 'OnTime', null, 'LOC0003', 'LOC0010', 337, 'TRANS0305').
route('ROUTEPLANE061', '2025-04-27 05:22:00', '2025-04-27 07:10:00', '2025-04-27 05:22:00', '2025-04-27 07:10:00', 'OnTime', null, 'LOC0004', 'LOC0010', 312, 'TRANS0306').
route('ROUTEPLANE062', '2025-04-28 05:22:00', '2025-04-28 07:10:00', '2025-04-28 05:22:00', '2025-04-28 07:10:00', 'OnTime', null, 'LOC0004', 'LOC0010', 312, 'TRANS0306').
route('ROUTEPLANE063', '2025-04-29 05:22:00', '2025-04-29 07:10:00', '2025-04-29 05:22:00', '2025-04-29 07:10:00', 'OnTime', null, 'LOC0004', 'LOC0010', 312, 'TRANS0306').
route('ROUTEPLANE064', '2025-04-30 05:22:00', '2025-04-30 07:10:00', '2025-04-30 05:22:00', '2025-04-30 07:10:00', 'OnTime', null, 'LOC0004', 'LOC0010', 312, 'TRANS0306').
route('ROUTEPLANE065', '2025-05-01 05:22:00', '2025-05-01 07:10:00', '2025-05-01 05:22:00', '2025-05-01 07:10:00', 'OnTime', null, 'LOC0004', 'LOC0010', 312, 'TRANS0306').
route('ROUTEPLANE066', '2025-05-02 05:22:00', '2025-05-02 07:10:00', '2025-05-02 05:22:00', '2025-05-02 07:10:00', 'OnTime', null, 'LOC0004', 'LOC0010', 312, 'TRANS0306').
route('ROUTEPLANE067', '2025-05-03 05:22:00', '2025-05-03 07:10:00', '2025-05-03 05:22:00', '2025-05-03 07:10:00', 'OnTime', null, 'LOC0004', 'LOC0010', 312, 'TRANS0306').
route('ROUTEPLANE068', '2025-05-04 05:22:00', '2025-05-04 07:10:00', '2025-05-04 05:22:00', '2025-05-04 07:10:00', 'OnTime', null, 'LOC0004', 'LOC0010', 312, 'TRANS0306').
route('ROUTEPLANE071', '2025-04-27 07:40:00', '2025-04-27 09:28:00', '2025-04-27 07:40:00', '2025-04-27 09:28:00', 'OnTime', null, 'LOC0005', 'LOC0010', 302, 'TRANS0307').
route('ROUTEPLANE072', '2025-04-28 07:40:00', '2025-04-28 09:28:00', '2025-04-28 07:40:00', '2025-04-28 09:28:00', 'OnTime', null, 'LOC0005', 'LOC0010', 302, 'TRANS0307').
route('ROUTEPLANE073', '2025-04-29 07:40:00', '2025-04-29 09:28:00', '2025-04-29 07:40:00', '2025-04-29 09:28:00', 'OnTime', null, 'LOC0005', 'LOC0010', 302, 'TRANS0307').
route('ROUTEPLANE074', '2025-04-30 07:40:00', '2025-04-30 09:28:00', '2025-04-30 07:40:00', '2025-04-30 09:28:00', 'OnTime', null, 'LOC0005', 'LOC0010', 302, 'TRANS0307').
route('ROUTEPLANE075', '2025-05-01 07:40:00', '2025-05-01 09:28:00', '2025-05-01 07:40:00', '2025-05-01 09:28:00', 'OnTime', null, 'LOC0005', 'LOC0010', 302, 'TRANS0307').
route('ROUTEPLANE076', '2025-05-02 07:40:00', '2025-05-02 09:28:00', '2025-05-02 07:40:00', '2025-05-02 09:28:00', 'OnTime', null, 'LOC0005', 'LOC0010', 302, 'TRANS0307').
route('ROUTEPLANE077', '2025-05-03 07:40:00', '2025-05-03 09:28:00', '2025-05-03 07:40:00', '2025-05-03 09:28:00', 'OnTime', null, 'LOC0005', 'LOC0010', 302, 'TRANS0307').
route('ROUTEPLANE078', '2025-05-04 07:40:00', '2025-05-04 09:28:00', '2025-05-04 07:40:00', '2025-05-04 09:28:00', 'OnTime', null, 'LOC0005', 'LOC0010', 302, 'TRANS0307').
route('ROUTEPLANE081', '2025-04-27 09:58:00', '2025-04-27 11:58:00', '2025-04-27 09:58:00', '2025-04-27 11:58:00', 'OnTime', null, 'LOC0006', 'LOC0010', 287, 'TRANS0308').
route('ROUTEPLANE082', '2025-04-28 09:58:00', '2025-04-28 11:58:00', '2025-04-28 09:58:00', '2025-04-28 11:58:00', 'OnTime', null, 'LOC0006', 'LOC0010', 287, 'TRANS0308').
route('ROUTEPLANE083', '2025-04-29 09:58:00', '2025-04-29 11:58:00', '2025-04-29 09:58:00', '2025-04-29 11:58:00', 'OnTime', null, 'LOC0006', 'LOC0010', 287, 'TRANS0308').
route('ROUTEPLANE084', '2025-04-30 09:58:00', '2025-04-30 11:58:00', '2025-04-30 09:58:00', '2025-04-30 11:58:00', 'OnTime', null, 'LOC0006', 'LOC0010', 287, 'TRANS0308').
route('ROUTEPLANE085', '2025-05-01 09:58:00', '2025-05-01 11:58:00', '2025-05-01 09:58:00', '2025-05-01 11:58:00', 'OnTime', null, 'LOC0006', 'LOC0010', 287, 'TRANS0308').
route('ROUTEPLANE086', '2025-05-02 09:58:00', '2025-05-02 11:58:00', '2025-05-02 09:58:00', '2025-05-02 11:58:00', 'OnTime', null, 'LOC0006', 'LOC0010', 287, 'TRANS0308').
route('ROUTEPLANE087', '2025-05-03 09:58:00', '2025-05-03 11:58:00', '2025-05-03 09:58:00', '2025-05-03 11:58:00', 'OnTime', null, 'LOC0006', 'LOC0010', 287, 'TRANS0308').
route('ROUTEPLANE088', '2025-05-04 09:58:00', '2025-05-04 11:58:00', '2025-05-04 09:58:00', '2025-05-04 11:58:00', 'OnTime', null, 'LOC0006', 'LOC0010', 287, 'TRANS0308').
route('ROUTEPLANE091', '2025-04-27 16:34:00', '2025-04-27 18:22:00', '2025-04-27 16:34:00', '2025-04-27 18:22:00', 'OnTime', null, 'LOC0009', 'LOC0001', 337, 'TRANS0309').
route('ROUTEPLANE092', '2025-04-28 16:34:00', '2025-04-28 18:22:00', '2025-04-28 16:34:00', '2025-04-28 18:22:00', 'OnTime', null, 'LOC0009', 'LOC0001', 337, 'TRANS0309').
route('ROUTEPLANE093', '2025-04-29 16:34:00', '2025-04-29 18:22:00', '2025-04-29 16:34:00', '2025-04-29 18:22:00', 'OnTime', null, 'LOC0009', 'LOC0001', 337, 'TRANS0309').
route('ROUTEPLANE094', '2025-04-30 16:34:00', '2025-04-30 18:22:00', '2025-04-30 16:34:00', '2025-04-30 18:22:00', 'OnTime', null, 'LOC0009', 'LOC0001', 337, 'TRANS0309').
route('ROUTEPLANE095', '2025-05-01 16:34:00', '2025-05-01 18:22:00', '2025-05-01 16:34:00', '2025-05-01 18:22:00', 'OnTime', null, 'LOC0009', 'LOC0001', 337, 'TRANS0309').
route('ROUTEPLANE096', '2025-05-02 16:34:00', '2025-05-02 18:22:00', '2025-05-02 16:34:00', '2025-05-02 18:22:00', 'OnTime', null, 'LOC0009', 'LOC0001', 337, 'TRANS0309').
route('ROUTEPLANE097', '2025-05-03 16:34:00', '2025-05-03 18:22:00', '2025-05-03 16:34:00', '2025-05-03 18:22:00', 'OnTime', null, 'LOC0009', 'LOC0001', 337, 'TRANS0309').
route('ROUTEPLANE098', '2025-05-04 16:34:00', '2025-05-04 18:22:00', '2025-05-04 16:34:00', '2025-05-04 18:22:00', 'OnTime', null, 'LOC0009', 'LOC0001', 337, 'TRANS0309').
route('ROUTEPLANE101', '2025-04-27 18:52:00', '2025-04-27 21:04:00', '2025-04-27 18:52:00', '2025-04-27 21:04:00', 'OnTime', null, 'LOC0009', 'LOC0002', 327, 'TRANS0310').
route('ROUTEPLANE102', '2025-04-28 18:52:00', '2025-04-28 21:04:00', '2025-04-28 18:52:00', '2025-04-28 21:04:00', 'OnTime', null, 'LOC0009', 'LOC0002', 327, 'TRANS0310').
route('ROUTEPLANE103', '2025-04-29 18:52:00', '2025-04-29 21:04:00', '2025-04-29 18:52:00', '2025-04-29 21:04:00', 'OnTime', null, 'LOC0009', 'LOC0002', 327, 'TRANS0310').
route('ROUTEPLANE104', '2025-04-30 18:52:00', '2025-04-30 21:04:00', '2025-04-30 18:52:00', '2025-04-30 21:04:00', 'OnTime', null, 'LOC0009', 'LOC0002', 327, 'TRANS0310').
route('ROUTEPLANE105', '2025-05-01 18:52:00', '2025-05-01 21:04:00', '2025-05-01 18:52:00', '2025-05-01 21:04:00', 'OnTime', null, 'LOC0009', 'LOC0002', 327, 'TRANS0310').
route('ROUTEPLANE106', '2025-05-02 18:52:00', '2025-05-02 21:04:00', '2025-05-02 18:52:00', '2025-05-02 21:04:00', 'OnTime', null, 'LOC0009', 'LOC0002', 327, 'TRANS0310').
route('ROUTEPLANE107', '2025-05-03 18:52:00', '2025-05-03 21:04:00', '2025-05-03 18:52:00', '2025-05-03 21:04:00', 'OnTime', null, 'LOC0009', 'LOC0002', 327, 'TRANS0310').
route('ROUTEPLANE108', '2025-05-04 18:52:00', '2025-05-04 21:04:00', '2025-05-04 18:52:00', '2025-05-04 21:04:00', 'OnTime', null, 'LOC0009', 'LOC0002', 327, 'TRANS0310').
route('ROUTEPLANE0111', '2025-04-27 21:34:00', '2025-04-27 23:46:00', '2025-04-27 21:34:00', '2025-04-27 23:46:00', 'OnTime', null, 'LOC0009', 'LOC0003', 302, 'TRANS0311').
route('ROUTEPLANE0112', '2025-04-28 21:34:00', '2025-04-28 23:46:00', '2025-04-28 21:34:00', '2025-04-28 23:46:00', 'OnTime', null, 'LOC0009', 'LOC0003', 302, 'TRANS0311').
route('ROUTEPLANE0113', '2025-04-29 21:34:00', '2025-04-29 23:46:00', '2025-04-29 21:34:00', '2025-04-29 23:46:00', 'OnTime', null, 'LOC0009', 'LOC0003', 302, 'TRANS0311').
route('ROUTEPLANE0114', '2025-04-30 21:34:00', '2025-04-30 23:46:00', '2025-04-30 21:34:00', '2025-04-30 23:46:00', 'OnTime', null, 'LOC0009', 'LOC0003', 302, 'TRANS0311').
route('ROUTEPLANE0115', '2025-05-01 21:34:00', '2025-05-01 23:46:00', '2025-05-01 21:34:00', '2025-05-01 23:46:00', 'OnTime', null, 'LOC0009', 'LOC0003', 302, 'TRANS0311').
route('ROUTEPLANE0116', '2025-05-02 21:34:00', '2025-05-02 23:46:00', '2025-05-02 21:34:00', '2025-05-02 23:46:00', 'OnTime', null, 'LOC0009', 'LOC0003', 302, 'TRANS0311').
route('ROUTEPLANE0117', '2025-05-03 21:34:00', '2025-05-03 23:46:00', '2025-05-03 21:34:00', '2025-05-03 23:46:00', 'OnTime', null, 'LOC0009', 'LOC0003', 302, 'TRANS0311').
route('ROUTEPLANE0118', '2025-05-04 21:34:00', '2025-05-04 23:46:00', '2025-05-04 21:34:00', '2025-05-04 23:46:00', 'OnTime', null, 'LOC0009', 'LOC0003', 302, 'TRANS0311').
route('ROUTEPLANE121', '2025-04-27 09:28:00', '2025-04-27 11:16:00', '2025-04-27 09:28:00', '2025-04-27 11:16:00', 'OnTime', null, 'LOC0010', 'LOC0001', 362, 'TRANS0312').
route('ROUTEPLANE122', '2025-04-28 09:28:00', '2025-04-28 11:16:00', '2025-04-28 09:28:00', '2025-04-28 11:16:00', 'OnTime', null, 'LOC0010', 'LOC0001', 362, 'TRANS0312').
route('ROUTEPLANE123', '2025-04-29 09:28:00', '2025-04-29 11:16:00', '2025-04-29 09:28:00', '2025-04-29 11:16:00', 'OnTime', null, 'LOC0010', 'LOC0001', 362, 'TRANS0312').
route('ROUTEPLANE124', '2025-04-30 09:28:00', '2025-04-30 11:16:00', '2025-04-30 09:28:00', '2025-04-30 11:16:00', 'OnTime', null, 'LOC0010', 'LOC0001', 362, 'TRANS0312').
route('ROUTEPLANE125', '2025-05-01 09:28:00', '2025-05-01 11:16:00', '2025-05-01 09:28:00', '2025-05-01 11:16:00', 'OnTime', null, 'LOC0010', 'LOC0001', 362, 'TRANS0312').
route('ROUTEPLANE126', '2025-05-02 09:28:00', '2025-05-02 11:16:00', '2025-05-02 09:28:00', '2025-05-02 11:16:00', 'OnTime', null, 'LOC0010', 'LOC0001', 362, 'TRANS0312').
route('ROUTEPLANE127', '2025-05-03 09:28:00', '2025-05-03 11:16:00', '2025-05-03 09:28:00', '2025-05-03 11:16:00', 'OnTime', null, 'LOC0010', 'LOC0001', 362, 'TRANS0312').
route('ROUTEPLANE128', '2025-05-04 09:28:00', '2025-05-04 11:16:00', '2025-05-04 09:28:00', '2025-05-04 11:16:00', 'OnTime', null, 'LOC0010', 'LOC0001', 362, 'TRANS0312').
route('ROUTEPLANE0131', '2025-04-27 11:46:00', '2025-04-27 13:58:00', '2025-04-27 11:46:00', '2025-04-27 13:58:00', 'OnTime', null, 'LOC0010', 'LOC0002', 352, 'TRANS0313').
route('ROUTEPLANE0132', '2025-04-28 11:46:00', '2025-04-28 13:58:00', '2025-04-28 11:46:00', '2025-04-28 13:58:00', 'OnTime', null, 'LOC0010', 'LOC0002', 352, 'TRANS0313').
route('ROUTEPLANE0133', '2025-04-29 11:46:00', '2025-04-29 13:58:00', '2025-04-29 11:46:00', '2025-04-29 13:58:00', 'OnTime', null, 'LOC0010', 'LOC0002', 352, 'TRANS0313').
route('ROUTEPLANE0134', '2025-04-30 11:46:00', '2025-04-30 13:58:00', '2025-04-30 11:46:00', '2025-04-30 13:58:00', 'OnTime', null, 'LOC0010', 'LOC0002', 352, 'TRANS0313').
route('ROUTEPLANE0135', '2025-05-01 11:46:00', '2025-05-01 13:58:00', '2025-05-01 11:46:00', '2025-05-01 13:58:00', 'OnTime', null, 'LOC0010', 'LOC0002', 352, 'TRANS0313').
route('ROUTEPLANE0136', '2025-05-02 11:46:00', '2025-05-02 13:58:00', '2025-05-02 11:46:00', '2025-05-02 13:58:00', 'OnTime', null, 'LOC0010', 'LOC0002', 352, 'TRANS0313').
route('ROUTEPLANE0137', '2025-05-03 11:46:00', '2025-05-03 13:58:00', '2025-05-03 11:46:00', '2025-05-03 13:58:00', 'OnTime', null, 'LOC0010', 'LOC0002', 352, 'TRANS0313').
route('ROUTEPLANE0138', '2025-05-04 11:46:00', '2025-05-04 13:58:00', '2025-05-04 11:46:00', '2025-05-04 13:58:00', 'OnTime', null, 'LOC0010', 'LOC0002', 352, 'TRANS0313').
route('ROUTEPLANE141', '2025-04-27 14:28:00', '2025-04-27 16:16:00', '2025-04-27 14:28:00', '2025-04-27 16:16:00', 'OnTime', null, 'LOC0010', 'LOC0003', 337, 'TRANS0314').
route('ROUTEPLANE142', '2025-04-28 14:28:00', '2025-04-28 16:16:00', '2025-04-28 14:28:00', '2025-04-28 16:16:00', 'OnTime', null, 'LOC0010', 'LOC0003', 337, 'TRANS0314').
route('ROUTEPLANE143', '2025-04-29 14:28:00', '2025-04-29 16:16:00', '2025-04-29 14:28:00', '2025-04-29 16:16:00', 'OnTime', null, 'LOC0010', 'LOC0003', 337, 'TRANS0314').
route('ROUTEPLANE144', '2025-04-30 14:28:00', '2025-04-30 16:16:00', '2025-04-30 14:28:00', '2025-04-30 16:16:00', 'OnTime', null, 'LOC0010', 'LOC0003', 337, 'TRANS0314').
route('ROUTEPLANE145', '2025-05-01 14:28:00', '2025-05-01 16:16:00', '2025-05-01 14:28:00', '2025-05-01 16:16:00', 'OnTime', null, 'LOC0010', 'LOC0003', 337, 'TRANS0314').
route('ROUTEPLANE146', '2025-05-02 14:28:00', '2025-05-02 16:16:00', '2025-05-02 14:28:00', '2025-05-02 16:16:00', 'OnTime', null, 'LOC0010', 'LOC0003', 337, 'TRANS0314').
route('ROUTEPLANE147', '2025-05-03 14:28:00', '2025-05-03 16:16:00', '2025-05-03 14:28:00', '2025-05-03 16:16:00', 'OnTime', null, 'LOC0010', 'LOC0003', 337, 'TRANS0314').
route('ROUTEPLANE148', '2025-05-04 14:28:00', '2025-05-04 16:16:00', '2025-05-04 14:28:00', '2025-05-04 16:16:00', 'OnTime', null, 'LOC0010', 'LOC0003', 337, 'TRANS0314').
route('ROUTEPLANE151', '2023-04-27 11:46:00', '2023-04-27 13:58:00', '2023-04-27 11:46:00', '2023-04-27 15:58:00', 'Delayed', 'Weather', 'LOC0010', 'LOC0002', 352, 'TRANS0303').
route('ROUTEPLANE152', '2023-04-28 11:46:00', '2023-04-28 13:58:00', '2023-04-28 11:46:00', '2023-04-28 15:58:00', 'Delayed', 'Weather', 'LOC0010', 'LOC0002', 352, 'TRANS0303').
route('ROUTEPLANE153', '2023-04-29 11:46:00', '2023-04-29 13:58:00', '2023-04-29 11:46:00', '2023-04-29 15:58:00', 'Delayed', 'Weather', 'LOC0010', 'LOC0002', 352, 'TRANS0303').
route('ROUTEPLANE154', '2023-04-30 11:46:00', '2023-04-30 13:58:00', '2023-04-30 11:46:00', '2023-04-30 15:58:00', 'Delayed', 'Weather', 'LOC0010', 'LOC0002', 352, 'TRANS0303').
route('ROUTEPLANE155', '2023-05-01 11:46:00', '2023-05-01 13:58:00', '2023-05-01 11:46:00', '2023-05-01 15:58:00', 'Delayed', 'Weather', 'LOC0010', 'LOC0002', 352, 'TRANS0303').
route('ROUTEPLANE156', '2023-05-02 11:46:00', '2023-05-02 13:58:00', '2023-05-02 11:46:00', '2023-05-02 15:58:00', 'Delayed', 'Weather', 'LOC0010', 'LOC0002', 352, 'TRANS0303').
route('ROUTEPLANE157', '2023-05-03 11:46:00', '2023-05-03 13:58:00', '2023-05-03 11:46:00', '2023-05-03 15:58:00', 'Delayed', 'Weather', 'LOC0010', 'LOC0002', 352, 'TRANS0303').
route('ROUTEPLANE158', '2023-05-04 11:46:00', '2023-05-04 13:58:00', '2023-05-04 11:46:00', '2023-05-04 15:58:00', 'Delayed', 'Weather', 'LOC0010', 'LOC0002', 352, 'TRANS0303').
route('ROUTEPLANE161', '2023-04-27 14:28:00', '2023-04-27 16:16:00', '2023-04-27 14:28:00', '2023-04-27 17:16:00', 'Delayed', 'Weather', 'LOC0010', 'LOC0003', 337, 'TRANS0304').
route('ROUTEPLANE162', '2023-04-28 14:28:00', '2023-04-28 16:16:00', '2023-04-28 14:28:00', '2023-04-28 17:16:00', 'Delayed', 'Weather', 'LOC0010', 'LOC0003', 337, 'TRANS0304').
route('ROUTEPLANE163', '2023-04-29 14:28:00', '2023-04-29 16:16:00', '2023-04-29 14:28:00', '2023-04-29 17:16:00', 'Delayed', 'Weather', 'LOC0010', 'LOC0003', 337, 'TRANS0304').
route('ROUTEPLANE164', '2023-04-30 14:28:00', '2023-04-30 16:16:00', '2023-04-30 14:28:00', '2023-04-30 17:16:00', 'Delayed', 'Weather', 'LOC0010', 'LOC0003', 337, 'TRANS0304').
route('ROUTEPLANE165', '2023-05-01 14:28:00', '2023-05-01 16:16:00', '2023-05-01 14:28:00', '2023-05-01 17:16:00', 'Delayed', 'Weather', 'LOC0010', 'LOC0003', 337, 'TRANS0304').
route('ROUTEPLANE166', '2023-05-02 14:28:00', '2023-05-02 16:16:00', '2023-05-02 14:28:00', '2023-05-02 17:16:00', 'Delayed', 'Weather', 'LOC0010', 'LOC0003', 337, 'TRANS0304').
route('ROUTEPLANE167', '2023-05-03 14:28:00', '2023-05-03 16:16:00', '2023-05-03 14:28:00', '2023-05-03 17:16:00', 'Delayed', 'Weather', 'LOC0010', 'LOC0003', 337, 'TRANS0304').
route('ROUTEPLANE168', '2023-05-04 14:28:00', '2023-05-04 16:16:00', '2023-05-04 14:28:00', '2023-05-04 17:16:00', 'Delayed', 'Weather', 'LOC0010', 'LOC0003', 337, 'TRANS0304').

% trip/7 (33 registros)
% trip(TripID, TotalCost, BookingTime, STATUS, StartDate, EndDate, InsuranceID).
trip('TRP0001', 15, '2025-02-13 21:08:17', 'Completed', '2024-04-27', '2025-05-03', 'INS001').
trip('TRP0002', 15, '2025-02-14 21:08:17', 'Completed', '2024-04-28', '2025-05-01', 'INS002').
trip('TRP0003', 15, '2025-02-14 21:08:17', 'Completed', '2024-04-29', '2025-05-05', 'INS003').
trip('TRP0004', 15, '2025-02-14 21:08:17', 'Completed', '2024-04-29', '2025-05-05', 'INS004').
trip('TRP0005', 15, '2025-02-14 21:08:17', 'Completed', '2024-04-30', '2025-05-02', 'INS005').
trip('TRP0006', 15, '2025-02-14 21:08:17', 'Completed', '2024-04-27', '2025-05-04', 'INS006').
trip('TRP0007', 250, '2025-02-14 21:08:17', 'Completed', '2024-04-27', '2025-05-04', 'INS007').
trip('TRP0008', 250, '2025-02-14 21:08:17', 'Completed', '2024-04-28', '2025-05-02', 'INS008').
trip('TRP0009', 25, '2025-02-14 21:08:17', 'Completed', '2024-04-30', '2025-05-01', 'INS009').
trip('TRP0010', 25, '2025-02-14 21:08:17', 'Completed', '2024-04-29', '2025-05-05', 'INS010').
trip('TRP0011', 20, '2025-02-13 21:08:17', 'Completed', '2024-04-29', '2025-05-01', 'INS011').
trip('TRP0012', 20, '2025-02-13 21:08:17', 'Completed', '2024-04-30', '2025-05-01', 'INS012').
trip('TRP0013', 15, '2025-02-13 21:08:17', 'Completed', '2024-04-27', '2025-05-02', 'INS013').
trip('TRP0014', 15, '2025-02-13 21:08:17', 'Completed', '2024-04-27', '2025-05-02', 'INS014').
trip('TRP0015', 15, '2025-02-13 21:08:17', 'Completed', '2024-04-29', '2025-05-03', 'INS015').
trip('TRP0016', 15, '2025-02-13 21:08:17', 'Completed', '2024-04-30', '2025-05-04', 'INS016').
trip('TRP0017', 35, '2025-02-13 21:08:17', 'Completed', '2024-04-29', '2025-05-01', 'INS017').
trip('TRP0018', 35, '2025-02-13 21:08:17', 'Completed', '2024-04-27', '2025-05-02', 'INS018').
trip('TRP0019', 50, '2025-02-13 21:08:17', 'Completed', '2024-04-30', '2025-05-03', 'INS019').
trip('TRP0020', 50, '2025-02-13 21:08:17', 'Completed', '2024-04-27', '2025-05-04', 'INS020').
trip('TRP0021', 30, '2025-02-13 21:08:17', 'Completed', '2024-04-29', '2025-05-02', 'INS021').
trip('TRP0022', 337, '2025-02-14 21:08:17', 'Completed', '2024-04-27', '2025-05-05', 'INS022').
trip('TRP0023', 287, '2025-02-14 21:08:17', 'Completed', '2024-04-28', '2025-05-05', 'INS023').
trip('TRP0024', 15, '2025-02-13 21:08:17', 'Completed', '2024-04-28', '2025-05-04', null).
trip('TRP0025', 250, '2025-02-14 21:08:17', 'Completed', '2024-04-29', '2025-05-04', null).
trip('TRP0026', 25, '2025-02-14 21:08:17', 'Completed', '2024-04-29', '2025-05-03', null).
trip('TRP0027', 50, '2025-02-13 21:08:17', 'Completed', '2024-04-29', '2025-05-03', null).
trip('TRP0028', 20, '2025-02-14 21:08:17', 'Completed', '2024-04-27', '2025-05-05', null).
trip('TRP0029', 15, '2025-02-14 21:08:17', 'Completed', '2024-04-30', '2025-05-02', null).
trip('TRP0030', 30, '2025-02-13 21:08:17', 'Completed', '2024-04-30', '2025-05-01', null).
trip('TRP0031', 30, '2025-02-14 21:08:17', 'Completed', '2024-04-30', '2025-05-01', null).
trip('TRP0032', 30, '2025-02-14 21:08:17', 'Completed', '2024-04-27', '2025-05-05', null).
trip('TRP0101', 35, '2025-02-14 21:08:17', 'Completed', '2024-04-27', '2025-05-05', null).

% trip_route/2 (32 registros)
% trip_route(TripID, RouteID).
trip_route('TRP0001', 'ROUTEBUS001').
trip_route('TRP0002', 'ROUTEBUS001').
trip_route('TRP0003', 'ROUTETRAIN001').
trip_route('TRP0004', 'ROUTETRAIN001').
trip_route('TRP0005', 'ROUTETRAIN001').
trip_route('TRP0006', 'ROUTETRAIN001').
trip_route('TRP0007', 'ROUTEPLANE001').
trip_route('TRP0008', 'ROUTEPLANE001').
trip_route('TRP0009', 'ROUTESHIP001').
trip_route('TRP0010', 'ROUTESHIP001').
trip_route('TRP0011', 'ROUTETRAIN002').
trip_route('TRP0012', 'ROUTETRAIN002').
trip_route('TRP0013', 'ROUTETRAIN004').
trip_route('TRP0014', 'ROUTETRAIN004').
trip_route('TRP0015', 'ROUTETRAIN001').
trip_route('TRP0016', 'ROUTETRAIN002').
trip_route('TRP0017', 'ROUTESHIP022').
trip_route('TRP0018', 'ROUTESHIP022').
trip_route('TRP0019', 'ROUTETRAIN126').
trip_route('TRP0020', 'ROUTETRAIN126').
trip_route('TRP0021', 'ROUTETRAIN135').
trip_route('TRP0022', 'ROUTEPLANE141').
trip_route('TRP0023', 'ROUTEPLANE083').
trip_route('TRP0024', 'ROUTETRAIN001').
trip_route('TRP0025', 'ROUTEPLANE002').
trip_route('TRP0026', 'ROUTESHIP156').
trip_route('TRP0027', 'ROUTETRAIN101').
trip_route('TRP0028', 'ROUTETRAIN088').
trip_route('TRP0029', 'ROUTETRAIN003').
trip_route('TRP0030', 'ROUTETRAIN115').
trip_route('TRP0031', 'ROUTEBUS094').
trip_route('TRP0032', 'ROUTEBUS002').

% route_unit/4 (60 registros)
% route_unit(RouteID, TransportationID, UnitNumber, IsAvailable).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U001', false).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U002', true).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U003', false).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U004', false).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U005', false).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U006', true).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U007', true).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U008', false).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U009', false).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U010', false).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U011', true).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U012', false).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U013', false).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U014', false).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U015', false).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U016', true).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U017', true).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U018', false).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U019', false).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U020', false).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U021', true).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U022', true).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U023', false).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U024', false).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U025', true).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U026', false).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U027', true).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U028', false).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U029', false).
route_unit('ROUTEPLANE001', 'TRANS0301', 'U030', true).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U101', false).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U102', false).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U103', true).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U104', false).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U105', false).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U106', false).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U107', true).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U108', true).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U109', true).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U110', false).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U111', true).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U112', true).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U113', false).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U114', false).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U115', true).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U116', false).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U117', true).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U118', false).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U119', false).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U120', false).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U121', true).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U122', true).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U123', false).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U124', true).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U125', false).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U126', false).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U127', false).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U128', true).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U129', false).
route_unit('ROUTETRAIN001', 'TRANS0401', 'U130', true).

% restaurant/7 (100 registros)
% restaurant(RestaurantID, NAME, AvgPricePerPerson, OpeningHours, Rating, AcceptsReservation, LocationID).
restaurant('R001', 'The Grill House', 25.00, '11:00 AM - 10:00 PM', 4.5, true, 'LOC0001').
restaurant('R002', 'Sushi World', 40.00, '12:00 PM - 11:00 PM', 4.3, true, 'LOC0001').
restaurant('R003', 'Spaghetti Bistro', 20.00, '11:30 AM - 9:30 PM', 4.0, false, 'LOC0001').
restaurant('R004', 'Taco Delights', 15.00, '10:00 AM - 10:00 PM', 4.7, true, 'LOC0001').
restaurant('R005', 'Pizza Palace', 18.00, '11:00 AM - 10:00 PM', 4.6, true, 'LOC0001').
restaurant('R006', 'Burger Haven', 12.00, '11:00 AM - 9:00 PM', 3.9, true, 'LOC0001').
restaurant('R007', 'The Seafood Shack', 35.00, '12:00 PM - 11:00 PM', 4.8, false, 'LOC0001').
restaurant('R008', 'Vegan Delights', 20.00, '9:00 AM - 9:00 PM', 4.2, true, 'LOC0001').
restaurant('R009', 'Steakhouse Prime', 50.00, '1:00 PM - 10:00 PM', 4.9, true, 'LOC0001').
restaurant('R010', 'Café de Paris', 30.00, '8:00 AM - 8:00 PM', 4.1, false, 'LOC0001').
restaurant('R011', 'Tex-Mex Feast', 22.00, '10:30 AM - 10:00 PM', 4.4, true, 'LOC0002').
restaurant('R012', 'Pasta Perfection', 28.00, '11:00 AM - 10:00 PM', 4.3, true, 'LOC0002').
restaurant('R013', 'Ocean Breeze Seafood', 45.00, '12:00 PM - 10:00 PM', 4.7, true, 'LOC0002').
restaurant('R014', 'BBQ Pit', 30.00, '12:00 PM - 9:00 PM', 4.2, false, 'LOC0002').
restaurant('R015', 'Sushi & Sashimi', 38.00, '11:30 AM - 10:30 PM', 4.6, true, 'LOC0002').
restaurant('R016', 'Bistro 7', 32.00, '11:00 AM - 9:00 PM', 4.1, true, 'LOC0002').
restaurant('R017', 'Dim Sum Delight', 25.00, '10:00 AM - 9:00 PM', 4.5, false, 'LOC0002').
restaurant('R018', 'Chilli’s Grill', 20.00, '11:00 AM - 11:00 PM', 3.8, true, 'LOC0002').
restaurant('R019', 'Italian Bistro', 18.00, '11:00 AM - 10:00 PM', 4.4, true, 'LOC0002').
restaurant('R020', 'Steak & Wine', 55.00, '12:00 PM - 11:00 PM', 4.8, true, 'LOC0002').
restaurant('R021', 'Sushi Revolution', 45.00, '11:30 AM - 10:00 PM', 4.7, true, 'LOC0003').
restaurant('R022', 'Parisian Café', 25.00, '8:00 AM - 8:00 PM', 4.2, false, 'LOC0003').
restaurant('R023', 'Ramen Express', 18.00, '11:00 AM - 10:00 PM', 4.3, true, 'LOC0003').
restaurant('R024', 'Sydney Seafood Grill', 35.00, '12:00 PM - 10:00 PM', 4.4, false, 'LOC0003').
restaurant('R025', 'The Maple Leaf', 28.00, '11:00 AM - 9:00 PM', 4.6, true, 'LOC0003').
restaurant('R026', 'Berlin Bistro', 30.00, '11:00 AM - 10:00 PM', 4.1, true, 'LOC0003').
restaurant('R027', 'Mumbai Masala', 15.00, '10:00 AM - 10:00 PM', 4.3, false, 'LOC0003').
restaurant('R028', 'Roman Feast', 40.00, '12:00 PM - 9:00 PM', 4.5, true, 'LOC0003').
restaurant('R029', 'Amsterdam Café', 22.00, '11:00 AM - 8:00 PM', 4.0, true, 'LOC0003').
restaurant('R030', 'Seoul Eats', 20.00, '11:00 AM - 10:00 PM', 4.4, true, 'LOC0003').
restaurant('R031', 'Taco Joint', 16.00, '10:00 AM - 9:00 PM', 3.7, false, 'LOC0004').
restaurant('R032', 'Bistro Vino', 35.00, '12:00 PM - 10:00 PM', 4.6, true, 'LOC0004').
restaurant('R033', 'Pasta & More', 28.00, '11:00 AM - 10:00 PM', 4.2, false, 'LOC0004').
restaurant('R034', 'Southern BBQ', 25.00, '11:30 AM - 9:00 PM', 4.1, true, 'LOC0004').
restaurant('R035', 'Diner Delight', 18.00, '7:00 AM - 10:00 PM', 4.0, true, 'LOC0004').
restaurant('R036', 'French Bistro', 45.00, '12:00 PM - 11:00 PM', 4.8, true, 'LOC0004').
restaurant('R037', 'Seafood Palate', 38.00, '11:00 AM - 9:00 PM', 4.7, true, 'LOC0004').
restaurant('R038', 'Burgers & Fries', 12.00, '10:00 AM - 8:00 PM', 4.0, false, 'LOC0004').
restaurant('R039', 'Italian Feast', 30.00, '1:00 PM - 10:00 PM', 4.5, true, 'LOC0004').
restaurant('R040', 'Gourmet Café', 28.00, '10:00 AM - 8:00 PM', 4.2, true, 'LOC0004').
restaurant('R041', 'Steakhouse Delight', 50.00, '11:30 AM - 11:00 PM', 4.9, true, 'LOC0005').
restaurant('R042', 'Sushi Zen', 45.00, '11:00 AM - 10:00 PM', 4.8, true, 'LOC0005').
restaurant('R043', 'Asian Bistro', 25.00, '12:00 PM - 10:00 PM', 4.3, true, 'LOC0005').
restaurant('R044', 'Pizza & Pasta', 20.00, '11:00 AM - 9:00 PM', 4.0, false, 'LOC0005').
restaurant('R045', 'Steak and Seafood', 50.00, '1:00 PM - 10:00 PM', 4.6, true, 'LOC0005').
restaurant('R046', 'Bistro Bar', 18.00, '10:00 AM - 10:00 PM', 3.8, false, 'LOC0005').
restaurant('R047', 'Tandoori Nights', 30.00, '11:00 AM - 9:00 PM', 4.5, true, 'LOC0005').
restaurant('R048', 'Burgers & BBQ', 20.00, '11:00 AM - 10:00 PM', 4.3, true, 'LOC0005').
restaurant('R049', 'Italian Gardens', 35.00, '12:00 PM - 10:00 PM', 4.6, true, 'LOC0005').
restaurant('R050', 'Gourmet Kitchen', 40.00, '11:00 AM - 11:00 PM', 4.7, true, 'LOC0005').
restaurant('R051', 'Taco Fiesta', 18.00, '11:00 AM - 10:00 PM', 4.2, false, 'LOC0006').
restaurant('R052', 'Dim Sum Delights', 28.00, '10:00 AM - 10:00 PM', 4.3, true, 'LOC0006').
restaurant('R053', 'Steakhouse Grill', 50.00, '12:00 PM - 11:00 PM', 4.9, true, 'LOC0006').
restaurant('R054', 'Noodles & More', 22.00, '10:00 AM - 9:00 PM', 4.0, true, 'LOC0006').
restaurant('R055', 'The Pancake House', 15.00, '7:00 AM - 9:00 PM', 4.1, false, 'LOC0006').
restaurant('R056', 'Pizza Empire', 18.00, '11:00 AM - 10:00 PM', 4.3, true, 'LOC0006').
restaurant('R057', 'Spicy Asian Grill', 30.00, '12:00 PM - 10:00 PM', 4.5, true, 'LOC0006').
restaurant('R058', 'Grill Master', 28.00, '10:00 AM - 10:00 PM', 4.4, true, 'LOC0006').
restaurant('R059', 'Bistro Le Paris', 35.00, '11:00 AM - 10:00 PM', 4.6, true, 'LOC0006').
restaurant('R060', 'Sushi Master', 40.00, '12:00 PM - 11:00 PM', 4.7, true, 'LOC0006').
restaurant('R061', 'The Royal Feast', 45.00, '11:00 AM - 10:00 PM', 4.5, false, 'LOC0007').
restaurant('R062', 'Café Aroma', 22.00, '9:00 AM - 9:00 PM', 4.0, true, 'LOC0007').
restaurant('R063', 'Sushi Paradise', 50.00, '11:30 AM - 10:00 PM', 4.8, true, 'LOC0007').
restaurant('R064', 'Burgers & Beers', 18.00, '11:00 AM - 9:00 PM', 4.1, false, 'LOC0007').
restaurant('R065', 'Mexican Fiesta', 20.00, '11:00 AM - 10:00 PM', 4.3, true, 'LOC0007').
restaurant('R066', 'Gourmet Grill', 30.00, '11:00 AM - 10:00 PM', 4.5, true, 'LOC0007').
restaurant('R067', 'Bistro Vino', 35.00, '12:00 PM - 10:00 PM', 4.7, true, 'LOC0007').
restaurant('R068', 'Pasta Paradise', 28.00, '11:00 AM - 9:00 PM', 4.4, true, 'LOC0007').
restaurant('R069', 'Café Delight', 22.00, '10:00 AM - 8:00 PM', 4.0, true, 'LOC0007').
restaurant('R070', 'Italian Love', 40.00, '11:00 AM - 10:00 PM', 4.8, true, 'LOC0007').
restaurant('R071', 'Sushi Galaxy', 38.00, '12:00 PM - 10:00 PM', 4.6, true, 'LOC0008').
restaurant('R072', 'Grill House', 30.00, '11:00 AM - 9:00 PM', 4.2, true, 'LOC0008').
restaurant('R073', 'Seafood Delight', 45.00, '11:00 AM - 10:00 PM', 4.9, true, 'LOC0008').
restaurant('R074', 'Taco Town', 18.00, '10:00 AM - 9:00 PM', 4.0, true, 'LOC0008').
restaurant('R075', 'Spicy Grill', 25.00, '11:00 AM - 10:00 PM', 4.3, true, 'LOC0008').
restaurant('R076', 'Bistro & Wine', 40.00, '11:00 AM - 10:00 PM', 4.5, true, 'LOC0008').
restaurant('R077', 'Asian Fusion', 30.00, '12:00 PM - 10:00 PM', 4.7, true, 'LOC0008').
restaurant('R078', 'Italian Feast', 35.00, '11:00 AM - 9:00 PM', 4.6, true, 'LOC0008').
restaurant('R079', 'Steak & Seafood', 50.00, '1:00 PM - 11:00 PM', 4.8, true, 'LOC0008').
restaurant('R080', 'French Bistro', 45.00, '12:00 PM - 10:00 PM', 4.4, true, 'LOC0008').
restaurant('R081', 'Grill & Bar', 25.00, '11:00 AM - 9:00 PM', 4.2, true, 'LOC0009').
restaurant('R082', 'The Pancake Place', 15.00, '7:00 AM - 9:00 PM', 4.0, true, 'LOC0009').
restaurant('R083', 'Gourmet Café', 28.00, '9:00 AM - 8:00 PM', 4.3, true, 'LOC0009').
restaurant('R084', 'Sushi Delight', 40.00, '12:00 PM - 10:00 PM', 4.5, true, 'LOC0009').
restaurant('R085', 'BBQ House', 22.00, '11:00 AM - 10:00 PM', 4.1, true, 'LOC0009').
restaurant('R086', 'The Fish Shack', 35.00, '12:00 PM - 10:00 PM', 4.7, true, 'LOC0009').
restaurant('R087', 'Pasta Delight', 28.00, '11:00 AM - 9:00 PM', 4.2, true, 'LOC0009').
restaurant('R088', 'Mexican Feast', 20.00, '11:00 AM - 10:00 PM', 4.3, true, 'LOC0009').
restaurant('R089', 'Burgers & BBQ', 18.00, '10:00 AM - 9:00 PM', 4.0, true, 'LOC0009').
restaurant('R090', 'Steakhouse Prime', 50.00, '12:00 PM - 11:00 PM', 4.9, true, 'LOC0009').
restaurant('R091', 'Pizza Paradise', 22.00, '11:00 AM - 10:00 PM', 4.1, true, 'LOC0010').
restaurant('R092', 'Sushi Express', 38.00, '11:00 AM - 10:00 PM', 4.5, true, 'LOC0010').
restaurant('R093', 'Italian Bistro', 30.00, '12:00 PM - 9:00 PM', 4.3, true, 'LOC0010').
restaurant('R094', 'Grill and Chill', 25.00, '11:00 AM - 10:00 PM', 4.2, true, 'LOC0010').
restaurant('R095', 'Spicy Eats', 20.00, '10:00 AM - 9:00 PM', 4.0, true, 'LOC0010').
restaurant('R096', 'BBQ Smokehouse', 28.00, '12:00 PM - 10:00 PM', 4.6, true, 'LOC0010').
restaurant('R097', 'Sushi Master', 45.00, '11:00 AM - 9:00 PM', 4.7, true, 'LOC0010').
restaurant('R098', 'Pizza Perfection', 18.00, '11:00 AM - 10:00 PM', 4.3, true, 'LOC0010').
restaurant('R099', 'Bistro Vino', 35.00, '11:00 AM - 10:00 PM', 4.5, true, 'LOC0010').
restaurant('R100', 'The Burger Joint', 22.00, '10:00 AM - 10:00 PM', 4.1, true, 'LOC0010').

% activity/9 (100 registros)
% activity(ActivityID, NAME, TYPE, Duration, Price, ContactPhone, Rating, OpeningHours, LocationID).
activity('ACT0001', 'Jacobs Inc Zoo Visit', 'Wine Tasting', 6.48, 134.21, '662-729-8262x5229', 2.0, '09:00-21:00', 'LOC0001').
activity('ACT0002', 'Shaw-Francis Aquarium Visit', 'Cultural Show', 4.83, 33.98, '001-703-160-2227x202', 4.9, '10:00-22:00', 'LOC0001').
activity('ACT0003', 'Sparks-Graves Art Workshop', 'Museum Tour', 6.63, 128.20, '+1-950-037-7974x6748', 3.0, '24 Hours', 'LOC0001').
activity('ACT0004', 'Davis-Mitchell Historical Site Visit', 'Cooking Class', 7.95, 65.50, '001-678-442-5966x8620', 2.0, '24 Hours', 'LOC0001').
activity('ACT0005', 'Allen-Chen Theater Play', 'Historical Site Visit', 5.86, 81.28, '+1-269-206-2469x05522', 3.5, '24 Hours', 'LOC0001').
activity('ACT0006', 'Lewis, Medina and Scott Wine Tasting', 'Art Workshop', 6.68, 125.31, '001-276-587-5004x4124', 2.3, '24 Hours', 'LOC0001').
activity('ACT0007', 'Perez PLC City Walk', 'Hiking', 4.03, 144.73, '0750072445', 4.2, '11:00-19:00', 'LOC0001').
activity('ACT0008', 'Hill Inc Museum Tour', 'City Walk', 1.59, 10.99, '+1-188-956-9378', 2.4, '10:00-18:00', 'LOC0001').
activity('ACT0009', 'Kennedy, Braun and Mack Music Festival', 'Zoo Visit', 3.73, 25.43, '+1-356-664-4310x60985', 4.5, '11:00-19:00', 'LOC0001').
activity('ACT0010', 'Simpson-Walker Historical Site Visit', 'City Walk', 6.04, 103.44, '9814499476', 3.7, '08:00-16:00', 'LOC0001').
activity('ACT0011', 'Jones, Sparks and Nelson Historical Site Visit', 'City Walk', 1.97, 44.54, '001-500-186-5739x591', 3.1, '11:00-19:00', 'LOC0001').
activity('ACT0012', 'Weaver-Stanley City Walk', 'Historical Site Visit', 3.57, 95.72, '504.985.5642', 3.3, '08:00-16:00', 'LOC0001').
activity('ACT0013', 'Carroll and Sons Hiking', 'Aquarium Visit', 6.71, 62.26, '(757)719-3168x2415', 2.9, '24 Hours', 'LOC0002').
activity('ACT0014', 'Daugherty Inc Zoo Visit', 'Museum Tour', 5.08, 107.43, '980-198-2951x65225', 3.8, '10:00-18:00', 'LOC0002').
activity('ACT0015', 'Kemp Ltd Music Festival', 'Boat Ride', 7.04, 21.75, '+1-643-590-8056x483', 2.5, '11:00-19:00', 'LOC0002').
activity('ACT0016', 'Olson Inc City Walk', 'Food Tour', 7.15, 110.53, '(739)808-4068x728', 2.6, '09:00-17:00', 'LOC0002').
activity('ACT0017', 'Joyce-Gray Cultural Show', 'Music Festival', 7.34, 18.99, '(554)413-8888', 2.2, '24 Hours', 'LOC0002').
activity('ACT0018', 'Sanford Inc Cooking Class', 'Music Festival', 3.51, 82.40, '940-391-2498x11365', 2.4, '10:00-18:00', 'LOC0002').
activity('ACT0019', 'Munoz, Jordan and Rivas Hiking', 'Bike Tour', 6.74, 84.09, '979.871.3617x7575', 4.2, '09:00-17:00', 'LOC0002').
activity('ACT0020', 'Ramos, Howell and Ellison Cooking Class', 'Art Workshop', 7.08, 123.54, '+1-322-694-1190x5903', 4.9, '10:00-18:00', 'LOC0002').
activity('ACT0021', 'Thompson, Anderson and Soto Museum Tour', 'Aquarium Visit', 4.61, 135.36, '832-238-0923', 2.8, '08:00-16:00', 'LOC0002').
activity('ACT0022', 'Williamson, Warner and Hobbs Museum Tour', 'Theater Play', 7.10, 47.89, '(228)967-2054', 3.5, '08:00-16:00', 'LOC0002').
activity('ACT0023', 'Anderson-Brooks Hiking', 'Local Market Tour', 6.88, 83.21, '572.741.9824', 3.2, '09:00-21:00', 'LOC0002').
activity('ACT0024', 'Ortiz-Allen Hiking', 'Art Workshop', 5.21, 147.86, '(693)251-2955', 3.6, '08:00-16:00', 'LOC0002').
activity('ACT0025', 'Gordon and Sons Hiking', 'Theme Park Visit', 1.37, 43.29, '(434)950-7325', 4.4, '09:00-21:00', 'LOC0003').
activity('ACT0026', 'Clarke Ltd City Walk', 'Historical Site Visit', 3.72, 91.97, '395.343.0256x11721', 2.5, '09:00-17:00', 'LOC0003').
activity('ACT0027', 'Yates-Howard Bike Tour', 'Cultural Show', 3.03, 111.34, '(771)928-0832', 3.3, '10:00-22:00', 'LOC0003').
activity('ACT0028', 'Craig Group Hiking', 'Zoo Visit', 5.17, 25.56, '+1-106-538-4483x0833', 2.8, '11:00-19:00', 'LOC0003').
activity('ACT0029', 'Wilkerson, Daniels and Romero Cultural Show', 'Wine Tasting', 3.69, 51.83, '347-788-3017x409', 3.2, '11:00-19:00', 'LOC0003').
activity('ACT0030', 'Hernandez-Walters Music Festival', 'Historical Site Visit', 1.97, 48.84, '+1-215-664-7286x277', 3.7, '10:00-22:00', 'LOC0003').
activity('ACT0031', 'Mccann Ltd City Walk', 'City Walk', 5.06, 101.13, '+1-340-376-3512', 4.7, '10:00-22:00', 'LOC0003').
activity('ACT0032', 'Chavez PLC Aquarium Visit', 'Theme Park Visit', 4.46, 61.65, '384-244-0534x88583', 4.3, '08:00-16:00', 'LOC0003').
activity('ACT0033', 'Williams-Gonzales Historical Site Visit', 'Historical Site Visit', 6.70, 92.28, '786-953-4024x8136', 4.8, '11:00-19:00', 'LOC0003').
activity('ACT0034', 'Smith and Sons Music Festival', 'Bike Tour', 5.76, 122.45, '919-970-1869', 3.7, '24 Hours', 'LOC0004').
activity('ACT0035', 'Hayes LLC Bike Tour', 'City Walk', 2.49, 66.72, '+1-707-145-2383', 4.6, '09:00-17:00', 'LOC0004').
activity('ACT0036', 'Stewart-Harris Cooking Class', 'Museum Tour', 1.77, 40.57, '+1-366-204-8504x36279', 4.9, '09:00-17:00', 'LOC0004').
activity('ACT0037', 'Carlson and Sons Art Workshop', 'Theme Park Visit', 3.86, 92.51, '970-990-7710x2600', 3.8, '10:00-18:00', 'LOC0004').
activity('ACT0038', 'Andrews and Sons Hiking', 'Art Workshop', 2.64, 110.87, '861.618.2812', 3.7, '10:00-22:00', 'LOC0004').
activity('ACT0039', 'Mccarthy Ltd Cultural Show', 'Local Market Tour', 4.85, 31.59, '(432)267-6207x210', 4.3, '08:00-16:00', 'LOC0004').
activity('ACT0040', 'Mitchell-Kim Cultural Show', 'Local Market Tour', 5.37, 38.40, '724-299-8623x891', 4.6, '10:00-18:00', 'LOC0004').
activity('ACT0041', 'Greer-Johnson Music Festival', 'Bike Tour', 2.11, 143.60, '+1-306-259-5784', 4.4, '10:00-22:00', 'LOC0004').
activity('ACT0042', 'Williams LLC Theater Play', 'Art Workshop', 4.11, 140.59, '423.491.3580', 4.6, '10:00-22:00', 'LOC0005').
activity('ACT0043', 'Montoya Inc Cooking Class', 'City Walk', 6.29, 57.60, '453.720.7964x798', 3.1, '08:00-16:00', 'LOC0005').
activity('ACT0044', 'Strickland-Barnes Food Tour', 'Bike Tour', 2.76, 134.09, '803-488-7187x2619', 4.6, '10:00-18:00', 'LOC0005').
activity('ACT0045', 'Smith and Sons Music Festival', 'Cooking Class', 5.79, 127.68, '492-841-5367x5296', 3.6, '09:00-21:00', 'LOC0005').
activity('ACT0046', 'Pena-Hayes Cultural Show', 'Wine Tasting', 6.30, 112.31, '001-895-339-6024x4475', 4.5, '08:00-16:00', 'LOC0005').
activity('ACT0047', 'Leonard-Summers Art Workshop', 'Wine Tasting', 3.79, 85.70, '243-118-5255', 4.4, '09:00-17:00', 'LOC0005').
activity('ACT0048', 'Medina Ltd Wine Tasting', 'Zoo Visit', 4.15, 44.30, '738-218-2932x36256', 4.4, '09:00-21:00', 'LOC0005').
activity('ACT0049', 'Rhodes LLC Aquarium Visit', 'Food Tour', 7.99, 45.61, '(812)914-2395', 4.1, '10:00-18:00', 'LOC0005').
activity('ACT0050', 'Warner and Sons Aquarium Visit', 'Cooking Class', 4.60, 42.75, '001-209-514-9611x441', 2.9, '10:00-18:00', 'LOC0005').
activity('ACT0051', 'Byrd, Farmer and Colon Hiking', 'City Walk', 1.45, 22.42, '+1-108-498-9930x332', 3.7, '10:00-18:00', 'LOC0005').
activity('ACT0052', 'Owens-Ramirez Theater Play', 'Aquarium Visit', 4.11, 71.20, '394-149-2286', 4.2, '08:00-16:00', 'LOC0005').
activity('ACT0053', 'Young LLC Historical Site Visit', 'Cultural Show', 3.80, 120.35, '+1-217-101-2202', 4.4, '09:00-17:00', 'LOC0006').
activity('ACT0054', 'Santiago-Moore Wine Tasting', 'Cultural Show', 3.62, 93.12, '(659)208-9474x9834', 4.3, '09:00-21:00', 'LOC0006').
activity('ACT0055', 'Smith Ltd Food Tour', 'Bike Tour', 5.01, 139.37, '356.769.7237x103', 2.6, '24 Hours', 'LOC0006').
activity('ACT0056', 'Wagner PLC Music Festival', 'Cooking Class', 6.38, 91.62, '236.735.2515x3698', 3.5, '24 Hours', 'LOC0006').
activity('ACT0057', 'Washington Inc Hiking', 'Aquarium Visit', 6.35, 42.35, '222.136.8962x70198', 4.0, '08:00-16:00', 'LOC0006').
activity('ACT0058', 'Owen Group Cooking Class', 'Museum Tour', 4.57, 130.91, '(640)275-8840', 2.5, '09:00-17:00', 'LOC0006').
activity('ACT0059', 'Walker PLC Wine Tasting', 'Bike Tour', 2.35, 95.48, '+1-701-210-8136x2238', 2.5, '09:00-17:00', 'LOC0006').
activity('ACT0060', 'Horton LLC Food Tour', 'Aquarium Visit', 2.43, 90.38, '(311)322-8788x978', 3.9, '08:00-16:00', 'LOC0007').
activity('ACT0061', 'Smith-Burke Cooking Class', 'Bike Tour', 4.62, 86.18, '612.428.6373x7241', 4.3, '09:00-21:00', 'LOC0007').
activity('ACT0062', 'Cameron-Sandoval Cultural Show', 'Theme Park Visit', 3.34, 94.71, '+1-913-514-6257', 3.9, '09:00-17:00', 'LOC0007').
activity('ACT0063', 'Baker, Mcclain and Guzman Cultural Show', 'Aquarium Visit', 5.85, 80.44, '274-291-4283', 4.1, '10:00-22:00', 'LOC0007').
activity('ACT0064', 'Walker LLC Music Festival', 'Aquarium Visit', 2.77, 89.23, '537-804-8717x395', 4.7, '09:00-21:00', 'LOC0007').
activity('ACT0065', 'Hardy and Sons Food Tour', 'Local Market Tour', 5.32, 72.56, '+1-402-703-4703', 3.5, '08:00-16:00', 'LOC0007').
activity('ACT0066', 'Rodriguez, May and James Wine Tasting', 'Cooking Class', 6.00, 122.14, '791-585-2082x179', 3.0, '09:00-17:00', 'LOC0007').
activity('ACT0067', 'Little, Reid and Shaw Bike Tour', 'Aquarium Visit', 3.36, 117.65, '001-769-866-9825x891', 3.8, '09:00-21:00', 'LOC0007').
activity('ACT0068', 'Martinez, Martin and Boone Theater Play', 'Bike Tour', 3.35, 74.80, '553-263-9857x2559', 4.4, '09:00-21:00', 'LOC0008').
activity('ACT0069', 'Sullivan, Walker and Simmons Hiking', 'Wine Tasting', 2.78, 117.67, '+1-409-482-5072x839', 4.6, '09:00-21:00', 'LOC0008').
activity('ACT0070', 'Hudson Inc Historical Site Visit', 'Aquarium Visit', 5.89, 105.04, '585-745-3451x4327', 4.0, '09:00-17:00', 'LOC0008').
activity('ACT0071', 'Mcintyre PLC Cooking Class', 'Cooking Class', 3.44, 78.39, '(615)465-7285', 2.8, '08:00-16:00', 'LOC0008').
activity('ACT0072', 'Evans-Benson Local Market Tour', 'City Walk', 2.45, 35.76, '705.699.0870x0871', 3.3, '09:00-17:00', 'LOC0008').
activity('ACT0073', 'Richardson Group Theater Play', 'Aquarium Visit', 6.15, 78.66, '001-735-865-4181x7945', 3.2, '09:00-21:00', 'LOC0008').
activity('ACT0074', 'Olson-Rhodes Museum Tour', 'Theater Play', 3.18, 110.04, '001-983-149-7944x238', 2.4, '10:00-18:00', 'LOC0008').
activity('ACT0075', 'Mcguire-Barker Hiking', 'Theme Park Visit', 6.24, 99.88, '954-593-4393', 4.1, '09:00-17:00', 'LOC0008').
activity('ACT0076', 'Burns-Campbell Music Festival', 'Theme Park Visit', 3.71, 79.61, '001-507-148-8970x203', 3.2, '10:00-22:00', 'LOC0009').
activity('ACT0077', 'Garcia-Rivera Museum Tour', 'Museum Tour', 3.81, 43.77, '001-515-883-4450', 3.5, '08:00-16:00', 'LOC0009').
activity('ACT0078', 'Maldonado-Wilson City Walk', 'Local Market Tour', 5.80, 90.59, '519-738-4403x6357', 2.8, '08:00-16:00', 'LOC0009').
activity('ACT0079', 'Mejia PLC Museum Tour', 'Museum Tour', 2.86, 42.58, '001-976-372-8657', 3.6, '10:00-22:00', 'LOC0009').
activity('ACT0080', 'Gutierrez Group Cooking Class', 'Aquarium Visit', 6.59, 112.20, '711.307.1920x1767', 4.0, '09:00-17:00', 'LOC0009').
activity('ACT0081', 'Pearson, Walsh and Cook Food Tour', 'Theme Park Visit', 4.28, 62.83, '794-179-4011', 3.4, '08:00-16:00', 'LOC0009').
activity('ACT0082', 'Ferguson LLC Music Festival', 'Wine Tasting', 4.10, 94.24, '(859)748-3749x288', 3.5, '09:00-21:00', 'LOC0010').
activity('ACT0083', 'Reynolds, Barrett and Rios Theater Play', 'Zoo Visit', 6.61, 109.31, '+1-281-413-1373x20418', 4.3, '10:00-22:00', 'LOC0010').
activity('ACT0084', 'Brady Group Museum Tour', 'Cultural Show', 3.00, 55.14, '316-679-7755', 4.2, '10:00-22:00', 'LOC0010').
activity('ACT0085', 'Day, Freeman and Trevino Food Tour', 'Historical Site Visit', 5.96, 133.17, '509-828-7360', 3.7, '08:00-16:00', 'LOC0010').
activity('ACT0086', 'Underwood Ltd Local Market Tour', 'Theme Park Visit', 5.21, 68.39, '331.399.8040', 4.1, '09:00-17:00', 'LOC0010').
activity('ACT0087', 'Santiago Group Art Workshop', 'Theater Play', 3.50, 52.96, '001-739-127-6602x4160', 3.3, '09:00-21:00', 'LOC0010').
activity('ACT0088', 'Ford and Sons Museum Tour', 'Museum Tour', 1.53, 56.60, '001-961-213-4685x060', 3.9, '10:00-18:00', 'LOC0010').
activity('ACT0089', 'Flowers, Parks and Phillips Music Festival', 'Food Tour', 7.70, 82.71, '+1-683-255-0596', 3.6, '10:00-22:00', 'LOC0010').
activity('ACT0090', 'Nash, Boone and Rivera Local Market Tour', 'Food Tour', 6.90, 131.77, '532-244-7891x075', 4.6, '08:00-16:00', 'LOC0010').
activity('ACT0091', 'Hoffman-Roberts City Walk', 'Wine Tasting', 4.47, 119.86, '(458)859-3014x0861', 3.2, '10:00-18:00', 'LOC0010').
activity('ACT0092', 'Schroeder, Reed and Norton Food Tour', 'Museum Tour', 5.93, 83.47, '922.161.2732', 4.4, '09:00-21:00', 'LOC0008').
activity('ACT0093', 'Walsh-Moon City Walk', 'Aquarium Visit', 2.18, 92.76, '001-226-809-4323x4252', 3.4, '10:00-18:00', 'LOC0010').
activity('ACT0094', 'Gibbs-Fletcher Historical Site Visit', 'Local Market Tour', 4.46, 104.66, '001-388-899-6566', 3.7, '09:00-17:00', 'LOC0009').
activity('ACT0095', 'Love, Gomez and Kelly Aquarium Visit', 'City Walk', 2.84, 58.10, '(286)744-4316', 4.0, '10:00-18:00', 'LOC0010').
activity('ACT0096', 'Palmer-Ramos Historical Site Visit', 'City Walk', 3.90, 81.93, '001-293-297-5552x188', 3.6, '10:00-22:00', 'LOC0006').
activity('ACT0097', 'Parker PLC Food Tour', 'Theme Park Visit', 7.34, 138.89, '(893)967-8315', 4.1, '08:00-16:00', 'LOC0007').
activity('ACT0098', 'Smith Group Cultural Show', 'Aquarium Visit', 5.31, 147.19, '(618)746-6571x7096', 3.9, '10:00-22:00', 'LOC0010').
activity('ACT0099', 'Nunez, Brown and Larson City Walk', 'Cultural Show', 5.26, 116.77, '(210)635-4095', 4.5, '08:00-16:00', 'LOC0002').
activity('ACT0100', 'Higgins, Morton and Jackson City Walk', 'Historical Site Visit', 4.25, 131.67, '603-328-8895x7241', 4.3, '09:00-17:00', 'LOC0010').

% accommodation/7 (160 registros)
% accommodation(AccommodationID, TYPE, Facilities, ContactPhone, Rating, NumberOfRooms, LocationID).
accommodation('ACC0001', 'Whole_Unit', 'Save chair nice such heavy agent stand.', '+1-565-881-8965x17820', 2.9, 5, 'LOC0001').
accommodation('ACC0002', 'Whole_Unit', 'Off against push note off reason method.', '138.534.6326', 4.6, 1, 'LOC0001').
accommodation('ACC0003', 'Whole_Unit', 'It it relationship hair case.', '389.450.5944', 3.5, 1, 'LOC0001').
accommodation('ACC0004', 'Whole_Unit', 'Establish situation language blue second issue help.', '352-519-2261', 4.3, 2, 'LOC0001').
accommodation('ACC0005', 'Whole_Unit', 'Unit scene challenge technology alone send behind.', '0291132396', 3.0, 2, 'LOC0001').
accommodation('ACC0006', 'Whole_Unit', 'Common treat marriage next order.', '108-854-3955x40544', 4.2, 4, 'LOC0001').
accommodation('ACC0007', 'Whole_Unit', 'Box level develop tend report.', '001-876-924-2767x50349', 3.6, 1, 'LOC0002').
accommodation('ACC0008', 'Whole_Unit', 'Still wonder prepare wrong since wish how.', '+1-957-719-4677x4390', 3.5, 1, 'LOC0002').
accommodation('ACC0009', 'Whole_Unit', 'Ready customer oil out including read race would.', '673.193.5724x05551', 4.5, 1, 'LOC0002').
accommodation('ACC0010', 'Whole_Unit', 'Beyond standard least contain.', '6778778549', 4.4, 2, 'LOC0002').
accommodation('ACC0011', 'Whole_Unit', 'Necessary government magazine idea high.', '(780)530-5616x93411', 3.4, 1, 'LOC0002').
accommodation('ACC0012', 'Whole_Unit', 'Cover visit international institution since.', '298.590.4971', 3.4, 4, 'LOC0002').
accommodation('ACC0013', 'Whole_Unit', 'Black view his visit large social treat.', '376.470.3480x26219', 4.5, 3, 'LOC0003').
accommodation('ACC0014', 'Whole_Unit', 'Series rest indeed network tax during.', '+1-094-444-4983x4041', 2.6, 2, 'LOC0003').
accommodation('ACC0015', 'Whole_Unit', 'Share green some since kid.', '184-636-2141x44351', 3.2, 4, 'LOC0003').
accommodation('ACC0016', 'Whole_Unit', 'Discussion record sister serious no cup.', '403-191-8098x027', 3.3, 5, 'LOC0003').
accommodation('ACC0017', 'Whole_Unit', 'Stuff under live name reach imagine democratic.', '280.831.5500x89139', 3.1, 4, 'LOC0003').
accommodation('ACC0018', 'Whole_Unit', 'Whole economy store next card.', '001-763-038-9854x094', 2.6, 5, 'LOC0003').
accommodation('ACC0019', 'Whole_Unit', 'Response price participant top.', '111-849-0100x84821', 4.0, 4, 'LOC0004').
accommodation('ACC0020', 'Whole_Unit', 'Gas cup admit major.', '077-761-3082x4386', 2.9, 4, 'LOC0004').
accommodation('ACC0021', 'Whole_Unit', 'Trip toward international same.', '989.027.6971x886', 4.0, 1, 'LOC0004').
accommodation('ACC0022', 'Whole_Unit', 'Rise ever build describe.', '410.783.9233', 3.1, 2, 'LOC0004').
accommodation('ACC0023', 'Whole_Unit', 'Free company career trouble.', '1-580-730-3102', 2.6, 3, 'LOC0004').
accommodation('ACC0024', 'Whole_Unit', 'Black expect pattern suggest.', '083-222-9585x23536', 2.6, 3, 'LOC0004').
accommodation('ACC0025', 'Whole_Unit', 'Peace glass analysis stuff.', '465.574.1921x826', 4.1, 4, 'LOC0005').
accommodation('ACC0026', 'Whole_Unit', 'Wind better rich budget.', '338-797-8014', 4.1, 1, 'LOC0005').
accommodation('ACC0027', 'Whole_Unit', 'Adult else system let.', '1-420-419-3323x3393', 3.6, 4, 'LOC0005').
accommodation('ACC0028', 'Whole_Unit', 'Trial spring yourself military.', '1-030-600-9479', 3.2, 4, 'LOC0005').
accommodation('ACC0029', 'Whole_Unit', 'Should apply art enough.', '142-657-4997x662', 4.0, 4, 'LOC0005').
accommodation('ACC0030', 'Whole_Unit', 'Whose cup image hundred.', '+1-527-573-0962x2414', 4.1, 1, 'LOC0005').
accommodation('ACC0031', 'Whole_Unit', 'Able cold heart.', '434-134-7814x333', 3.0, 2, 'LOC0005').
accommodation('ACC0032', 'Whole_Unit', 'Structure leg us.', '+1-503-569-2599', 4.8, 2, 'LOC0006').
accommodation('ACC0033', 'Whole_Unit', 'Throw land himself discuss.', '334.645.4174x565', 2.7, 2, 'LOC0006').
accommodation('ACC0034', 'Whole_Unit', 'Plant goal west fast.', '1-623-733-1683', 3.7, 4, 'LOC0006').
accommodation('ACC0035', 'Whole_Unit', 'Might single somebody.', '964-095-0086', 4.3, 4, 'LOC0006').
accommodation('ACC0036', 'Whole_Unit', 'Draw really every window.', '437.190.0387', 2.5, 3, 'LOC0006').
accommodation('ACC0037', 'Whole_Unit', 'Police enter away measure.', '+1-388-103-4096x94883', 4.8, 5, 'LOC0007').
accommodation('ACC0038', 'Whole_Unit', 'Responsibility sport hope apply.', '413.502.8123', 2.9, 2, 'LOC0007').
accommodation('ACC0039', 'Whole_Unit', 'Mean push share since.', '1-002-602-2671', 3.4, 5, 'LOC0007').
accommodation('ACC0040', 'Whole_Unit', 'Long answer language.', '636-224-4162x962', 3.0, 2, 'LOC0007').
accommodation('ACC0041', 'Whole_Unit', 'Tax space local Mr.', '238.798.7505', 2.6, 3, 'LOC0007').
accommodation('ACC0042', 'Whole_Unit', 'Walk senior audience.', '335.182.9421x3532', 3.8, 4, 'LOC0007').
accommodation('ACC0043', 'Whole_Unit', 'Perform fire care now.', '140-298-6252', 3.6, 5, 'LOC0007').
accommodation('ACC0044', 'Whole_Unit', 'Pick support century teach.', '+1-927-136-3152x188', 4.5, 4, 'LOC0008').
accommodation('ACC0045', 'Whole_Unit', 'Culture respond into staff.', '180-479-4865', 2.9, 1, 'LOC0008').
accommodation('ACC0046', 'Whole_Unit', 'Adult resource back mention.', '980.773.2157', 3.7, 5, 'LOC0008').
accommodation('ACC0047', 'Whole_Unit', 'Region do various southern.', '+1-431-524-1166x838', 3.3, 5, 'LOC0008').
accommodation('ACC0048', 'Whole_Unit', 'Miss may wear fall.', '165.616.9446', 2.9, 5, 'LOC0008').
accommodation('ACC0049', 'Whole_Unit', 'Level interest travel.', '1-486-993-4240x7020', 3.7, 3, 'LOC0008').
accommodation('ACC0050', 'Whole_Unit', 'Care democratic everyone.', '1-187-465-6767x381', 4.3, 2, 'LOC0009').
accommodation('ACC0051', 'Whole_Unit', 'Behind force stock.', '1-267-359-2654x504', 2.6, 2, 'LOC0009').
accommodation('ACC0052', 'Whole_Unit', 'Instead top guy house.', '1-174-822-9183x0664', 2.6, 2, 'LOC0009').
accommodation('ACC0053', 'Whole_Unit', 'Ahead happen hundred.', '731.849.4026', 4.3, 4, 'LOC0009').
accommodation('ACC0054', 'Whole_Unit', 'Wrong article religious.', '831.120.6794x830', 3.4, 4, 'LOC0009').
accommodation('ACC0055', 'Whole_Unit', 'Until add determine beyond.', '135.009.3324', 3.0, 5, 'LOC0009').
accommodation('ACC0056', 'Whole_Unit', 'Land movie today break.', '1-717-119-7186x31667', 2.9, 2, 'LOC0010').
accommodation('ACC0057', 'Whole_Unit', 'Mission citizen explain.', '241-165-4407x5027', 4.7, 4, 'LOC0010').
accommodation('ACC0058', 'Whole_Unit', 'Station TV billion interesting.', '145-281-6532', 2.7, 2, 'LOC0010').
accommodation('ACC0059', 'Whole_Unit', 'Forward ago growth.', '+1-151-020-7711x82651', 4.0, 4, 'LOC0010').
accommodation('ACC0060', 'Whole_Unit', 'Whatever they toward sing do detail.', '160-696-1245x8658', 3.7, 1, 'LOC0010').
accommodation('HOT0001', 'Room_Based', 'Other become develop play least hundred.', '(145)620-9875', 4.2, 39, 'LOC0001').
accommodation('HOT0002', 'Room_Based', 'Fly degree interesting job red.', '336-541-1573', 3.7, 92, 'LOC0001').
accommodation('HOT0003', 'Room_Based', 'Miss for reflect reality four soldier.', '(490)185-9122x674', 3.7, 51, 'LOC0001').
accommodation('HOT0004', 'Room_Based', 'Through heavy impact red project.', '321-509-8651x82116', 3.4, 55, 'LOC0001').
accommodation('HOT0005', 'Room_Based', 'Couple enter fear we generation.', '001-525-873-7949x59186', 2.6, 24, 'LOC0001').
accommodation('HOT0006', 'Room_Based', 'Describe picture save money dog may right.', '001-533-674-9855x014', 4.7, 38, 'LOC0001').
accommodation('HOT0007', 'Room_Based', 'The action large stage ready executive organization.', '423-936-0275x582', 5.0, 61, 'LOC0001').
accommodation('HOT0008', 'Room_Based', 'Direction deal race positive yard meeting.', '001-989-779-8651x990', 2.9, 49, 'LOC0001').
accommodation('HOT0009', 'Room_Based', 'Argue call state eat.', '(775)608-3093x9127', 3.4, 50, 'LOC0001').
accommodation('HOT0010', 'Room_Based', 'Mission just agreement.', '802-798-4874', 4.1, 60, 'LOC0001').
accommodation('HOT0011', 'Room_Based', 'Ability as save decide method.', '001-364-182-6102x3204', 4.1, 33, 'LOC0002').
accommodation('HOT0012', 'Room_Based', 'Network kind name.', '4605339813', 3.8, 95, 'LOC0002').
accommodation('HOT0013', 'Room_Based', 'Cold style tree describe.', '(440)813-6564', 3.8, 46, 'LOC0002').
accommodation('HOT0014', 'Room_Based', 'Wonder practice home structure section.', '863-254-1406', 3.2, 24, 'LOC0002').
accommodation('HOT0015', 'Room_Based', 'Bed time discuss before.', '831-437-8898x1760', 4.1, 36, 'LOC0002').
accommodation('HOT0016', 'Room_Based', 'Seven stock wonder practice hotel society.', '0234583603', 3.9, 85, 'LOC0010').
accommodation('HOT0017', 'Room_Based', 'Social something later.', '001-011-313-0373', 4.9, 73, 'LOC0002').
accommodation('HOT0018', 'Room_Based', 'International trade important later forget.', '+1-021-757-3571x806', 4.1, 20, 'LOC0002').
accommodation('HOT0019', 'Room_Based', 'A available detail rise.', '8621403736', 5.0, 32, 'LOC0002').
accommodation('HOT0020', 'Room_Based', 'Difference understand treatment actually.', '001-362-586-8285x69439', 4.1, 76, 'LOC0002').
accommodation('HOT0021', 'Room_Based', 'White produce laugh explain behavior practice.', '+1-386-006-5654x4537', 3.4, 59, 'LOC0003').
accommodation('HOT0022', 'Room_Based', 'Put window conference thought something.', '283.628.8226', 2.7, 29, 'LOC0003').
accommodation('HOT0023', 'Room_Based', 'As almost Congress modern note.', '365.396.4911', 3.9, 57, 'LOC0003').
accommodation('HOT0024', 'Room_Based', 'Price worker water eat newspaper letter give.', '163-971-9128', 3.3, 79, 'LOC0003').
accommodation('HOT0025', 'Room_Based', 'Despite they million.', '+1-643-380-6712', 3.1, 48, 'LOC0003').
accommodation('HOT0026', 'Room_Based', 'Want generation can project forget.', '001-752-570-3857x81788', 4.8, 34, 'LOC0003').
accommodation('HOT0027', 'Room_Based', 'Water score learn kind.', '001-233-730-3275x177', 3.9, 29, 'LOC0003').
accommodation('HOT0028', 'Room_Based', 'Main top keep environment will report bad.', '(696)373-1410', 4.3, 28, 'LOC0003').
accommodation('HOT0029', 'Room_Based', 'Data nor of recognize.', '001-017-479-3847x339', 3.5, 56, 'LOC0003').
accommodation('HOT0030', 'Room_Based', 'Key kitchen data two sort.', '(879)853-1361x7937', 3.9, 52, 'LOC0009').
accommodation('HOT0031', 'Room_Based', 'Benefit company baby Republican.', '4997354131', 3.6, 46, 'LOC0003').
accommodation('HOT0032', 'Room_Based', 'Wonder over analysis state middle sport improve.', '+1-490-749-1635x3372', 3.3, 36, 'LOC0003').
accommodation('HOT0033', 'Room_Based', 'Plant end energy go avoid major.', '001-293-710-5349x3963', 5.0, 60, 'LOC0003').
accommodation('HOT0034', 'Room_Based', 'Church whole build nice minute maybe.', '+1-373-710-9052x136', 2.8, 48, 'LOC0003').
accommodation('HOT0035', 'Room_Based', 'Teach sometimes quality area it part born capital.', '088.730.7958', 3.5, 35, 'LOC0003').
accommodation('HOT0036', 'Room_Based', 'Weight within majority together family require art product.', '949.897.8042x2224', 4.3, 22, 'LOC0004').
accommodation('HOT0037', 'Room_Based', 'Financial around budget.', '883-462-2807', 4.5, 93, 'LOC0004').
accommodation('HOT0038', 'Room_Based', 'Event beat less no.', '372-833-6402x6739', 2.7, 53, 'LOC0004').
accommodation('HOT0039', 'Room_Based', 'Give table likely decide.', '448-711-7530', 3.2, 53, 'LOC0009').
accommodation('HOT0040', 'Room_Based', 'Environment crime finally choose effect.', '(729)187-2263x2154', 4.9, 51, 'LOC0004').
accommodation('HOT0041', 'Room_Based', 'Big very here who different them.', '(505)965-4148x21627', 3.1, 12, 'LOC0004').
accommodation('HOT0042', 'Room_Based', 'Ago man truth past maybe age.', '+1-738-184-2676x084', 2.6, 40, 'LOC0004').
accommodation('HOT0043', 'Room_Based', 'Movie success my great song fast money onto.', '001-489-397-1482x76477', 2.8, 34, 'LOC0004').
accommodation('HOT0044', 'Room_Based', 'Now take pressure unit.', '140.281.7845x39423', 3.7, 100, 'LOC0004').
accommodation('HOT0045', 'Room_Based', 'Have coach base task know.', '001-823-359-6847x378', 3.2, 29, 'LOC0004').
accommodation('HOT0046', 'Room_Based', 'Lay there notice to.', '+1-713-896-8280x653', 3.0, 20, 'LOC0004').
accommodation('HOT0047', 'Room_Based', 'Billion owner TV instead.', '(178)507-3756', 2.7, 54, 'LOC0004').
accommodation('HOT0048', 'Room_Based', 'Later simple yeah build a yet strategy.', '908.672.1312', 3.2, 41, 'LOC0005').
accommodation('HOT0049', 'Room_Based', 'Meet full or tonight stage forget energy chance.', '078.523.5459x591', 3.9, 100, 'LOC0005').
accommodation('HOT0050', 'Room_Based', 'Defense assume fear evidence however ahead partner.', '+1-021-234-6698x62805', 3.9, 80, 'LOC0005').
accommodation('HOT0051', 'Room_Based', 'Answer site black better.', '712-325-1639', 2.6, 89, 'LOC0005').
accommodation('HOT0052', 'Room_Based', 'Old old although return film worry charge.', '+1-072-678-7167x3533', 2.7, 91, 'LOC0005').
accommodation('HOT0053', 'Room_Based', 'Feel he interesting lay week what start.', '001-061-093-7209', 4.4, 92, 'LOC0005').
accommodation('HOT0054', 'Room_Based', 'Boy great big boy call fall.', '+1-221-503-8863x07613', 4.9, 30, 'LOC0005').
accommodation('HOT0055', 'Room_Based', 'Red much include child dream moment article.', '(144)187-5740x31066', 3.8, 87, 'LOC0010').
accommodation('HOT0056', 'Room_Based', 'Director late idea carry read wonder.', '123.369.3357x909', 3.5, 59, 'LOC0005').
accommodation('HOT0057', 'Room_Based', 'His away season throw level cost hair.', '584.426.9247x082', 4.5, 68, 'LOC0005').
accommodation('HOT0058', 'Room_Based', 'Probably agree policy benefit religious measure anyone mention.', '784.557.1421', 3.9, 54, 'LOC0005').
accommodation('HOT0059', 'Room_Based', 'Sort class hospital look bad amount center.', '+1-853-666-4950x657', 3.9, 37, 'LOC0005').
accommodation('HOT0060', 'Room_Based', 'Weight control method summer.', '967-396-9043x8988', 2.8, 83, 'LOC0006').
accommodation('HOT0061', 'Room_Based', 'Drive add process politics.', '+1-438-333-4897', 4.2, 77, 'LOC0006').
accommodation('HOT0062', 'Room_Based', 'Data side bank occur owner just.', '038.527.0660x001', 4.6, 58, 'LOC0006').
accommodation('HOT0063', 'Room_Based', 'Thought president conference type face.', '056-729-9865x4374', 4.9, 86, 'LOC0006').
accommodation('HOT0064', 'Room_Based', 'Scientist herself kitchen today gas possible.', '(877)200-9818x70819', 4.3, 35, 'LOC0006').
accommodation('HOT0065', 'Room_Based', 'Herself response approach near when exist.', '645-335-4970', 3.3, 67, 'LOC0006').
accommodation('HOT0066', 'Room_Based', 'Call which attack teacher glass station.', '+1-449-839-0254', 4.4, 84, 'LOC0006').
accommodation('HOT0067', 'Room_Based', 'Goal turn skill attorney camera his citizen.', '5386997688', 4.8, 87, 'LOC0006').
accommodation('HOT0068', 'Room_Based', 'Just about exactly throw.', '281.062.4887x381', 4.2, 90, 'LOC0006').
accommodation('HOT0069', 'Room_Based', 'Teacher test ability local.', '828-712-6706x0789', 3.1, 37, 'LOC0006').
accommodation('HOT0070', 'Room_Based', 'Perform assume apply respond support soon.', '(118)447-6523', 4.2, 18, 'LOC0007').
accommodation('HOT0071', 'Room_Based', 'Station care land establish.', '+1-559-173-2431x3431', 3.7, 71, 'LOC0007').
accommodation('HOT0072', 'Room_Based', 'Administration card report year final message.', '001-964-176-8035x36915', 3.5, 15, 'LOC0007').
accommodation('HOT0073', 'Room_Based', 'See rate deal drug plan cut through.', '7283575451', 4.3, 69, 'LOC0007').
accommodation('HOT0074', 'Room_Based', 'Else fire light rock hair yet.', '269-403-4020x53138', 3.0, 38, 'LOC0007').
accommodation('HOT0075', 'Room_Based', 'Would throw training main response area participant.', '971.745.5518', 3.4, 66, 'LOC0007').
accommodation('HOT0076', 'Room_Based', 'Skill different a less exactly fly.', '(716)803-0313x36873', 2.8, 78, 'LOC0007').
accommodation('HOT0077', 'Room_Based', 'Should wall across option.', '698-567-8176x259', 4.3, 11, 'LOC0007').
accommodation('HOT0078', 'Room_Based', 'Interest almost boy American indeed shoulder.', '001-601-462-6901x1013', 3.7, 12, 'LOC0007').
accommodation('HOT0079', 'Room_Based', 'Red feel tend former about gas how.', '001-802-564-4887x225', 4.9, 14, 'LOC0007').
accommodation('HOT0080', 'Room_Based', 'Top economic public direction myself very.', '376-112-1069', 4.3, 77, 'LOC0007').
accommodation('HOT0081', 'Room_Based', 'Ok all other hit all we.', '(593)066-0080x2688', 3.2, 42, 'LOC0008').
accommodation('HOT0082', 'Room_Based', 'Threat go card have check thousand.', '662-859-0859', 4.1, 61, 'LOC0008').
accommodation('HOT0083', 'Room_Based', 'Staff compare form business scientist deep painting fine.', '(676)368-7100', 3.8, 42, 'LOC0008').
accommodation('HOT0084', 'Room_Based', 'Small write relationship value produce.', '001-993-209-5420x617', 3.8, 12, 'LOC0008').
accommodation('HOT0085', 'Room_Based', 'Determine think writer.', '(055)297-3930x401', 3.8, 26, 'LOC0008').
accommodation('HOT0086', 'Room_Based', 'Ago create major.', '001-995-539-0061x13814', 4.4, 20, 'LOC0008').
accommodation('HOT0087', 'Room_Based', 'System back prevent know.', '(874)816-8348', 3.7, 53, 'LOC0008').
accommodation('HOT0088', 'Room_Based', 'Sometimes would simply boy result tell buy.', '+1-388-906-8084x131', 4.6, 26, 'LOC0008').
accommodation('HOT0089', 'Room_Based', 'Attorney character get its wonder role.', '463-032-6588', 2.8, 42, 'LOC0008').
accommodation('HOT0090', 'Room_Based', 'Authority however school along.', '864.615.9191x539', 3.5, 92, 'LOC0008').
accommodation('HOT0091', 'Room_Based', 'Body five between customer president both.', '(822)493-4321x3175', 4.4, 54, 'LOC0010').
accommodation('HOT0092', 'Room_Based', 'Answer way book usually.', '035.652.1378x788', 3.1, 55, 'LOC0009').
accommodation('HOT0093', 'Room_Based', 'Avoid doctor another chance trade future.', '341-533-3208', 5.0, 71, 'LOC0009').
accommodation('HOT0094', 'Room_Based', 'Of learn writer art.', '001-361-278-4035x563', 3.2, 62, 'LOC0007').
accommodation('HOT0095', 'Room_Based', 'If son say move turn knowledge a.', '001-427-962-6686x52305', 4.5, 20, 'LOC0010').
accommodation('HOT0096', 'Room_Based', 'Fly sport phone.', '001-433-041-2183x39329', 3.1, 73, 'LOC0010').
accommodation('HOT0097', 'Room_Based', 'Indicate over turn model.', '001-493-273-7767', 4.1, 14, 'LOC0010').
accommodation('HOT0098', 'Room_Based', 'Chance another available door rock country doctor.', '(699)616-9115', 3.5, 53, 'LOC0010').
accommodation('HOT0099', 'Room_Based', 'As nothing key gun truth debate determine.', '815-943-0159x477', 3.0, 64, 'LOC0009').
accommodation('HOT0100', 'Room_Based', 'Act always song.', '(709)191-3254x23336', 3.8, 66, 'LOC0010').

% hotel/4 (100 registros)
% hotel(AccommodationID, HasLaundryService, NumberOfRooms, ReceptionAvailable).
hotel('HOT0001', 1, 39, 1).
hotel('HOT0002', 0, 92, 1).
hotel('HOT0003', 1, 51, 1).
hotel('HOT0004', 0, 55, 0).
hotel('HOT0005', 0, 24, 1).
hotel('HOT0006', 0, 38, 0).
hotel('HOT0007', 0, 61, 0).
hotel('HOT0008', 1, 49, 1).
hotel('HOT0009', 0, 50, 0).
hotel('HOT0010', 1, 60, 1).
hotel('HOT0011', 0, 33, 1).
hotel('HOT0012', 0, 95, 0).
hotel('HOT0013', 0, 46, 0).
hotel('HOT0014', 1, 24, 1).
hotel('HOT0015', 1, 36, 0).
hotel('HOT0016', 0, 85, 0).
hotel('HOT0017', 1, 73, 1).
hotel('HOT0018', 1, 20, 1).
hotel('HOT0019', 1, 32, 0).
hotel('HOT0020', 0, 76, 0).
hotel('HOT0021', 1, 59, 0).
hotel('HOT0022', 0, 29, 1).
hotel('HOT0023', 1, 57, 0).
hotel('HOT0024', 1, 79, 0).
hotel('HOT0025', 1, 48, 1).
hotel('HOT0026', 0, 34, 1).
hotel('HOT0027', 1, 29, 0).
hotel('HOT0028', 0, 28, 1).
hotel('HOT0029', 0, 56, 0).
hotel('HOT0030', 1, 52, 1).
hotel('HOT0031', 0, 46, 0).
hotel('HOT0032', 0, 36, 0).
hotel('HOT0033', 0, 60, 0).
hotel('HOT0034', 1, 48, 0).
hotel('HOT0035', 1, 35, 1).
hotel('HOT0036', 1, 22, 1).
hotel('HOT0037', 1, 93, 0).
hotel('HOT0038', 1, 53, 1).
hotel('HOT0039', 1, 53, 1).
hotel('HOT0040', 0, 51, 1).
hotel('HOT0041', 0, 12, 0).
hotel('HOT0042', 1, 40, 0).
hotel('HOT0043', 1, 34, 1).
hotel('HOT0044', 1, 100, 0).
hotel('HOT0045', 1, 29, 1).
hotel('HOT0046', 1, 20, 0).
hotel('HOT0047', 0, 54, 1).
hotel('HOT0048', 1, 41, 0).
hotel('HOT0049', 1, 100, 0).
hotel('HOT0050', 0, 80, 1).
hotel('HOT0051', 0, 89, 1).
hotel('HOT0052', 0, 91, 1).
hotel('HOT0053', 1, 92, 1).
hotel('HOT0054', 0, 30, 0).
hotel('HOT0055', 1, 87, 1).
hotel('HOT0056', 0, 59, 1).
hotel('HOT0057', 1, 68, 0).
hotel('HOT0058', 1, 54, 0).
hotel('HOT0059', 0, 37, 0).
hotel('HOT0060', 0, 83, 1).
hotel('HOT0061', 1, 77, 0).
hotel('HOT0062', 0, 58, 1).
hotel('HOT0063', 1, 86, 0).
hotel('HOT0064', 1, 35, 1).
hotel('HOT0065', 1, 67, 1).
hotel('HOT0066', 0, 84, 0).
hotel('HOT0067', 1, 87, 1).
hotel('HOT0068', 1, 90, 1).
hotel('HOT0069', 0, 37, 0).
hotel('HOT0070', 0, 18, 0).
hotel('HOT0071', 0, 71, 0).
hotel('HOT0072', 0, 15, 0).
hotel('HOT0073', 1, 69, 1).
hotel('HOT0074', 1, 38, 0).
hotel('HOT0075', 0, 66, 1).
hotel('HOT0076', 0, 78, 0).
hotel('HOT0077', 0, 11, 0).
hotel('HOT0078', 0, 12, 0).
hotel('HOT0079', 1, 14, 1).
hotel('HOT0080', 1, 77, 1).
hotel('HOT0081', 0, 42, 0).
hotel('HOT0082', 1, 61, 1).
hotel('HOT0083', 0, 42, 0).
hotel('HOT0084', 1, 12, 1).
hotel('HOT0085', 0, 26, 1).
hotel('HOT0086', 0, 20, 1).
hotel('HOT0087', 0, 53, 0).
hotel('HOT0088', 0, 26, 1).
hotel('HOT0089', 0, 42, 1).
hotel('HOT0090', 0, 92, 1).
hotel('HOT0091', 1, 54, 0).
hotel('HOT0092', 0, 55, 0).
hotel('HOT0093', 0, 71, 1).
hotel('HOT0094', 1, 62, 1).
hotel('HOT0095', 0, 20, 1).
hotel('HOT0096', 0, 73, 0).
hotel('HOT0097', 1, 14, 1).
hotel('HOT0098', 1, 53, 1).
hotel('HOT0099', 1, 64, 1).
hotel('HOT0100', 1, 66, 0).

% bnb/5 (60 registros)
% bnb(AccommodationID, MaxOccupancy, Bathrooms, Bedrooms, BasePrice).
bnb('ACC0001', 7, 3, 3, 300).
bnb('ACC0002', 8, 1, 1, 160).
bnb('ACC0003', 7, 1, 2, 300).
bnb('ACC0004', 9, 2, 5, 160).
bnb('ACC0005', 10, 1, 2, 300).
bnb('ACC0006', 6, 1, 2, 160).
bnb('ACC0007', 2, 2, 3, 300).
bnb('ACC0008', 4, 2, 1, 160).
bnb('ACC0009', 8, 3, 5, 300).
bnb('ACC0010', 9, 3, 3, 160).
bnb('ACC0011', 7, 1, 3, 100).
bnb('ACC0012', 10, 2, 4, 200).
bnb('ACC0013', 10, 1, 2, 300).
bnb('ACC0014', 5, 1, 2, 160).
bnb('ACC0015', 3, 1, 4, 300).
bnb('ACC0016', 7, 2, 5, 160).
bnb('ACC0017', 8, 2, 2, 300).
bnb('ACC0018', 4, 3, 4, 160).
bnb('ACC0019', 6, 1, 1, 300).
bnb('ACC0020', 4, 2, 3, 160).
bnb('ACC0021', 2, 1, 2, 300).
bnb('ACC0022', 8, 1, 5, 160).
bnb('ACC0023', 10, 3, 1, 130).
bnb('ACC0024', 6, 1, 5, 120).
bnb('ACC0025', 6, 1, 5, 241).
bnb('ACC0026', 2, 3, 5, 113).
bnb('ACC0027', 8, 1, 2, 246).
bnb('ACC0028', 6, 1, 4, 100).
bnb('ACC0029', 8, 3, 1, 98).
bnb('ACC0030', 10, 1, 4, 146).
bnb('ACC0031', 3, 3, 5, 129).
bnb('ACC0032', 9, 1, 4, 174).
bnb('ACC0033', 5, 2, 3, 163).
bnb('ACC0034', 8, 2, 5, 153).
bnb('ACC0035', 4, 3, 5, 148).
bnb('ACC0036', 7, 2, 1, 121).
bnb('ACC0037', 9, 3, 5, 122).
bnb('ACC0038', 5, 3, 3, 231).
bnb('ACC0039', 5, 2, 4, 213).
bnb('ACC0040', 6, 3, 2, 176).
bnb('ACC0041', 8, 2, 2, 153).
bnb('ACC0042', 8, 2, 5, 123).
bnb('ACC0043', 3, 3, 1, 189).
bnb('ACC0044', 9, 3, 5, 156).
bnb('ACC0045', 2, 3, 5, 278).
bnb('ACC0046', 4, 3, 1, 249).
bnb('ACC0047', 5, 2, 1, 241).
bnb('ACC0048', 8, 2, 4, 113).
bnb('ACC0049', 3, 3, 2, 118).
bnb('ACC0050', 6, 2, 4, 386).
bnb('ACC0051', 9, 2, 1, 144).
bnb('ACC0052', 9, 3, 4, 187).
bnb('ACC0053', 6, 2, 5, 167).
bnb('ACC0054', 5, 3, 2, 190).
bnb('ACC0055', 6, 1, 2, 145).
bnb('ACC0056', 5, 2, 1, 146).
bnb('ACC0057', 3, 2, 3, 177).
bnb('ACC0058', 5, 3, 1, 187).
bnb('ACC0059', 7, 1, 1, 245).
bnb('ACC0060', 10, 1, 5, 421).

% room/9 (100 registros)
% room(RoomNumber, AccommodationID, RoomType, BedType, BasePrice, MaxOccupancy, IsAvailable, HasPrivateBathroom, Facility).
room('R580', 'HOT0031', 'Suite', 'Single', 294.92, 4, 1, 1, 'Phone discuss hard just pretty.').
room('R022', 'HOT0066', 'Double', 'Single', 173.5, 1, 1, 0, 'Relationship Democrat federal crime direction lead.').
room('R715', 'HOT0002', 'Suite', 'Single', 495.7, 1, 0, 0, 'Sound work away.').
room('R293', 'HOT0064', 'Double', 'Single', 175.84, 2, 0, 1, 'Newspaper rather language.').
room('R251', 'HOT0062', 'Suite', 'Single', 470.68, 1, 0, 1, 'Doctor space last.').
room('R006', 'HOT0002', 'Suite', 'Single', 336.47, 2, 0, 0, 'Break quickly bank.').
room('R153', 'HOT0068', 'Double', 'Double', 295.31, 1, 0, 0, 'Your across nation win.').
room('R944', 'HOT0002', 'Double', 'Single', 476.05, 4, 1, 1, 'Reach ready main voice note general.').
room('R581', 'HOT0015', 'Suite', 'Single', 134.2, 2, 0, 1, 'Certainly ok baby deal.').
room('R484', 'HOT0037', 'Single', 'Double', 66.61, 3, 0, 1, 'Situation clear return.').
room('R638', 'HOT0015', 'Double', 'Double', 281.61, 2, 0, 0, 'Card fast science gas recent.').
room('R676', 'HOT0036', 'Single', 'Single', 137.32, 2, 1, 0, 'Source create throughout concern claim.').
room('R011', 'HOT0054', 'Double', 'Double', 491.22, 3, 0, 0, 'Stage media picture operation fine.').
room('R602', 'HOT0057', 'Double', 'Double', 407.66, 3, 1, 1, 'Particularly town use mean east ground.').
room('R367', 'HOT0002', 'Double', 'Single', 347.01, 1, 0, 0, 'Suffer everybody bit free involve.').
room('R041', 'HOT0052', 'Suite', 'Double', 201.63, 4, 1, 1, 'Both last including measure suddenly college land.').
room('R190', 'HOT0064', 'Suite', 'Double', 276.23, 3, 1, 0, 'Then bill common more floor nor.').
room('R765', 'HOT0052', 'Suite', 'Single', 160.49, 4, 1, 1, 'Shake benefit memory car everybody.').
room('R184', 'HOT0057', 'Single', 'Single', 235.57, 1, 0, 0, 'Start manager American total pull lawyer.').
room('R175', 'HOT0062', 'Single', 'Single', 201.7, 2, 0, 1, 'Develop hot call suffer wait.').
room('R511', 'HOT0042', 'Suite', 'Single', 258.74, 1, 1, 1, 'Young democratic international better type view.').
room('R820', 'HOT0068', 'Suite', 'Single', 182.5, 1, 0, 0, 'Tend should against catch.').
room('R016', 'HOT0068', 'Suite', 'Single', 278.6, 4, 0, 1, 'Bit pattern common.').
room('R149', 'HOT0062', 'Single', 'Double', 233.24, 2, 0, 0, 'Suffer study wrong physical.').
room('R964', 'HOT0025', 'Suite', 'Double', 212.46, 2, 1, 1, 'Position pick yes share law miss.').
room('R503', 'HOT0062', 'Suite', 'Single', 254.16, 3, 0, 0, 'Cut free sell on several.').
room('R027', 'HOT0037', 'Double', 'Double', 394.15, 3, 1, 1, 'Candidate name partner.').
room('R057', 'HOT0002', 'Double', 'Double', 188.95, 2, 0, 0, 'Behavior even teach enter.').
room('R018', 'HOT0068', 'Double', 'Double', 109.98, 4, 0, 1, 'Truth amount level maintain leader.').
room('R783', 'HOT0054', 'Suite', 'Double', 149.27, 2, 0, 0, 'Change goal our crime girl.').
room('R480', 'HOT0044', 'Suite', 'Single', 382.53, 3, 1, 0, 'Great rise morning move better.').
room('R948', 'HOT0037', 'Single', 'Double', 209.27, 2, 0, 0, 'Finish produce garden least according difficult.').
room('R708', 'HOT0054', 'Double', 'Single', 143.56, 3, 0, 0, 'Side future turn brother.').
room('R143', 'HOT0062', 'Single', 'Single', 410.37, 1, 1, 1, 'Ask eat force.').
room('R350', 'HOT0073', 'Double', 'Double', 266.1, 1, 1, 0, 'Into difficult president room.').
room('R708', 'HOT0042', 'Suite', 'Single', 268.43, 1, 0, 1, 'Either attention record although.').
room('R411', 'HOT0015', 'Suite', 'Single', 443.58, 3, 1, 1, 'Artist relate country office imagine.').
room('R923', 'HOT0025', 'Single', 'Double', 237.14, 1, 1, 1, 'Take consider lawyer arrive.').
room('R061', 'HOT0062', 'Suite', 'Double', 489.5, 1, 1, 1, 'Billion soon someone accept speech answer.').
room('R711', 'HOT0068', 'Suite', 'Double', 179.96, 1, 0, 1, 'Accept despite house carry.').
room('R417', 'HOT0031', 'Double', 'Double', 435.79, 4, 1, 1, 'Plant life responsibility.').
room('R333', 'HOT0042', 'Suite', 'Single', 314.27, 4, 1, 0, 'Return wrong hard.').
room('R883', 'HOT0037', 'Single', 'Double', 428.99, 4, 1, 1, 'Kid thus respond.').
room('R125', 'HOT0031', 'Suite', 'Double', 168.02, 2, 0, 1, 'Conference understand reason result pressure herself.').
room('R055', 'HOT0066', 'Double', 'Double', 461.85, 4, 1, 1, 'Grow else apply.').
room('R266', 'HOT0057', 'Suite', 'Double', 398.95, 4, 0, 0, 'More still garden role.').
room('R063', 'HOT0037', 'Double', 'Double', 289.4, 4, 0, 0, 'Many Congress control western industry.').
room('R644', 'HOT0047', 'Suite', 'Double', 429.91, 4, 1, 0, 'Challenge must response.').
room('R758', 'HOT0037', 'Suite', 'Double', 113.45, 2, 1, 0, 'Interview see officer far camera.').
room('R144', 'HOT0015', 'Suite', 'Single', 250.93, 1, 1, 1, 'Economy really artist create respond.').
room('R420', 'HOT0015', 'Suite', 'Double', 305.67, 4, 1, 1, 'True possible example marriage.').
room('R200', 'HOT0025', 'Suite', 'Single', 99.85, 1, 1, 1, 'Trouble worry hit structure sell source.').
room('R948', 'HOT0057', 'Double', 'Single', 437.1, 1, 0, 1, 'Modern people once toward wait.').
room('R904', 'HOT0021', 'Suite', 'Single', 429.64, 2, 1, 0, 'Trade agreement course significant real serve.').
room('R589', 'HOT0021', 'Single', 'Single', 172.46, 1, 1, 0, 'Walk tax Mr consider couple decision.').
room('R916', 'HOT0044', 'Double', 'Single', 426.78, 3, 1, 1, 'Local decade less also.').
room('R699', 'HOT0047', 'Suite', 'Double', 225.17, 1, 0, 0, 'Half cost song.').
room('R607', 'HOT0031', 'Single', 'Single', 349.77, 3, 0, 1, 'Establish risk put arm should often.').
room('R479', 'HOT0062', 'Suite', 'Single', 115.67, 1, 0, 0, 'Rest along plant baby.').
room('R683', 'HOT0062', 'Suite', 'Single', 483.29, 1, 1, 0, 'Half since choose arm.').
room('R902', 'HOT0050', 'Double', 'Double', 302.34, 3, 0, 0, 'Big building economic.').
room('R073', 'HOT0010', 'Double', 'Single', 482.67, 4, 1, 1, 'On dog international.').
room('R495', 'HOT0100', 'Single', 'Single', 347.67, 1, 1, 1, 'Politics statement clearly low score ever.').
room('R383', 'HOT0085', 'Double', 'Single', 201.66, 4, 1, 0, 'Include more item color note.').
room('R762', 'HOT0055', 'Double', 'Single', 482.74, 2, 1, 0, 'Room especially American the again.').
room('R706', 'HOT0097', 'Single', 'Double', 232.25, 1, 1, 0, 'Fear quickly town leave.').
room('R334', 'HOT0043', 'Single', 'Double', 425.58, 4, 0, 1, 'Dark visit begin town parent expect.').
room('R388', 'HOT0009', 'Single', 'Single', 435.7, 2, 1, 0, 'Difference right half.').
room('R816', 'HOT0030', 'Double', 'Double', 227.89, 1, 1, 0, 'Item system team a spend.').
room('R675', 'HOT0010', 'Single', 'Double', 491.09, 3, 0, 1, 'Nothing police item.').
room('R768', 'HOT0094', 'Suite', 'Single', 95.13, 4, 1, 1, 'Finally court level commercial.').
room('R443', 'HOT0011', 'Suite', 'Single', 251.3, 1, 0, 0, 'Herself green both computer reflect middle.').
room('R358', 'HOT0006', 'Single', 'Single', 116.89, 4, 1, 0, 'Building draw campaign.').
room('R768', 'HOT0014', 'Suite', 'Double', 159.93, 4, 0, 1, 'Since central so why so choice.').
room('R821', 'HOT0056', 'Double', 'Double', 469.49, 3, 0, 1, 'Follow eight according within decide modern.').
room('R551', 'HOT0039', 'Double', 'Single', 82.92, 1, 0, 0, 'Training bar course.').
room('R503', 'HOT0053', 'Suite', 'Single', 205.02, 3, 1, 0, 'Yard property board hold relationship.').
room('R850', 'HOT0001', 'Single', 'Double', 499.47, 1, 1, 0, 'Mother them third quality never city.').
room('R937', 'HOT0063', 'Single', 'Single', 399.55, 1, 1, 1, 'Support film glass already not almost.').
room('R810', 'HOT0003', 'Single', 'Double', 370.39, 2, 1, 0, 'Sit standard field color baby scene.').
room('R889', 'HOT0078', 'Single', 'Single', 498.3, 3, 0, 1, 'Table protect their end.').
room('R272', 'HOT0078', 'Double', 'Single', 139.28, 3, 1, 0, 'Myself herself customer wind hear too.').
room('R508', 'HOT0024', 'Suite', 'Double', 174.08, 1, 1, 1, 'Ten she car piece lay.').
room('R923', 'HOT0028', 'Double', 'Double', 419.92, 3, 0, 0, 'Leg detail increase gun.').
room('R445', 'HOT0012', 'Double', 'Double', 449.1, 2, 0, 1, 'Stand believe race safe close.').
room('R028', 'HOT0075', 'Suite', 'Double', 409.7, 3, 0, 0, 'Get despite mention ok focus.').
room('R057', 'HOT0070', 'Suite', 'Double', 136.55, 4, 1, 1, 'Water expert face toward.').
room('R602', 'HOT0055', 'Double', 'Single', 304.18, 4, 1, 0, 'Free very heavy.').
room('R666', 'HOT0020', 'Double', 'Double', 167.61, 1, 1, 1, 'Company she cultural by end fund.').
room('R054', 'HOT0026', 'Double', 'Single', 206.39, 3, 0, 1, 'Job option cold support week.').
room('R873', 'HOT0006', 'Double', 'Single', 483.69, 2, 0, 0, 'Allow letter service approach win.').
room('R450', 'HOT0009', 'Suite', 'Double', 234.04, 3, 1, 0, 'Color thus clear weight shake guy.').
room('R210', 'HOT0023', 'Double', 'Single', 449.24, 4, 1, 0, 'Actually trade important time year.').
room('R694', 'HOT0045', 'Suite', 'Double', 168.64, 2, 0, 1, 'Table foreign remain ready during.').
room('R329', 'HOT0081', 'Suite', 'Double', 470.08, 4, 0, 0, 'Serve head pattern government.').
room('R776', 'HOT0010', 'Suite', 'Single', 249.03, 4, 1, 0, 'Home moment great.').
room('R638', 'HOT0095', 'Double', 'Double', 456.07, 4, 0, 0, 'National beautiful miss concern board break.').
room('R936', 'HOT0099', 'Suite', 'Single', 165.88, 1, 0, 1, 'Remain respond room yet note often.').
room('R995', 'HOT0039', 'Single', 'Double', 472.67, 2, 1, 1, 'Create especially half human local.').
room('R338', 'HOT0051', 'Suite', 'Single', 154.71, 3, 0, 0, 'Feeling pick area future you operation.').

% acc_booking/7 (41 registros)
% acc_booking(BookingID, BookingTime, CheckInDate, CheckOutDate, STATUS, TotalCost, AccommodationID).
acc_booking('BK0001', '2025-04-27 23:07:38', '2025-05-03', '2025-04-27', 'Completed', 300, 'ACC0001').
acc_booking('BK0002', '2025-04-27 01:07:38', '2025-05-01', '2025-04-28', 'Completed', 160, 'ACC0002').
acc_booking('BK0003', '2025-04-27 23:07:38', '2025-05-03', '2025-04-27', 'Completed', 300, 'ACC0003').
acc_booking('BK0004', '2025-04-27 01:07:38', '2025-05-01', '2025-04-28', 'Completed', 160, 'ACC0004').
acc_booking('BK0005', '2025-04-27 02:07:38', '2025-05-03', '2025-04-27', 'Completed', 300, 'ACC0005').
acc_booking('BK0006', '2025-04-27 01:07:38', '2025-05-01', '2025-04-28', 'Completed', 160, 'ACC0006').
acc_booking('BK0007', '2025-04-27 23:07:38', '2025-05-03', '2025-04-27', 'Completed', 300, 'ACC0007').
acc_booking('BK0008', '2025-04-27 01:07:38', '2025-05-01', '2025-04-28', 'Completed', 160, 'ACC0008').
acc_booking('BK0009', '2025-04-27 23:07:38', '2025-05-03', '2025-04-27', 'Completed', 300, 'ACC0009').
acc_booking('BK0010', '2025-04-27 01:07:38', '2025-05-01', '2025-04-28', 'Completed', 160, 'ACC0010').
acc_booking('BK0011', '2025-04-27 23:07:38', '2025-05-03', '2025-04-27', 'Completed', 294, 'HOT0031').
acc_booking('BK0012', '2025-04-27 01:07:38', '2025-05-01', '2025-04-28', 'Completed', 173, 'HOT0066').
acc_booking('BK0013', '2025-04-27 23:07:38', '2025-05-03', '2025-04-27', 'Completed', 495, 'HOT0002').
acc_booking('BK0014', '2025-04-27 01:07:38', '2025-05-01', '2025-04-28', 'Completed', 175, 'HOT0064').
acc_booking('BK0015', '2025-04-27 02:07:38', '2025-05-03', '2025-04-27', 'Completed', 470, 'HOT0062').
acc_booking('BK0016', '2025-04-27 01:07:38', '2025-05-01', '2025-04-28', 'Completed', 336, 'HOT0002').
acc_booking('BK0017', '2025-04-27 23:07:38', '2025-05-03', '2025-04-27', 'Completed', 295, 'HOT0068').
acc_booking('BK0018', '2025-04-27 01:07:38', '2025-05-01', '2025-04-28', 'Completed', 476, 'HOT0002').
acc_booking('BK0019', '2025-04-27 23:07:38', '2025-05-03', '2025-04-27', 'Completed', 134, 'HOT0015').
acc_booking('BK0020', '2025-04-27 01:07:38', '2025-05-01', '2025-04-28', 'Completed', 66, 'HOT0037').
acc_booking('BK0021', '2025-04-27 23:07:38', '2025-05-03', '2025-04-27', 'Completed', 281, 'HOT0015').
acc_booking('BK0022', '2025-04-27 01:07:38', '2025-05-01', '2025-04-28', 'Completed', 137, 'HOT0036').
acc_booking('BK0023', '2025-04-27 23:07:38', '2025-05-03', '2025-04-27', 'Completed', 491, 'HOT0054').
acc_booking('BK0024', '2025-04-27 01:07:38', '2025-05-01', '2025-04-28', 'Completed', 407, 'HOT0057').
acc_booking('BK0025', '2025-04-27 02:07:38', '2025-05-03', '2025-04-27', 'Completed', 347, 'HOT0002').
acc_booking('BK0026', '2025-04-27 01:07:38', '2025-05-01', '2025-04-28', 'Completed', 201, 'HOT0052').
acc_booking('BK0027', '2025-04-27 23:07:38', '2025-05-03', '2025-04-27', 'Completed', 276, 'HOT0064').
acc_booking('BK0028', '2025-04-27 01:07:38', '2025-05-01', '2025-04-28', 'Completed', 160, 'HOT0052').
acc_booking('BK0029', '2025-04-27 23:07:38', '2025-05-03', '2025-04-27', 'Completed', 235, 'HOT0057').
acc_booking('BK0030', '2025-04-27 01:07:38', '2025-05-01', '2025-04-28', 'Completed', 201, 'HOT0062').
acc_booking('BK0031', '2025-04-27 01:07:38', '2025-05-01', '2025-04-28', 'Completed', 258, 'HOT0042').
acc_booking('BK0032', '2025-04-27 01:07:38', '2025-05-01', '2025-04-28', 'Completed', 182, 'HOT0068').
acc_booking('BK0033', '2025-04-27 01:07:38', '2025-05-01', '2025-04-28', 'Completed', 278, 'HOT0068').
acc_booking('BK0034', '2025-04-27 01:07:38', '2025-05-01', '2025-04-28', 'Completed', 233, 'HOT0062').
acc_booking('BK0035', '2025-04-27 01:07:38', '2025-05-01', '2025-04-28', 'Completed', 212, 'HOT0025').
acc_booking('BK0036', '2025-04-27 01:07:38', '2025-05-01', '2025-04-28', 'Completed', 254, 'HOT0062').
acc_booking('BK0037', '2025-04-27 01:07:38', '2025-05-01', '2025-04-28', 'Completed', 394, 'HOT0037').
acc_booking('BK0038', '2025-04-27 01:07:38', '2025-05-01', '2025-04-28', 'Completed', 188, 'HOT0002').
acc_booking('BK0039', '2025-04-27 01:07:38', '2025-05-01', '2025-04-28', 'Completed', 109, 'HOT0068').
acc_booking('BK0040', '2025-04-27 01:07:38', '2025-05-01', '2025-04-28', 'Completed', 149, 'HOT0054').
acc_booking('BK0101', '2025-04-27 01:07:38', '2025-05-01', '2025-04-28', 'Completed', 150, 'HOT0054').

% booking_room/3 (31 registros)
% booking_room(BookingID, AccommodationID, RoomNumber).
booking_room('BK0011', 'HOT0031', 'R580').
booking_room('BK0012', 'HOT0066', 'R022').
booking_room('BK0013', 'HOT0002', 'R715').
booking_room('BK0014', 'HOT0064', 'R293').
booking_room('BK0015', 'HOT0062', 'R251').
booking_room('BK0016', 'HOT0002', 'R006').
booking_room('BK0017', 'HOT0068', 'R153').
booking_room('BK0018', 'HOT0002', 'R944').
booking_room('BK0019', 'HOT0015', 'R581').
booking_room('BK0020', 'HOT0037', 'R484').
booking_room('BK0021', 'HOT0015', 'R638').
booking_room('BK0022', 'HOT0036', 'R676').
booking_room('BK0023', 'HOT0054', 'R011').
booking_room('BK0024', 'HOT0057', 'R602').
booking_room('BK0025', 'HOT0002', 'R367').
booking_room('BK0026', 'HOT0052', 'R041').
booking_room('BK0027', 'HOT0064', 'R190').
booking_room('BK0028', 'HOT0052', 'R765').
booking_room('BK0029', 'HOT0057', 'R184').
booking_room('BK0030', 'HOT0062', 'R175').
booking_room('BK0031', 'HOT0042', 'R511').
booking_room('BK0032', 'HOT0068', 'R820').
booking_room('BK0033', 'HOT0068', 'R016').
booking_room('BK0034', 'HOT0062', 'R149').
booking_room('BK0035', 'HOT0025', 'R964').
booking_room('BK0036', 'HOT0062', 'R503').
booking_room('BK0037', 'HOT0037', 'R027').
booking_room('BK0038', 'HOT0002', 'R057').
booking_room('BK0039', 'HOT0068', 'R018').
booking_room('BK0040', 'HOT0054', 'R783').
booking_room('BK0101', 'HOT0054', 'R783').

% user_level/4 (4 registros)
% user_level(LevelName, DiscountRate, MinPoints, MaxPoints).
user_level('Bronze', 0.0, 0, 999).
user_level('Silver', 0.05, 1000, 4999).
user_level('Gold', 0.1, 5000, 9999).
user_level('Platinum', 0.12, 10000, 99999).

% user_account/15 (30 registros)
% user_account(UserID, FirstName, LastName, Gender, BirthDate, PhoneNumber, Email, Street, City, StateProvince, Country, ZipCode, LevelName, RegistrationTime, LastLogin).
user_account('USR00001', 'Emily', 'Adams', 'Female', '1990-07-12', '+14085551234', 'emily.adams@example.com', '123 Maple St', 'Atlanta', 'Georgia', null, null, 'Gold', '2023-05-01 10:30:15', '2025-05-03 09:30:22').
user_account('USR00002', 'James', 'Taylor', 'Male', '1985-06-20', '+14085559876', 'james.taylor@example.com', '234 Oak Ave', 'Dallas', 'Texas', null, null, 'Silver', '2023-06-10 12:45:00', '2025-05-02 16:10:10').
user_account('USR00003', 'Olivia', 'Johnson', 'Female', '1992-02-11', '+14085560012', 'olivia.johnson@example.com', '345 Pine Rd', 'New York', 'New York', null, null, 'Platinum', '2023-02-05 14:25:12', '2025-05-02 17:05:15').
user_account('USR00004', 'William', 'Brown', 'Male', '1987-11-15', '+14085560789', 'william.brown@example.com', '456 Elm St', 'Chicago', 'Illinois', null, null, 'Bronze', '2023-04-19 09:15:33', '2025-05-01 20:00:12').
user_account('USR00005', 'Sophia', 'Davis', 'Female', '1995-08-21', '+14085561890', 'sophia.davis@example.com', '567 Cedar Blvd', 'Miami', 'Florida', null, null, 'Gold', '2023-07-13 11:32:40', '2025-05-03 13:00:00').
user_account('USR00006', 'Benjamin', 'Wilson', 'Male', '1983-05-03', '+14085562534', 'benjamin.wilson@example.com', '678 Birch Dr', 'Los Angeles', 'California', null, null, 'Silver', '2023-09-01 08:22:21', '2025-05-02 18:20:00').
user_account('USR00007', 'Charlotte', 'Moore', 'Female', '1994-10-10', '+14085563123', 'charlotte.moore@example.com', '789 Birch Ln', 'San Francisco', 'California', null, null, 'Gold', '2023-03-14 10:18:05', '2025-05-01 17:50:33').
user_account('USR00008', 'Lucas', 'Miller', 'Male', '1991-04-09', '+14085563987', 'lucas.miller@example.com', '890 Maple St', 'Austin', 'Texas', null, null, 'Platinum', '2023-01-05 07:40:18', '2025-05-03 10:32:00').
user_account('USR00009', 'Isabella', 'Garcia', 'Female', '1989-09-02', '+14085564601', 'isabella.garcia@example.com', '1023 Pine Ave', 'Houston', 'Texas', null, null, 'Silver', '2022-12-10 14:23:47', '2025-05-01 21:10:40').
user_account('USR00010', 'Mason', 'Rodriguez', 'Male', '1996-12-19', '+14085565320', 'mason.rodriguez@example.com', '1124 Oak Rd', 'Phoenix', 'Arizona', null, null, 'Bronze', '2023-08-11 16:28:30', '2025-05-02 19:00:25').
user_account('USR00011', 'Amelia', 'Martinez', 'Female', '1984-03-13', '+14085566987', 'amelia.martinez@example.com', '234 Birch St', 'San Diego', 'California', null, null, 'Gold', '2023-05-20 13:25:45', '2025-05-01 22:00:00').
user_account('USR00012', 'Ethan', 'Hernandez', 'Male', '1992-07-25', '+14085567777', 'ethan.hernandez@example.com', '345 Maple Rd', 'Denver', 'Colorado', null, null, 'Platinum', '2023-06-12 11:05:00', '2025-05-03 09:15:22').
user_account('USR00013', 'Harper', 'White', 'Female', '1988-01-10', '+14085568456', 'harper.white@example.com', '456 Oak Ave', 'Seattle', 'Washington', null, null, 'Silver', '2023-07-30 08:15:22', '2025-05-03 11:30:05').
user_account('USR00014', 'Jack', 'Clark', 'Male', '1986-12-05', '+14085569234', 'jack.clark@example.com', '567 Elm St', 'Orlando', 'Florida', null, null, 'Bronze', '2023-06-20 12:45:55', '2025-05-02 17:40:33').
user_account('USR00015', 'Mia', 'Lee', 'Female', '1993-05-25', '+14085570012', 'mia.lee@example.com', '678 Pine St', 'Detroit', 'Michigan', null, null, 'Gold', '2023-04-09 19:40:10', '2025-05-01 16:30:00').
user_account('USR00016', 'James', 'King', 'Male', '1990-11-18', '+14085571543', 'james.king@example.com', '789 Cedar Blvd', 'Portland', 'Oregon', null, null, 'Silver', '2023-03-25 09:32:40', '2025-05-02 22:45:00').
user_account('USR00017', 'Ella', 'Scott', 'Female', '1995-03-05', '+14085572233', 'ella.scott@example.com', '890 Oak Rd', 'San Antonio', 'Texas', null, null, 'Gold', '2023-05-17 11:23:11', '2025-05-03 12:00:00').
user_account('USR00018', 'Lucas', 'Young', 'Male', '1992-06-28', '+14085573890', 'lucas.young@example.com', '1022 Birch Ln', 'Phoenix', 'Arizona', null, null, 'Silver', '2023-04-12 14:00:02', '2025-05-01 18:22:15').
user_account('USR00019', 'Grace', 'Lopez', 'Female', '1988-09-09', '+14085574512', 'grace.lopez@example.com', '1133 Pine Rd', 'Chicago', 'Illinois', null, null, 'Platinum', '2023-07-18 08:18:33', '2025-05-03 10:35:15').
user_account('USR00020', 'Samuel', 'Martinez', 'Male', '1994-01-22', '+14085575234', 'samuel.martinez@example.com', '1244 Oak St', 'Los Angeles', 'California', null, null, 'Bronze', '2023-03-15 15:00:22', '2025-05-02 21:05:10').
user_account('USR00021', 'Chloe', 'Adams', 'Female', '1996-04-10', '+14085576412', 'chloe.adams@example.com', '1365 Elm Rd', 'Dallas', 'Texas', null, null, 'Silver', '2022-12-01 14:32:22', '2024-11-21 19:30:00').
user_account('USR00022', 'Mason', 'Brown', 'Male', '1989-09-01', '+14085577123', 'mason.brown@example.com', '1487 Birch Ln', 'Phoenix', 'Arizona', null, null, 'Gold', '2022-05-05 12:00:10', '2024-07-05 10:22:33').
user_account('USR00023', 'Zoe', 'White', 'Female', '1994-02-18', '+14085578012', 'zoe.white@example.com', '1598 Cedar Ave', 'Portland', 'Oregon', null, null, 'Silver', '2021-10-30 08:10:50', '2023-08-12 18:30:22').
user_account('USR00024', 'Liam', 'Miller', 'Male', '1987-03-10', '+14085578890', 'liam.miller@example.com', '1620 Oak Rd', 'San Diego', 'California', null, null, 'Platinum', '2020-12-20 17:30:33', '2024-01-30 16:40:00').
user_account('USR00025', 'Emma', 'Davis', 'Female', '1993-07-04', '+14085579561', 'emma.davis@example.com', '1734 Maple Ln', 'Chicago', 'Illinois', null, null, 'Gold', '2020-08-14 11:22:33', '2024-09-01 13:50:10').
user_account('USR00026', 'Gabriel', 'Morris', 'Male', '1990-05-25', '+14085580032', 'gabriel.morris@example.com', '1846 Pine St', 'Houston', 'Texas', null, null, 'Silver', '2020-06-16 09:15:21', '2023-12-19 15:00:55').
user_account('USR00027', 'Lily', 'Thomas', 'Female', '1995-11-12', '+14085581234', 'lily.thomas@example.com', '1965 Birch Blvd', 'Dallas', 'Texas', null, null, 'Platinum', '2021-05-09 12:33:44', '2024-04-10 14:22:00').
user_account('USR00028', 'Jack', 'Anderson', 'Male', '1992-03-28', '+14085582023', 'jack.anderson@example.com', '2078 Cedar Blvd', 'San Francisco', 'California', null, null, 'Bronze', '2021-08-01 10:11:55', '2023-10-15 19:10:33').
user_account('USR00029', 'Ava', 'Jackson', 'Female', '1996-09-06', '+14085582910', 'ava.jackson@example.com', '2189 Maple Rd', 'Los Angeles', 'California', null, null, 'Silver', '2020-07-25 11:25:33', '2023-03-30 20:20:00').
user_account('USR00030', 'Noah', 'Gonzalez', 'Male', '1989-12-11', '+14085583456', 'noah.gonzalez@example.com', '2290 Oak St', 'Miami', 'Florida', null, null, 'Gold', '2021-02-18 14:35:00', '2023-11-28 17:50:25').

% coupon/8 (30 registros)
% coupon(CouponID, CouponName, DiscountType, DiscountValue, StartDate, EndDate, MinSpend, ApplicableServices).
coupon('C001', 'SpringSale20', 'Percentage', 20.00, '2025-05-14', '2025-05-31', 50.00, 'Clothing, Accessories').
coupon('C002', 'Fixed10Off', 'FixedAmount', 10.00, '2025-05-01', '2025-06-30', 30.00, 'Footwear, Accessories').
coupon('C003', 'SummerFest15', 'Percentage', 15.00, '2025-05-15', '2025-06-15', 40.00, 'Beauty, Health').
coupon('C004', 'HappyWeekend', 'FixedAmount', 5.00, '2025-05-01', '2025-05-31', 20.00, 'Clothing').
coupon('C005', 'MegaDeal50', 'Percentage', 50.00, '2025-05-01', '2025-06-01', 100.00, 'Electronics').
coupon('C006', 'FreeShipping', 'FixedAmount', 0.00, '2025-05-01', '2025-07-01', 25.00, 'All').
coupon('C007', 'HolidayGift10', 'FixedAmount', 10.00, '2025-06-01', '2025-06-30', 20.00, 'Toys, Gifts').
coupon('C008', 'SummerDiscount25', 'Percentage', 25.00, '2025-05-01', '2025-07-31', 50.00, 'Home, Kitchen').
coupon('C009', 'BuyOneGetOne', 'FixedAmount', 0.00, '2025-05-01', '2025-06-30', 30.00, 'Clothing').
coupon('C010', 'WinterSale30', 'Percentage', 30.00, '2025-11-01', '2025-12-15', 60.00, 'Electronics').
coupon('C011', 'Fitness10', 'Percentage', 10.00, '2025-05-01', '2025-05-31', 15.00, 'Fitness, Sports').
coupon('C012', 'BackToSchool15', 'Percentage', 15.00, '2025-08-01', '2025-08-31', 40.00, 'Stationery, Clothing').
coupon('C013', 'Exclusive10', 'FixedAmount', 10.00, '2025-05-01', '2025-06-30', 20.00, 'Gifts').
coupon('C014', 'VIP15', 'Percentage', 15.00, '2025-06-01', '2025-06-30', 50.00, 'All').
coupon('C015', 'FoodieSpecial5', 'FixedAmount', 5.00, '2025-05-01', '2025-05-15', 15.00, 'Food, Beverages').
coupon('C016', 'Weekend20', 'Percentage', 20.00, '2025-05-01', '2025-05-31', 35.00, 'Accessories').
coupon('C017', 'SummerFlashDeal', 'Percentage', 10.00, '2025-06-01', '2025-06-15', 50.00, 'Beauty, Health').
coupon('C018', 'SuperDiscount30', 'Percentage', 30.00, '2025-05-01', '2025-05-15', 100.00, 'Furniture, Electronics').
coupon('C019', 'TechLover15', 'Percentage', 15.00, '2025-06-01', '2025-06-30', 50.00, 'Electronics').
coupon('C020', 'FreeGiftWithPurchase', 'FixedAmount', 5.00, '2025-05-01', '2025-06-30', 25.00, 'All').
coupon('C021', 'BlackFriday50', 'Percentage', 50.00, '2025-11-01', '2025-11-30', 150.00, 'Electronics, Home').
coupon('C022', 'ChristmasGift20', 'Percentage', 20.00, '2025-12-01', '2025-12-31', 30.00, 'Toys, Gifts').
coupon('C023', 'TechUpgrade25', 'Percentage', 25.00, '2025-09-01', '2025-09-30', 80.00, 'Electronics, Gadgets').
coupon('C024', 'FestiveSeason10', 'FixedAmount', 10.00, '2025-12-01', '2025-12-25', 20.00, 'All').
coupon('C025', 'LuxuryItems40', 'Percentage', 40.00, '2025-10-01', '2025-10-31', 200.00, 'Jewelry, Watches').
coupon('C026', 'ValentinesDay15', 'Percentage', 15.00, '2025-02-01', '2025-02-14', 50.00, 'Gifts, Jewelry').
coupon('C027', 'WeekendFlashDeal', 'FixedAmount', 15.00, '2025-05-01', '2025-05-03', 50.00, 'All').
coupon('C028', 'EndOfSeasonClearance', 'Percentage', 35.00, '2025-06-01', '2025-06-30', 100.00, 'Clothing, Accessories').
coupon('C029', 'ExclusiveMember20', 'Percentage', 20.00, '2025-05-01', '2025-12-31', 0.00, 'All').
coupon('C030', 'NewYear50', 'Percentage', 50.00, '2025-01-01', '2025-01-15', 100.00, 'Electronics, Home').

% tax/3 (40 registros)
% tax(TaxID, NAME, Rate).
tax('TAX01', 'Tax1', 0.1).
tax('TAX02', 'Tax1', 0.1).
tax('TAX03', 'Tax1', 0.1).
tax('TAX04', 'Tax1', 0.1).
tax('TAX05', 'Tax1', 0.1).
tax('TAX06', 'Tax1', 0.1).
tax('TAX07', 'Tax1', 0.1).
tax('TAX08', 'Tax1', 0.1).
tax('TAX09', 'Tax1', 0.1).
tax('TAX10', 'Tax1', 0.1).
tax('TAX11', 'Tax1', 0.1).
tax('TAX12', 'Tax1', 0.1).
tax('TAX13', 'Tax1', 0.1).
tax('TAX14', 'Tax1', 0.1).
tax('TAX15', 'Tax1', 0.1).
tax('TAX16', 'Tax1', 0.1).
tax('TAX17', 'Tax1', 0.1).
tax('TAX18', 'Tax1', 0.1).
tax('TAX19', 'Tax1', 0.1).
tax('TAX20', 'Tax1', 0.1).
tax('TAX21', 'Tax1', 0.1).
tax('TAX22', 'Tax1', 0.1).
tax('TAX23', 'Tax1', 0.1).
tax('TAX24', 'Tax1', 0.1).
tax('TAX25', 'Tax1', 0.1).
tax('TAX26', 'Tax1', 0.1).
tax('TAX27', 'Tax1', 0.1).
tax('TAX28', 'Tax1', 0.1).
tax('TAX29', 'Tax1', 0.1).
tax('TAX30', 'Tax1', 0.1).
tax('TAX31', 'Tax1', 0.1).
tax('TAX32', 'Tax1', 0.1).
tax('TAX33', 'Tax1', 0.1).
tax('TAX34', 'Tax1', 0.1).
tax('TAX35', 'Tax1', 0.1).
tax('TAX36', 'Tax1', 0.1).
tax('TAX37', 'Tax1', 0.1).
tax('TAX38', 'Tax1', 0.1).
tax('TAX39', 'Tax1', 0.1).
tax('TAX40', 'Tax1', 0.1).

% transaction/12 (74 registros)
% transaction(TransactionID, TransactionType, TotalAmount, Currency, PaymentMethod, STATUS, TargetID, TargetType, CreatedAt, UpdatedAt, CouponID, UserID).
transaction('TXN00001', 'Pay', 15, 'USD', 'Cash', 'Completed', 'TRP0001', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00001').
transaction('TXN00002', 'Pay', 15, 'USD', 'CreditCard', 'Completed', 'TRP0002', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00002').
transaction('TXN00003', 'Pay', 15, 'USD', 'CreditCard', 'Completed', 'TRP0003', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00003').
transaction('TXN00004', 'Pay', 15, 'USD', 'CreditCard', 'Completed', 'TRP0004', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00004').
transaction('TXN00005', 'Pay', 15, 'USD', 'CreditCard', 'Completed', 'TRP0005', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00005').
transaction('TXN00006', 'Pay', 15, 'USD', 'CreditCard', 'Completed', 'TRP0006', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00006').
transaction('TXN00007', 'Pay', 250, 'USD', 'CreditCard', 'Completed', 'TRP0007', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00007').
transaction('TXN00008', 'Pay', 250, 'USD', 'CreditCard', 'Completed', 'TRP0008', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00008').
transaction('TXN00009', 'Pay', 25, 'USD', 'CreditCard', 'Completed', 'TRP0009', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00009').
transaction('TXN00010', 'Pay', 25, 'USD', 'CreditCard', 'Completed', 'TRP0010', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00010').
transaction('TXN00011', 'Pay', 20, 'USD', 'Cash', 'Completed', 'TRP0011', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00011').
transaction('TXN00012', 'Pay', 20, 'USD', 'CreditCard', 'Completed', 'TRP0012', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00012').
transaction('TXN00013', 'Pay', 15, 'USD', 'CreditCard', 'Completed', 'TRP0013', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00013').
transaction('TXN00014', 'Pay', 15, 'USD', 'CreditCard', 'Completed', 'TRP0014', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00014').
transaction('TXN00015', 'Pay', 15, 'USD', 'CreditCard', 'Completed', 'TRP0015', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00015').
transaction('TXN00016', 'Pay', 20, 'USD', 'CreditCard', 'Completed', 'TRP0016', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00016').
transaction('TXN00017', 'Pay', 35, 'USD', 'CreditCard', 'Completed', 'TRP0017', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00017').
transaction('TXN00018', 'Pay', 35, 'USD', 'CreditCard', 'Completed', 'TRP0018', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00018').
transaction('TXN00019', 'Pay', 50, 'USD', 'CreditCard', 'Completed', 'TRP0019', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00001').
transaction('TXN00020', 'Pay', 50, 'USD', 'CreditCard', 'Completed', 'TRP0020', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00002').
transaction('TXN00021', 'Pay', 30, 'USD', 'CreditCard', 'Completed', 'TRP0021', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00003').
transaction('TXN00022', 'Pay', 337, 'USD', 'CreditCard', 'Completed', 'TRP0022', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00004').
transaction('TXN00023', 'Pay', 287, 'USD', 'CreditCard', 'Completed', 'TRP0023', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00005').
transaction('TXN00024', 'Pay', 15, 'USD', 'CreditCard', 'Completed', 'TRP0024', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00003').
transaction('TXN00025', 'Pay', 250, 'USD', 'CreditCard', 'Completed', 'TRP0025', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00004').
transaction('TXN00026', 'Pay', 25, 'USD', 'CreditCard', 'Completed', 'TRP0026', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00005').
transaction('TXN00027', 'Pay', 50, 'USD', 'CreditCard', 'Completed', 'TRP0027', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00001').
transaction('TXN00028', 'Pay', 20, 'USD', 'CreditCard', 'Completed', 'TRP0028', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00004').
transaction('TXN00029', 'Pay', 15, 'USD', 'CreditCard', 'Completed', 'TRP0029', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00005').
transaction('TXN00030', 'Pay', 30, 'USD', 'CreditCard', 'Completed', 'TRP0030', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00002').
transaction('TXN00031', 'Pay', 30, 'USD', 'CreditCard', 'Completed', 'TRP0031', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00002').
transaction('TXN00032', 'Pay', 30, 'USD', 'CreditCard', 'Completed', 'TRP0032', 'Trip', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00001').
transaction('TXN00101', 'Pay', 300, 'USD', 'CreditCard', 'Completed', 'BK0001', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00001').
transaction('TXN00102', 'Pay', 160, 'USD', 'CreditCard', 'Completed', 'BK0002', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00002').
transaction('TXN00103', 'Pay', 300, 'USD', 'CreditCard', 'Completed', 'BK0003', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00003').
transaction('TXN00104', 'Pay', 160, 'USD', 'CreditCard', 'Completed', 'BK0004', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00004').
transaction('TXN00105', 'Pay', 300, 'USD', 'CreditCard', 'Completed', 'BK0005', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00005').
transaction('TXN00106', 'Pay', 160, 'USD', 'CreditCard', 'Completed', 'BK0006', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00016').
transaction('TXN00107', 'Pay', 300, 'USD', 'CreditCard', 'Completed', 'BK0007', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00018').
transaction('TXN00108', 'Pay', 160, 'USD', 'CreditCard', 'Completed', 'BK0008', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00001').
transaction('TXN00109', 'Pay', 300, 'USD', 'CreditCard', 'Completed', 'BK0009', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00002').
transaction('TXN00110', 'Pay', 160, 'USD', 'CreditCard', 'Completed', 'BK0010', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00003').
transaction('TXN00111', 'Pay', 294, 'USD', 'CreditCard', 'Completed', 'BK0011', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00004').
transaction('TXN00112', 'Pay', 173, 'USD', 'CreditCard', 'Completed', 'BK0012', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00005').
transaction('TXN00113', 'Pay', 495, 'USD', 'CreditCard', 'Completed', 'BK0013', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00017').
transaction('TXN00114', 'Pay', 175, 'USD', 'CreditCard', 'Completed', 'BK0014', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00021').
transaction('TXN00115', 'Pay', 470, 'USD', 'CreditCard', 'Completed', 'BK0015', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00013').
transaction('TXN00116', 'Pay', 336, 'USD', 'CreditCard', 'Completed', 'BK0016', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00001').
transaction('TXN00117', 'Pay', 295, 'USD', 'CreditCard', 'Completed', 'BK0017', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00002').
transaction('TXN00118', 'Pay', 476, 'USD', 'CreditCard', 'Completed', 'BK0018', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00003').
transaction('TXN00119', 'Pay', 134, 'USD', 'CreditCard', 'Completed', 'BK0019', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00004').
transaction('TXN00120', 'Pay', 66, 'USD', 'CreditCard', 'Completed', 'BK0020', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00005').
transaction('TXN00121', 'Pay', 281, 'USD', 'CreditCard', 'Completed', 'BK0021', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00005').
transaction('TXN00122', 'Pay', 137, 'USD', 'CreditCard', 'Completed', 'BK0022', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00007').
transaction('TXN00123', 'Pay', 491, 'USD', 'CreditCard', 'Completed', 'BK0023', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00006').
transaction('TXN00124', 'Pay', 407, 'USD', 'CreditCard', 'Completed', 'BK0024', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00003').
transaction('TXN00125', 'Pay', 347, 'USD', 'CreditCard', 'Completed', 'BK0025', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00002').
transaction('TXN00126', 'Pay', 201, 'USD', 'CreditCard', 'Completed', 'BK0026', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00015').
transaction('TXN00127', 'Pay', 276, 'USD', 'CreditCard', 'Completed', 'BK0027', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00004').
transaction('TXN00128', 'Pay', 160, 'USD', 'CreditCard', 'Completed', 'BK0028', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00001').
transaction('TXN00129', 'Pay', 235, 'USD', 'CreditCard', 'Completed', 'BK0029', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00005').
transaction('TXN00130', 'Pay', 201, 'USD', 'CreditCard', 'Completed', 'BK0030', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00002').
transaction('TXN00131', 'Pay', 258, 'USD', 'CreditCard', 'Completed', 'BK0031', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00005').
transaction('TXN00132', 'Pay', 182, 'USD', 'CreditCard', 'Completed', 'BK0032', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00007').
transaction('TXN00133', 'Pay', 278, 'USD', 'CreditCard', 'Completed', 'BK0033', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00006').
transaction('TXN00134', 'Pay', 233, 'USD', 'CreditCard', 'Completed', 'BK0034', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00003').
transaction('TXN00135', 'Pay', 212, 'USD', 'CreditCard', 'Completed', 'BK0035', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00002').
transaction('TXN00136', 'Pay', 254, 'USD', 'CreditCard', 'Completed', 'BK0036', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00015').
transaction('TXN00137', 'Pay', 394, 'USD', 'CreditCard', 'Completed', 'BK0037', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00004').
transaction('TXN00138', 'Pay', 188, 'USD', 'CreditCard', 'Completed', 'BK0038', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00001').
transaction('TXN00139', 'Pay', 109, 'USD', 'CreditCard', 'Completed', 'BK0039', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00005').
transaction('TXN00140', 'Pay', 149, 'USD', 'CreditCard', 'Completed', 'BK0040', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00002').
transaction('TXN00200', 'Pay', 150, 'USD', 'CreditCard', 'Completed', 'BK0101', 'Accommodation', '2025-04-27 00:35:48', '2025-04-27 00:35:48', null, 'USR00001').
transaction('TXN00201', 'Pay', 35, 'USD', 'CreditCard', 'Completed', 'TRP0101', 'Trip', '2025-04-27 7:30:36', '2025-04-27 07:42:12', null, 'USR00001').

% transaction_tax/2 (40 registros)
% transaction_tax(TransactionID, TaxID).
transaction_tax('TXN00101', 'TAX01').
transaction_tax('TXN00102', 'TAX02').
transaction_tax('TXN00103', 'TAX03').
transaction_tax('TXN00104', 'TAX04').
transaction_tax('TXN00105', 'TAX05').
transaction_tax('TXN00106', 'TAX06').
transaction_tax('TXN00107', 'TAX07').
transaction_tax('TXN00108', 'TAX08').
transaction_tax('TXN00109', 'TAX09').
transaction_tax('TXN00110', 'TAX10').
transaction_tax('TXN00111', 'TAX11').
transaction_tax('TXN00112', 'TAX12').
transaction_tax('TXN00113', 'TAX13').
transaction_tax('TXN00114', 'TAX14').
transaction_tax('TXN00115', 'TAX15').
transaction_tax('TXN00116', 'TAX16').
transaction_tax('TXN00117', 'TAX17').
transaction_tax('TXN00118', 'TAX18').
transaction_tax('TXN00119', 'TAX19').
transaction_tax('TXN00120', 'TAX20').
transaction_tax('TXN00121', 'TAX21').
transaction_tax('TXN00122', 'TAX22').
transaction_tax('TXN00123', 'TAX23').
transaction_tax('TXN00124', 'TAX24').
transaction_tax('TXN00125', 'TAX25').
transaction_tax('TXN00126', 'TAX26').
transaction_tax('TXN00127', 'TAX27').
transaction_tax('TXN00128', 'TAX28').
transaction_tax('TXN00129', 'TAX29').
transaction_tax('TXN00130', 'TAX30').
transaction_tax('TXN00131', 'TAX31').
transaction_tax('TXN00132', 'TAX32').
transaction_tax('TXN00133', 'TAX33').
transaction_tax('TXN00134', 'TAX34').
transaction_tax('TXN00135', 'TAX35').
transaction_tax('TXN00136', 'TAX36').
transaction_tax('TXN00137', 'TAX37').
transaction_tax('TXN00138', 'TAX38').
transaction_tax('TXN00139', 'TAX39').
transaction_tax('TXN00140', 'TAX40').

% review/9 (30 registros)
% review(ReviewID, UserID, TransactionID, Rating, Title, Content, IsAnonymous, CreatedAt, LastModified).
review('REV0001', 'USR00001', 'TXN00101', 1, 'Review Title 1', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0002', 'USR00002', 'TXN00102', 1, 'Review Title 2', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0003', 'USR00003', 'TXN00103', 1, 'Review Title 3', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0004', 'USR00004', 'TXN00104', 1, 'Review Title 4', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0005', 'USR00005', 'TXN00105', 1, 'Review Title 5', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0006', 'USR00016', 'TXN00106', 1, 'Review Title 6', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0007', 'USR00018', 'TXN00107', 1, 'Review Title 7', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0008', 'USR00001', 'TXN00108', 1, 'Review Title 8', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0009', 'USR00002', 'TXN00109', 1, 'Review Title 9', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0010', 'USR00003', 'TXN00110', 1, 'Review Title 10', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0011', 'USR00004', 'TXN00111', 1, 'Review Title 11', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0012', 'USR00005', 'TXN00112', 1, 'Review Title 12', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0013', 'USR00017', 'TXN00113', 1, 'Review Title 13', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0014', 'USR00021', 'TXN00114', 1, 'Review Title 14', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0015', 'USR00013', 'TXN00115', 1, 'Review Title 15', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0016', 'USR00001', 'TXN00116', 1, 'Review Title 16', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0017', 'USR00002', 'TXN00117', 1, 'Review Title 17', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0018', 'USR00003', 'TXN00118', 1, 'Review Title 18', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0019', 'USR00004', 'TXN00119', 1, 'Review Title 19', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0020', 'USR00005', 'TXN00120', 1, 'Review Title 20', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0021', 'USR00005', 'TXN00121', 1, 'Review Title 21', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0022', 'USR00007', 'TXN00122', 1, 'Review Title 22', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0023', 'USR00006', 'TXN00123', 1, 'Review Title 23', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0024', 'USR00003', 'TXN00124', 1, 'Review Title 24', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0025', 'USR00002', 'TXN00125', 1, 'Review Title 25', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0026', 'USR00015', 'TXN00126', 1, 'Review Title 26', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0027', 'USR00004', 'TXN00127', 1, 'Review Title 27', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0028', 'USR00001', 'TXN00128', 1, 'Review Title 28', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0029', 'USR00005', 'TXN00129', 1, 'Review Title 29', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').
review('REV0030', 'USR00002', 'TXN00130', 1, 'Review Title 30', 'Average service.', 0, '2024-05-10 23:29:58', '2024-05-10 23:29:58').

% customer_service_agent/6 (10 registros)
% customer_service_agent(AgentID, FirstName, LastName, Email, PhoneNumber, AvailabilityStatus).
customer_service_agent('AGT0001', 'Agent1', 'Lastname1', 'agent1@example.com', '+19438773433', 'Online').
customer_service_agent('AGT0002', 'Agent2', 'Lastname2', 'agent2@example.com', '+12245780940', 'Busy').
customer_service_agent('AGT0003', 'Agent3', 'Lastname3', 'agent3@example.com', '+19924047462', 'Offline').
customer_service_agent('AGT0004', 'Agent4', 'Lastname4', 'agent4@example.com', '+15044705613', 'Busy').
customer_service_agent('AGT0005', 'Agent5', 'Lastname5', 'agent5@example.com', '+18426078765', 'Busy').
customer_service_agent('AGT0006', 'Agent6', 'Lastname6', 'agent6@example.com', '+12783870465', 'Offline').
customer_service_agent('AGT0007', 'Agent7', 'Lastname7', 'agent7@example.com', '+19753994765', 'Online').
customer_service_agent('AGT0008', 'Agent8', 'Lastname8', 'agent8@example.com', '+16804607501', 'Offline').
customer_service_agent('AGT0009', 'Agent9', 'Lastname9', 'agent9@example.com', '+12790301323', 'Busy').
customer_service_agent('AGT0010', 'Agent10', 'Lastname10', 'agent10@example.com', '+15580094454', 'Busy').

% message/9 (10 registros)
% message(MessageID, UserID, AgentID, STATUS, TYPE, CreatedAt, ResolvedAt, MessageText, TransactionID).
message('MSG00001', 'USR00001', 'AGT0001', 'Closed', 'Complaint', '2025-04-28 13:26:24', '2025-04-29 05:16:23', 'Support message text', 'TXN00101').
message('MSG00002', 'USR00002', 'AGT0002', 'Closed', 'Complaint', '2025-04-28 13:26:24', '2025-04-29 05:16:23', 'Support message text', 'TXN00102').
message('MSG00003', 'USR00003', 'AGT0003', 'Closed', 'Complaint', '2025-04-28 13:26:24', '2025-04-29 05:16:23', 'Support message text', 'TXN00103').
message('MSG00004', 'USR00004', 'AGT0004', 'Closed', 'Complaint', '2025-04-28 13:26:24', '2025-04-29 05:16:23', 'Support message text', 'TXN00104').
message('MSG00005', 'USR00005', 'AGT0005', 'Closed', 'Complaint', '2025-04-28 13:26:24', '2025-04-29 05:16:23', 'Support message text', 'TXN00105').
message('MSG00006', 'USR00016', 'AGT0006', 'Closed', 'Complaint', '2025-04-28 13:26:24', '2025-04-29 05:16:23', 'Support message text', 'TXN00106').
message('MSG00007', 'USR00018', 'AGT0007', 'Closed', 'Complaint', '2025-04-28 13:26:24', '2025-04-29 05:16:23', 'Support message text', 'TXN00107').
message('MSG00008', 'USR00001', 'AGT0008', 'Closed', 'Complaint', '2025-04-28 13:26:24', '2025-04-29 05:16:23', 'Support message text', 'TXN00108').
message('MSG00009', 'USR00002', 'AGT0009', 'Closed', 'Complaint', '2025-04-28 13:26:24', '2025-04-29 05:16:23', 'Support message text', 'TXN00109').
message('MSG00010', 'USR00003', 'AGT0010', 'Closed', 'Complaint', '2025-04-28 13:26:24', '2025-04-29 05:16:23', 'Support message text', 'TXN00110').

