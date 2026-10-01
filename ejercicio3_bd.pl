/*
   EJERCICIO 3 - BASE DE DATOS DE UNA AGENCIA DE VIAJES

   Cada predicado de hechos es una tabla. Las 15 tablas se presentan juntas,
   con un hecho por línea e IDs consecutivos desde 1. Cada una tiene al
   menos 70 filas.
   Los números ID_* en otras tablas son claves foráneas.
   Las reglas y los listados para imprimir resultados están al final.
*/

% =========================== DATOS (15 TABLAS) ===========================

% ------------------- 01. pais/2 (70 filas) -------------------
% pais(ID, nombre).
pais(1, 'Mexico').
pais(2, 'Espana').
pais(3, 'Francia').
pais(4, 'Italia').
pais(5, 'Colombia').
pais(6, 'Japon').
pais(7, 'Argentina').
pais(8, 'Brasil').
pais(9, 'Chile').
pais(10, 'Peru').
pais(11, 'Ecuador').
pais(12, 'Uruguay').
pais(13, 'Paraguay').
pais(14, 'Bolivia').
pais(15, 'Venezuela').
pais(16, 'Costa Rica').
pais(17, 'Panama').
pais(18, 'Guatemala').
pais(19, 'Honduras').
pais(20, 'El Salvador').
pais(21, 'Nicaragua').
pais(22, 'Cuba').
pais(23, 'Republica Dominicana').
pais(24, 'Jamaica').
pais(25, 'Estados Unidos').
pais(26, 'Canada').
pais(27, 'Portugal').
pais(28, 'Alemania').
pais(29, 'Reino Unido').
pais(30, 'Irlanda').
pais(31, 'Paises Bajos').
pais(32, 'Belgica').
pais(33, 'Suiza').
pais(34, 'Austria').
pais(35, 'Grecia').
pais(36, 'Turquia').
pais(37, 'Marruecos').
pais(38, 'Egipto').
pais(39, 'Sudafrica').
pais(40, 'Kenia').
pais(41, 'Nigeria').
pais(42, 'Ghana').
pais(43, 'India').
pais(44, 'China').
pais(45, 'Corea del Sur').
pais(46, 'Tailandia').
pais(47, 'Vietnam').
pais(48, 'Indonesia').
pais(49, 'Filipinas').
pais(50, 'Australia').
pais(51, 'Nueva Zelanda').
pais(52, 'Singapur').
pais(53, 'Malasia').
pais(54, 'Nepal').
pais(55, 'Sri Lanka').
pais(56, 'Pakistan').
pais(57, 'Bangladesh').
pais(58, 'Arabia Saudita').
pais(59, 'Emiratos Arabes Unidos').
pais(60, 'Israel').
pais(61, 'Jordania').
pais(62, 'Islandia').
pais(63, 'Noruega').
pais(64, 'Suecia').
pais(65, 'Finlandia').
pais(66, 'Dinamarca').
pais(67, 'Polonia').
pais(68, 'Republica Checa').
pais(69, 'Hungria').
pais(70, 'Croacia').

% ------------------- 02. ciudad/3 (76 filas) -------------------
% ciudad(ID, nombre, ID_pais).
ciudad(1, 'Ciudad de Mexico', 1).
ciudad(2, 'Cancun', 1).
ciudad(3, 'Guadalajara', 1).
ciudad(4, 'Madrid', 2).
ciudad(5, 'Barcelona', 2).
ciudad(6, 'Paris', 3).
ciudad(7, 'Roma', 4).
ciudad(8, 'Bogota', 5).
ciudad(9, 'Medellin', 5).
ciudad(10, 'Tokio', 6).
ciudad(11, 'Osaka', 6).
ciudad(12, 'Florencia', 4).
ciudad(13, 'Buenos Aires', 7).
ciudad(14, 'Rio de Janeiro', 8).
ciudad(15, 'Santiago', 9).
ciudad(16, 'Lima', 10).
ciudad(17, 'Quito', 11).
ciudad(18, 'Montevideo', 12).
ciudad(19, 'Asuncion', 13).
ciudad(20, 'La Paz', 14).
ciudad(21, 'Caracas', 15).
ciudad(22, 'San Jose', 16).
ciudad(23, 'Ciudad de Panama', 17).
ciudad(24, 'Ciudad de Guatemala', 18).
ciudad(25, 'Tegucigalpa', 19).
ciudad(26, 'San Salvador', 20).
ciudad(27, 'Managua', 21).
ciudad(28, 'La Habana', 22).
ciudad(29, 'Santo Domingo', 23).
ciudad(30, 'Kingston', 24).
ciudad(31, 'Nueva York', 25).
ciudad(32, 'Toronto', 26).
ciudad(33, 'Lisboa', 27).
ciudad(34, 'Berlin', 28).
ciudad(35, 'Londres', 29).
ciudad(36, 'Dublin', 30).
ciudad(37, 'Amsterdam', 31).
ciudad(38, 'Bruselas', 32).
ciudad(39, 'Zurich', 33).
ciudad(40, 'Viena', 34).
ciudad(41, 'Atenas', 35).
ciudad(42, 'Estambul', 36).
ciudad(43, 'Casablanca', 37).
ciudad(44, 'El Cairo', 38).
ciudad(45, 'Ciudad del Cabo', 39).
ciudad(46, 'Nairobi', 40).
ciudad(47, 'Lagos', 41).
ciudad(48, 'Accra', 42).
ciudad(49, 'Nueva Delhi', 43).
ciudad(50, 'Shanghai', 44).
ciudad(51, 'Seul', 45).
ciudad(52, 'Bangkok', 46).
ciudad(53, 'Hanoi', 47).
ciudad(54, 'Yakarta', 48).
ciudad(55, 'Manila', 49).
ciudad(56, 'Sidney', 50).
ciudad(57, 'Auckland', 51).
ciudad(58, 'Singapur', 52).
ciudad(59, 'Kuala Lumpur', 53).
ciudad(60, 'Katmandu', 54).
ciudad(61, 'Colombo', 55).
ciudad(62, 'Islamabad', 56).
ciudad(63, 'Daca', 57).
ciudad(64, 'Riad', 58).
ciudad(65, 'Dubai', 59).
ciudad(66, 'Jerusalen', 60).
ciudad(67, 'Amman', 61).
ciudad(68, 'Reikiavik', 62).
ciudad(69, 'Oslo', 63).
ciudad(70, 'Estocolmo', 64).
ciudad(71, 'Helsinki', 65).
ciudad(72, 'Copenhague', 66).
ciudad(73, 'Varsovia', 67).
ciudad(74, 'Praga', 68).
ciudad(75, 'Budapest', 69).
ciudad(76, 'Zagreb', 70).

% ------------------- 03. aeropuerto/3 (76 filas) -------------------
% aeropuerto(ID, nombre, ID_ciudad).
aeropuerto(1, 'Benito Juarez', 1).
aeropuerto(2, 'Cancun Internacional', 2).
aeropuerto(3, 'Miguel Hidalgo', 3).
aeropuerto(4, 'Barajas', 4).
aeropuerto(5, 'El Prat', 5).
aeropuerto(6, 'Charles de Gaulle', 6).
aeropuerto(7, 'Fiumicino', 7).
aeropuerto(8, 'El Dorado', 8).
aeropuerto(9, 'Jose Maria Cordova', 9).
aeropuerto(10, 'Haneda', 10).
aeropuerto(11, 'Kansai', 11).
aeropuerto(12, 'Peretola', 12).
aeropuerto(13, 'Ministro Pistarini', 13).
aeropuerto(14, 'Galeao', 14).
aeropuerto(15, 'Arturo Merino Benitez', 15).
aeropuerto(16, 'Jorge Chavez', 16).
aeropuerto(17, 'Mariscal Sucre', 17).
aeropuerto(18, 'Carrasco', 18).
aeropuerto(19, 'Silvio Pettirossi', 19).
aeropuerto(20, 'El Alto', 20).
aeropuerto(21, 'Simon Bolivar', 21).
aeropuerto(22, 'Juan Santamaria', 22).
aeropuerto(23, 'Tocumen', 23).
aeropuerto(24, 'La Aurora', 24).
aeropuerto(25, 'Toncontin', 25).
aeropuerto(26, 'Monseñor Romero', 26).
aeropuerto(27, 'Augusto Sandino', 27).
aeropuerto(28, 'Jose Marti', 28).
aeropuerto(29, 'Las Americas', 29).
aeropuerto(30, 'Norman Manley', 30).
aeropuerto(31, 'John F Kennedy', 31).
aeropuerto(32, 'Pearson', 32).
aeropuerto(33, 'Humberto Delgado', 33).
aeropuerto(34, 'Berlin Brandenburg', 34).
aeropuerto(35, 'Heathrow', 35).
aeropuerto(36, 'Dublin', 36).
aeropuerto(37, 'Schiphol', 37).
aeropuerto(38, 'Brussels', 38).
aeropuerto(39, 'Zurich', 39).
aeropuerto(40, 'Vienna', 40).
aeropuerto(41, 'Athens', 41).
aeropuerto(42, 'Istanbul', 42).
aeropuerto(43, 'Mohammed V', 43).
aeropuerto(44, 'Cairo', 44).
aeropuerto(45, 'Cape Town', 45).
aeropuerto(46, 'Jomo Kenyatta', 46).
aeropuerto(47, 'Murtala Muhammed', 47).
aeropuerto(48, 'Kotoka', 48).
aeropuerto(49, 'Indira Gandhi', 49).
aeropuerto(50, 'Pudong', 50).
aeropuerto(51, 'Incheon', 51).
aeropuerto(52, 'Suvarnabhumi', 52).
aeropuerto(53, 'Noi Bai', 53).
aeropuerto(54, 'Soekarno Hatta', 54).
aeropuerto(55, 'Ninoy Aquino', 55).
aeropuerto(56, 'Kingsford Smith', 56).
aeropuerto(57, 'Auckland', 57).
aeropuerto(58, 'Changi', 58).
aeropuerto(59, 'Kuala Lumpur International', 59).
aeropuerto(60, 'Tribhuvan', 60).
aeropuerto(61, 'Bandaranaike', 61).
aeropuerto(62, 'Islamabad International', 62).
aeropuerto(63, 'Hazrat Shahjalal', 63).
aeropuerto(64, 'King Khalid', 64).
aeropuerto(65, 'Dubai International', 65).
aeropuerto(66, 'Ben Gurion', 66).
aeropuerto(67, 'Queen Alia', 67).
aeropuerto(68, 'Keflavik', 68).
aeropuerto(69, 'Oslo Gardermoen', 69).
aeropuerto(70, 'Stockholm Arlanda', 70).
aeropuerto(71, 'Helsinki Vantaa', 71).
aeropuerto(72, 'Copenhagen', 72).
aeropuerto(73, 'Chopin', 73).
aeropuerto(74, 'Vaclav Havel', 74).
aeropuerto(75, 'Budapest Ferenc Liszt', 75).
aeropuerto(76, 'Zagreb', 76).

% ------------------- 04. aerolinea/3 (76 filas) -------------------
% aerolinea(ID, nombre, ID_pais).
aerolinea(1, 'AeroMex', 1).
aerolinea(2, 'Iberia', 2).
aerolinea(3, 'Air France', 3).
aerolinea(4, 'Alitalia Nova', 4).
aerolinea(5, 'Andes Air', 5).
aerolinea(6, 'Nippon Wings', 6).
aerolinea(7, 'Aerolínea Regional 001', 5).
aerolinea(8, 'Aerolínea Regional 002', 6).
aerolinea(9, 'Aerolínea Regional 003', 1).
aerolinea(10, 'Aerolínea Regional 004', 2).
aerolinea(11, 'Aerolínea Regional 005', 3).
aerolinea(12, 'Aerolínea Regional 006', 4).
aerolinea(13, 'Aerolínea Regional 007', 5).
aerolinea(14, 'Aerolínea Regional 008', 6).
aerolinea(15, 'Aerolínea Regional 009', 1).
aerolinea(16, 'Aerolínea Regional 010', 2).
aerolinea(17, 'Aerolínea Regional 011', 3).
aerolinea(18, 'Aerolínea Regional 012', 4).
aerolinea(19, 'Aerolínea Regional 013', 5).
aerolinea(20, 'Aerolínea Regional 014', 6).
aerolinea(21, 'Aerolínea Regional 015', 1).
aerolinea(22, 'Aerolínea Regional 016', 2).
aerolinea(23, 'Aerolínea Regional 017', 3).
aerolinea(24, 'Aerolínea Regional 018', 4).
aerolinea(25, 'Aerolínea Regional 019', 5).
aerolinea(26, 'Aerolínea Regional 020', 6).
aerolinea(27, 'Aerolínea Regional 021', 1).
aerolinea(28, 'Aerolínea Regional 022', 2).
aerolinea(29, 'Aerolínea Regional 023', 3).
aerolinea(30, 'Aerolínea Regional 024', 4).
aerolinea(31, 'Aerolínea Regional 025', 5).
aerolinea(32, 'Aerolínea Regional 026', 6).
aerolinea(33, 'Aerolínea Regional 027', 1).
aerolinea(34, 'Aerolínea Regional 028', 2).
aerolinea(35, 'Aerolínea Regional 029', 3).
aerolinea(36, 'Aerolínea Regional 030', 4).
aerolinea(37, 'Aerolínea Regional 031', 5).
aerolinea(38, 'Aerolínea Regional 032', 6).
aerolinea(39, 'Aerolínea Regional 033', 1).
aerolinea(40, 'Aerolínea Regional 034', 2).
aerolinea(41, 'Aerolínea Regional 035', 3).
aerolinea(42, 'Aerolínea Regional 036', 4).
aerolinea(43, 'Aerolínea Regional 037', 5).
aerolinea(44, 'Aerolínea Regional 038', 6).
aerolinea(45, 'Aerolínea Regional 039', 1).
aerolinea(46, 'Aerolínea Regional 040', 2).
aerolinea(47, 'Aerolínea Regional 041', 3).
aerolinea(48, 'Aerolínea Regional 042', 4).
aerolinea(49, 'Aerolínea Regional 043', 5).
aerolinea(50, 'Aerolínea Regional 044', 6).
aerolinea(51, 'Aerolínea Regional 045', 1).
aerolinea(52, 'Aerolínea Regional 046', 2).
aerolinea(53, 'Aerolínea Regional 047', 3).
aerolinea(54, 'Aerolínea Regional 048', 4).
aerolinea(55, 'Aerolínea Regional 049', 5).
aerolinea(56, 'Aerolínea Regional 050', 6).
aerolinea(57, 'Aerolínea Regional 051', 1).
aerolinea(58, 'Aerolínea Regional 052', 2).
aerolinea(59, 'Aerolínea Regional 053', 3).
aerolinea(60, 'Aerolínea Regional 054', 4).
aerolinea(61, 'Aerolínea Regional 055', 5).
aerolinea(62, 'Aerolínea Regional 056', 6).
aerolinea(63, 'Aerolínea Regional 057', 1).
aerolinea(64, 'Aerolínea Regional 058', 2).
aerolinea(65, 'Aerolínea Regional 059', 3).
aerolinea(66, 'Aerolínea Regional 060', 4).
aerolinea(67, 'Aerolínea Regional 061', 5).
aerolinea(68, 'Aerolínea Regional 062', 6).
aerolinea(69, 'Aerolínea Regional 063', 1).
aerolinea(70, 'Aerolínea Regional 064', 2).
aerolinea(71, 'Aerolínea Regional 065', 3).
aerolinea(72, 'Aerolínea Regional 066', 4).
aerolinea(73, 'Aerolínea Regional 067', 5).
aerolinea(74, 'Aerolínea Regional 068', 6).
aerolinea(75, 'Aerolínea Regional 069', 1).
aerolinea(76, 'Aerolínea Regional 070', 2).

% ------------------- 05. avion/3 (78 filas) -------------------
% avion(ID, modelo, capacidad).
avion(1, 'A320', 180).
avion(2, 'Boeing 737', 160).
avion(3, 'A350', 300).
avion(4, 'Boeing 787', 250).
avion(5, 'Embraer 190', 100).
avion(6, 'A321', 200).
avion(7, 'Boeing 777', 350).
avion(8, 'A220', 130).
avion(9, 'Airbus A320-100', 100).
avion(10, 'Boeing 737-101', 150).
avion(11, 'Airbus A350-102', 200).
avion(12, 'Boeing 787-103', 250).
avion(13, 'Embraer 190-104', 300).
avion(14, 'Airbus A321-105', 100).
avion(15, 'Boeing 777-106', 150).
avion(16, 'Airbus A220-107', 200).
avion(17, 'Airbus A320-108', 250).
avion(18, 'Boeing 737-109', 300).
avion(19, 'Airbus A350-110', 100).
avion(20, 'Boeing 787-111', 150).
avion(21, 'Embraer 190-112', 200).
avion(22, 'Airbus A321-113', 250).
avion(23, 'Boeing 777-114', 300).
avion(24, 'Airbus A220-115', 100).
avion(25, 'Airbus A320-116', 150).
avion(26, 'Boeing 737-117', 200).
avion(27, 'Airbus A350-118', 250).
avion(28, 'Boeing 787-119', 300).
avion(29, 'Embraer 190-120', 100).
avion(30, 'Airbus A321-121', 150).
avion(31, 'Boeing 777-122', 200).
avion(32, 'Airbus A220-123', 250).
avion(33, 'Airbus A320-124', 300).
avion(34, 'Boeing 737-125', 100).
avion(35, 'Airbus A350-126', 150).
avion(36, 'Boeing 787-127', 200).
avion(37, 'Embraer 190-128', 250).
avion(38, 'Airbus A321-129', 300).
avion(39, 'Boeing 777-130', 100).
avion(40, 'Airbus A220-131', 150).
avion(41, 'Airbus A320-132', 200).
avion(42, 'Boeing 737-133', 250).
avion(43, 'Airbus A350-134', 300).
avion(44, 'Boeing 787-135', 100).
avion(45, 'Embraer 190-136', 150).
avion(46, 'Airbus A321-137', 200).
avion(47, 'Boeing 777-138', 250).
avion(48, 'Airbus A220-139', 300).
avion(49, 'Airbus A320-140', 100).
avion(50, 'Boeing 737-141', 150).
avion(51, 'Airbus A350-142', 200).
avion(52, 'Boeing 787-143', 250).
avion(53, 'Embraer 190-144', 300).
avion(54, 'Airbus A321-145', 100).
avion(55, 'Boeing 777-146', 150).
avion(56, 'Airbus A220-147', 200).
avion(57, 'Airbus A320-148', 250).
avion(58, 'Boeing 737-149', 300).
avion(59, 'Airbus A350-150', 100).
avion(60, 'Boeing 787-151', 150).
avion(61, 'Embraer 190-152', 200).
avion(62, 'Airbus A321-153', 250).
avion(63, 'Boeing 777-154', 300).
avion(64, 'Airbus A220-155', 100).
avion(65, 'Airbus A320-156', 150).
avion(66, 'Boeing 737-157', 200).
avion(67, 'Airbus A350-158', 250).
avion(68, 'Boeing 787-159', 300).
avion(69, 'Embraer 190-160', 100).
avion(70, 'Airbus A321-161', 150).
avion(71, 'Boeing 777-162', 200).
avion(72, 'Airbus A220-163', 250).
avion(73, 'Airbus A320-164', 300).
avion(74, 'Boeing 737-165', 100).
avion(75, 'Airbus A350-166', 150).
avion(76, 'Boeing 787-167', 200).
avion(77, 'Embraer 190-168', 250).
avion(78, 'Airbus A321-169', 300).

% ------------------- 06. vuelo/6 (88 filas) -------------------
% vuelo(ID, ID_aerolinea, ID_avion, ID_aeropuerto_origen, ID_aeropuerto_destino, precio).
vuelo(1, 1, 1, 1, 2, 2200).
vuelo(2, 1, 2, 1, 3, 1800).
vuelo(3, 1, 6, 2, 1, 2500).
vuelo(4, 2, 3, 4, 5, 1200).
vuelo(5, 2, 4, 4, 6, 3800).
vuelo(6, 2, 3, 5, 4, 1400).
vuelo(7, 3, 4, 6, 7, 2900).
vuelo(8, 3, 3, 6, 4, 3100).
vuelo(9, 4, 5, 7, 12, 900).
vuelo(10, 4, 3, 12, 7, 950).
vuelo(11, 5, 2, 8, 9, 700).
vuelo(12, 5, 1, 9, 8, 750).
vuelo(13, 6, 7, 10, 11, 1600).
vuelo(14, 6, 7, 11, 10, 1550).
vuelo(15, 1, 4, 1, 4, 8900).
vuelo(16, 2, 4, 4, 1, 9200).
vuelo(17, 3, 7, 6, 10, 14500).
vuelo(18, 6, 7, 10, 6, 15200).
vuelo(19, 5, 5, 31, 34, 1000).
vuelo(20, 6, 6, 32, 35, 1250).
vuelo(21, 1, 7, 33, 36, 1500).
vuelo(22, 2, 8, 34, 37, 1750).
vuelo(23, 3, 1, 35, 38, 2000).
vuelo(24, 4, 2, 36, 39, 2250).
vuelo(25, 5, 3, 37, 40, 2500).
vuelo(26, 6, 4, 38, 41, 2750).
vuelo(27, 1, 5, 39, 42, 3000).
vuelo(28, 2, 6, 40, 43, 3250).
vuelo(29, 3, 7, 41, 44, 3500).
vuelo(30, 4, 8, 42, 45, 3750).
vuelo(31, 5, 1, 43, 46, 4000).
vuelo(32, 6, 2, 44, 47, 4250).
vuelo(33, 1, 3, 45, 48, 4500).
vuelo(34, 2, 4, 46, 49, 4750).
vuelo(35, 3, 5, 47, 50, 5000).
vuelo(36, 4, 6, 48, 51, 5250).
vuelo(37, 5, 7, 49, 52, 5500).
vuelo(38, 6, 8, 50, 53, 5750).
vuelo(39, 1, 1, 51, 54, 1000).
vuelo(40, 2, 2, 52, 55, 1250).
vuelo(41, 3, 3, 53, 56, 1500).
vuelo(42, 4, 4, 54, 57, 1750).
vuelo(43, 5, 5, 55, 58, 2000).
vuelo(44, 6, 6, 56, 59, 2250).
vuelo(45, 1, 7, 57, 60, 2500).
vuelo(46, 2, 8, 58, 61, 2750).
vuelo(47, 3, 1, 59, 62, 3000).
vuelo(48, 4, 2, 60, 63, 3250).
vuelo(49, 5, 3, 61, 64, 3500).
vuelo(50, 6, 4, 62, 65, 3750).
vuelo(51, 1, 5, 63, 66, 4000).
vuelo(52, 2, 6, 64, 67, 4250).
vuelo(53, 3, 7, 65, 68, 4500).
vuelo(54, 4, 8, 66, 69, 4750).
vuelo(55, 5, 1, 67, 70, 5000).
vuelo(56, 6, 2, 68, 1, 5250).
vuelo(57, 1, 3, 69, 2, 5500).
vuelo(58, 2, 4, 70, 3, 5750).
vuelo(59, 3, 5, 1, 4, 1000).
vuelo(60, 4, 6, 2, 5, 1250).
vuelo(61, 5, 7, 3, 6, 1500).
vuelo(62, 6, 8, 4, 7, 1750).
vuelo(63, 1, 1, 5, 8, 2000).
vuelo(64, 2, 2, 6, 9, 2250).
vuelo(65, 3, 3, 7, 10, 2500).
vuelo(66, 4, 4, 8, 11, 2750).
vuelo(67, 5, 5, 9, 12, 3000).
vuelo(68, 6, 6, 10, 13, 3250).
vuelo(69, 1, 7, 11, 14, 3500).
vuelo(70, 2, 8, 12, 15, 3750).
vuelo(71, 3, 1, 13, 16, 4000).
vuelo(72, 4, 2, 14, 17, 4250).
vuelo(73, 5, 3, 15, 18, 4500).
vuelo(74, 6, 4, 16, 19, 4750).
vuelo(75, 1, 5, 17, 20, 5000).
vuelo(76, 2, 6, 18, 21, 5250).
vuelo(77, 3, 7, 19, 22, 5500).
vuelo(78, 4, 8, 20, 23, 5750).
vuelo(79, 5, 1, 21, 24, 1000).
vuelo(80, 6, 2, 22, 25, 1250).
vuelo(81, 1, 3, 23, 26, 1500).
vuelo(82, 2, 4, 24, 27, 1750).
vuelo(83, 3, 5, 25, 28, 2000).
vuelo(84, 4, 6, 26, 29, 2250).
vuelo(85, 5, 7, 27, 30, 2500).
vuelo(86, 6, 8, 28, 31, 2750).
vuelo(87, 1, 1, 29, 32, 3000).
vuelo(88, 2, 2, 30, 33, 3250).

% ------------------- 07. hotel/4 (82 filas) -------------------
% hotel(ID, nombre, ID_ciudad, estrellas).
hotel(1, 'Mar Azul Resort', 2, 5).
hotel(2, 'Centro Historico Suites', 1, 4).
hotel(3, 'Jardin de Guadalajara', 3, 4).
hotel(4, 'Gran Via Hotel', 4, 5).
hotel(5, 'Rambla Boutique', 5, 4).
hotel(6, 'Lumiere Paris', 6, 5).
hotel(7, 'Roma Antigua', 7, 4).
hotel(8, 'Andes Plaza', 8, 4).
hotel(9, 'Paisa Verde', 9, 3).
hotel(10, 'Tokyo Central', 10, 5).
hotel(11, 'Osaka Garden', 11, 4).
hotel(12, 'Toscana Inn', 12, 3).
hotel(13, 'Hotel Internacional 001', 1, 1).
hotel(14, 'Hotel Internacional 002', 2, 2).
hotel(15, 'Hotel Internacional 003', 3, 3).
hotel(16, 'Hotel Internacional 004', 4, 4).
hotel(17, 'Hotel Internacional 005', 5, 5).
hotel(18, 'Hotel Internacional 006', 6, 1).
hotel(19, 'Hotel Internacional 007', 7, 2).
hotel(20, 'Hotel Internacional 008', 8, 3).
hotel(21, 'Hotel Internacional 009', 9, 4).
hotel(22, 'Hotel Internacional 010', 10, 5).
hotel(23, 'Hotel Internacional 011', 11, 1).
hotel(24, 'Hotel Internacional 012', 12, 2).
hotel(25, 'Hotel Internacional 013', 13, 3).
hotel(26, 'Hotel Internacional 014', 14, 4).
hotel(27, 'Hotel Internacional 015', 15, 5).
hotel(28, 'Hotel Internacional 016', 16, 1).
hotel(29, 'Hotel Internacional 017', 17, 2).
hotel(30, 'Hotel Internacional 018', 18, 3).
hotel(31, 'Hotel Internacional 019', 19, 4).
hotel(32, 'Hotel Internacional 020', 20, 5).
hotel(33, 'Hotel Internacional 021', 21, 1).
hotel(34, 'Hotel Internacional 022', 22, 2).
hotel(35, 'Hotel Internacional 023', 23, 3).
hotel(36, 'Hotel Internacional 024', 24, 4).
hotel(37, 'Hotel Internacional 025', 25, 5).
hotel(38, 'Hotel Internacional 026', 26, 1).
hotel(39, 'Hotel Internacional 027', 27, 2).
hotel(40, 'Hotel Internacional 028', 28, 3).
hotel(41, 'Hotel Internacional 029', 29, 4).
hotel(42, 'Hotel Internacional 030', 30, 5).
hotel(43, 'Hotel Internacional 031', 31, 1).
hotel(44, 'Hotel Internacional 032', 32, 2).
hotel(45, 'Hotel Internacional 033', 33, 3).
hotel(46, 'Hotel Internacional 034', 34, 4).
hotel(47, 'Hotel Internacional 035', 35, 5).
hotel(48, 'Hotel Internacional 036', 36, 1).
hotel(49, 'Hotel Internacional 037', 37, 2).
hotel(50, 'Hotel Internacional 038', 38, 3).
hotel(51, 'Hotel Internacional 039', 39, 4).
hotel(52, 'Hotel Internacional 040', 40, 5).
hotel(53, 'Hotel Internacional 041', 41, 1).
hotel(54, 'Hotel Internacional 042', 42, 2).
hotel(55, 'Hotel Internacional 043', 43, 3).
hotel(56, 'Hotel Internacional 044', 44, 4).
hotel(57, 'Hotel Internacional 045', 45, 5).
hotel(58, 'Hotel Internacional 046', 46, 1).
hotel(59, 'Hotel Internacional 047', 47, 2).
hotel(60, 'Hotel Internacional 048', 48, 3).
hotel(61, 'Hotel Internacional 049', 49, 4).
hotel(62, 'Hotel Internacional 050', 50, 5).
hotel(63, 'Hotel Internacional 051', 51, 1).
hotel(64, 'Hotel Internacional 052', 52, 2).
hotel(65, 'Hotel Internacional 053', 53, 3).
hotel(66, 'Hotel Internacional 054', 54, 4).
hotel(67, 'Hotel Internacional 055', 55, 5).
hotel(68, 'Hotel Internacional 056', 56, 1).
hotel(69, 'Hotel Internacional 057', 57, 2).
hotel(70, 'Hotel Internacional 058', 58, 3).
hotel(71, 'Hotel Internacional 059', 59, 4).
hotel(72, 'Hotel Internacional 060', 60, 5).
hotel(73, 'Hotel Internacional 061', 61, 1).
hotel(74, 'Hotel Internacional 062', 62, 2).
hotel(75, 'Hotel Internacional 063', 63, 3).
hotel(76, 'Hotel Internacional 064', 64, 4).
hotel(77, 'Hotel Internacional 065', 65, 5).
hotel(78, 'Hotel Internacional 066', 66, 1).
hotel(79, 'Hotel Internacional 067', 67, 2).
hotel(80, 'Hotel Internacional 068', 68, 3).
hotel(81, 'Hotel Internacional 069', 69, 4).
hotel(82, 'Hotel Internacional 070', 70, 5).

% ------------------- 08. habitacion/4 (86 filas) -------------------
% habitacion(ID, ID_hotel, tipo, precio_noche).
habitacion(1, 1, suite, 4500).
habitacion(2, 1, doble, 2800).
habitacion(3, 2, sencilla, 1500).
habitacion(4, 2, doble, 2200).
habitacion(5, 3, doble, 1800).
habitacion(6, 4, suite, 5200).
habitacion(7, 4, doble, 3100).
habitacion(8, 5, sencilla, 2300).
habitacion(9, 6, suite, 6000).
habitacion(10, 7, doble, 2700).
habitacion(11, 8, doble, 1900).
habitacion(12, 9, sencilla, 1200).
habitacion(13, 10, suite, 7000).
habitacion(14, 11, doble, 3000).
habitacion(15, 12, sencilla, 1600).
habitacion(16, 3, sencilla, 1300).
habitacion(17, 13, sencilla, 1200).
habitacion(18, 14, doble, 1650).
habitacion(19, 15, suite, 2100).
habitacion(20, 16, sencilla, 2550).
habitacion(21, 17, doble, 3000).
habitacion(22, 18, suite, 3450).
habitacion(23, 19, sencilla, 3900).
habitacion(24, 20, doble, 4350).
habitacion(25, 21, suite, 4800).
habitacion(26, 22, sencilla, 5250).
habitacion(27, 23, doble, 1200).
habitacion(28, 24, suite, 1650).
habitacion(29, 25, sencilla, 2100).
habitacion(30, 26, doble, 2550).
habitacion(31, 27, suite, 3000).
habitacion(32, 28, sencilla, 3450).
habitacion(33, 29, doble, 3900).
habitacion(34, 30, suite, 4350).
habitacion(35, 31, sencilla, 4800).
habitacion(36, 32, doble, 5250).
habitacion(37, 33, suite, 1200).
habitacion(38, 34, sencilla, 1650).
habitacion(39, 35, doble, 2100).
habitacion(40, 36, suite, 2550).
habitacion(41, 37, sencilla, 3000).
habitacion(42, 38, doble, 3450).
habitacion(43, 39, suite, 3900).
habitacion(44, 40, sencilla, 4350).
habitacion(45, 41, doble, 4800).
habitacion(46, 42, suite, 5250).
habitacion(47, 43, sencilla, 1200).
habitacion(48, 44, doble, 1650).
habitacion(49, 45, suite, 2100).
habitacion(50, 46, sencilla, 2550).
habitacion(51, 47, doble, 3000).
habitacion(52, 48, suite, 3450).
habitacion(53, 49, sencilla, 3900).
habitacion(54, 50, doble, 4350).
habitacion(55, 51, suite, 4800).
habitacion(56, 52, sencilla, 5250).
habitacion(57, 53, doble, 1200).
habitacion(58, 54, suite, 1650).
habitacion(59, 55, sencilla, 2100).
habitacion(60, 56, doble, 2550).
habitacion(61, 57, suite, 3000).
habitacion(62, 58, sencilla, 3450).
habitacion(63, 59, doble, 3900).
habitacion(64, 60, suite, 4350).
habitacion(65, 61, sencilla, 4800).
habitacion(66, 62, doble, 5250).
habitacion(67, 63, suite, 1200).
habitacion(68, 64, sencilla, 1650).
habitacion(69, 65, doble, 2100).
habitacion(70, 66, suite, 2550).
habitacion(71, 67, sencilla, 3000).
habitacion(72, 68, doble, 3450).
habitacion(73, 69, suite, 3900).
habitacion(74, 70, sencilla, 4350).
habitacion(75, 71, doble, 4800).
habitacion(76, 72, suite, 5250).
habitacion(77, 73, sencilla, 1200).
habitacion(78, 74, doble, 1650).
habitacion(79, 75, suite, 2100).
habitacion(80, 76, sencilla, 2550).
habitacion(81, 77, doble, 3000).
habitacion(82, 78, suite, 3450).
habitacion(83, 79, sencilla, 3900).
habitacion(84, 80, doble, 4350).
habitacion(85, 81, suite, 4800).
habitacion(86, 82, sencilla, 5250).

% ------------------- 09. cliente/4 (90 filas) -------------------
% cliente(ID, nombre, correo, ID_pais).
cliente(1, 'Lucia Gomez', 'lucia@mail.com', 1).
cliente(2, 'Pedro Sanchez', 'pedro@mail.com', 1).
cliente(3, 'Marta Ruiz', 'marta@mail.com', 2).
cliente(4, 'Diego Torres', 'diego@mail.com', 1).
cliente(5, 'Sofia Herrera', 'sofia@mail.com', 5).
cliente(6, 'Andres Castro', 'andres@mail.com', 5).
cliente(7, 'Camila Rojas', 'camila@mail.com', 2).
cliente(8, 'Javier Morales', 'javier@mail.com', 1).
cliente(9, 'Elena Vidal', 'elena@mail.com', 3).
cliente(10, 'Raul Medina', 'raul@mail.com', 4).
cliente(11, 'Paula Nunez', 'paula@mail.com', 1).
cliente(12, 'Oscar Vega', 'oscar@mail.com', 6).
cliente(13, 'Nora Silva', 'nora@mail.com', 5).
cliente(14, 'Hugo Reyes', 'hugo@mail.com', 2).
cliente(15, 'Irene Lara', 'irene@mail.com', 1).
cliente(16, 'Mario Fuentes', 'mario@mail.com', 3).
cliente(17, 'Claudia Leon', 'claudia@mail.com', 4).
cliente(18, 'Rene Ortiz', 'rene@mail.com', 6).
cliente(19, 'Teresa Gil', 'teresa@mail.com', 1).
cliente(20, 'Pablo Cruz', 'pablo@mail.com', 5).
cliente(21, 'Cliente Viajero 001', 'viajero001@correo.com', 1).
cliente(22, 'Cliente Viajero 002', 'viajero002@correo.com', 2).
cliente(23, 'Cliente Viajero 003', 'viajero003@correo.com', 3).
cliente(24, 'Cliente Viajero 004', 'viajero004@correo.com', 4).
cliente(25, 'Cliente Viajero 005', 'viajero005@correo.com', 5).
cliente(26, 'Cliente Viajero 006', 'viajero006@correo.com', 6).
cliente(27, 'Cliente Viajero 007', 'viajero007@correo.com', 7).
cliente(28, 'Cliente Viajero 008', 'viajero008@correo.com', 8).
cliente(29, 'Cliente Viajero 009', 'viajero009@correo.com', 9).
cliente(30, 'Cliente Viajero 010', 'viajero010@correo.com', 10).
cliente(31, 'Cliente Viajero 011', 'viajero011@correo.com', 11).
cliente(32, 'Cliente Viajero 012', 'viajero012@correo.com', 12).
cliente(33, 'Cliente Viajero 013', 'viajero013@correo.com', 13).
cliente(34, 'Cliente Viajero 014', 'viajero014@correo.com', 14).
cliente(35, 'Cliente Viajero 015', 'viajero015@correo.com', 15).
cliente(36, 'Cliente Viajero 016', 'viajero016@correo.com', 16).
cliente(37, 'Cliente Viajero 017', 'viajero017@correo.com', 17).
cliente(38, 'Cliente Viajero 018', 'viajero018@correo.com', 18).
cliente(39, 'Cliente Viajero 019', 'viajero019@correo.com', 19).
cliente(40, 'Cliente Viajero 020', 'viajero020@correo.com', 20).
cliente(41, 'Cliente Viajero 021', 'viajero021@correo.com', 21).
cliente(42, 'Cliente Viajero 022', 'viajero022@correo.com', 22).
cliente(43, 'Cliente Viajero 023', 'viajero023@correo.com', 23).
cliente(44, 'Cliente Viajero 024', 'viajero024@correo.com', 24).
cliente(45, 'Cliente Viajero 025', 'viajero025@correo.com', 25).
cliente(46, 'Cliente Viajero 026', 'viajero026@correo.com', 26).
cliente(47, 'Cliente Viajero 027', 'viajero027@correo.com', 27).
cliente(48, 'Cliente Viajero 028', 'viajero028@correo.com', 28).
cliente(49, 'Cliente Viajero 029', 'viajero029@correo.com', 29).
cliente(50, 'Cliente Viajero 030', 'viajero030@correo.com', 30).
cliente(51, 'Cliente Viajero 031', 'viajero031@correo.com', 31).
cliente(52, 'Cliente Viajero 032', 'viajero032@correo.com', 32).
cliente(53, 'Cliente Viajero 033', 'viajero033@correo.com', 33).
cliente(54, 'Cliente Viajero 034', 'viajero034@correo.com', 34).
cliente(55, 'Cliente Viajero 035', 'viajero035@correo.com', 35).
cliente(56, 'Cliente Viajero 036', 'viajero036@correo.com', 36).
cliente(57, 'Cliente Viajero 037', 'viajero037@correo.com', 37).
cliente(58, 'Cliente Viajero 038', 'viajero038@correo.com', 38).
cliente(59, 'Cliente Viajero 039', 'viajero039@correo.com', 39).
cliente(60, 'Cliente Viajero 040', 'viajero040@correo.com', 40).
cliente(61, 'Cliente Viajero 041', 'viajero041@correo.com', 41).
cliente(62, 'Cliente Viajero 042', 'viajero042@correo.com', 42).
cliente(63, 'Cliente Viajero 043', 'viajero043@correo.com', 43).
cliente(64, 'Cliente Viajero 044', 'viajero044@correo.com', 44).
cliente(65, 'Cliente Viajero 045', 'viajero045@correo.com', 45).
cliente(66, 'Cliente Viajero 046', 'viajero046@correo.com', 46).
cliente(67, 'Cliente Viajero 047', 'viajero047@correo.com', 47).
cliente(68, 'Cliente Viajero 048', 'viajero048@correo.com', 48).
cliente(69, 'Cliente Viajero 049', 'viajero049@correo.com', 49).
cliente(70, 'Cliente Viajero 050', 'viajero050@correo.com', 50).
cliente(71, 'Cliente Viajero 051', 'viajero051@correo.com', 51).
cliente(72, 'Cliente Viajero 052', 'viajero052@correo.com', 52).
cliente(73, 'Cliente Viajero 053', 'viajero053@correo.com', 53).
cliente(74, 'Cliente Viajero 054', 'viajero054@correo.com', 54).
cliente(75, 'Cliente Viajero 055', 'viajero055@correo.com', 55).
cliente(76, 'Cliente Viajero 056', 'viajero056@correo.com', 56).
cliente(77, 'Cliente Viajero 057', 'viajero057@correo.com', 57).
cliente(78, 'Cliente Viajero 058', 'viajero058@correo.com', 58).
cliente(79, 'Cliente Viajero 059', 'viajero059@correo.com', 59).
cliente(80, 'Cliente Viajero 060', 'viajero060@correo.com', 60).
cliente(81, 'Cliente Viajero 061', 'viajero061@correo.com', 61).
cliente(82, 'Cliente Viajero 062', 'viajero062@correo.com', 62).
cliente(83, 'Cliente Viajero 063', 'viajero063@correo.com', 63).
cliente(84, 'Cliente Viajero 064', 'viajero064@correo.com', 64).
cliente(85, 'Cliente Viajero 065', 'viajero065@correo.com', 65).
cliente(86, 'Cliente Viajero 066', 'viajero066@correo.com', 66).
cliente(87, 'Cliente Viajero 067', 'viajero067@correo.com', 67).
cliente(88, 'Cliente Viajero 068', 'viajero068@correo.com', 68).
cliente(89, 'Cliente Viajero 069', 'viajero069@correo.com', 69).
cliente(90, 'Cliente Viajero 070', 'viajero070@correo.com', 70).

% ------------------- 10. reserva/5 (110 filas) -------------------
% reserva(ID, ID_cliente, ID_vuelo, estado, total).
reserva(1, 1, 1, confirmada, 2200).
reserva(2, 1, 4, confirmada, 1200).
reserva(3, 2, 2, confirmada, 1800).
reserva(4, 2, 5, pendiente, 3800).
reserva(5, 3, 7, confirmada, 2900).
reserva(6, 3, 9, confirmada, 900).
reserva(7, 4, 15, confirmada, 8900).
reserva(8, 4, 3, cancelada, 2500).
reserva(9, 5, 11, confirmada, 700).
reserva(10, 5, 12, confirmada, 750).
reserva(11, 6, 12, pendiente, 750).
reserva(12, 6, 11, confirmada, 700).
reserva(13, 7, 16, confirmada, 9200).
reserva(14, 7, 6, confirmada, 1400).
reserva(15, 8, 1, confirmada, 2200).
reserva(16, 8, 15, pendiente, 8900).
reserva(17, 9, 8, confirmada, 3100).
reserva(18, 9, 5, confirmada, 3800).
reserva(19, 10, 9, confirmada, 900).
reserva(20, 10, 10, confirmada, 950).
reserva(21, 11, 3, confirmada, 2500).
reserva(22, 11, 2, cancelada, 1800).
reserva(23, 12, 13, confirmada, 1600).
reserva(24, 12, 17, pendiente, 14500).
reserva(25, 13, 11, confirmada, 700).
reserva(26, 13, 12, confirmada, 750).
reserva(27, 14, 4, confirmada, 1200).
reserva(28, 14, 6, confirmada, 1400).
reserva(29, 15, 1, pendiente, 2200).
reserva(30, 15, 15, confirmada, 8900).
reserva(31, 16, 5, confirmada, 3800).
reserva(32, 16, 7, confirmada, 2900).
reserva(33, 17, 9, confirmada, 900).
reserva(34, 17, 10, confirmada, 950).
reserva(35, 18, 14, confirmada, 1550).
reserva(36, 18, 18, pendiente, 15200).
reserva(37, 19, 2, confirmada, 1800).
reserva(38, 19, 15, confirmada, 8900).
reserva(39, 20, 11, confirmada, 700).
reserva(40, 20, 8, pendiente, 3100).
reserva(41, 21, 19, confirmada, 1500).
reserva(42, 22, 20, pendiente, 1850).
reserva(43, 23, 21, confirmada, 2200).
reserva(44, 24, 22, pendiente, 2550).
reserva(45, 25, 23, confirmada, 2900).
reserva(46, 26, 24, pendiente, 3250).
reserva(47, 27, 25, confirmada, 3600).
reserva(48, 28, 26, pendiente, 3950).
reserva(49, 29, 27, confirmada, 4300).
reserva(50, 30, 28, pendiente, 4650).
reserva(51, 31, 29, confirmada, 5000).
reserva(52, 32, 30, pendiente, 5350).
reserva(53, 33, 31, confirmada, 5700).
reserva(54, 34, 32, pendiente, 6050).
reserva(55, 35, 33, confirmada, 6400).
reserva(56, 36, 34, pendiente, 6750).
reserva(57, 37, 35, confirmada, 7100).
reserva(58, 38, 36, pendiente, 7450).
reserva(59, 39, 37, confirmada, 7800).
reserva(60, 40, 38, pendiente, 8150).
reserva(61, 41, 39, confirmada, 1500).
reserva(62, 42, 40, pendiente, 1850).
reserva(63, 43, 41, confirmada, 2200).
reserva(64, 44, 42, pendiente, 2550).
reserva(65, 45, 43, confirmada, 2900).
reserva(66, 46, 44, pendiente, 3250).
reserva(67, 47, 45, confirmada, 3600).
reserva(68, 48, 46, pendiente, 3950).
reserva(69, 49, 47, confirmada, 4300).
reserva(70, 50, 48, pendiente, 4650).
reserva(71, 51, 49, confirmada, 5000).
reserva(72, 52, 50, pendiente, 5350).
reserva(73, 53, 51, confirmada, 5700).
reserva(74, 54, 52, pendiente, 6050).
reserva(75, 55, 53, confirmada, 6400).
reserva(76, 56, 54, pendiente, 6750).
reserva(77, 57, 55, confirmada, 7100).
reserva(78, 58, 56, pendiente, 7450).
reserva(79, 59, 57, confirmada, 7800).
reserva(80, 60, 58, pendiente, 8150).
reserva(81, 61, 59, confirmada, 1500).
reserva(82, 62, 60, pendiente, 1850).
reserva(83, 63, 61, confirmada, 2200).
reserva(84, 64, 62, pendiente, 2550).
reserva(85, 65, 63, confirmada, 2900).
reserva(86, 66, 64, pendiente, 3250).
reserva(87, 67, 65, confirmada, 3600).
reserva(88, 68, 66, pendiente, 3950).
reserva(89, 69, 67, confirmada, 4300).
reserva(90, 70, 68, pendiente, 4650).
reserva(91, 71, 69, confirmada, 5000).
reserva(92, 72, 70, pendiente, 5350).
reserva(93, 73, 71, confirmada, 5700).
reserva(94, 74, 72, pendiente, 6050).
reserva(95, 75, 73, confirmada, 6400).
reserva(96, 76, 74, pendiente, 6750).
reserva(97, 77, 75, confirmada, 7100).
reserva(98, 78, 76, pendiente, 7450).
reserva(99, 79, 77, confirmada, 7800).
reserva(100, 80, 78, pendiente, 8150).
reserva(101, 81, 79, confirmada, 1500).
reserva(102, 82, 80, pendiente, 1850).
reserva(103, 83, 81, confirmada, 2200).
reserva(104, 84, 82, pendiente, 2550).
reserva(105, 85, 83, confirmada, 2900).
reserva(106, 86, 84, pendiente, 3250).
reserva(107, 87, 85, confirmada, 3600).
reserva(108, 88, 86, pendiente, 3950).
reserva(109, 89, 87, confirmada, 4300).
reserva(110, 90, 88, pendiente, 4650).

% ------------------- 11. pasajero/3 (102 filas) -------------------
% pasajero(ID, ID_reserva, nombre).
pasajero(1, 1, 'Lucia Gomez').
pasajero(2, 1, 'Mateo Gomez').
pasajero(3, 2, 'Lucia Gomez').
pasajero(4, 3, 'Pedro Sanchez').
pasajero(5, 4, 'Pedro Sanchez').
pasajero(6, 5, 'Marta Ruiz').
pasajero(7, 6, 'Marta Ruiz').
pasajero(8, 7, 'Diego Torres').
pasajero(9, 8, 'Diego Torres').
pasajero(10, 9, 'Sofia Herrera').
pasajero(11, 10, 'Sofia Herrera').
pasajero(12, 11, 'Andres Castro').
pasajero(13, 12, 'Andres Castro').
pasajero(14, 13, 'Camila Rojas').
pasajero(15, 14, 'Camila Rojas').
pasajero(16, 15, 'Javier Morales').
pasajero(17, 16, 'Javier Morales').
pasajero(18, 17, 'Elena Vidal').
pasajero(19, 18, 'Elena Vidal').
pasajero(20, 19, 'Raul Medina').
pasajero(21, 20, 'Raul Medina').
pasajero(22, 21, 'Paula Nunez').
pasajero(23, 22, 'Paula Nunez').
pasajero(24, 23, 'Oscar Vega').
pasajero(25, 24, 'Oscar Vega').
pasajero(26, 25, 'Nora Silva').
pasajero(27, 26, 'Nora Silva').
pasajero(28, 27, 'Hugo Reyes').
pasajero(29, 28, 'Hugo Reyes').
pasajero(30, 29, 'Irene Lara').
pasajero(31, 30, 'Irene Lara').
pasajero(32, 31, 'Mario Fuentes').
pasajero(33, 41, 'Pasajero 001').
pasajero(34, 42, 'Pasajero 002').
pasajero(35, 43, 'Pasajero 003').
pasajero(36, 44, 'Pasajero 004').
pasajero(37, 45, 'Pasajero 005').
pasajero(38, 46, 'Pasajero 006').
pasajero(39, 47, 'Pasajero 007').
pasajero(40, 48, 'Pasajero 008').
pasajero(41, 49, 'Pasajero 009').
pasajero(42, 50, 'Pasajero 010').
pasajero(43, 51, 'Pasajero 011').
pasajero(44, 52, 'Pasajero 012').
pasajero(45, 53, 'Pasajero 013').
pasajero(46, 54, 'Pasajero 014').
pasajero(47, 55, 'Pasajero 015').
pasajero(48, 56, 'Pasajero 016').
pasajero(49, 57, 'Pasajero 017').
pasajero(50, 58, 'Pasajero 018').
pasajero(51, 59, 'Pasajero 019').
pasajero(52, 60, 'Pasajero 020').
pasajero(53, 61, 'Pasajero 021').
pasajero(54, 62, 'Pasajero 022').
pasajero(55, 63, 'Pasajero 023').
pasajero(56, 64, 'Pasajero 024').
pasajero(57, 65, 'Pasajero 025').
pasajero(58, 66, 'Pasajero 026').
pasajero(59, 67, 'Pasajero 027').
pasajero(60, 68, 'Pasajero 028').
pasajero(61, 69, 'Pasajero 029').
pasajero(62, 70, 'Pasajero 030').
pasajero(63, 71, 'Pasajero 031').
pasajero(64, 72, 'Pasajero 032').
pasajero(65, 73, 'Pasajero 033').
pasajero(66, 74, 'Pasajero 034').
pasajero(67, 75, 'Pasajero 035').
pasajero(68, 76, 'Pasajero 036').
pasajero(69, 77, 'Pasajero 037').
pasajero(70, 78, 'Pasajero 038').
pasajero(71, 79, 'Pasajero 039').
pasajero(72, 80, 'Pasajero 040').
pasajero(73, 81, 'Pasajero 041').
pasajero(74, 82, 'Pasajero 042').
pasajero(75, 83, 'Pasajero 043').
pasajero(76, 84, 'Pasajero 044').
pasajero(77, 85, 'Pasajero 045').
pasajero(78, 86, 'Pasajero 046').
pasajero(79, 87, 'Pasajero 047').
pasajero(80, 88, 'Pasajero 048').
pasajero(81, 89, 'Pasajero 049').
pasajero(82, 90, 'Pasajero 050').
pasajero(83, 91, 'Pasajero 051').
pasajero(84, 92, 'Pasajero 052').
pasajero(85, 93, 'Pasajero 053').
pasajero(86, 94, 'Pasajero 054').
pasajero(87, 95, 'Pasajero 055').
pasajero(88, 96, 'Pasajero 056').
pasajero(89, 97, 'Pasajero 057').
pasajero(90, 98, 'Pasajero 058').
pasajero(91, 99, 'Pasajero 059').
pasajero(92, 100, 'Pasajero 060').
pasajero(93, 101, 'Pasajero 061').
pasajero(94, 102, 'Pasajero 062').
pasajero(95, 103, 'Pasajero 063').
pasajero(96, 104, 'Pasajero 064').
pasajero(97, 105, 'Pasajero 065').
pasajero(98, 106, 'Pasajero 066').
pasajero(99, 107, 'Pasajero 067').
pasajero(100, 108, 'Pasajero 068').
pasajero(101, 109, 'Pasajero 069').
pasajero(102, 110, 'Pasajero 070').

% ------------------- 12. pago/4 (101 filas) -------------------
% pago(ID, ID_reserva, monto, metodo).
pago(1, 1, 2200, tarjeta).
pago(2, 2, 1200, transferencia).
pago(3, 3, 1800, tarjeta).
pago(4, 5, 2900, tarjeta).
pago(5, 6, 900, efectivo).
pago(6, 7, 8900, tarjeta).
pago(7, 9, 700, transferencia).
pago(8, 10, 750, tarjeta).
pago(9, 12, 700, efectivo).
pago(10, 13, 9200, tarjeta).
pago(11, 14, 1400, tarjeta).
pago(12, 15, 2200, transferencia).
pago(13, 17, 3100, tarjeta).
pago(14, 18, 3800, tarjeta).
pago(15, 19, 900, efectivo).
pago(16, 20, 950, tarjeta).
pago(17, 21, 2500, transferencia).
pago(18, 23, 1600, tarjeta).
pago(19, 25, 700, efectivo).
pago(20, 26, 750, tarjeta).
pago(21, 27, 1200, tarjeta).
pago(22, 28, 1400, transferencia).
pago(23, 30, 8900, tarjeta).
pago(24, 31, 3800, efectivo).
pago(25, 32, 2900, tarjeta).
pago(26, 33, 900, transferencia).
pago(27, 34, 950, tarjeta).
pago(28, 35, 1550, tarjeta).
pago(29, 37, 1800, efectivo).
pago(30, 38, 8900, tarjeta).
pago(31, 39, 700, transferencia).
pago(32, 41, 1000, tarjeta).
pago(33, 42, 1300, transferencia).
pago(34, 43, 1600, efectivo).
pago(35, 44, 1900, tarjeta).
pago(36, 45, 2200, transferencia).
pago(37, 46, 2500, efectivo).
pago(38, 47, 2800, tarjeta).
pago(39, 48, 3100, transferencia).
pago(40, 49, 3400, efectivo).
pago(41, 50, 3700, tarjeta).
pago(42, 51, 4000, transferencia).
pago(43, 52, 4300, efectivo).
pago(44, 53, 4600, tarjeta).
pago(45, 54, 4900, transferencia).
pago(46, 55, 5200, efectivo).
pago(47, 56, 5500, tarjeta).
pago(48, 57, 5800, transferencia).
pago(49, 58, 6100, efectivo).
pago(50, 59, 6400, tarjeta).
pago(51, 60, 6700, transferencia).
pago(52, 61, 1000, efectivo).
pago(53, 62, 1300, tarjeta).
pago(54, 63, 1600, transferencia).
pago(55, 64, 1900, efectivo).
pago(56, 65, 2200, tarjeta).
pago(57, 66, 2500, transferencia).
pago(58, 67, 2800, efectivo).
pago(59, 68, 3100, tarjeta).
pago(60, 69, 3400, transferencia).
pago(61, 70, 3700, efectivo).
pago(62, 71, 4000, tarjeta).
pago(63, 72, 4300, transferencia).
pago(64, 73, 4600, efectivo).
pago(65, 74, 4900, tarjeta).
pago(66, 75, 5200, transferencia).
pago(67, 76, 5500, efectivo).
pago(68, 77, 5800, tarjeta).
pago(69, 78, 6100, transferencia).
pago(70, 79, 6400, efectivo).
pago(71, 80, 6700, tarjeta).
pago(72, 81, 1000, transferencia).
pago(73, 82, 1300, efectivo).
pago(74, 83, 1600, tarjeta).
pago(75, 84, 1900, transferencia).
pago(76, 85, 2200, efectivo).
pago(77, 86, 2500, tarjeta).
pago(78, 87, 2800, transferencia).
pago(79, 88, 3100, efectivo).
pago(80, 89, 3400, tarjeta).
pago(81, 90, 3700, transferencia).
pago(82, 91, 4000, efectivo).
pago(83, 92, 4300, tarjeta).
pago(84, 93, 4600, transferencia).
pago(85, 94, 4900, efectivo).
pago(86, 95, 5200, tarjeta).
pago(87, 96, 5500, transferencia).
pago(88, 97, 5800, efectivo).
pago(89, 98, 6100, tarjeta).
pago(90, 99, 6400, transferencia).
pago(91, 100, 6700, efectivo).
pago(92, 101, 1000, tarjeta).
pago(93, 102, 1300, transferencia).
pago(94, 103, 1600, efectivo).
pago(95, 104, 1900, tarjeta).
pago(96, 105, 2200, transferencia).
pago(97, 106, 2500, efectivo).
pago(98, 107, 2800, tarjeta).
pago(99, 108, 3100, transferencia).
pago(100, 109, 3400, efectivo).
pago(101, 110, 3700, tarjeta).

% ------------------- 13. destino/3 (82 filas) -------------------
% destino(ID, ID_ciudad, descripcion).
destino(1, 1, 'Capital cultural y gastronomica').
destino(2, 2, 'Playas del Caribe').
destino(3, 3, 'Tradicion y mariachi').
destino(4, 4, 'Museos y vida nocturna').
destino(5, 5, 'Arquitectura modernista').
destino(6, 6, 'Arte y monumentos').
destino(7, 7, 'Historia romana').
destino(8, 8, 'Cultura y montana').
destino(9, 9, 'Naturaleza y cafe').
destino(10, 10, 'Tecnologia y tradicion').
destino(11, 11, 'Gastronomia japonesa').
destino(12, 12, 'Arte renacentista').
destino(13, 1, 'Experiencia turística 001').
destino(14, 2, 'Experiencia turística 002').
destino(15, 3, 'Experiencia turística 003').
destino(16, 4, 'Experiencia turística 004').
destino(17, 5, 'Experiencia turística 005').
destino(18, 6, 'Experiencia turística 006').
destino(19, 7, 'Experiencia turística 007').
destino(20, 8, 'Experiencia turística 008').
destino(21, 9, 'Experiencia turística 009').
destino(22, 10, 'Experiencia turística 010').
destino(23, 11, 'Experiencia turística 011').
destino(24, 12, 'Experiencia turística 012').
destino(25, 13, 'Experiencia turística 013').
destino(26, 14, 'Experiencia turística 014').
destino(27, 15, 'Experiencia turística 015').
destino(28, 16, 'Experiencia turística 016').
destino(29, 17, 'Experiencia turística 017').
destino(30, 18, 'Experiencia turística 018').
destino(31, 19, 'Experiencia turística 019').
destino(32, 20, 'Experiencia turística 020').
destino(33, 21, 'Experiencia turística 021').
destino(34, 22, 'Experiencia turística 022').
destino(35, 23, 'Experiencia turística 023').
destino(36, 24, 'Experiencia turística 024').
destino(37, 25, 'Experiencia turística 025').
destino(38, 26, 'Experiencia turística 026').
destino(39, 27, 'Experiencia turística 027').
destino(40, 28, 'Experiencia turística 028').
destino(41, 29, 'Experiencia turística 029').
destino(42, 30, 'Experiencia turística 030').
destino(43, 31, 'Experiencia turística 031').
destino(44, 32, 'Experiencia turística 032').
destino(45, 33, 'Experiencia turística 033').
destino(46, 34, 'Experiencia turística 034').
destino(47, 35, 'Experiencia turística 035').
destino(48, 36, 'Experiencia turística 036').
destino(49, 37, 'Experiencia turística 037').
destino(50, 38, 'Experiencia turística 038').
destino(51, 39, 'Experiencia turística 039').
destino(52, 40, 'Experiencia turística 040').
destino(53, 41, 'Experiencia turística 041').
destino(54, 42, 'Experiencia turística 042').
destino(55, 43, 'Experiencia turística 043').
destino(56, 44, 'Experiencia turística 044').
destino(57, 45, 'Experiencia turística 045').
destino(58, 46, 'Experiencia turística 046').
destino(59, 47, 'Experiencia turística 047').
destino(60, 48, 'Experiencia turística 048').
destino(61, 49, 'Experiencia turística 049').
destino(62, 50, 'Experiencia turística 050').
destino(63, 51, 'Experiencia turística 051').
destino(64, 52, 'Experiencia turística 052').
destino(65, 53, 'Experiencia turística 053').
destino(66, 54, 'Experiencia turística 054').
destino(67, 55, 'Experiencia turística 055').
destino(68, 56, 'Experiencia turística 056').
destino(69, 57, 'Experiencia turística 057').
destino(70, 58, 'Experiencia turística 058').
destino(71, 59, 'Experiencia turística 059').
destino(72, 60, 'Experiencia turística 060').
destino(73, 61, 'Experiencia turística 061').
destino(74, 62, 'Experiencia turística 062').
destino(75, 63, 'Experiencia turística 063').
destino(76, 64, 'Experiencia turística 064').
destino(77, 65, 'Experiencia turística 065').
destino(78, 66, 'Experiencia turística 066').
destino(79, 67, 'Experiencia turística 067').
destino(80, 68, 'Experiencia turística 068').
destino(81, 69, 'Experiencia turística 069').
destino(82, 70, 'Experiencia turística 070').

% ------------------- 14. actividad/4 (84 filas) -------------------
% actividad(ID, ID_destino, nombre, precio).
actividad(1, 1, 'Tour por el centro', 500).
actividad(2, 1, 'Museo de Antropologia', 300).
actividad(3, 2, 'Snorkel en arrecife', 1200).
actividad(4, 2, 'Tour de cenotes', 900).
actividad(5, 3, 'Ruta del tequila', 1500).
actividad(6, 4, 'Tour del Palacio Real', 800).
actividad(7, 5, 'Ruta de Gaudi', 950).
actividad(8, 6, 'Crucero por el Sena', 1100).
actividad(9, 7, 'Coliseo y foro', 1300).
actividad(10, 8, 'Monserrate', 600).
actividad(11, 9, 'Tour de cafe', 1000).
actividad(12, 10, 'Templos de Tokio', 750).
actividad(13, 11, 'Clase de cocina', 1400).
actividad(14, 12, 'Galeria Uffizi', 1000).
actividad(15, 13, 'Actividad turística 001', 300).
actividad(16, 14, 'Actividad turística 002', 500).
actividad(17, 15, 'Actividad turística 003', 700).
actividad(18, 16, 'Actividad turística 004', 900).
actividad(19, 17, 'Actividad turística 005', 1100).
actividad(20, 18, 'Actividad turística 006', 1300).
actividad(21, 19, 'Actividad turística 007', 1500).
actividad(22, 20, 'Actividad turística 008', 1700).
actividad(23, 21, 'Actividad turística 009', 1900).
actividad(24, 22, 'Actividad turística 010', 2100).
actividad(25, 23, 'Actividad turística 011', 300).
actividad(26, 24, 'Actividad turística 012', 500).
actividad(27, 25, 'Actividad turística 013', 700).
actividad(28, 26, 'Actividad turística 014', 900).
actividad(29, 27, 'Actividad turística 015', 1100).
actividad(30, 28, 'Actividad turística 016', 1300).
actividad(31, 29, 'Actividad turística 017', 1500).
actividad(32, 30, 'Actividad turística 018', 1700).
actividad(33, 31, 'Actividad turística 019', 1900).
actividad(34, 32, 'Actividad turística 020', 2100).
actividad(35, 33, 'Actividad turística 021', 300).
actividad(36, 34, 'Actividad turística 022', 500).
actividad(37, 35, 'Actividad turística 023', 700).
actividad(38, 36, 'Actividad turística 024', 900).
actividad(39, 37, 'Actividad turística 025', 1100).
actividad(40, 38, 'Actividad turística 026', 1300).
actividad(41, 39, 'Actividad turística 027', 1500).
actividad(42, 40, 'Actividad turística 028', 1700).
actividad(43, 41, 'Actividad turística 029', 1900).
actividad(44, 42, 'Actividad turística 030', 2100).
actividad(45, 43, 'Actividad turística 031', 300).
actividad(46, 44, 'Actividad turística 032', 500).
actividad(47, 45, 'Actividad turística 033', 700).
actividad(48, 46, 'Actividad turística 034', 900).
actividad(49, 47, 'Actividad turística 035', 1100).
actividad(50, 48, 'Actividad turística 036', 1300).
actividad(51, 49, 'Actividad turística 037', 1500).
actividad(52, 50, 'Actividad turística 038', 1700).
actividad(53, 51, 'Actividad turística 039', 1900).
actividad(54, 52, 'Actividad turística 040', 2100).
actividad(55, 53, 'Actividad turística 041', 300).
actividad(56, 54, 'Actividad turística 042', 500).
actividad(57, 55, 'Actividad turística 043', 700).
actividad(58, 56, 'Actividad turística 044', 900).
actividad(59, 57, 'Actividad turística 045', 1100).
actividad(60, 58, 'Actividad turística 046', 1300).
actividad(61, 59, 'Actividad turística 047', 1500).
actividad(62, 60, 'Actividad turística 048', 1700).
actividad(63, 61, 'Actividad turística 049', 1900).
actividad(64, 62, 'Actividad turística 050', 2100).
actividad(65, 63, 'Actividad turística 051', 300).
actividad(66, 64, 'Actividad turística 052', 500).
actividad(67, 65, 'Actividad turística 053', 700).
actividad(68, 66, 'Actividad turística 054', 900).
actividad(69, 67, 'Actividad turística 055', 1100).
actividad(70, 68, 'Actividad turística 056', 1300).
actividad(71, 69, 'Actividad turística 057', 1500).
actividad(72, 70, 'Actividad turística 058', 1700).
actividad(73, 71, 'Actividad turística 059', 1900).
actividad(74, 72, 'Actividad turística 060', 2100).
actividad(75, 73, 'Actividad turística 061', 300).
actividad(76, 74, 'Actividad turística 062', 500).
actividad(77, 75, 'Actividad turística 063', 700).
actividad(78, 76, 'Actividad turística 064', 900).
actividad(79, 77, 'Actividad turística 065', 1100).
actividad(80, 78, 'Actividad turística 066', 1300).
actividad(81, 79, 'Actividad turística 067', 1500).
actividad(82, 80, 'Actividad turística 068', 1700).
actividad(83, 81, 'Actividad turística 069', 1900).
actividad(84, 82, 'Actividad turística 070', 2100).

% ------------------- 15. opinion/4 (90 filas) -------------------
% opinion(ID, ID_cliente, ID_destino, puntuacion).
opinion(1, 1, 2, 5).
opinion(2, 2, 1, 4).
opinion(3, 3, 4, 5).
opinion(4, 4, 6, 4).
opinion(5, 5, 8, 5).
opinion(6, 6, 9, 4).
opinion(7, 7, 5, 5).
opinion(8, 8, 2, 3).
opinion(9, 9, 6, 5).
opinion(10, 10, 7, 4).
opinion(11, 11, 3, 5).
opinion(12, 12, 10, 5).
opinion(13, 13, 9, 4).
opinion(14, 14, 4, 3).
opinion(15, 15, 2, 5).
opinion(16, 16, 5, 4).
opinion(17, 17, 12, 5).
opinion(18, 18, 10, 4).
opinion(19, 19, 1, 5).
opinion(20, 20, 8, 4).
opinion(21, 21, 13, 1).
opinion(22, 22, 14, 2).
opinion(23, 23, 15, 3).
opinion(24, 24, 16, 4).
opinion(25, 25, 17, 5).
opinion(26, 26, 18, 1).
opinion(27, 27, 19, 2).
opinion(28, 28, 20, 3).
opinion(29, 29, 21, 4).
opinion(30, 30, 22, 5).
opinion(31, 31, 23, 1).
opinion(32, 32, 24, 2).
opinion(33, 33, 25, 3).
opinion(34, 34, 26, 4).
opinion(35, 35, 27, 5).
opinion(36, 36, 28, 1).
opinion(37, 37, 29, 2).
opinion(38, 38, 30, 3).
opinion(39, 39, 31, 4).
opinion(40, 40, 32, 5).
opinion(41, 41, 33, 1).
opinion(42, 42, 34, 2).
opinion(43, 43, 35, 3).
opinion(44, 44, 36, 4).
opinion(45, 45, 37, 5).
opinion(46, 46, 38, 1).
opinion(47, 47, 39, 2).
opinion(48, 48, 40, 3).
opinion(49, 49, 41, 4).
opinion(50, 50, 42, 5).
opinion(51, 51, 43, 1).
opinion(52, 52, 44, 2).
opinion(53, 53, 45, 3).
opinion(54, 54, 46, 4).
opinion(55, 55, 47, 5).
opinion(56, 56, 48, 1).
opinion(57, 57, 49, 2).
opinion(58, 58, 50, 3).
opinion(59, 59, 51, 4).
opinion(60, 60, 52, 5).
opinion(61, 61, 53, 1).
opinion(62, 62, 54, 2).
opinion(63, 63, 55, 3).
opinion(64, 64, 56, 4).
opinion(65, 65, 57, 5).
opinion(66, 66, 58, 1).
opinion(67, 67, 59, 2).
opinion(68, 68, 60, 3).
opinion(69, 69, 61, 4).
opinion(70, 70, 62, 5).
opinion(71, 71, 63, 1).
opinion(72, 72, 64, 2).
opinion(73, 73, 65, 3).
opinion(74, 74, 66, 4).
opinion(75, 75, 67, 5).
opinion(76, 76, 68, 1).
opinion(77, 77, 69, 2).
opinion(78, 78, 70, 3).
opinion(79, 79, 71, 4).
opinion(80, 80, 72, 5).
opinion(81, 81, 73, 1).
opinion(82, 82, 74, 2).
opinion(83, 83, 75, 3).
opinion(84, 84, 76, 4).
opinion(85, 85, 77, 5).
opinion(86, 86, 78, 1).
opinion(87, 87, 79, 2).
opinion(88, 88, 80, 3).
opinion(89, 89, 81, 4).
opinion(90, 90, 82, 5).

% ===================== CONSULTAS (DOS POR TABLA) =====================

% 01. pais/2
paises_con_ciudades(Pais, Ciudad) :-
    pais(ID, Pais), ciudad(_, Ciudad, ID).
cantidad_ciudades_por_pais(Pais, Cantidad) :-
    pais(ID, Pais),
    findall(CiudadID, ciudad(CiudadID, _, ID), Ciudades),
    length(Ciudades, Cantidad).

% 02. ciudad/3
ciudades_con_hoteles(Ciudad, Cantidad) :-
    ciudad(ID, Ciudad, _),
    findall(HotelID, hotel(HotelID, _, ID, _), Hoteles),
    length(Hoteles, Cantidad), Cantidad > 0.
destinos_conocidos(Ciudad, Descripcion) :-
    ciudad(ID, Ciudad, _), destino(_, ID, Descripcion).

% 03. aeropuerto/3
aeropuertos_de_ciudad(Ciudad, Aeropuerto) :-
    ciudad(ID, Ciudad, _), aeropuerto(_, Aeropuerto, ID).
vuelos_que_salen_de(Ciudad, Aerolinea, Destino) :-
    aeropuerto(OrigenID, _, CiudadID), ciudad(CiudadID, Ciudad, _),
    vuelo(_, AerolineaID, _, OrigenID, DestinoID, _),
    aerolinea(AerolineaID, Aerolinea, _),
    aeropuerto(DestinoID, _, CiudadDestinoID), ciudad(CiudadDestinoID, Destino, _).

% 04. aerolinea/3
aerolineas_de_pais(Pais, Aerolinea) :-
    pais(ID, Pais), aerolinea(_, Aerolinea, ID).
vuelos_por_aerolinea(Aerolinea, Cantidad) :-
    aerolinea(ID, Aerolinea, _),
    findall(VueloID, vuelo(VueloID, ID, _, _, _, _), Vuelos),
    length(Vuelos, Cantidad).

% 05. avion/3
aviones_de_alta_capacidad(Modelo, Capacidad) :-
    avion(_, Modelo, Capacidad), Capacidad >= 200.
vuelos_con_avion(Modelo, VueloID) :-
    avion(ID, Modelo, _), vuelo(VueloID, _, ID, _, _, _).

% 06. vuelo/6
vuelos_baratos(Maximo, Aerolinea, Origen, Destino, Precio) :-
    vuelo(_, A, _, O, D, Precio), Precio =< Maximo,
    aerolinea(A, Aerolinea, _),
    aeropuerto(O, _, CO), ciudad(CO, Origen, _),
    aeropuerto(D, _, CD), ciudad(CD, Destino, _).
vuelos_internacionales(VueloID, Origen, Destino) :-
    vuelo(VueloID, _, _, O, D, _),
    aeropuerto(O, _, CO), aeropuerto(D, _, CD),
    ciudad(CO, Origen, PaisO), ciudad(CD, Destino, PaisD), PaisO \= PaisD.

% 07. hotel/4
hoteles_por_categoria(Estrellas, Nombre, Ciudad) :-
    hotel(_, Nombre, C, Estrellas), ciudad(C, Ciudad, _).
hoteles_con_habitacion_barata(Nombre, Precio) :-
    hotel(H, Nombre, _, _), habitacion(_, H, _, Precio), Precio < 2000.

% 08. habitacion/4
habitaciones_por_tipo(Tipo, Hotel, Precio) :-
    habitacion(_, H, Tipo, Precio), hotel(H, Hotel, _, _).
habitaciones_premium(Hotel, Precio) :-
    habitacion(_, H, _, Precio), Precio >= 5000, hotel(H, Hotel, _, _).

% 09. cliente/4
clientes_por_pais(Pais, Cliente) :-
    pais(ID, Pais), cliente(_, Cliente, _, ID).
clientes_con_reservas(Cliente, Cantidad) :-
    cliente(ID, Cliente, _, _),
    findall(R, reserva(R, ID, _, _, _), Reservas),
    length(Reservas, Cantidad), Cantidad > 0.

% 10. reserva/5
reservas_confirmadas(Cliente, VueloID, Total) :-
    reserva(_, C, VueloID, confirmada, Total), cliente(C, Cliente, _, _).
gasto_confirmado_cliente(Cliente, Total) :-
    cliente(C, Cliente, _, _),
    findall(Monto, reserva(_, C, _, confirmada, Monto), Montos),
    sum_list(Montos, Total).

% 11. pasajero/3
pasajeros_de_reserva(ReservaID, Nombre) :-
    pasajero(_, ReservaID, Nombre).
reservas_con_varios_pasajeros(ReservaID, Cantidad) :-
    reserva(ReservaID, _, _, _, _),
    findall(P, pasajero(_, ReservaID, P), Pasajeros),
    length(Pasajeros, Cantidad), Cantidad > 1.

% 12. pago/4
pagos_por_metodo(Metodo, Cantidad) :-
    findall(ID, pago(ID, _, _, Metodo), Pagos), length(Pagos, Cantidad).
total_recaudado(Total) :-
    findall(Monto, pago(_, _, Monto, _), Montos), sum_list(Montos, Total).

% 13. destino/3
destinos_de_pais(Pais, Ciudad) :-
    pais(P, Pais), ciudad(C, Ciudad, P), destino(_, C, _).
destinos_con_actividades(Ciudad, Cantidad) :-
    destino(D, C, _), ciudad(C, Ciudad, _),
    findall(A, actividad(A, D, _, _), Actividades),
    length(Actividades, Cantidad), Cantidad > 0.

% 14. actividad/4
actividades_por_destino(Ciudad, Actividad, Precio) :-
    destino(D, C, _), ciudad(C, Ciudad, _), actividad(_, D, Actividad, Precio).
actividades_economicas(Actividad, Precio) :-
    actividad(_, _, Actividad, Precio), Precio =< 800.

% 15. opinion/4
opiniones_de_cliente(Cliente, CiudadDestino, Puntuacion) :-
    opinion(_, C, D, Puntuacion), cliente(C, Cliente, _, _),
    destino(D, CI, _), ciudad(CI, CiudadDestino, _).
promedio_opiniones_destino(Ciudad, Promedio) :-
    destino(D, C, _), ciudad(C, Ciudad, _),
    findall(N, opinion(_, _, D, N), Notas), Notas \= [],
    sum_list(Notas, Suma), length(Notas, Cantidad), Promedio is Suma/Cantidad.

% Consultas con varias tablas, filtros y relaciones.
itinerario_pagado(Cliente, Aerolinea, Origen, Llegada, Total, Monto) :-
    cliente(C, Cliente, _, _), reserva(R, C, V, confirmada, Total),
    vuelo(V, A, _, OrigenID, DestinoID, _), aerolinea(A, Aerolinea, _),
    aeropuerto(OrigenID, _, CiudadOrigenID), ciudad(CiudadOrigenID, Origen, _),
    aeropuerto(DestinoID, _, CiudadDestinoID), ciudad(CiudadDestinoID, Llegada, _),
    pago(_, R, Monto, _).

reservas_pendientes_costosas(Cliente, Aerolinea, Total) :-
    cliente(C, Cliente, _, _), reserva(_, C, V, pendiente, Total), Total > 3000,
    vuelo(V, A, _, _, _, _), aerolinea(A, Aerolinea, _).

% -------------------- LISTADOS SIN USAR PUNTO Y COMA -----------------
% Cada listar_* imprime todas las respuestas de su consulta y termina.
listar_paises_con_ciudades :- forall(paises_con_ciudades(P, C), writeln(pais_ciudad(P, C))).
listar_cantidad_ciudades_por_pais :- forall(cantidad_ciudades_por_pais(P, N), writeln(ciudades(P, N))).
listar_ciudades_con_hoteles :- forall(ciudades_con_hoteles(C, N), writeln(ciudad_hoteles(C, N))).
listar_destinos_conocidos :- forall(destinos_conocidos(C, D), writeln(destino(C, D))).
listar_aeropuertos_de_ciudad :- forall(aeropuertos_de_ciudad('Tokio', A), writeln(aeropuerto(A))).
listar_vuelos_que_salen_de :- forall(vuelos_que_salen_de('Madrid', A, D), writeln(vuelo_desde_madrid(A, D))).
listar_aerolineas_de_pais :- forall(aerolineas_de_pais('Mexico', A), writeln(aerolinea(A))).
listar_vuelos_por_aerolinea :- forall(vuelos_por_aerolinea('Iberia', N), writeln(vuelos_iberia(N))).
listar_aviones_de_alta_capacidad :- forall(aviones_de_alta_capacidad(M, C), writeln(avion(M, C))).
listar_vuelos_con_avion :- forall(vuelos_con_avion('A350', V), writeln(vuelo(V))).
listar_vuelos_baratos :- forall(vuelos_baratos(2000, A, O, D, P), writeln(vuelo_barato(A, O, D, P))).
listar_vuelos_internacionales :- forall(vuelos_internacionales(V, O, D), writeln(vuelo_internacional(V, O, D))).
listar_hoteles_por_categoria :- forall(hoteles_por_categoria(5, H, C), writeln(hotel(H, C))).
listar_hoteles_con_habitacion_barata :- forall(hoteles_con_habitacion_barata(H, P), writeln(hotel(H, precio_desde(P)))).
listar_habitaciones_por_tipo :- forall(habitaciones_por_tipo(suite, H, P), writeln(suite(H, P))).
listar_habitaciones_premium :- forall(habitaciones_premium(H, P), writeln(habitacion_premium(H, P))).
listar_clientes_por_pais :- forall(clientes_por_pais('Mexico', C), writeln(cliente(C))).
listar_clientes_con_reservas :- forall(clientes_con_reservas(C, N), writeln(cliente_reservas(C, N))).
listar_reservas_confirmadas :- forall(reservas_confirmadas(C, V, T), writeln(reserva_confirmada(C, V, T))).
listar_gasto_confirmado_cliente :- forall(gasto_confirmado_cliente('Lucia Gomez', T), writeln(gasto_lucia(T))).
listar_pasajeros_de_reserva :- forall(pasajeros_de_reserva(1, N), writeln(pasajero(N))).
listar_reservas_con_varios_pasajeros :- forall(reservas_con_varios_pasajeros(R, N), writeln(reserva_pasajeros(R, N))).
listar_pagos_por_metodo :- forall(pagos_por_metodo(tarjeta, N), writeln(pagos_tarjeta(N))).
listar_total_recaudado :- forall(total_recaudado(T), writeln(total_recaudado(T))).
listar_destinos_de_pais :- forall(destinos_de_pais('Italia', C), writeln(destino_italia(C))).
listar_destinos_con_actividades :- forall(destinos_con_actividades(C, N), writeln(destino_actividades(C, N))).
listar_actividades_por_destino :- forall(actividades_por_destino('Cancun', A, P), writeln(actividad_cancun(A, P))).
listar_actividades_economicas :- forall(actividades_economicas(A, P), writeln(actividad_economica(A, P))).
listar_opiniones_de_cliente :- forall(opiniones_de_cliente('Lucia Gomez', D, P), writeln(opinion_lucia(D, P))).
listar_promedio_opiniones_destino :- forall(promedio_opiniones_destino(C, P), writeln(promedio_opinion(C, P))).

listar_itinerarios_pagados :-
    forall(itinerario_pagado(C, A, O, D, T, M), writeln(itinerario(C, A, O, D, T, M))).
listar_reservas_pendientes_costosas :-
    forall(reservas_pendientes_costosas(C, A, T), writeln(reserva_pendiente(C, A, T))).
