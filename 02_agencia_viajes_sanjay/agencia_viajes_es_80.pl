/*
 BASE DE DATOS DE AGENCIA DE VIAJES - VERSION ACADEMICA AMPLIADA
 FUENTE DE LOS REGISTROS ORIGINALES:
 https://github.com/Sanjay-RK-27/Travel-Agency-System
 Commit consultado: d1139ed15c25be332fbb7007759a2c4a41d10312
 Diagrama EER original: EER-Diagram.pdf, disponible en el repositorio.

 BASE PARA ESTA ADAPTACION: original.pl del repositorio de Angixs-zz.
 Se traducen al ESPANOL los nombres de las 14 tablas (predicados),
 se traducen los comentarios de campos y se conservan su orden y aridad.
 Los datos previos se conservan sin cambiar el contenido de sus campos.
 Cada tabla tiene al menos 80 hechos; TODOS los hechos a partir del
 separador 'REGISTROS AGREGADOS' son SINTETICOS, creados para esta practica.
 NO proceden del archivo SQL ni del autor de la base publica.
 Los identificadores y las relaciones de los registros nuevos se mantienen
 consistentes dentro de esta ampliacion. Los tipos y las restricciones del
 SQL no son comprobados automaticamente por SWI-Prolog.
 NOTA: tipo_transporte se amplio con categorias sinteticas solo para
 alcanzar el minimo de 80; en una base de datos real convendria preservar
 sus seis categorias originales y no inventar mas.
*/

% ==============================================================
% ubicacion/4: 40 originales + 40 agregados = 80
% ubicacion(ID_ubicacion, ciudad, estado, pais).
% REGISTROS ORIGINALES (convertidos del SQL publico)
ubicacion(1, 'New York', 'NY', 'United States').
ubicacion(2, 'Los Angeles', 'CA', 'United States').
ubicacion(3, 'Chicago', 'IL', 'United States').
ubicacion(4, 'Miami', 'FL', 'United States').
ubicacion(5, 'Las Vegas', 'NV', 'United States').
ubicacion(6, 'San Francisco', 'CA', 'United States').
ubicacion(7, 'Orlando', 'FL', 'United States').
ubicacion(8, 'London', null, 'United Kingdom').
ubicacion(9, 'Paris', null, 'France').
ubicacion(10, 'Rome', null, 'Italy').
ubicacion(11, 'Barcelona', null, 'Spain').
ubicacion(12, 'Amsterdam', null, 'Netherlands').
ubicacion(13, 'Berlin', null, 'Germany').
ubicacion(14, 'Tokyo', null, 'Japan').
ubicacion(15, 'Sydney', 'NSW', 'Australia').
ubicacion(16, 'Dubai', null, 'United Arab Emirates').
ubicacion(17, 'Toronto', 'ON', 'Canada').
ubicacion(18, 'Vancouver', 'BC', 'Canada').
ubicacion(19, 'Cancun', 'Quintana Roo', 'Mexico').
ubicacion(20, 'Buenos Aires', null, 'Argentina').
ubicacion(21, 'Rio de Janeiro', null, 'Brazil').
ubicacion(22, 'Cape Town', null, 'South Africa').
ubicacion(23, 'Bangkok', null, 'Thailand').
ubicacion(24, 'Singapore', null, 'Singapore').
ubicacion(25, 'Hong Kong', null, 'China').
ubicacion(26, 'Shanghai', null, 'China').
ubicacion(27, 'Mumbai', 'Maharashtra', 'India').
ubicacion(28, 'Delhi', null, 'India').
ubicacion(29, 'Istanbul', null, 'Turkey').
ubicacion(30, 'Athens', null, 'Greece').
ubicacion(31, 'Prague', null, 'Czech Republic').
ubicacion(32, 'Vienna', null, 'Austria').
ubicacion(33, 'Zurich', null, 'Switzerland').
ubicacion(34, 'Stockholm', null, 'Sweden').
ubicacion(35, 'Oslo', null, 'Norway').
ubicacion(36, 'Helsinki', null, 'Finland').
ubicacion(37, 'Cairo', null, 'Egypt').
ubicacion(38, 'Marrakech', null, 'Morocco').
ubicacion(39, 'Nairobi', null, 'Kenya').
ubicacion(40, 'Auckland', null, 'New Zealand').

% REGISTROS AGREGADOS (datos sinteticos, no pertenecen a la fuente)
ubicacion(41, 'Merida', 'Yucatan', 'Mexico').
ubicacion(42, 'Oaxaca', 'Oaxaca', 'Mexico').
ubicacion(43, 'Monterrey', 'Nuevo Leon', 'Mexico').
ubicacion(44, 'Guadalajara', 'Jalisco', 'Mexico').
ubicacion(45, 'Puebla', 'Puebla', 'Mexico').
ubicacion(46, 'Queretaro', 'Queretaro', 'Mexico').
ubicacion(47, 'Toluca', 'Estado de Mexico', 'Mexico').
ubicacion(48, 'Tijuana', 'Baja California', 'Mexico').
ubicacion(49, 'Ensenada', 'Baja California', 'Mexico').
ubicacion(50, 'La Paz', 'Baja California Sur', 'Mexico').
ubicacion(51, 'Chihuahua', 'Chihuahua', 'Mexico').
ubicacion(52, 'Hermosillo', 'Sonora', 'Mexico').
ubicacion(53, 'Culiacan', 'Sinaloa', 'Mexico').
ubicacion(54, 'Mazatlan', 'Sinaloa', 'Mexico').
ubicacion(55, 'Acapulco', 'Guerrero', 'Mexico').
ubicacion(56, 'Veracruz', 'Veracruz', 'Mexico').
ubicacion(57, 'Villahermosa', 'Tabasco', 'Mexico').
ubicacion(58, 'Tuxtla Gutierrez', 'Chiapas', 'Mexico').
ubicacion(59, 'Campeche', 'Campeche', 'Mexico').
ubicacion(60, 'Morelia', 'Michoacan', 'Mexico').
ubicacion(61, 'Zacatecas', 'Zacatecas', 'Mexico').
ubicacion(62, 'Durango', 'Durango', 'Mexico').
ubicacion(63, 'Tepic', 'Nayarit', 'Mexico').
ubicacion(64, 'Colima', 'Colima', 'Mexico').
ubicacion(65, 'Manzanillo', 'Colima', 'Mexico').
ubicacion(66, 'Puerto Vallarta', 'Jalisco', 'Mexico').
ubicacion(67, 'San Luis Potosi', 'San Luis Potosi', 'Mexico').
ubicacion(68, 'Aguascalientes', 'Aguascalientes', 'Mexico').
ubicacion(69, 'Leon', 'Guanajuato', 'Mexico').
ubicacion(70, 'Guanajuato', 'Guanajuato', 'Mexico').
ubicacion(71, 'Pachuca', 'Hidalgo', 'Mexico').
ubicacion(72, 'Cuernavaca', 'Morelos', 'Mexico').
ubicacion(73, 'Taxco', 'Guerrero', 'Mexico').
ubicacion(74, 'Tlaxcala', 'Tlaxcala', 'Mexico').
ubicacion(75, 'Saltillo', 'Coahuila', 'Mexico').
ubicacion(76, 'Torreon', 'Coahuila', 'Mexico').
ubicacion(77, 'Reynosa', 'Tamaulipas', 'Mexico').
ubicacion(78, 'Matamoros', 'Tamaulipas', 'Mexico').
ubicacion(79, 'Nuevo Laredo', 'Tamaulipas', 'Mexico').
ubicacion(80, 'Ciudad Juarez', 'Chihuahua', 'Mexico').

% ==============================================================
% pasajero/6: 35 originales + 45 agregados = 80
% pasajero(ID_pasajero, nombre, genero, edad, correo, telefono).
% REGISTROS ORIGINALES (convertidos del SQL publico)
pasajero(1, 'John Smith', 'Male', 35, 'john.smith@email.com', '+15551234567').
pasajero(2, 'Emily Johnson', 'Female', 28, 'emily.j@email.com', '+15552345678').
pasajero(3, 'Michael Williams', 'Male', 42, 'michael.w@email.com', '+15553456789').
pasajero(4, 'Sarah Brown', 'Female', 31, 'sarah.b@email.com', '+15554567890').
pasajero(5, 'David Jones', 'Male', 25, 'david.j@email.com', '+15555678901').
pasajero(6, 'Jessica Garcia', 'Female', 38, 'jessica.g@email.com', '+15556789012').
pasajero(7, 'Robert Miller', 'Male', 45, 'robert.m@email.com', '+15557890123').
pasajero(8, 'Jennifer Davis', 'Female', 29, 'jennifer.d@email.com', '+15558901234').
pasajero(9, 'Daniel Rodriguez', 'Male', 33, 'daniel.r@email.com', '+15550123456').
pasajero(10, 'Lisa Martinez', 'Female', 27, 'lisa.m@email.com', '+15551234560').
pasajero(11, 'Christopher Wilson', 'Male', 50, 'chris.w@email.com', '+15552345670').
pasajero(12, 'Amanda Anderson', 'Female', 36, 'amanda.a@email.com', '+15553456780').
pasajero(13, 'Matthew Taylor', 'Male', 41, 'matthew.t@email.com', '+15554567890').
pasajero(14, 'Ashley Thomas', 'Female', 32, 'ashley.t@email.com', '+15555678901').
pasajero(15, 'James Hernandez', 'Male', 39, 'james.h@email.com', '+15556789012').
pasajero(16, 'Elizabeth Moore', 'Female', 44, 'elizabeth.m@email.com', '+15557890123').
pasajero(17, 'Andrew Martin', 'Male', 30, 'andrew.m@email.com', '+15558901234').
pasajero(18, 'Megan Jackson', 'Female', 26, 'megan.j@email.com', '+15550123456').
pasajero(19, 'Joshua Thompson', 'Male', 48, 'joshua.t@email.com', '+15551234567').
pasajero(20, 'Nicole White', 'Female', 37, 'nicole.w@email.com', '+15552345678').
pasajero(21, 'Kevin Lopez', 'Male', 43, 'kevin.l@email.com', '+15553456789').
pasajero(22, 'Stephanie Lee', 'Female', 34, 'stephanie.l@email.com', '+15554567890').
pasajero(23, 'Brian Gonzalez', 'Male', 29, 'brian.g@email.com', '+15555678901').
pasajero(24, 'Rebecca Harris', 'Female', 40, 'rebecca.h@email.com', '+15556789012').
pasajero(25, 'Timothy Clark', 'Male', 31, 'timothy.c@email.com', '+15557890123').
pasajero(26, 'Laura Lewis', 'Female', 28, 'laura.l@email.com', '+15558901234').
pasajero(27, 'Jeffrey Robinson', 'Male', 52, 'jeffrey.r@email.com', '+15550123456').
pasajero(28, 'Melissa Walker', 'Female', 45, 'melissa.w@email.com', '+15551234567').
pasajero(29, 'Ryan Hall', 'Male', 38, 'ryan.h@email.com', '+15552345678').
pasajero(30, 'Christina Young', 'Female', 33, 'christina.y@email.com', '+15553456789').
pasajero(31, 'Jason Allen', 'Male', 41, 'jason.a@email.com', '+15554567890').
pasajero(32, 'Rachel King', 'Female', 36, 'rachel.k@email.com', '+15555678901').
pasajero(33, 'Scott Wright', 'Male', 47, 'scott.w@email.com', '+15556789012').
pasajero(34, 'Heather Scott', 'Female', 39, 'heather.s@email.com', '+15557890123').
pasajero(35, 'Eric Green', 'Male', 42, 'eric.g@email.com', '+15558901234').

% REGISTROS AGREGADOS (datos sinteticos, no pertenecen a la fuente)
pasajero(36, 'Ana Lopez', 'Female', 55, 'pasajero36@ejemplo.mx', '+525500000036').
pasajero(37, 'Luis Garcia', 'Male', 56, 'pasajero37@ejemplo.mx', '+525500000037').
pasajero(38, 'Maria Hernandez', 'Female', 57, 'pasajero38@ejemplo.mx', '+525500000038').
pasajero(39, 'Jorge Martinez', 'Male', 58, 'pasajero39@ejemplo.mx', '+525500000039').
pasajero(40, 'Sofia Torres', 'Female', 19, 'pasajero40@ejemplo.mx', '+525500000040').
pasajero(41, 'Carlos Rivera', 'Male', 20, 'pasajero41@ejemplo.mx', '+525500000041').
pasajero(42, 'Elena Flores', 'Female', 21, 'pasajero42@ejemplo.mx', '+525500000042').
pasajero(43, 'Diego Sanchez', 'Male', 22, 'pasajero43@ejemplo.mx', '+525500000043').
pasajero(44, 'Fernanda Ramirez', 'Female', 23, 'pasajero44@ejemplo.mx', '+525500000044').
pasajero(45, 'Miguel Castillo', 'Male', 24, 'pasajero45@ejemplo.mx', '+525500000045').
pasajero(46, 'Valeria Lopez', 'Female', 25, 'pasajero46@ejemplo.mx', '+525500000046').
pasajero(47, 'Andres Garcia', 'Male', 26, 'pasajero47@ejemplo.mx', '+525500000047').
pasajero(48, 'Claudia Hernandez', 'Female', 27, 'pasajero48@ejemplo.mx', '+525500000048').
pasajero(49, 'Ricardo Martinez', 'Male', 28, 'pasajero49@ejemplo.mx', '+525500000049').
pasajero(50, 'Isabel Torres', 'Female', 29, 'pasajero50@ejemplo.mx', '+525500000050').
pasajero(51, 'Ana Rivera', 'Female', 30, 'pasajero51@ejemplo.mx', '+525500000051').
pasajero(52, 'Luis Flores', 'Male', 31, 'pasajero52@ejemplo.mx', '+525500000052').
pasajero(53, 'Maria Sanchez', 'Female', 32, 'pasajero53@ejemplo.mx', '+525500000053').
pasajero(54, 'Jorge Ramirez', 'Male', 33, 'pasajero54@ejemplo.mx', '+525500000054').
pasajero(55, 'Sofia Castillo', 'Female', 34, 'pasajero55@ejemplo.mx', '+525500000055').
pasajero(56, 'Carlos Lopez', 'Male', 35, 'pasajero56@ejemplo.mx', '+525500000056').
pasajero(57, 'Elena Garcia', 'Female', 36, 'pasajero57@ejemplo.mx', '+525500000057').
pasajero(58, 'Diego Hernandez', 'Male', 37, 'pasajero58@ejemplo.mx', '+525500000058').
pasajero(59, 'Fernanda Martinez', 'Female', 38, 'pasajero59@ejemplo.mx', '+525500000059').
pasajero(60, 'Miguel Torres', 'Male', 39, 'pasajero60@ejemplo.mx', '+525500000060').
pasajero(61, 'Valeria Rivera', 'Female', 40, 'pasajero61@ejemplo.mx', '+525500000061').
pasajero(62, 'Andres Flores', 'Male', 41, 'pasajero62@ejemplo.mx', '+525500000062').
pasajero(63, 'Claudia Sanchez', 'Female', 42, 'pasajero63@ejemplo.mx', '+525500000063').
pasajero(64, 'Ricardo Ramirez', 'Male', 43, 'pasajero64@ejemplo.mx', '+525500000064').
pasajero(65, 'Isabel Castillo', 'Female', 44, 'pasajero65@ejemplo.mx', '+525500000065').
pasajero(66, 'Ana Lopez', 'Female', 45, 'pasajero66@ejemplo.mx', '+525500000066').
pasajero(67, 'Luis Garcia', 'Male', 46, 'pasajero67@ejemplo.mx', '+525500000067').
pasajero(68, 'Maria Hernandez', 'Female', 47, 'pasajero68@ejemplo.mx', '+525500000068').
pasajero(69, 'Jorge Martinez', 'Male', 48, 'pasajero69@ejemplo.mx', '+525500000069').
pasajero(70, 'Sofia Torres', 'Female', 49, 'pasajero70@ejemplo.mx', '+525500000070').
pasajero(71, 'Carlos Rivera', 'Male', 50, 'pasajero71@ejemplo.mx', '+525500000071').
pasajero(72, 'Elena Flores', 'Female', 51, 'pasajero72@ejemplo.mx', '+525500000072').
pasajero(73, 'Diego Sanchez', 'Male', 52, 'pasajero73@ejemplo.mx', '+525500000073').
pasajero(74, 'Fernanda Ramirez', 'Female', 53, 'pasajero74@ejemplo.mx', '+525500000074').
pasajero(75, 'Miguel Castillo', 'Male', 54, 'pasajero75@ejemplo.mx', '+525500000075').
pasajero(76, 'Valeria Lopez', 'Female', 55, 'pasajero76@ejemplo.mx', '+525500000076').
pasajero(77, 'Andres Garcia', 'Male', 56, 'pasajero77@ejemplo.mx', '+525500000077').
pasajero(78, 'Claudia Hernandez', 'Female', 57, 'pasajero78@ejemplo.mx', '+525500000078').
pasajero(79, 'Ricardo Martinez', 'Male', 58, 'pasajero79@ejemplo.mx', '+525500000079').
pasajero(80, 'Isabel Torres', 'Female', 19, 'pasajero80@ejemplo.mx', '+525500000080').

% ==============================================================
% empleado/5: 30 originales + 50 agregados = 80
% empleado(ID_empleado, nombre, cargo, fecha_ingreso, ID_supervisor).
% REGISTROS ORIGINALES (convertidos del SQL publico)
empleado(1, 'Robert Johnson', 'General Manager', '2010-05-15', null).
empleado(2, 'Sarah Wilson', 'Sales Manager', '2012-08-22', 1).
empleado(3, 'Michael Brown', 'IT Manager', '2013-03-10', 1).
empleado(4, 'Jennifer Davis', 'HR Manager', '2014-01-05', 1).
empleado(5, 'David Miller', 'Senior Travel Agent', '2015-06-18', 2).
empleado(6, 'Lisa Taylor', 'Senior Travel Agent', '2015-07-22', 2).
empleado(7, 'James Anderson', 'Travel Agent', '2016-02-14', 5).
empleado(8, 'Jessica Thomas', 'Travel Agent', '2016-03-25', 5).
empleado(9, 'Daniel Jackson', 'Travel Agent', '2016-05-30', 6).
empleado(10, 'Emily White', 'Travel Agent', '2017-01-10', 6).
empleado(11, 'Christopher Harris', 'Travel Agent', '2017-04-05', 5).
empleado(12, 'Amanda Martin', 'Travel Agent', '2017-06-15', 6).
empleado(13, 'Matthew Thompson', 'Travel Agent', '2018-02-20', 5).
empleado(14, 'Ashley Garcia', 'Travel Agent', '2018-03-12', 6).
empleado(15, 'Andrew Martinez', 'Travel Agent', '2018-05-18', 5).
empleado(16, 'Megan Robinson', 'Travel Agent', '2018-07-22', 6).
empleado(17, 'Joshua Clark', 'Travel Agent', '2019-01-08', 5).
empleado(18, 'Nicole Rodriguez', 'Travel Agent', '2019-03-14', 6).
empleado(19, 'Kevin Lewis', 'Travel Agent', '2019-06-25', 5).
empleado(20, 'Stephanie Lee', 'Travel Agent', '2019-08-30', 6).
empleado(21, 'Brian Walker', 'Travel Agent', '2020-02-10', 5).
empleado(22, 'Rebecca Hall', 'Travel Agent', '2020-04-15', 6).
empleado(23, 'Timothy Young', 'Travel Agent', '2020-07-20', 5).
empleado(24, 'Laura Allen', 'Travel Agent', '2020-09-25', 6).
empleado(25, 'Jeffrey Hernandez', 'Travel Agent', '2021-01-05', 5).
empleado(26, 'Melissa King', 'Travel Agent', '2021-03-10', 6).
empleado(27, 'Ryan Wright', 'Travel Agent', '2021-05-15', 5).
empleado(28, 'Christina Scott', 'Travel Agent', '2021-07-20', 6).
empleado(29, 'Jason Green', 'Travel Agent', '2021-09-25', 5).
empleado(30, 'Rachel Adams', 'Travel Agent', '2022-01-10', 6).

% REGISTROS AGREGADOS (datos sinteticos, no pertenecen a la fuente)
empleado(31, 'Ana Lopez', 'Travel Agent', '2024-01-17', 5).
empleado(32, 'Luis Garcia', 'Travel Agent', '2024-01-18', 5).
empleado(33, 'Maria Hernandez', 'Travel Agent', '2024-01-19', 5).
empleado(34, 'Jorge Martinez', 'Travel Agent', '2024-01-20', 5).
empleado(35, 'Sofia Torres', 'Senior Travel Agent', '2024-01-21', 2).
empleado(36, 'Carlos Rivera', 'Travel Agent', '2024-01-22', 5).
empleado(37, 'Elena Flores', 'Travel Agent', '2024-01-23', 5).
empleado(38, 'Diego Sanchez', 'Travel Agent', '2024-01-24', 5).
empleado(39, 'Fernanda Ramirez', 'Travel Agent', '2024-01-25', 5).
empleado(40, 'Miguel Castillo', 'Senior Travel Agent', '2024-01-26', 2).
empleado(41, 'Valeria Lopez', 'Travel Agent', '2024-01-27', 5).
empleado(42, 'Andres Garcia', 'Travel Agent', '2024-01-28', 5).
empleado(43, 'Claudia Hernandez', 'Travel Agent', '2024-01-29', 5).
empleado(44, 'Ricardo Martinez', 'Travel Agent', '2024-01-30', 5).
empleado(45, 'Isabel Torres', 'Senior Travel Agent', '2024-01-31', 2).
empleado(46, 'Ana Rivera', 'Travel Agent', '2024-02-01', 5).
empleado(47, 'Luis Flores', 'Travel Agent', '2024-02-02', 5).
empleado(48, 'Maria Sanchez', 'Travel Agent', '2024-02-03', 5).
empleado(49, 'Jorge Ramirez', 'Travel Agent', '2024-02-04', 5).
empleado(50, 'Sofia Castillo', 'Senior Travel Agent', '2024-02-05', 2).
empleado(51, 'Carlos Lopez', 'Travel Agent', '2024-02-06', 5).
empleado(52, 'Elena Garcia', 'Travel Agent', '2024-02-07', 5).
empleado(53, 'Diego Hernandez', 'Travel Agent', '2024-02-08', 5).
empleado(54, 'Fernanda Martinez', 'Travel Agent', '2024-02-09', 5).
empleado(55, 'Miguel Torres', 'Senior Travel Agent', '2024-02-10', 2).
empleado(56, 'Valeria Rivera', 'Travel Agent', '2024-02-11', 5).
empleado(57, 'Andres Flores', 'Travel Agent', '2024-02-12', 5).
empleado(58, 'Claudia Sanchez', 'Travel Agent', '2024-02-13', 5).
empleado(59, 'Ricardo Ramirez', 'Travel Agent', '2024-02-14', 5).
empleado(60, 'Isabel Castillo', 'Senior Travel Agent', '2024-02-15', 2).
empleado(61, 'Ana Lopez', 'Travel Agent', '2024-02-16', 5).
empleado(62, 'Luis Garcia', 'Travel Agent', '2024-02-17', 5).
empleado(63, 'Maria Hernandez', 'Travel Agent', '2024-02-18', 5).
empleado(64, 'Jorge Martinez', 'Travel Agent', '2024-02-19', 5).
empleado(65, 'Sofia Torres', 'Senior Travel Agent', '2024-02-20', 2).
empleado(66, 'Carlos Rivera', 'Travel Agent', '2024-02-21', 5).
empleado(67, 'Elena Flores', 'Travel Agent', '2024-02-22', 5).
empleado(68, 'Diego Sanchez', 'Travel Agent', '2024-02-23', 5).
empleado(69, 'Fernanda Ramirez', 'Travel Agent', '2024-02-24', 5).
empleado(70, 'Miguel Castillo', 'Senior Travel Agent', '2024-02-25', 2).
empleado(71, 'Valeria Lopez', 'Travel Agent', '2024-02-26', 5).
empleado(72, 'Andres Garcia', 'Travel Agent', '2024-02-27', 5).
empleado(73, 'Claudia Hernandez', 'Travel Agent', '2024-02-28', 5).
empleado(74, 'Ricardo Martinez', 'Travel Agent', '2024-02-29', 5).
empleado(75, 'Isabel Torres', 'Senior Travel Agent', '2024-03-01', 2).
empleado(76, 'Ana Rivera', 'Travel Agent', '2024-03-02', 5).
empleado(77, 'Luis Flores', 'Travel Agent', '2024-03-03', 5).
empleado(78, 'Maria Sanchez', 'Travel Agent', '2024-03-04', 5).
empleado(79, 'Jorge Ramirez', 'Travel Agent', '2024-03-05', 5).
empleado(80, 'Sofia Castillo', 'Senior Travel Agent', '2024-03-06', 2).

% ==============================================================
% alojamiento/7: 35 originales + 45 agregados = 80
% alojamiento(ID_alojamiento, nombre, tipo, tarifa, servicios, descuento, ID_ubicacion).
% REGISTROS ORIGINALES (convertidos del SQL publico)
alojamiento(1, 'Grand Hyatt New York', 'Hotel', 350.00, 'Pool, Spa, Gym, Restaurant, Bar', 0.10, 1).
alojamiento(2, 'The Beverly Hills Hotel', 'Hotel', 450.00, 'Pool, Spa, Gym, Restaurant, Bar, Tennis Court', 0.15, 2).
alojamiento(3, 'The Drake Chicago', 'Hotel', 275.00, 'Restaurant, Bar, Business Center', 0.05, 3).
alojamiento(4, 'Fontainebleau Miami Beach', 'Resort', 400.00, 'Pool, Spa, Gym, Restaurant, Bar, Beach Access', 0.20, 4).
alojamiento(5, 'Bellagio Las Vegas', 'Resort', 375.00, 'Pool, Spa, Casino, Multiple Restaurants, Shows', 0.10, 5).
alojamiento(6, 'Fairmont San Francisco', 'Hotel', 325.00, 'Restaurant, Bar, Business Center', 0.05, 6).
alojamiento(7, 'Walt Disney World Resorts', 'Resort', 300.00, 'Pool, Theme Park Access, Restaurants', 0.25, 7).
alojamiento(8, 'The Ritz London', 'Hotel', 500.00, 'Pool, Spa, Gym, Restaurant, Bar', 0.10, 8).
alojamiento(9, 'Le Meurice Paris', 'Hotel', 475.00, 'Spa, Gym, Restaurant, Bar', 0.15, 9).
alojamiento(10, 'Hotel de Russie Rome', 'Hotel', 425.00, 'Pool, Spa, Restaurant, Bar', 0.10, 10).
alojamiento(11, 'Hotel Arts Barcelona', 'Hotel', 350.00, 'Pool, Spa, Gym, Restaurant, Bar', 0.10, 11).
alojamiento(12, 'Conservatorium Amsterdam', 'Hotel', 400.00, 'Spa, Gym, Restaurant, Bar', 0.10, 12).
alojamiento(13, 'The Ritz-Carlton Berlin', 'Hotel', 375.00, 'Spa, Gym, Restaurant, Bar', 0.10, 13).
alojamiento(14, 'Park Hotel Tokyo', 'Hotel', 425.00, 'Restaurant, Bar, Business Center', 0.05, 14).
alojamiento(15, 'Four Seasons Sydney', 'Hotel', 450.00, 'Pool, Spa, Gym, Restaurant, Bar', 0.15, 15).
alojamiento(16, 'Burj Al Arab Dubai', 'Hotel', 1000.00, 'Pool, Spa, Gym, Multiple Restaurants, Private Beach', 0.20, 16).
alojamiento(17, 'Fairmont Royal York Toronto', 'Hotel', 300.00, 'Pool, Gym, Restaurant, Bar', 0.10, 17).
alojamiento(18, 'Rosewood Hotel Georgia Vancouver', 'Hotel', 350.00, 'Spa, Gym, Restaurant, Bar', 0.10, 18).
alojamiento(19, 'The Ritz-Carlton Cancun', 'Resort', 425.00, 'Pool, Spa, Gym, Restaurant, Bar, Beach Access', 0.20, 19).
alojamiento(20, 'Palacio Duhau Buenos Aires', 'Hotel', 375.00, 'Pool, Spa, Gym, Restaurant, Bar', 0.15, 20).
alojamiento(21, 'Copacabana Palace Rio', 'Hotel', 400.00, 'Pool, Spa, Gym, Restaurant, Bar, Beach Access', 0.15, 21).
alojamiento(22, 'One&Only Cape Town', 'Resort', 450.00, 'Pool, Spa, Gym, Restaurant, Bar', 0.20, 22).
alojamiento(23, 'Mandarin Oriental Bangkok', 'Hotel', 350.00, 'Pool, Spa, Gym, Restaurant, Bar', 0.10, 23).
alojamiento(24, 'Marina Bay Sands Singapore', 'Hotel', 500.00, 'Infinity Pool, Casino, Multiple Restaurants', 0.15, 24).
alojamiento(25, 'The Peninsula Hong Kong', 'Hotel', 475.00, 'Pool, Spa, Gym, Restaurant, Bar', 0.10, 25).
alojamiento(26, 'Taj Mahal Palace Mumbai', 'Hotel', 300.00, 'Pool, Spa, Gym, Restaurant, Bar', 0.10, 26).
alojamiento(27, 'The Leela Palace New Delhi', 'Hotel', 350.00, 'Pool, Spa, Gym, Restaurant, Bar', 0.10, 27).
alojamiento(28, 'Çırağan Palace Istanbul', 'Hotel', 400.00, 'Pool, Spa, Gym, Restaurant, Bar, Bosphorus View', 0.15, 28).
alojamiento(29, 'Grande Bretagne Athens', 'Hotel', 375.00, 'Pool, Spa, Gym, Restaurant, Bar', 0.10, 29).
alojamiento(30, 'Four Seasons Prague', 'Hotel', 425.00, 'Spa, Gym, Restaurant, Bar', 0.10, 30).
alojamiento(31, 'Hotel Sacher Vienna', 'Hotel', 450.00, 'Restaurant, Bar, Famous Sacher Torte', 0.15, 31).
alojamiento(32, 'Baur au Lac Zurich', 'Hotel', 500.00, 'Restaurant, Bar, Lake View', 0.10, 32).
alojamiento(33, 'Grand Hôtel Stockholm', 'Hotel', 400.00, 'Spa, Gym, Restaurant, Bar', 0.10, 33).
alojamiento(34, 'The Thief Oslo', 'Hotel', 425.00, 'Spa, Gym, Restaurant, Bar', 0.10, 34).
alojamiento(35, 'Hotel Kämp Helsinki', 'Hotel', 375.00, 'Spa, Gym, Restaurant, Bar', 0.10, 35).

% REGISTROS AGREGADOS (datos sinteticos, no pertenecen a la fuente)
alojamiento(36, 'Alojamiento Ejemplo 36', 'Hotel', 80, 'Internet, Estacionamiento', 0.05, 36).
alojamiento(37, 'Alojamiento Ejemplo 37', 'Resort', 105, 'Internet, Estacionamiento', 0.10, 37).
alojamiento(38, 'Alojamiento Ejemplo 38', 'Airbnb', 130, 'Internet, Estacionamiento', 0.15, 38).
alojamiento(39, 'Alojamiento Ejemplo 39', 'Guesthouse', 155, 'Internet, Estacionamiento', 0.20, 39).
alojamiento(40, 'Alojamiento Ejemplo 40', 'Inn', 180, 'Internet, Estacionamiento', 0.00, 40).
alojamiento(41, 'Alojamiento Ejemplo 41', 'Suites', 205, 'Internet, Estacionamiento', 0.05, 41).
alojamiento(42, 'Alojamiento Ejemplo 42', 'Hotel', 230, 'Internet, Estacionamiento', 0.10, 42).
alojamiento(43, 'Alojamiento Ejemplo 43', 'Resort', 255, 'Internet, Estacionamiento', 0.15, 43).
alojamiento(44, 'Alojamiento Ejemplo 44', 'Airbnb', 280, 'Internet, Estacionamiento', 0.20, 44).
alojamiento(45, 'Alojamiento Ejemplo 45', 'Guesthouse', 80, 'Internet, Estacionamiento', 0.00, 45).
alojamiento(46, 'Alojamiento Ejemplo 46', 'Inn', 105, 'Internet, Estacionamiento', 0.05, 46).
alojamiento(47, 'Alojamiento Ejemplo 47', 'Suites', 130, 'Internet, Estacionamiento', 0.10, 47).
alojamiento(48, 'Alojamiento Ejemplo 48', 'Hotel', 155, 'Internet, Estacionamiento', 0.15, 48).
alojamiento(49, 'Alojamiento Ejemplo 49', 'Resort', 180, 'Internet, Estacionamiento', 0.20, 49).
alojamiento(50, 'Alojamiento Ejemplo 50', 'Airbnb', 205, 'Internet, Estacionamiento', 0.00, 50).
alojamiento(51, 'Alojamiento Ejemplo 51', 'Guesthouse', 230, 'Internet, Estacionamiento', 0.05, 51).
alojamiento(52, 'Alojamiento Ejemplo 52', 'Inn', 255, 'Internet, Estacionamiento', 0.10, 52).
alojamiento(53, 'Alojamiento Ejemplo 53', 'Suites', 280, 'Internet, Estacionamiento', 0.15, 53).
alojamiento(54, 'Alojamiento Ejemplo 54', 'Hotel', 80, 'Internet, Estacionamiento', 0.20, 54).
alojamiento(55, 'Alojamiento Ejemplo 55', 'Resort', 105, 'Internet, Estacionamiento', 0.00, 55).
alojamiento(56, 'Alojamiento Ejemplo 56', 'Airbnb', 130, 'Internet, Estacionamiento', 0.05, 56).
alojamiento(57, 'Alojamiento Ejemplo 57', 'Guesthouse', 155, 'Internet, Estacionamiento', 0.10, 57).
alojamiento(58, 'Alojamiento Ejemplo 58', 'Inn', 180, 'Internet, Estacionamiento', 0.15, 58).
alojamiento(59, 'Alojamiento Ejemplo 59', 'Suites', 205, 'Internet, Estacionamiento', 0.20, 59).
alojamiento(60, 'Alojamiento Ejemplo 60', 'Hotel', 230, 'Internet, Estacionamiento', 0.00, 60).
alojamiento(61, 'Alojamiento Ejemplo 61', 'Resort', 255, 'Internet, Estacionamiento', 0.05, 61).
alojamiento(62, 'Alojamiento Ejemplo 62', 'Airbnb', 280, 'Internet, Estacionamiento', 0.10, 62).
alojamiento(63, 'Alojamiento Ejemplo 63', 'Guesthouse', 80, 'Internet, Estacionamiento', 0.15, 63).
alojamiento(64, 'Alojamiento Ejemplo 64', 'Inn', 105, 'Internet, Estacionamiento', 0.20, 64).
alojamiento(65, 'Alojamiento Ejemplo 65', 'Suites', 130, 'Internet, Estacionamiento', 0.00, 65).
alojamiento(66, 'Alojamiento Ejemplo 66', 'Hotel', 155, 'Internet, Estacionamiento', 0.05, 66).
alojamiento(67, 'Alojamiento Ejemplo 67', 'Resort', 180, 'Internet, Estacionamiento', 0.10, 67).
alojamiento(68, 'Alojamiento Ejemplo 68', 'Airbnb', 205, 'Internet, Estacionamiento', 0.15, 68).
alojamiento(69, 'Alojamiento Ejemplo 69', 'Guesthouse', 230, 'Internet, Estacionamiento', 0.20, 69).
alojamiento(70, 'Alojamiento Ejemplo 70', 'Inn', 255, 'Internet, Estacionamiento', 0.00, 70).
alojamiento(71, 'Alojamiento Ejemplo 71', 'Suites', 280, 'Internet, Estacionamiento', 0.05, 71).
alojamiento(72, 'Alojamiento Ejemplo 72', 'Hotel', 80, 'Internet, Estacionamiento', 0.10, 72).
alojamiento(73, 'Alojamiento Ejemplo 73', 'Resort', 105, 'Internet, Estacionamiento', 0.15, 73).
alojamiento(74, 'Alojamiento Ejemplo 74', 'Airbnb', 130, 'Internet, Estacionamiento', 0.20, 74).
alojamiento(75, 'Alojamiento Ejemplo 75', 'Guesthouse', 155, 'Internet, Estacionamiento', 0.00, 75).
alojamiento(76, 'Alojamiento Ejemplo 76', 'Inn', 180, 'Internet, Estacionamiento', 0.05, 76).
alojamiento(77, 'Alojamiento Ejemplo 77', 'Suites', 205, 'Internet, Estacionamiento', 0.10, 77).
alojamiento(78, 'Alojamiento Ejemplo 78', 'Hotel', 230, 'Internet, Estacionamiento', 0.15, 78).
alojamiento(79, 'Alojamiento Ejemplo 79', 'Resort', 255, 'Internet, Estacionamiento', 0.20, 79).
alojamiento(80, 'Alojamiento Ejemplo 80', 'Airbnb', 280, 'Internet, Estacionamiento', 0.00, 80).

% ==============================================================
% tipo_transporte/2: 6 originales + 74 agregados = 80
% tipo_transporte(ID_tipo_transporte, nombre).
% REGISTROS ORIGINALES (convertidos del SQL publico)
tipo_transporte(1, 'Flight').
tipo_transporte(2, 'Car Rental').
tipo_transporte(3, 'Bus').
tipo_transporte(4, 'Cruise').
tipo_transporte(5, 'Train').
tipo_transporte(6, 'Ferry').

% REGISTROS AGREGADOS (datos sinteticos, no pertenecen a la fuente)
tipo_transporte(7, 'Transporte especial 07').
tipo_transporte(8, 'Transporte especial 08').
tipo_transporte(9, 'Transporte especial 09').
tipo_transporte(10, 'Transporte especial 10').
tipo_transporte(11, 'Transporte especial 11').
tipo_transporte(12, 'Transporte especial 12').
tipo_transporte(13, 'Transporte especial 13').
tipo_transporte(14, 'Transporte especial 14').
tipo_transporte(15, 'Transporte especial 15').
tipo_transporte(16, 'Transporte especial 16').
tipo_transporte(17, 'Transporte especial 17').
tipo_transporte(18, 'Transporte especial 18').
tipo_transporte(19, 'Transporte especial 19').
tipo_transporte(20, 'Transporte especial 20').
tipo_transporte(21, 'Transporte especial 21').
tipo_transporte(22, 'Transporte especial 22').
tipo_transporte(23, 'Transporte especial 23').
tipo_transporte(24, 'Transporte especial 24').
tipo_transporte(25, 'Transporte especial 25').
tipo_transporte(26, 'Transporte especial 26').
tipo_transporte(27, 'Transporte especial 27').
tipo_transporte(28, 'Transporte especial 28').
tipo_transporte(29, 'Transporte especial 29').
tipo_transporte(30, 'Transporte especial 30').
tipo_transporte(31, 'Transporte especial 31').
tipo_transporte(32, 'Transporte especial 32').
tipo_transporte(33, 'Transporte especial 33').
tipo_transporte(34, 'Transporte especial 34').
tipo_transporte(35, 'Transporte especial 35').
tipo_transporte(36, 'Transporte especial 36').
tipo_transporte(37, 'Transporte especial 37').
tipo_transporte(38, 'Transporte especial 38').
tipo_transporte(39, 'Transporte especial 39').
tipo_transporte(40, 'Transporte especial 40').
tipo_transporte(41, 'Transporte especial 41').
tipo_transporte(42, 'Transporte especial 42').
tipo_transporte(43, 'Transporte especial 43').
tipo_transporte(44, 'Transporte especial 44').
tipo_transporte(45, 'Transporte especial 45').
tipo_transporte(46, 'Transporte especial 46').
tipo_transporte(47, 'Transporte especial 47').
tipo_transporte(48, 'Transporte especial 48').
tipo_transporte(49, 'Transporte especial 49').
tipo_transporte(50, 'Transporte especial 50').
tipo_transporte(51, 'Transporte especial 51').
tipo_transporte(52, 'Transporte especial 52').
tipo_transporte(53, 'Transporte especial 53').
tipo_transporte(54, 'Transporte especial 54').
tipo_transporte(55, 'Transporte especial 55').
tipo_transporte(56, 'Transporte especial 56').
tipo_transporte(57, 'Transporte especial 57').
tipo_transporte(58, 'Transporte especial 58').
tipo_transporte(59, 'Transporte especial 59').
tipo_transporte(60, 'Transporte especial 60').
tipo_transporte(61, 'Transporte especial 61').
tipo_transporte(62, 'Transporte especial 62').
tipo_transporte(63, 'Transporte especial 63').
tipo_transporte(64, 'Transporte especial 64').
tipo_transporte(65, 'Transporte especial 65').
tipo_transporte(66, 'Transporte especial 66').
tipo_transporte(67, 'Transporte especial 67').
tipo_transporte(68, 'Transporte especial 68').
tipo_transporte(69, 'Transporte especial 69').
tipo_transporte(70, 'Transporte especial 70').
tipo_transporte(71, 'Transporte especial 71').
tipo_transporte(72, 'Transporte especial 72').
tipo_transporte(73, 'Transporte especial 73').
tipo_transporte(74, 'Transporte especial 74').
tipo_transporte(75, 'Transporte especial 75').
tipo_transporte(76, 'Transporte especial 76').
tipo_transporte(77, 'Transporte especial 77').
tipo_transporte(78, 'Transporte especial 78').
tipo_transporte(79, 'Transporte especial 79').
tipo_transporte(80, 'Transporte especial 80').

% ==============================================================
% vuelo/9: 40 originales + 40 agregados = 80
% vuelo(ID_vuelo, numero_vuelo, aerolinea, ID_origen, ID_destino, fecha_salida, fecha_llegada, clase, tarifa).
% REGISTROS ORIGINALES (convertidos del SQL publico)
vuelo(1, 'AA100', 'American Airlines', 1, 8, '2023-06-15 08:00:00', '2023-06-15 20:30:00', 'Business', 1200.00).
vuelo(2, 'BA215', 'British Airways', 2, 8, '2023-06-16 10:30:00', '2023-06-16 23:45:00', 'Premium Economy', 950.00).
vuelo(3, 'DL400', 'Delta Airlines', 3, 9, '2023-06-17 12:15:00', '2023-06-17 20:30:00', 'Economy', 650.00).
vuelo(4, 'AF350', 'Air France', 4, 9, '2023-06-18 14:00:00', '2023-06-18 22:15:00', 'Business', 1100.00).
vuelo(5, 'LH450', 'Lufthansa', 5, 13, '2023-06-19 16:45:00', '2023-06-20 08:30:00', 'First', 2500.00).
vuelo(6, 'UA200', 'United Airlines', 6, 11, '2023-06-20 09:30:00', '2023-06-20 18:45:00', 'Premium Economy', 850.00).
vuelo(7, 'EK205', 'Emirates', 7, 16, '2023-06-21 11:00:00', '2023-06-22 08:30:00', 'First', 3000.00).
vuelo(8, 'SQ305', 'Singapore Airlines', 8, 24, '2023-06-22 13:15:00', '2023-06-23 06:45:00', 'Business', 1800.00).
vuelo(9, 'JL100', 'Japan Airlines', 9, 14, '2023-06-23 15:30:00', '2023-06-24 09:15:00', 'Premium Economy', 1200.00).
vuelo(10, 'QF12', 'Qantas', 10, 15, '2023-06-24 17:45:00', '2023-06-25 14:30:00', 'Business', 2200.00).
vuelo(11, 'AC101', 'Air Canada', 11, 17, '2023-06-25 19:00:00', '2023-06-26 02:45:00', 'Economy', 600.00).
vuelo(12, 'CX888', 'Cathay Pacific', 12, 25, '2023-06-26 21:15:00', '2023-06-27 18:30:00', 'Business', 1900.00).
vuelo(13, 'AI161', 'Air India', 13, 26, '2023-06-27 23:30:00', '2023-06-28 12:45:00', 'Premium Economy', 1100.00).
vuelo(14, 'TK10', 'Turkish Airlines', 14, 28, '2023-06-28 01:45:00', '2023-06-28 10:30:00', 'Economy', 550.00).
vuelo(15, 'AZ305', 'Alitalia', 15, 10, '2023-06-29 03:00:00', '2023-06-29 12:15:00', 'Business', 1300.00).
vuelo(16, 'IB3450', 'Iberia', 16, 11, '2023-06-30 05:15:00', '2023-06-30 14:30:00', 'Economy', 500.00).
vuelo(17, 'KL602', 'KLM', 17, 12, '2023-07-01 07:30:00', '2023-07-01 16:45:00', 'Premium Economy', 900.00).
vuelo(18, 'LY315', 'El Al', 18, 29, '2023-07-02 09:45:00', '2023-07-02 19:00:00', 'Economy', 650.00).
vuelo(19, 'OS75', 'Austrian Airlines', 19, 31, '2023-07-03 11:00:00', '2023-07-03 20:15:00', 'Business', 1400.00).
vuelo(20, 'LX45', 'Swiss International', 20, 32, '2023-07-04 13:15:00', '2023-07-04 22:30:00', 'Premium Economy', 950.00).
vuelo(21, 'SK500', 'SAS', 21, 33, '2023-07-05 15:30:00', '2023-07-05 23:45:00', 'Economy', 700.00).
vuelo(22, 'DY7012', 'Norwegian', 22, 34, '2023-07-06 17:45:00', '2023-07-07 02:00:00', 'Premium Economy', 800.00).
vuelo(23, 'AY50', 'Finnair', 23, 35, '2023-07-07 19:00:00', '2023-07-08 04:15:00', 'Business', 1500.00).
vuelo(24, 'MS800', 'EgyptAir', 24, 36, '2023-07-08 21:15:00', '2023-07-09 06:30:00', 'Economy', 600.00).
vuelo(25, 'AT550', 'Royal Air Maroc', 25, 37, '2023-07-09 23:30:00', '2023-07-10 08:45:00', 'Premium Economy', 850.00).
vuelo(26, 'KQ400', 'Kenya Airways', 26, 38, '2023-07-10 01:45:00', '2023-07-10 11:00:00', 'Business', 1600.00).
vuelo(27, 'NZ1', 'Air New Zealand', 27, 39, '2023-07-11 03:00:00', '2023-07-12 06:15:00', 'First', 2800.00).
vuelo(28, 'AA75', 'American Airlines', 28, 1, '2023-07-12 05:15:00', '2023-07-12 14:30:00', 'Business', 1300.00).
vuelo(29, 'BA178', 'British Airways', 29, 2, '2023-07-13 07:30:00', '2023-07-13 16:45:00', 'Premium Economy', 950.00).
vuelo(30, 'DL60', 'Delta Airlines', 30, 3, '2023-07-14 09:45:00', '2023-07-14 19:00:00', 'Economy', 650.00).
vuelo(31, 'UA900', 'United Airlines', 31, 4, '2023-07-15 11:00:00', '2023-07-15 20:15:00', 'Business', 1200.00).
vuelo(32, 'LH490', 'Lufthansa', 32, 5, '2023-07-16 13:15:00', '2023-07-16 22:30:00', 'Premium Economy', 900.00).
vuelo(33, 'EK206', 'Emirates', 33, 6, '2023-07-17 15:30:00', '2023-07-18 10:45:00', 'First', 2900.00).
vuelo(34, 'SQ306', 'Singapore Airlines', 34, 7, '2023-07-18 17:45:00', '2023-07-19 12:00:00', 'Business', 1850.00).
vuelo(35, 'JL101', 'Japan Airlines', 35, 8, '2023-07-19 19:00:00', '2023-07-20 13:15:00', 'Premium Economy', 1250.00).
vuelo(36, 'QF11', 'Qantas', 36, 9, '2023-07-20 21:15:00', '2023-07-21 18:30:00', 'Business', 2250.00).
vuelo(37, 'AC102', 'Air Canada', 37, 10, '2023-07-21 23:30:00', '2023-07-22 08:45:00', 'Economy', 620.00).
vuelo(38, 'CX889', 'Cathay Pacific', 38, 11, '2023-07-22 01:45:00', '2023-07-22 20:00:00', 'Business', 1950.00).
vuelo(39, 'AI162', 'Air India', 39, 12, '2023-07-23 03:00:00', '2023-07-23 16:15:00', 'Premium Economy', 1150.00).
vuelo(40, 'TK11', 'Turkish Airlines', 40, 13, '2023-07-24 05:15:00', '2023-07-24 14:30:00', 'Economy', 570.00).

% REGISTROS AGREGADOS (datos sinteticos, no pertenecen a la fuente)
vuelo(41, 'MX641', 'Aeromexico', 41, 42, '2024-02-11 08:00:00', '2024-02-11 13:00:00', 'Premium Economy', 860).
vuelo(42, 'MX642', 'Volaris', 42, 43, '2024-02-12 08:00:00', '2024-02-12 13:00:00', 'Business', 965).
vuelo(43, 'MX643', 'Viva', 43, 44, '2024-02-13 08:00:00', '2024-02-13 13:00:00', 'First', 1070).
vuelo(44, 'MX644', 'Iberia', 44, 45, '2024-02-14 08:00:00', '2024-02-14 13:00:00', 'Economy', 1175).
vuelo(45, 'MX645', 'Air France', 45, 46, '2024-02-15 08:00:00', '2024-02-15 13:00:00', 'Premium Economy', 1280).
vuelo(46, 'MX646', 'LATAM', 46, 47, '2024-02-16 08:00:00', '2024-02-16 13:00:00', 'Business', 1385).
vuelo(47, 'MX647', 'Aeromexico', 47, 48, '2024-02-17 08:00:00', '2024-02-17 13:00:00', 'First', 1490).
vuelo(48, 'MX648', 'Volaris', 48, 49, '2024-02-18 08:00:00', '2024-02-18 13:00:00', 'Economy', 1595).
vuelo(49, 'MX649', 'Viva', 49, 50, '2024-02-19 08:00:00', '2024-02-19 13:00:00', 'Premium Economy', 1700).
vuelo(50, 'MX650', 'Iberia', 50, 51, '2024-02-20 08:00:00', '2024-02-20 13:00:00', 'Business', 1805).
vuelo(51, 'MX651', 'Air France', 51, 52, '2024-02-21 08:00:00', '2024-02-21 13:00:00', 'First', 1910).
vuelo(52, 'MX652', 'LATAM', 52, 53, '2024-02-22 08:00:00', '2024-02-22 13:00:00', 'Economy', 650).
vuelo(53, 'MX653', 'Aeromexico', 53, 54, '2024-02-23 08:00:00', '2024-02-23 13:00:00', 'Premium Economy', 755).
vuelo(54, 'MX654', 'Volaris', 54, 55, '2024-02-24 08:00:00', '2024-02-24 13:00:00', 'Business', 860).
vuelo(55, 'MX655', 'Viva', 55, 56, '2024-02-25 08:00:00', '2024-02-25 13:00:00', 'First', 965).
vuelo(56, 'MX656', 'Iberia', 56, 57, '2024-02-26 08:00:00', '2024-02-26 13:00:00', 'Economy', 1070).
vuelo(57, 'MX657', 'Air France', 57, 58, '2024-02-27 08:00:00', '2024-02-27 13:00:00', 'Premium Economy', 1175).
vuelo(58, 'MX658', 'LATAM', 58, 59, '2024-02-28 08:00:00', '2024-02-28 13:00:00', 'Business', 1280).
vuelo(59, 'MX659', 'Aeromexico', 59, 60, '2024-02-29 08:00:00', '2024-02-29 13:00:00', 'First', 1385).
vuelo(60, 'MX660', 'Volaris', 60, 61, '2024-03-01 08:00:00', '2024-03-01 13:00:00', 'Economy', 1490).
vuelo(61, 'MX661', 'Viva', 61, 62, '2024-03-02 08:00:00', '2024-03-02 13:00:00', 'Premium Economy', 1595).
vuelo(62, 'MX662', 'Iberia', 62, 63, '2024-03-03 08:00:00', '2024-03-03 13:00:00', 'Business', 1700).
vuelo(63, 'MX663', 'Air France', 63, 64, '2024-03-04 08:00:00', '2024-03-04 13:00:00', 'First', 1805).
vuelo(64, 'MX664', 'LATAM', 64, 65, '2024-03-05 08:00:00', '2024-03-05 13:00:00', 'Economy', 1910).
vuelo(65, 'MX665', 'Aeromexico', 65, 66, '2024-03-06 08:00:00', '2024-03-06 13:00:00', 'Premium Economy', 650).
vuelo(66, 'MX666', 'Volaris', 66, 67, '2024-03-07 08:00:00', '2024-03-07 13:00:00', 'Business', 755).
vuelo(67, 'MX667', 'Viva', 67, 68, '2024-03-08 08:00:00', '2024-03-08 13:00:00', 'First', 860).
vuelo(68, 'MX668', 'Iberia', 68, 69, '2024-03-09 08:00:00', '2024-03-09 13:00:00', 'Economy', 965).
vuelo(69, 'MX669', 'Air France', 69, 70, '2024-03-10 08:00:00', '2024-03-10 13:00:00', 'Premium Economy', 1070).
vuelo(70, 'MX670', 'LATAM', 70, 71, '2024-03-11 08:00:00', '2024-03-11 13:00:00', 'Business', 1175).
vuelo(71, 'MX671', 'Aeromexico', 71, 72, '2024-03-12 08:00:00', '2024-03-12 13:00:00', 'First', 1280).
vuelo(72, 'MX672', 'Volaris', 72, 73, '2024-03-13 08:00:00', '2024-03-13 13:00:00', 'Economy', 1385).
vuelo(73, 'MX673', 'Viva', 73, 74, '2024-03-14 08:00:00', '2024-03-14 13:00:00', 'Premium Economy', 1490).
vuelo(74, 'MX674', 'Iberia', 74, 75, '2024-03-15 08:00:00', '2024-03-15 13:00:00', 'Business', 1595).
vuelo(75, 'MX675', 'Air France', 75, 76, '2024-03-16 08:00:00', '2024-03-16 13:00:00', 'First', 1700).
vuelo(76, 'MX676', 'LATAM', 76, 77, '2024-03-17 08:00:00', '2024-03-17 13:00:00', 'Economy', 1805).
vuelo(77, 'MX677', 'Aeromexico', 77, 78, '2024-03-18 08:00:00', '2024-03-18 13:00:00', 'Premium Economy', 1910).
vuelo(78, 'MX678', 'Volaris', 78, 79, '2024-03-19 08:00:00', '2024-03-19 13:00:00', 'Business', 650).
vuelo(79, 'MX679', 'Viva', 79, 80, '2024-03-20 08:00:00', '2024-03-20 13:00:00', 'First', 755).
vuelo(80, 'MX680', 'Iberia', 80, 41, '2024-03-21 08:00:00', '2024-03-21 13:00:00', 'Economy', 860).

% ==============================================================
% alquiler_auto/8: 30 originales + 50 agregados = 80
% alquiler_auto(ID_alquiler, compania, tipo_auto, ID_recogida, ID_entrega, fecha_recogida, fecha_entrega, costo).
% REGISTROS ORIGINALES (convertidos del SQL publico)
alquiler_auto(1, 'Hertz', 'SUV', 1, 1, '2023-06-15 09:00:00', '2023-06-20 17:00:00', 450.00).
alquiler_auto(2, 'Avis', 'Sedan', 2, 2, '2023-06-16 10:00:00', '2023-06-21 18:00:00', 350.00).
alquiler_auto(3, 'Enterprise', 'Minivan', 3, 3, '2023-06-17 11:00:00', '2023-06-22 19:00:00', 500.00).
alquiler_auto(4, 'Budget', 'Convertible', 4, 4, '2023-06-18 12:00:00', '2023-06-23 20:00:00', 400.00).
alquiler_auto(5, 'National', 'Luxury', 5, 5, '2023-06-19 13:00:00', '2023-06-24 21:00:00', 600.00).
alquiler_auto(6, 'Alamo', 'Compact', 6, 6, '2023-06-20 14:00:00', '2023-06-25 22:00:00', 300.00).
alquiler_auto(7, 'Sixt', 'Sports Car', 7, 7, '2023-06-21 15:00:00', '2023-06-26 23:00:00', 550.00).
alquiler_auto(8, 'Europcar', 'Station Wagon', 8, 8, '2023-06-22 16:00:00', '2023-06-27 09:00:00', 380.00).
alquiler_auto(9, 'Thrifty', 'Hybrid', 9, 9, '2023-06-23 17:00:00', '2023-06-28 10:00:00', 420.00).
alquiler_auto(10, 'Dollar', 'Electric', 10, 10, '2023-06-24 18:00:00', '2023-06-29 11:00:00', 470.00).
alquiler_auto(11, 'Hertz', 'SUV', 11, 11, '2023-06-25 19:00:00', '2023-06-30 12:00:00', 450.00).
alquiler_auto(12, 'Avis', 'Sedan', 12, 12, '2023-06-26 20:00:00', '2023-07-01 13:00:00', 350.00).
alquiler_auto(13, 'Enterprise', 'Minivan', 13, 13, '2023-06-27 21:00:00', '2023-07-02 14:00:00', 500.00).
alquiler_auto(14, 'Budget', 'Convertible', 14, 14, '2023-06-28 22:00:00', '2023-07-03 15:00:00', 400.00).
alquiler_auto(15, 'National', 'Luxury', 15, 15, '2023-06-29 23:00:00', '2023-07-04 16:00:00', 600.00).
alquiler_auto(16, 'Alamo', 'Compact', 16, 16, '2023-06-30 08:00:00', '2023-07-05 17:00:00', 300.00).
alquiler_auto(17, 'Sixt', 'Sports Car', 17, 17, '2023-07-01 09:00:00', '2023-07-06 18:00:00', 550.00).
alquiler_auto(18, 'Europcar', 'Station Wagon', 18, 18, '2023-07-02 10:00:00', '2023-07-07 19:00:00', 380.00).
alquiler_auto(19, 'Thrifty', 'Hybrid', 19, 19, '2023-07-03 11:00:00', '2023-07-08 20:00:00', 420.00).
alquiler_auto(20, 'Dollar', 'Electric', 20, 20, '2023-07-04 12:00:00', '2023-07-09 21:00:00', 470.00).
alquiler_auto(21, 'Hertz', 'SUV', 21, 21, '2023-07-05 13:00:00', '2023-07-10 22:00:00', 450.00).
alquiler_auto(22, 'Avis', 'Sedan', 22, 22, '2023-07-06 14:00:00', '2023-07-11 23:00:00', 350.00).
alquiler_auto(23, 'Enterprise', 'Minivan', 23, 23, '2023-07-07 15:00:00', '2023-07-12 08:00:00', 500.00).
alquiler_auto(24, 'Budget', 'Convertible', 24, 24, '2023-07-08 16:00:00', '2023-07-13 09:00:00', 400.00).
alquiler_auto(25, 'National', 'Luxury', 25, 25, '2023-07-09 17:00:00', '2023-07-14 10:00:00', 600.00).
alquiler_auto(26, 'Alamo', 'Compact', 26, 26, '2023-07-10 18:00:00', '2023-07-15 11:00:00', 300.00).
alquiler_auto(27, 'Sixt', 'Sports Car', 27, 27, '2023-07-11 19:00:00', '2023-07-16 12:00:00', 550.00).
alquiler_auto(28, 'Europcar', 'Station Wagon', 28, 28, '2023-07-12 20:00:00', '2023-07-17 13:00:00', 380.00).
alquiler_auto(29, 'Thrifty', 'Hybrid', 29, 29, '2023-07-13 21:00:00', '2023-07-18 14:00:00', 420.00).
alquiler_auto(30, 'Dollar', 'Electric', 30, 30, '2023-07-14 22:00:00', '2023-07-19 15:00:00', 470.00).

% REGISTROS AGREGADOS (datos sinteticos, no pertenecen a la fuente)
alquiler_auto(31, 'Renta de Autos 31', 'Minivan', 31, 31, '2024-02-01 09:00:00', '2024-02-05 17:00:00', 495).
alquiler_auto(32, 'Renta de Autos 32', 'Compacto', 32, 32, '2024-02-02 09:00:00', '2024-02-06 17:00:00', 530).
alquiler_auto(33, 'Renta de Autos 33', 'Sedan', 33, 33, '2024-02-03 09:00:00', '2024-02-07 17:00:00', 180).
alquiler_auto(34, 'Renta de Autos 34', 'SUV', 34, 34, '2024-02-04 09:00:00', '2024-02-08 17:00:00', 215).
alquiler_auto(35, 'Renta de Autos 35', 'Minivan', 35, 35, '2024-02-05 09:00:00', '2024-02-09 17:00:00', 250).
alquiler_auto(36, 'Renta de Autos 36', 'Compacto', 36, 36, '2024-02-06 09:00:00', '2024-02-10 17:00:00', 285).
alquiler_auto(37, 'Renta de Autos 37', 'Sedan', 37, 37, '2024-02-07 09:00:00', '2024-02-11 17:00:00', 320).
alquiler_auto(38, 'Renta de Autos 38', 'SUV', 38, 38, '2024-02-08 09:00:00', '2024-02-12 17:00:00', 355).
alquiler_auto(39, 'Renta de Autos 39', 'Minivan', 39, 39, '2024-02-09 09:00:00', '2024-02-13 17:00:00', 390).
alquiler_auto(40, 'Renta de Autos 40', 'Compacto', 40, 40, '2024-02-10 09:00:00', '2024-02-14 17:00:00', 425).
alquiler_auto(41, 'Renta de Autos 41', 'Sedan', 42, 42, '2024-02-11 09:00:00', '2024-02-15 17:00:00', 460).
alquiler_auto(42, 'Renta de Autos 42', 'SUV', 43, 43, '2024-02-12 09:00:00', '2024-02-16 17:00:00', 495).
alquiler_auto(43, 'Renta de Autos 43', 'Minivan', 44, 44, '2024-02-13 09:00:00', '2024-02-17 17:00:00', 530).
alquiler_auto(44, 'Renta de Autos 44', 'Compacto', 45, 45, '2024-02-14 09:00:00', '2024-02-18 17:00:00', 180).
alquiler_auto(45, 'Renta de Autos 45', 'Sedan', 46, 46, '2024-02-15 09:00:00', '2024-02-19 17:00:00', 215).
alquiler_auto(46, 'Renta de Autos 46', 'SUV', 47, 47, '2024-02-16 09:00:00', '2024-02-20 17:00:00', 250).
alquiler_auto(47, 'Renta de Autos 47', 'Minivan', 48, 48, '2024-02-17 09:00:00', '2024-02-21 17:00:00', 285).
alquiler_auto(48, 'Renta de Autos 48', 'Compacto', 49, 49, '2024-02-18 09:00:00', '2024-02-22 17:00:00', 320).
alquiler_auto(49, 'Renta de Autos 49', 'Sedan', 50, 50, '2024-02-19 09:00:00', '2024-02-23 17:00:00', 355).
alquiler_auto(50, 'Renta de Autos 50', 'SUV', 51, 51, '2024-02-20 09:00:00', '2024-02-24 17:00:00', 390).
alquiler_auto(51, 'Renta de Autos 51', 'Minivan', 52, 52, '2024-02-21 09:00:00', '2024-02-25 17:00:00', 425).
alquiler_auto(52, 'Renta de Autos 52', 'Compacto', 53, 53, '2024-02-22 09:00:00', '2024-02-26 17:00:00', 460).
alquiler_auto(53, 'Renta de Autos 53', 'Sedan', 54, 54, '2024-02-23 09:00:00', '2024-02-27 17:00:00', 495).
alquiler_auto(54, 'Renta de Autos 54', 'SUV', 55, 55, '2024-02-24 09:00:00', '2024-02-28 17:00:00', 530).
alquiler_auto(55, 'Renta de Autos 55', 'Minivan', 56, 56, '2024-02-25 09:00:00', '2024-02-29 17:00:00', 180).
alquiler_auto(56, 'Renta de Autos 56', 'Compacto', 57, 57, '2024-02-26 09:00:00', '2024-03-01 17:00:00', 215).
alquiler_auto(57, 'Renta de Autos 57', 'Sedan', 58, 58, '2024-02-27 09:00:00', '2024-03-02 17:00:00', 250).
alquiler_auto(58, 'Renta de Autos 58', 'SUV', 59, 59, '2024-02-28 09:00:00', '2024-03-03 17:00:00', 285).
alquiler_auto(59, 'Renta de Autos 59', 'Minivan', 60, 60, '2024-02-29 09:00:00', '2024-03-04 17:00:00', 320).
alquiler_auto(60, 'Renta de Autos 60', 'Compacto', 61, 61, '2024-03-01 09:00:00', '2024-03-05 17:00:00', 355).
alquiler_auto(61, 'Renta de Autos 61', 'Sedan', 62, 62, '2024-03-02 09:00:00', '2024-03-06 17:00:00', 390).
alquiler_auto(62, 'Renta de Autos 62', 'SUV', 63, 63, '2024-03-03 09:00:00', '2024-03-07 17:00:00', 425).
alquiler_auto(63, 'Renta de Autos 63', 'Minivan', 64, 64, '2024-03-04 09:00:00', '2024-03-08 17:00:00', 460).
alquiler_auto(64, 'Renta de Autos 64', 'Compacto', 65, 65, '2024-03-05 09:00:00', '2024-03-09 17:00:00', 495).
alquiler_auto(65, 'Renta de Autos 65', 'Sedan', 66, 66, '2024-03-06 09:00:00', '2024-03-10 17:00:00', 530).
alquiler_auto(66, 'Renta de Autos 66', 'SUV', 67, 67, '2024-03-07 09:00:00', '2024-03-11 17:00:00', 180).
alquiler_auto(67, 'Renta de Autos 67', 'Minivan', 68, 68, '2024-03-08 09:00:00', '2024-03-12 17:00:00', 215).
alquiler_auto(68, 'Renta de Autos 68', 'Compacto', 69, 69, '2024-03-09 09:00:00', '2024-03-13 17:00:00', 250).
alquiler_auto(69, 'Renta de Autos 69', 'Sedan', 70, 70, '2024-03-10 09:00:00', '2024-03-14 17:00:00', 285).
alquiler_auto(70, 'Renta de Autos 70', 'SUV', 71, 71, '2024-03-11 09:00:00', '2024-03-15 17:00:00', 320).
alquiler_auto(71, 'Renta de Autos 71', 'Minivan', 72, 72, '2024-03-12 09:00:00', '2024-03-16 17:00:00', 355).
alquiler_auto(72, 'Renta de Autos 72', 'Compacto', 73, 73, '2024-03-13 09:00:00', '2024-03-17 17:00:00', 390).
alquiler_auto(73, 'Renta de Autos 73', 'Sedan', 74, 74, '2024-03-14 09:00:00', '2024-03-18 17:00:00', 425).
alquiler_auto(74, 'Renta de Autos 74', 'SUV', 75, 75, '2024-03-15 09:00:00', '2024-03-19 17:00:00', 460).
alquiler_auto(75, 'Renta de Autos 75', 'Minivan', 76, 76, '2024-03-16 09:00:00', '2024-03-20 17:00:00', 495).
alquiler_auto(76, 'Renta de Autos 76', 'Compacto', 77, 77, '2024-03-17 09:00:00', '2024-03-21 17:00:00', 530).
alquiler_auto(77, 'Renta de Autos 77', 'Sedan', 78, 78, '2024-03-18 09:00:00', '2024-03-22 17:00:00', 180).
alquiler_auto(78, 'Renta de Autos 78', 'SUV', 79, 79, '2024-03-19 09:00:00', '2024-03-23 17:00:00', 215).
alquiler_auto(79, 'Renta de Autos 79', 'Minivan', 80, 80, '2024-03-20 09:00:00', '2024-03-24 17:00:00', 250).
alquiler_auto(80, 'Renta de Autos 80', 'Compacto', 41, 41, '2024-03-21 09:00:00', '2024-03-25 17:00:00', 285).

% ==============================================================
% crucero/8: 30 originales + 50 agregados = 80
% crucero(ID_crucero, nombre, naviera, ID_origen, ID_destino, fecha_salida, fecha_regreso, tarifa).
% REGISTROS ORIGINALES (convertidos del SQL publico)
crucero(1, 'Caribbean Princess', 'Princess Cruises', 4, 4, '2023-06-15', '2023-06-22', 1200.00).
crucero(2, 'Norwegian Escape', 'Norwegian Cruise Line', 5, 5, '2023-06-16', '2023-06-23', 1350.00).
crucero(3, 'Harmony of the Seas', 'Royal Caribbean', 6, 6, '2023-06-17', '2023-06-24', 1500.00).
crucero(4, 'Carnival Vista', 'Carnival Cruise Line', 7, 7, '2023-06-18', '2023-06-25', 1100.00).
crucero(5, 'MSC Meraviglia', 'MSC Cruises', 8, 8, '2023-06-19', '2023-06-26', 1250.00).
crucero(6, 'Celebrity Edge', 'Celebrity Cruises', 9, 9, '2023-06-20', '2023-06-27', 1400.00).
crucero(7, 'Disney Fantasy', 'Disney Cruise Line', 10, 10, '2023-06-21', '2023-06-28', 1600.00).
crucero(8, 'Queen Mary 2', 'Cunard Line', 11, 11, '2023-06-22', '2023-06-29', 1750.00).
crucero(9, 'Seabourn Odyssey', 'Seabourn Cruise Line', 12, 12, '2023-06-23', '2023-06-30', 2000.00).
crucero(10, 'Silver Muse', 'Silversea Cruises', 13, 13, '2023-06-24', '2023-07-01', 2200.00).
crucero(11, 'Viking Star', 'Viking Ocean Cruises', 14, 14, '2023-06-25', '2023-07-02', 1900.00).
crucero(12, 'Azamara Journey', 'Azamara Club Cruises', 15, 15, '2023-06-26', '2023-07-03', 1800.00).
crucero(13, 'Oceania Riviera', 'Oceania Cruises', 16, 16, '2023-06-27', '2023-07-04', 1700.00).
crucero(14, 'Regent Seven Seas Explorer', 'Regent Seven Seas Cruises', 17, 17, '2023-06-28', '2023-07-05', 2500.00).
crucero(15, 'Crystal Symphony', 'Crystal Cruises', 18, 18, '2023-06-29', '2023-07-06', 2300.00).
crucero(16, 'Windstar Surf', 'Windstar Cruises', 19, 19, '2023-06-30', '2023-07-07', 2100.00).
crucero(17, 'Paul Gauguin', 'Paul Gauguin Cruises', 20, 20, '2023-07-01', '2023-07-08', 2400.00).
crucero(18, 'Star Breeze', 'Star Clippers', 21, 21, '2023-07-02', '2023-07-09', 1950.00).
crucero(19, 'SeaDream I', 'SeaDream Yacht Club', 22, 22, '2023-07-03', '2023-07-10', 2600.00).
crucero(20, 'Le Ponant', 'Ponant', 23, 23, '2023-07-04', '2023-07-11', 2250.00).
crucero(21, 'Hanseatic Inspiration', 'Hapag-Lloyd Cruises', 24, 24, '2023-07-05', '2023-07-12', 2350.00).
crucero(22, 'Scenic Eclipse', 'Scenic Luxury Cruises', 25, 25, '2023-07-06', '2023-07-13', 2800.00).
crucero(23, 'River Duchess', 'Uniworld Boutique River Cruise', 26, 26, '2023-07-07', '2023-07-14', 1700.00).
crucero(24, 'AmaWaterways AmaMagna', 'AmaWaterways', 27, 27, '2023-07-08', '2023-07-15', 1850.00).
crucero(25, 'Viking Longship', 'Viking River Cruises', 28, 28, '2023-07-09', '2023-07-16', 1600.00).
crucero(26, 'American Queen', 'American Queen Steamboat Company', 29, 29, '2023-07-10', '2023-07-17', 1950.00).
crucero(27, 'Emerald Sun', 'Emerald Waterways', 30, 30, '2023-07-11', '2023-07-18', 1750.00).
crucero(28, 'Avalon Panorama', 'Avalon Waterways', 31, 31, '2023-07-12', '2023-07-19', 1800.00).
crucero(29, 'Tauck ms Savor', 'Tauck River Cruising', 32, 32, '2023-07-13', '2023-07-20', 2000.00).
crucero(30, 'CroisiEurope Lafayette', 'CroisiEurope', 33, 33, '2023-07-14', '2023-07-21', 1550.00).

% REGISTROS AGREGADOS (datos sinteticos, no pertenecen a la fuente)
crucero(31, 'Crucero Ejemplo 31', 'Naviera Ejemplo 2', 31, 31, '2024-02-01', '2024-02-08', 1560).
crucero(32, 'Crucero Ejemplo 32', 'Naviera Ejemplo 3', 32, 32, '2024-02-02', '2024-02-09', 1680).
crucero(33, 'Crucero Ejemplo 33', 'Naviera Ejemplo 4', 33, 33, '2024-02-03', '2024-02-10', 1800).
crucero(34, 'Crucero Ejemplo 34', 'Naviera Ejemplo 5', 34, 34, '2024-02-04', '2024-02-11', 1920).
crucero(35, 'Crucero Ejemplo 35', 'Naviera Ejemplo 6', 35, 35, '2024-02-05', '2024-02-12', 2040).
crucero(36, 'Crucero Ejemplo 36', 'Naviera Ejemplo 1', 36, 36, '2024-02-06', '2024-02-13', 2160).
crucero(37, 'Crucero Ejemplo 37', 'Naviera Ejemplo 2', 37, 37, '2024-02-07', '2024-02-14', 2280).
crucero(38, 'Crucero Ejemplo 38', 'Naviera Ejemplo 3', 38, 38, '2024-02-08', '2024-02-15', 2400).
crucero(39, 'Crucero Ejemplo 39', 'Naviera Ejemplo 4', 39, 39, '2024-02-09', '2024-02-16', 2520).
crucero(40, 'Crucero Ejemplo 40', 'Naviera Ejemplo 5', 40, 40, '2024-02-10', '2024-02-17', 2640).
crucero(41, 'Crucero Ejemplo 41', 'Naviera Ejemplo 6', 42, 42, '2024-02-11', '2024-02-18', 2760).
crucero(42, 'Crucero Ejemplo 42', 'Naviera Ejemplo 1', 43, 43, '2024-02-12', '2024-02-19', 1200).
crucero(43, 'Crucero Ejemplo 43', 'Naviera Ejemplo 2', 44, 44, '2024-02-13', '2024-02-20', 1320).
crucero(44, 'Crucero Ejemplo 44', 'Naviera Ejemplo 3', 45, 45, '2024-02-14', '2024-02-21', 1440).
crucero(45, 'Crucero Ejemplo 45', 'Naviera Ejemplo 4', 46, 46, '2024-02-15', '2024-02-22', 1560).
crucero(46, 'Crucero Ejemplo 46', 'Naviera Ejemplo 5', 47, 47, '2024-02-16', '2024-02-23', 1680).
crucero(47, 'Crucero Ejemplo 47', 'Naviera Ejemplo 6', 48, 48, '2024-02-17', '2024-02-24', 1800).
crucero(48, 'Crucero Ejemplo 48', 'Naviera Ejemplo 1', 49, 49, '2024-02-18', '2024-02-25', 1920).
crucero(49, 'Crucero Ejemplo 49', 'Naviera Ejemplo 2', 50, 50, '2024-02-19', '2024-02-26', 2040).
crucero(50, 'Crucero Ejemplo 50', 'Naviera Ejemplo 3', 51, 51, '2024-02-20', '2024-02-27', 2160).
crucero(51, 'Crucero Ejemplo 51', 'Naviera Ejemplo 4', 52, 52, '2024-02-21', '2024-02-28', 2280).
crucero(52, 'Crucero Ejemplo 52', 'Naviera Ejemplo 5', 53, 53, '2024-02-22', '2024-02-29', 2400).
crucero(53, 'Crucero Ejemplo 53', 'Naviera Ejemplo 6', 54, 54, '2024-02-23', '2024-03-01', 2520).
crucero(54, 'Crucero Ejemplo 54', 'Naviera Ejemplo 1', 55, 55, '2024-02-24', '2024-03-02', 2640).
crucero(55, 'Crucero Ejemplo 55', 'Naviera Ejemplo 2', 56, 56, '2024-02-25', '2024-03-03', 2760).
crucero(56, 'Crucero Ejemplo 56', 'Naviera Ejemplo 3', 57, 57, '2024-02-26', '2024-03-04', 1200).
crucero(57, 'Crucero Ejemplo 57', 'Naviera Ejemplo 4', 58, 58, '2024-02-27', '2024-03-05', 1320).
crucero(58, 'Crucero Ejemplo 58', 'Naviera Ejemplo 5', 59, 59, '2024-02-28', '2024-03-06', 1440).
crucero(59, 'Crucero Ejemplo 59', 'Naviera Ejemplo 6', 60, 60, '2024-02-29', '2024-03-07', 1560).
crucero(60, 'Crucero Ejemplo 60', 'Naviera Ejemplo 1', 61, 61, '2024-03-01', '2024-03-08', 1680).
crucero(61, 'Crucero Ejemplo 61', 'Naviera Ejemplo 2', 62, 62, '2024-03-02', '2024-03-09', 1800).
crucero(62, 'Crucero Ejemplo 62', 'Naviera Ejemplo 3', 63, 63, '2024-03-03', '2024-03-10', 1920).
crucero(63, 'Crucero Ejemplo 63', 'Naviera Ejemplo 4', 64, 64, '2024-03-04', '2024-03-11', 2040).
crucero(64, 'Crucero Ejemplo 64', 'Naviera Ejemplo 5', 65, 65, '2024-03-05', '2024-03-12', 2160).
crucero(65, 'Crucero Ejemplo 65', 'Naviera Ejemplo 6', 66, 66, '2024-03-06', '2024-03-13', 2280).
crucero(66, 'Crucero Ejemplo 66', 'Naviera Ejemplo 1', 67, 67, '2024-03-07', '2024-03-14', 2400).
crucero(67, 'Crucero Ejemplo 67', 'Naviera Ejemplo 2', 68, 68, '2024-03-08', '2024-03-15', 2520).
crucero(68, 'Crucero Ejemplo 68', 'Naviera Ejemplo 3', 69, 69, '2024-03-09', '2024-03-16', 2640).
crucero(69, 'Crucero Ejemplo 69', 'Naviera Ejemplo 4', 70, 70, '2024-03-10', '2024-03-17', 2760).
crucero(70, 'Crucero Ejemplo 70', 'Naviera Ejemplo 5', 71, 71, '2024-03-11', '2024-03-18', 1200).
crucero(71, 'Crucero Ejemplo 71', 'Naviera Ejemplo 6', 72, 72, '2024-03-12', '2024-03-19', 1320).
crucero(72, 'Crucero Ejemplo 72', 'Naviera Ejemplo 1', 73, 73, '2024-03-13', '2024-03-20', 1440).
crucero(73, 'Crucero Ejemplo 73', 'Naviera Ejemplo 2', 74, 74, '2024-03-14', '2024-03-21', 1560).
crucero(74, 'Crucero Ejemplo 74', 'Naviera Ejemplo 3', 75, 75, '2024-03-15', '2024-03-22', 1680).
crucero(75, 'Crucero Ejemplo 75', 'Naviera Ejemplo 4', 76, 76, '2024-03-16', '2024-03-23', 1800).
crucero(76, 'Crucero Ejemplo 76', 'Naviera Ejemplo 5', 77, 77, '2024-03-17', '2024-03-24', 1920).
crucero(77, 'Crucero Ejemplo 77', 'Naviera Ejemplo 6', 78, 78, '2024-03-18', '2024-03-25', 2040).
crucero(78, 'Crucero Ejemplo 78', 'Naviera Ejemplo 1', 79, 79, '2024-03-19', '2024-03-26', 2160).
crucero(79, 'Crucero Ejemplo 79', 'Naviera Ejemplo 2', 80, 80, '2024-03-20', '2024-03-27', 2280).
crucero(80, 'Crucero Ejemplo 80', 'Naviera Ejemplo 3', 41, 41, '2024-03-21', '2024-03-28', 2400).

% ==============================================================
% reserva/7: 50 originales + 30 agregados = 80
% reserva(ID_reserva, nombre_grupo, proposito, fecha_reserva, ID_empleado, costo_total, estado).
% REGISTROS ORIGINALES (convertidos del SQL publico)
reserva(1, 'Smith Family', 'Family', '2023-05-01 10:00:00', 5, null, 'Confirmed').
reserva(2, 'Johnson Vacation', 'Leisure', '2023-05-02 11:15:00', 6, null, 'Confirmed').
reserva(3, 'Williams Business', 'Business', '2023-05-03 12:30:00', 7, null, 'Completed').
reserva(4, 'Brown Wedding', 'Honeymoon', '2023-05-04 13:45:00', 8, null, 'Confirmed').
reserva(5, 'Jones Adventure', 'Adventure', '2023-05-05 14:00:00', 9, null, 'Confirmed').
reserva(6, 'Garcia Group', 'Family', '2023-05-06 15:15:00', 10, null, 'Confirmed').
reserva(7, 'Miller Getaway', 'Leisure', '2023-05-07 16:30:00', 11, null, 'Completed').
reserva(8, 'Davis Conference', 'Business', '2023-05-08 17:45:00', 12, null, 'Confirmed').
reserva(9, 'Rodriguez Anniversary', 'Leisure', '2023-05-09 18:00:00', 13, null, 'Confirmed').
reserva(10, 'Martinez Family', 'Family', '2023-05-10 19:15:00', 14, null, 'Confirmed').
reserva(11, 'Wilson Honeymoon', 'Honeymoon', '2023-05-11 20:30:00', 15, null, 'Completed').
reserva(12, 'Anderson Business', 'Business', '2023-05-12 21:45:00', 16, null, 'Confirmed').
reserva(13, 'Thomas Vacation', 'Leisure', '2023-05-13 22:00:00', 17, null, 'Confirmed').
reserva(14, 'Jackson Group', 'Family', '2023-05-14 23:15:00', 18, null, 'Confirmed').
reserva(15, 'White Adventure', 'Adventure', '2023-05-15 08:30:00', 19, null, 'Confirmed').
reserva(16, 'Harris Business', 'Business', '2023-05-16 09:45:00', 20, null, 'Completed').
reserva(17, 'Martin Getaway', 'Leisure', '2023-05-17 10:00:00', 21, null, 'Confirmed').
reserva(18, 'Thompson Family', 'Family', '2023-05-18 11:15:00', 22, null, 'Confirmed').
reserva(19, 'Garcia Wedding', 'Honeymoon', '2023-05-19 12:30:00', 23, null, 'Confirmed').
reserva(20, 'Robinson Vacation', 'Leisure', '2023-05-20 13:45:00', 24, null, 'Completed').
reserva(21, 'Clark Business', 'Business', '2023-05-21 14:00:00', 25, null, 'Confirmed').
reserva(22, 'Rodriguez Group', 'Family', '2023-05-22 15:15:00', 26, null, 'Confirmed').
reserva(23, 'Lewis Adventure', 'Adventure', '2023-05-23 16:30:00', 27, null, 'Confirmed').
reserva(24, 'Lee Conference', 'Business', '2023-05-24 17:45:00', 28, null, 'Completed').
reserva(25, 'Walker Getaway', 'Leisure', '2023-05-25 18:00:00', 29, null, 'Confirmed').
reserva(26, 'Hall Family', 'Family', '2023-05-26 19:15:00', 30, null, 'Confirmed').
reserva(27, 'Young Honeymoon', 'Honeymoon', '2023-05-27 20:30:00', 5, null, 'Confirmed').
reserva(28, 'Allen Business', 'Business', '2023-05-28 21:45:00', 6, null, 'Completed').
reserva(29, 'King Vacation', 'Leisure', '2023-05-29 22:00:00', 7, null, 'Confirmed').
reserva(30, 'Wright Group', 'Family', '2023-05-30 23:15:00', 8, null, 'Confirmed').
reserva(31, 'Scott Adventure', 'Adventure', '2023-05-31 08:30:00', 9, null, 'Confirmed').
reserva(32, 'Green Business', 'Business', '2023-06-01 09:45:00', 10, null, 'Completed').
reserva(33, 'Adams Getaway', 'Leisure', '2023-06-02 10:00:00', 11, null, 'Confirmed').
reserva(34, 'Baker Family', 'Family', '2023-06-03 11:15:00', 12, null, 'Confirmed').
reserva(35, 'Nelson Wedding', 'Honeymoon', '2023-06-04 12:30:00', 13, null, 'Confirmed').
reserva(36, 'Carter Vacation', 'Leisure', '2023-06-05 13:45:00', 14, null, 'Completed').
reserva(37, 'Mitchell Business', 'Business', '2023-06-06 14:00:00', 15, null, 'Confirmed').
reserva(38, 'Perez Group', 'Family', '2023-06-07 15:15:00', 16, null, 'Confirmed').
reserva(39, 'Roberts Adventure', 'Adventure', '2023-06-08 16:30:00', 17, null, 'Confirmed').
reserva(40, 'Turner Conference', 'Business', '2023-06-09 17:45:00', 18, null, 'Completed').
reserva(41, 'Phillips Getaway', 'Leisure', '2023-06-10 18:00:00', 19, null, 'Confirmed').
reserva(42, 'Campbell Family', 'Family', '2023-06-11 19:15:00', 20, null, 'Confirmed').
reserva(43, 'Parker Honeymoon', 'Honeymoon', '2023-06-12 20:30:00', 21, null, 'Confirmed').
reserva(44, 'Evans Business', 'Business', '2023-06-13 21:45:00', 22, null, 'Completed').
reserva(45, 'Edwards Vacation', 'Leisure', '2023-06-14 22:00:00', 23, null, 'Confirmed').
reserva(46, 'Collins Group', 'Family', '2023-06-15 23:15:00', 24, null, 'Confirmed').
reserva(47, 'Stewart Adventure', 'Adventure', '2023-06-16 08:30:00', 25, null, 'Confirmed').
reserva(48, 'Sanchez Business', 'Business', '2023-06-17 09:45:00', 26, null, 'Completed').
reserva(49, 'Morris Getaway', 'Leisure', '2023-06-18 10:00:00', 27, null, 'Confirmed').
reserva(50, 'Rogers Family', 'Family', '2023-06-19 11:15:00', 28, null, 'Confirmed').

% REGISTROS AGREGADOS (datos sinteticos, no pertenecen a la fuente)
reserva(51, 'Grupo Ejemplo 51', 'Honeymoon', '2024-02-07 10:00:00', 31, 1400, 'Confirmed').
reserva(52, 'Grupo Ejemplo 52', 'Adventure', '2024-02-08 10:00:00', 32, 1585, 'Pending').
reserva(53, 'Grupo Ejemplo 53', 'Other', '2024-02-09 10:00:00', 33, 1770, 'Completed').
reserva(54, 'Grupo Ejemplo 54', 'Leisure', '2024-02-10 10:00:00', 34, 1955, 'Cancelled').
reserva(55, 'Grupo Ejemplo 55', 'Business', '2024-02-11 10:00:00', 35, 2140, 'Confirmed').
reserva(56, 'Grupo Ejemplo 56', 'Family', '2024-02-12 10:00:00', 36, 1685, 'Pending').
reserva(57, 'Grupo Ejemplo 57', 'Honeymoon', '2024-02-13 10:00:00', 37, 1870, 'Completed').
reserva(58, 'Grupo Ejemplo 58', 'Adventure', '2024-02-14 10:00:00', 38, 2055, 'Cancelled').
reserva(59, 'Grupo Ejemplo 59', 'Other', '2024-02-15 10:00:00', 39, 2240, 'Confirmed').
reserva(60, 'Grupo Ejemplo 60', 'Leisure', '2024-02-16 10:00:00', 40, 2425, 'Pending').
reserva(61, 'Grupo Ejemplo 61', 'Business', '2024-02-17 10:00:00', 41, 2610, 'Completed').
reserva(62, 'Grupo Ejemplo 62', 'Family', '2024-02-18 10:00:00', 42, 1430, 'Cancelled').
reserva(63, 'Grupo Ejemplo 63', 'Honeymoon', '2024-02-19 10:00:00', 43, 1615, 'Confirmed').
reserva(64, 'Grupo Ejemplo 64', 'Adventure', '2024-02-20 10:00:00', 44, 1160, 'Pending').
reserva(65, 'Grupo Ejemplo 65', 'Other', '2024-02-21 10:00:00', 45, 1345, 'Completed').
reserva(66, 'Grupo Ejemplo 66', 'Leisure', '2024-02-22 10:00:00', 46, 1530, 'Cancelled').
reserva(67, 'Grupo Ejemplo 67', 'Business', '2024-02-23 10:00:00', 47, 1715, 'Confirmed').
reserva(68, 'Grupo Ejemplo 68', 'Family', '2024-02-24 10:00:00', 48, 1900, 'Pending').
reserva(69, 'Grupo Ejemplo 69', 'Honeymoon', '2024-02-25 10:00:00', 49, 2085, 'Completed').
reserva(70, 'Grupo Ejemplo 70', 'Adventure', '2024-02-26 10:00:00', 50, 2270, 'Cancelled').
reserva(71, 'Grupo Ejemplo 71', 'Other', '2024-02-27 10:00:00', 51, 2455, 'Confirmed').
reserva(72, 'Grupo Ejemplo 72', 'Leisure', '2024-02-28 10:00:00', 52, 2000, 'Pending').
reserva(73, 'Grupo Ejemplo 73', 'Business', '2024-02-29 10:00:00', 53, 2185, 'Completed').
reserva(74, 'Grupo Ejemplo 74', 'Family', '2024-03-01 10:00:00', 54, 2370, 'Cancelled').
reserva(75, 'Grupo Ejemplo 75', 'Honeymoon', '2024-03-02 10:00:00', 55, 1190, 'Confirmed').
reserva(76, 'Grupo Ejemplo 76', 'Adventure', '2024-03-03 10:00:00', 56, 1375, 'Pending').
reserva(77, 'Grupo Ejemplo 77', 'Other', '2024-03-04 10:00:00', 57, 1560, 'Completed').
reserva(78, 'Grupo Ejemplo 78', 'Leisure', '2024-03-05 10:00:00', 58, 1745, 'Cancelled').
reserva(79, 'Grupo Ejemplo 79', 'Business', '2024-03-06 10:00:00', 59, 1930, 'Confirmed').
reserva(80, 'Grupo Ejemplo 80', 'Family', '2024-03-07 10:00:00', 60, 1475, 'Pending').

% ==============================================================
% reserva_pasajero/3: 72 originales + 45 agregados = 117
% reserva_pasajero(ID_reserva, ID_pasajero, es_principal).
% REGISTROS ORIGINALES (convertidos del SQL publico)
reserva_pasajero(1, 1, true).
reserva_pasajero(1, 2, false).
reserva_pasajero(1, 3, false).
reserva_pasajero(2, 4, true).
reserva_pasajero(3, 5, true).
reserva_pasajero(4, 6, true).
reserva_pasajero(4, 7, false).
reserva_pasajero(5, 8, true).
reserva_pasajero(6, 9, true).
reserva_pasajero(6, 10, false).
reserva_pasajero(6, 11, false).
reserva_pasajero(7, 12, true).
reserva_pasajero(8, 13, true).
reserva_pasajero(9, 14, true).
reserva_pasajero(10, 15, true).
reserva_pasajero(10, 16, false).
reserva_pasajero(11, 17, true).
reserva_pasajero(11, 18, false).
reserva_pasajero(12, 19, true).
reserva_pasajero(13, 20, true).
reserva_pasajero(14, 21, true).
reserva_pasajero(14, 22, false).
reserva_pasajero(14, 23, false).
reserva_pasajero(15, 24, true).
reserva_pasajero(16, 25, true).
reserva_pasajero(17, 26, true).
reserva_pasajero(18, 27, true).
reserva_pasajero(18, 28, false).
reserva_pasajero(19, 29, true).
reserva_pasajero(19, 30, false).
reserva_pasajero(20, 31, true).
reserva_pasajero(21, 32, true).
reserva_pasajero(22, 33, true).
reserva_pasajero(22, 34, false).
reserva_pasajero(23, 35, true).
reserva_pasajero(24, 1, true).
reserva_pasajero(25, 2, true).
reserva_pasajero(25, 3, false).
reserva_pasajero(26, 4, true).
reserva_pasajero(27, 5, true).
reserva_pasajero(27, 6, false).
reserva_pasajero(28, 7, true).
reserva_pasajero(29, 8, true).
reserva_pasajero(30, 9, true).
reserva_pasajero(30, 10, false).
reserva_pasajero(31, 11, true).
reserva_pasajero(32, 12, true).
reserva_pasajero(33, 13, true).
reserva_pasajero(33, 14, false).
reserva_pasajero(34, 15, true).
reserva_pasajero(35, 16, true).
reserva_pasajero(35, 17, false).
reserva_pasajero(36, 18, true).
reserva_pasajero(37, 19, true).
reserva_pasajero(38, 20, true).
reserva_pasajero(38, 21, false).
reserva_pasajero(39, 22, true).
reserva_pasajero(40, 23, true).
reserva_pasajero(40, 24, false).
reserva_pasajero(41, 25, true).
reserva_pasajero(42, 26, true).
reserva_pasajero(43, 27, true).
reserva_pasajero(43, 28, false).
reserva_pasajero(44, 29, true).
reserva_pasajero(45, 30, true).
reserva_pasajero(46, 31, true).
reserva_pasajero(47, 32, true).
reserva_pasajero(47, 33, false).
reserva_pasajero(48, 34, true).
reserva_pasajero(49, 35, true).
reserva_pasajero(50, 1, true).
reserva_pasajero(50, 2, false).

% REGISTROS AGREGADOS (datos sinteticos, no pertenecen a la fuente)
reserva_pasajero(51, 36, true).
reserva_pasajero(52, 37, true).
reserva_pasajero(53, 38, true).
reserva_pasajero(54, 39, true).
reserva_pasajero(55, 40, true).
reserva_pasajero(56, 41, true).
reserva_pasajero(57, 42, true).
reserva_pasajero(58, 43, true).
reserva_pasajero(59, 44, true).
reserva_pasajero(60, 45, true).
reserva_pasajero(61, 46, true).
reserva_pasajero(62, 47, true).
reserva_pasajero(63, 48, true).
reserva_pasajero(64, 49, true).
reserva_pasajero(65, 50, true).
reserva_pasajero(66, 51, true).
reserva_pasajero(67, 52, true).
reserva_pasajero(68, 53, true).
reserva_pasajero(69, 54, true).
reserva_pasajero(70, 55, true).
reserva_pasajero(71, 56, true).
reserva_pasajero(72, 57, true).
reserva_pasajero(73, 58, true).
reserva_pasajero(74, 59, true).
reserva_pasajero(75, 60, true).
reserva_pasajero(76, 61, true).
reserva_pasajero(77, 62, true).
reserva_pasajero(78, 63, true).
reserva_pasajero(79, 64, true).
reserva_pasajero(80, 65, true).
reserva_pasajero(51, 66, false).
reserva_pasajero(52, 67, false).
reserva_pasajero(53, 68, false).
reserva_pasajero(54, 69, false).
reserva_pasajero(55, 70, false).
reserva_pasajero(56, 71, false).
reserva_pasajero(57, 72, false).
reserva_pasajero(58, 73, false).
reserva_pasajero(59, 74, false).
reserva_pasajero(60, 75, false).
reserva_pasajero(61, 76, false).
reserva_pasajero(62, 77, false).
reserva_pasajero(63, 78, false).
reserva_pasajero(64, 79, false).
reserva_pasajero(65, 80, false).

% ==============================================================
% reserva_alojamiento/6: 50 originales + 30 agregados = 80
% reserva_alojamiento(ID_reserva_alojamiento, ID_reserva, ID_alojamiento, fecha_entrada, fecha_salida, costo).
% REGISTROS ORIGINALES (convertidos del SQL publico)
reserva_alojamiento(1, 1, 1, '2023-06-15', '2023-06-20', 1575.00).
reserva_alojamiento(2, 2, 2, '2023-06-16', '2023-06-21', 1912.50).
reserva_alojamiento(3, 3, 3, '2023-06-17', '2023-06-22', 1306.25).
reserva_alojamiento(4, 4, 4, '2023-06-18', '2023-06-23', 1600.00).
reserva_alojamiento(5, 5, 5, '2023-06-19', '2023-06-24', 1687.50).
reserva_alojamiento(6, 6, 6, '2023-06-20', '2023-06-25', 1425.00).
reserva_alojamiento(7, 7, 7, '2023-06-21', '2023-06-26', 1125.00).
reserva_alojamiento(8, 8, 8, '2023-06-22', '2023-06-27', 2250.00).
reserva_alojamiento(9, 9, 9, '2023-06-23', '2023-06-28', 1785.00).
reserva_alojamiento(10, 10, 10, '2023-06-24', '2023-06-29', 1645.00).
reserva_alojamiento(11, 11, 11, '2023-06-25', '2023-06-30', 1912.50).
reserva_alojamiento(12, 12, 12, '2023-06-26', '2023-07-01', 1800.00).
reserva_alojamiento(13, 13, 13, '2023-06-27', '2023-07-02', 1687.50).
reserva_alojamiento(14, 14, 14, '2023-06-28', '2023-07-03', 1440.00).
reserva_alojamiento(15, 15, 15, '2023-06-29', '2023-07-04', 2025.00).
reserva_alojamiento(16, 16, 16, '2023-06-30', '2023-07-05', 1200.00).
reserva_alojamiento(17, 17, 17, '2023-07-01', '2023-07-06', 1575.00).
reserva_alojamiento(18, 18, 18, '2023-07-02', '2023-07-07', 1575.00).
reserva_alojamiento(19, 19, 19, '2023-07-03', '2023-07-08', 1700.00).
reserva_alojamiento(20, 20, 20, '2023-07-04', '2023-07-09', 1645.00).
reserva_alojamiento(21, 21, 21, '2023-07-05', '2023-07-10', 1912.50).
reserva_alojamiento(22, 22, 22, '2023-07-06', '2023-07-11', 1312.50).
reserva_alojamiento(23, 23, 23, '2023-07-07', '2023-07-12', 1750.00).
reserva_alojamiento(24, 24, 24, '2023-07-08', '2023-07-13', 2125.00).
reserva_alojamiento(25, 25, 25, '2023-07-09', '2023-07-14', 2250.00).
reserva_alojamiento(26, 26, 26, '2023-07-10', '2023-07-15', 1350.00).
reserva_alojamiento(27, 27, 27, '2023-07-11', '2023-07-16', 1575.00).
reserva_alojamiento(28, 28, 28, '2023-07-12', '2023-07-17', 1700.00).
reserva_alojamiento(29, 29, 29, '2023-07-13', '2023-07-18', 1785.00).
reserva_alojamiento(30, 30, 30, '2023-07-14', '2023-07-19', 1687.50).
reserva_alojamiento(31, 31, 31, '2023-07-15', '2023-07-20', 1800.00).
reserva_alojamiento(32, 32, 32, '2023-07-16', '2023-07-21', 2125.00).
reserva_alojamiento(33, 33, 33, '2023-07-17', '2023-07-22', 1800.00).
reserva_alojamiento(34, 34, 34, '2023-07-18', '2023-07-23', 1912.50).
reserva_alojamiento(35, 35, 35, '2023-07-19', '2023-07-24', 1575.00).
reserva_alojamiento(36, 36, 1, '2023-07-20', '2023-07-25', 1575.00).
reserva_alojamiento(37, 37, 2, '2023-07-21', '2023-07-26', 1912.50).
reserva_alojamiento(38, 38, 3, '2023-07-22', '2023-07-27', 1306.25).
reserva_alojamiento(39, 39, 4, '2023-07-23', '2023-07-28', 1600.00).
reserva_alojamiento(40, 40, 5, '2023-07-24', '2023-07-29', 1687.50).
reserva_alojamiento(41, 41, 6, '2023-07-25', '2023-07-30', 1425.00).
reserva_alojamiento(42, 42, 7, '2023-07-26', '2023-07-31', 1125.00).
reserva_alojamiento(43, 43, 8, '2023-07-27', '2023-08-01', 2250.00).
reserva_alojamiento(44, 44, 9, '2023-07-28', '2023-08-02', 1785.00).
reserva_alojamiento(45, 45, 10, '2023-07-29', '2023-08-03', 1645.00).
reserva_alojamiento(46, 46, 11, '2023-07-30', '2023-08-04', 1912.50).
reserva_alojamiento(47, 47, 12, '2023-07-31', '2023-08-05', 1800.00).
reserva_alojamiento(48, 48, 13, '2023-08-01', '2023-08-06', 1687.50).
reserva_alojamiento(49, 49, 14, '2023-08-02', '2023-08-07', 1440.00).
reserva_alojamiento(50, 50, 15, '2023-08-03', '2023-08-08', 2025.00).

% REGISTROS AGREGADOS (datos sinteticos, no pertenecen a la fuente)
reserva_alojamiento(51, 51, 36, '2024-02-21', '2024-02-25', 540).
reserva_alojamiento(52, 52, 37, '2024-02-22', '2024-02-26', 620).
reserva_alojamiento(53, 53, 38, '2024-02-23', '2024-02-27', 700).
reserva_alojamiento(54, 54, 39, '2024-02-24', '2024-02-28', 780).
reserva_alojamiento(55, 55, 40, '2024-02-25', '2024-02-29', 860).
reserva_alojamiento(56, 56, 41, '2024-02-26', '2024-03-01', 300).
reserva_alojamiento(57, 57, 42, '2024-02-27', '2024-03-02', 380).
reserva_alojamiento(58, 58, 43, '2024-02-28', '2024-03-03', 460).
reserva_alojamiento(59, 59, 44, '2024-02-29', '2024-03-04', 540).
reserva_alojamiento(60, 60, 45, '2024-03-01', '2024-03-05', 620).
reserva_alojamiento(61, 61, 46, '2024-03-02', '2024-03-06', 700).
reserva_alojamiento(62, 62, 47, '2024-03-03', '2024-03-07', 780).
reserva_alojamiento(63, 63, 48, '2024-03-04', '2024-03-08', 860).
reserva_alojamiento(64, 64, 49, '2024-03-05', '2024-03-09', 300).
reserva_alojamiento(65, 65, 50, '2024-03-06', '2024-03-10', 380).
reserva_alojamiento(66, 66, 51, '2024-03-07', '2024-03-11', 460).
reserva_alojamiento(67, 67, 52, '2024-03-08', '2024-03-12', 540).
reserva_alojamiento(68, 68, 53, '2024-03-09', '2024-03-13', 620).
reserva_alojamiento(69, 69, 54, '2024-03-10', '2024-03-14', 700).
reserva_alojamiento(70, 70, 55, '2024-03-11', '2024-03-15', 780).
reserva_alojamiento(71, 71, 56, '2024-03-12', '2024-03-16', 860).
reserva_alojamiento(72, 72, 57, '2024-03-13', '2024-03-17', 300).
reserva_alojamiento(73, 73, 58, '2024-03-14', '2024-03-18', 380).
reserva_alojamiento(74, 74, 59, '2024-03-15', '2024-03-19', 460).
reserva_alojamiento(75, 75, 60, '2024-03-16', '2024-03-20', 540).
reserva_alojamiento(76, 76, 61, '2024-03-17', '2024-03-21', 620).
reserva_alojamiento(77, 77, 62, '2024-03-18', '2024-03-22', 700).
reserva_alojamiento(78, 78, 63, '2024-03-19', '2024-03-23', 780).
reserva_alojamiento(79, 79, 64, '2024-03-20', '2024-03-24', 860).
reserva_alojamiento(80, 80, 65, '2024-03-21', '2024-03-25', 300).

% ==============================================================
% reserva_transporte/7: 50 originales + 30 agregados = 80
% reserva_transporte(ID_reserva_transporte, ID_reserva, ID_tipo_transporte, ID_vuelo, ID_alquiler, ID_crucero, costo).
% REGISTROS ORIGINALES (convertidos del SQL publico)
reserva_transporte(1, 1, 1, 1, null, null, 1200.00).
reserva_transporte(2, 2, 1, 2, null, null, 950.00).
reserva_transporte(3, 3, 1, 3, null, null, 650.00).
reserva_transporte(4, 4, 1, 4, null, null, 1100.00).
reserva_transporte(5, 5, 1, 5, null, null, 2500.00).
reserva_transporte(6, 6, 1, 6, null, null, 850.00).
reserva_transporte(7, 7, 1, 7, null, null, 3000.00).
reserva_transporte(8, 8, 1, 8, null, null, 1800.00).
reserva_transporte(9, 9, 1, 9, null, null, 1200.00).
reserva_transporte(10, 10, 1, 10, null, null, 2200.00).
reserva_transporte(11, 11, 1, 11, null, null, 600.00).
reserva_transporte(12, 12, 1, 12, null, null, 1900.00).
reserva_transporte(13, 13, 1, 13, null, null, 1100.00).
reserva_transporte(14, 14, 1, 14, null, null, 550.00).
reserva_transporte(15, 15, 1, 15, null, null, 1300.00).
reserva_transporte(16, 16, 1, 16, null, null, 500.00).
reserva_transporte(17, 17, 1, 17, null, null, 900.00).
reserva_transporte(18, 18, 1, 18, null, null, 650.00).
reserva_transporte(19, 19, 1, 19, null, null, 1400.00).
reserva_transporte(20, 20, 1, 20, null, null, 950.00).
reserva_transporte(21, 21, 1, 21, null, null, 700.00).
reserva_transporte(22, 22, 1, 22, null, null, 800.00).
reserva_transporte(23, 23, 1, 23, null, null, 1500.00).
reserva_transporte(24, 24, 1, 24, null, null, 600.00).
reserva_transporte(25, 25, 1, 25, null, null, 850.00).
reserva_transporte(26, 26, 1, 26, null, null, 1600.00).
reserva_transporte(27, 27, 1, 27, null, null, 2800.00).
reserva_transporte(28, 28, 1, 28, null, null, 1300.00).
reserva_transporte(29, 29, 1, 29, null, null, 950.00).
reserva_transporte(30, 30, 1, 30, null, null, 650.00).
reserva_transporte(31, 31, 2, null, 1, null, 450.00).
reserva_transporte(32, 32, 2, null, 2, null, 350.00).
reserva_transporte(33, 33, 2, null, 3, null, 500.00).
reserva_transporte(34, 34, 2, null, 4, null, 400.00).
reserva_transporte(35, 35, 2, null, 5, null, 600.00).
reserva_transporte(36, 36, 2, null, 6, null, 300.00).
reserva_transporte(37, 37, 2, null, 7, null, 550.00).
reserva_transporte(38, 38, 2, null, 8, null, 380.00).
reserva_transporte(39, 39, 2, null, 9, null, 420.00).
reserva_transporte(40, 40, 2, null, 10, null, 470.00).
reserva_transporte(41, 41, 3, null, null, 1, 1200.00).
reserva_transporte(42, 42, 3, null, null, 2, 1350.00).
reserva_transporte(43, 43, 3, null, null, 3, 1500.00).
reserva_transporte(44, 44, 3, null, null, 4, 1100.00).
reserva_transporte(45, 45, 3, null, null, 5, 1250.00).
reserva_transporte(46, 46, 3, null, null, 6, 1400.00).
reserva_transporte(47, 47, 3, null, null, 7, 1600.00).
reserva_transporte(48, 48, 3, null, null, 8, 1750.00).
reserva_transporte(49, 49, 3, null, null, 9, 2000.00).
reserva_transporte(50, 50, 3, null, null, 10, 2200.00).

% REGISTROS AGREGADOS (datos sinteticos, no pertenecen a la fuente)
reserva_transporte(51, 51, 1, 41, null, null, 860).
reserva_transporte(52, 52, 1, 42, null, null, 965).
reserva_transporte(53, 53, 1, 43, null, null, 1070).
reserva_transporte(54, 54, 1, 44, null, null, 1175).
reserva_transporte(55, 55, 1, 45, null, null, 1280).
reserva_transporte(56, 56, 1, 46, null, null, 1385).
reserva_transporte(57, 57, 1, 47, null, null, 1490).
reserva_transporte(58, 58, 1, 48, null, null, 1595).
reserva_transporte(59, 59, 1, 49, null, null, 1700).
reserva_transporte(60, 60, 1, 50, null, null, 1805).
reserva_transporte(61, 61, 1, 51, null, null, 1910).
reserva_transporte(62, 62, 1, 52, null, null, 650).
reserva_transporte(63, 63, 1, 53, null, null, 755).
reserva_transporte(64, 64, 1, 54, null, null, 860).
reserva_transporte(65, 65, 1, 55, null, null, 965).
reserva_transporte(66, 66, 1, 56, null, null, 1070).
reserva_transporte(67, 67, 1, 57, null, null, 1175).
reserva_transporte(68, 68, 1, 58, null, null, 1280).
reserva_transporte(69, 69, 1, 59, null, null, 1385).
reserva_transporte(70, 70, 1, 60, null, null, 1490).
reserva_transporte(71, 71, 1, 61, null, null, 1595).
reserva_transporte(72, 72, 1, 62, null, null, 1700).
reserva_transporte(73, 73, 1, 63, null, null, 1805).
reserva_transporte(74, 74, 1, 64, null, null, 1910).
reserva_transporte(75, 75, 1, 65, null, null, 650).
reserva_transporte(76, 76, 1, 66, null, null, 755).
reserva_transporte(77, 77, 1, 67, null, null, 860).
reserva_transporte(78, 78, 1, 68, null, null, 965).
reserva_transporte(79, 79, 1, 69, null, null, 1070).
reserva_transporte(80, 80, 1, 70, null, null, 1175).

% ==============================================================
% pago/7: 50 originales + 30 agregados = 80
% pago(ID_pago, ID_reserva, fecha_pago, importe, metodo_pago, ultimos_4_tarjeta, vencimiento).
% REGISTROS ORIGINALES (convertidos del SQL publico)
pago(1, 1, '2023-05-01 10:05:00', 2775.00, 'Credit Card', '1234', '12/2025').
pago(2, 2, '2023-05-02 11:20:00', 2862.50, 'Credit Card', '2345', '03/2026').
pago(3, 3, '2023-05-03 12:35:00', 1956.25, 'Debit Card', '3456', '06/2024').
pago(4, 4, '2023-05-04 13:50:00', 2700.00, 'Credit Card', '4567', '09/2025').
pago(5, 5, '2023-05-05 14:05:00', 4187.50, 'Credit Card', '5678', '12/2026').
pago(6, 6, '2023-05-06 15:20:00', 2275.00, 'Debit Card', '6789', '03/2024').
pago(7, 7, '2023-05-07 16:35:00', 4125.00, 'Credit Card', '7890', '06/2025').
pago(8, 8, '2023-05-08 17:50:00', 4050.00, 'Credit Card', '8901', '09/2026').
pago(9, 9, '2023-05-09 18:05:00', 2985.00, 'Debit Card', '9012', '12/2024').
pago(10, 10, '2023-05-10 19:20:00', 3845.00, 'Credit Card', '0123', '03/2025').
pago(11, 11, '2023-05-11 20:35:00', 2512.50, 'Credit Card', '1234', '06/2026').
pago(12, 12, '2023-05-12 21:50:00', 3700.00, 'Debit Card', '2345', '09/2024').
pago(13, 13, '2023-05-13 22:05:00', 2787.50, 'Credit Card', '3456', '12/2025').
pago(14, 14, '2023-05-14 23:20:00', 1990.00, 'Credit Card', '4567', '03/2026').
pago(15, 15, '2023-05-15 08:35:00', 3325.00, 'Debit Card', '5678', '06/2024').
pago(16, 16, '2023-05-16 09:50:00', 1700.00, 'Credit Card', '6789', '09/2025').
pago(17, 17, '2023-05-17 10:05:00', 2475.00, 'Credit Card', '7890', '12/2026').
pago(18, 18, '2023-05-18 11:20:00', 2225.00, 'Debit Card', '8901', '03/2024').
pago(19, 19, '2023-05-19 12:35:00', 3100.00, 'Credit Card', '9012', '06/2025').
pago(20, 20, '2023-05-20 13:50:00', 2595.00, 'Credit Card', '0123', '09/2026').
pago(21, 21, '2023-05-21 14:05:00', 2612.50, 'Debit Card', '1234', '12/2024').
pago(22, 22, '2023-05-22 15:20:00', 2112.50, 'Credit Card', '2345', '03/2025').
pago(23, 23, '2023-05-23 16:35:00', 3250.00, 'Credit Card', '3456', '06/2026').
pago(24, 24, '2023-05-24 17:50:00', 2725.00, 'Debit Card', '4567', '09/2024').
pago(25, 25, '2023-05-25 18:05:00', 3100.00, 'Credit Card', '5678', '12/2025').
pago(26, 26, '2023-05-26 19:20:00', 2950.00, 'Credit Card', '6789', '03/2026').
pago(27, 27, '2023-05-27 20:35:00', 4375.00, 'Debit Card', '7890', '06/2024').
pago(28, 28, '2023-05-28 21:50:00', 3000.00, 'Credit Card', '8901', '09/2025').
pago(29, 29, '2023-05-29 22:05:00', 2735.00, 'Credit Card', '9012', '12/2026').
pago(30, 30, '2023-05-30 23:20:00', 2337.50, 'Debit Card', '0123', '03/2024').
pago(31, 31, '2023-05-31 08:35:00', 2250.00, 'Credit Card', '1234', '06/2025').
pago(32, 32, '2023-06-01 09:50:00', 2475.00, 'Credit Card', '2345', '09/2026').
pago(33, 33, '2023-06-02 10:05:00', 2480.00, 'Debit Card', '3456', '12/2024').
pago(34, 34, '2023-06-03 11:20:00', 2312.50, 'Credit Card', '4567', '03/2025').
pago(35, 35, '2023-06-04 12:35:00', 2175.00, 'Credit Card', '5678', '06/2026').
pago(36, 36, '2023-06-05 13:50:00', 2775.00, 'Debit Card', '6789', '09/2024').
pago(37, 37, '2023-06-06 14:05:00', 2462.50, 'Credit Card', '7890', '12/2025').
pago(38, 38, '2023-06-07 15:20:00', 1686.25, 'Credit Card', '8901', '03/2026').
pago(39, 39, '2023-06-08 16:35:00', 2000.00, 'Debit Card', '9012', '06/2024').
pago(40, 40, '2023-06-09 17:50:00', 2157.50, 'Credit Card', '0123', '09/2025').
pago(41, 41, '2023-06-10 18:05:00', 2625.00, 'Credit Card', '1234', '12/2026').
pago(42, 42, '2023-06-11 19:20:00', 2475.00, 'Debit Card', '2345', '03/2024').
pago(43, 43, '2023-06-12 20:35:00', 3750.00, 'Credit Card', '3456', '06/2025').
pago(44, 44, '2023-06-13 21:50:00', 3425.00, 'Credit Card', '4567', '09/2026').
pago(45, 45, '2023-06-14 22:05:00', 2895.00, 'Debit Card', '5678', '12/2024').
pago(46, 46, '2023-06-15 23:20:00', 3512.50, 'Credit Card', '6789', '03/2025').
pago(47, 47, '2023-06-16 08:35:00', 3400.00, 'Credit Card', '7890', '06/2026').
pago(48, 48, '2023-06-17 09:50:00', 3437.50, 'Debit Card', '8901', '09/2024').
pago(49, 49, '2023-06-18 10:05:00', 3440.00, 'Credit Card', '9012', '12/2025').
pago(50, 50, '2023-06-19 11:20:00', 4225.00, 'Credit Card', '0123', '03/2026').

% REGISTROS AGREGADOS (datos sinteticos, no pertenecen a la fuente)
pago(51, 51, '2024-02-07 11:00:00', 1400, 'Cash', null, null).
pago(52, 52, '2024-02-08 11:00:00', 1585, 'Credit Card', '2052', '12/2028').
pago(53, 53, '2024-02-09 11:00:00', 1770, 'Debit Card', '2053', '12/2028').
pago(54, 54, '2024-02-10 11:00:00', 1955, 'Bank Transfer', null, null).
pago(55, 55, '2024-02-11 11:00:00', 2140, 'Cash', null, null).
pago(56, 56, '2024-02-12 11:00:00', 1685, 'Credit Card', '2056', '12/2028').
pago(57, 57, '2024-02-13 11:00:00', 1870, 'Debit Card', '2057', '12/2028').
pago(58, 58, '2024-02-14 11:00:00', 2055, 'Bank Transfer', null, null).
pago(59, 59, '2024-02-15 11:00:00', 2240, 'Cash', null, null).
pago(60, 60, '2024-02-16 11:00:00', 2425, 'Credit Card', '2060', '12/2028').
pago(61, 61, '2024-02-17 11:00:00', 2610, 'Debit Card', '2061', '12/2028').
pago(62, 62, '2024-02-18 11:00:00', 1430, 'Bank Transfer', null, null).
pago(63, 63, '2024-02-19 11:00:00', 1615, 'Cash', null, null).
pago(64, 64, '2024-02-20 11:00:00', 1160, 'Credit Card', '2064', '12/2028').
pago(65, 65, '2024-02-21 11:00:00', 1345, 'Debit Card', '2065', '12/2028').
pago(66, 66, '2024-02-22 11:00:00', 1530, 'Bank Transfer', null, null).
pago(67, 67, '2024-02-23 11:00:00', 1715, 'Cash', null, null).
pago(68, 68, '2024-02-24 11:00:00', 1900, 'Credit Card', '2068', '12/2028').
pago(69, 69, '2024-02-25 11:00:00', 2085, 'Debit Card', '2069', '12/2028').
pago(70, 70, '2024-02-26 11:00:00', 2270, 'Bank Transfer', null, null).
pago(71, 71, '2024-02-27 11:00:00', 2455, 'Cash', null, null).
pago(72, 72, '2024-02-28 11:00:00', 2000, 'Credit Card', '2072', '12/2028').
pago(73, 73, '2024-02-29 11:00:00', 2185, 'Debit Card', '2073', '12/2028').
pago(74, 74, '2024-03-01 11:00:00', 2370, 'Bank Transfer', null, null).
pago(75, 75, '2024-03-02 11:00:00', 1190, 'Cash', null, null).
pago(76, 76, '2024-03-03 11:00:00', 1375, 'Credit Card', '2076', '12/2028').
pago(77, 77, '2024-03-04 11:00:00', 1560, 'Debit Card', '2077', '12/2028').
pago(78, 78, '2024-03-05 11:00:00', 1745, 'Bank Transfer', null, null).
pago(79, 79, '2024-03-06 11:00:00', 1930, 'Cash', null, null).
pago(80, 80, '2024-03-07 11:00:00', 1475, 'Credit Card', '2080', '12/2028').

% ==============================================================
% opinion/6: 40 originales + 40 agregados = 80
% opinion(ID_opinion, ID_reserva, ID_pasajero, puntuacion, comentario, fecha_opinion).
% REGISTROS ORIGINALES (convertidos del SQL publico)
opinion(1, 1, 1, 5, 'Excellent service and accommodations!', '2023-06-21 10:00:00').
opinion(2, 2, 4, 4, 'Great trip overall, but the flight was delayed.', '2023-06-22 11:15:00').
opinion(3, 3, 5, 5, 'Perfect business trip, everything was well organized.', '2023-06-23 12:30:00').
opinion(4, 4, 6, 5, 'Amazing honeymoon! The resort was beautiful.', '2023-06-24 13:45:00').
opinion(5, 5, 8, 4, 'Adventure of a lifetime! Would recommend.', '2023-06-25 14:00:00').
opinion(6, 6, 9, 3, 'Good family vacation, but the room was smaller than expected.', '2023-06-26 15:15:00').
opinion(7, 7, 12, 5, 'Fantastic getaway, will book again!', '2023-06-27 16:30:00').
opinion(8, 8, 13, 4, 'Smooth business trip, good hotel.', '2023-06-28 17:45:00').
opinion(9, 9, 14, 5, 'Wonderful anniversary trip!', '2023-06-29 18:00:00').
opinion(10, 10, 15, 4, 'Great family vacation, kids loved it.', '2023-06-30 19:15:00').
opinion(11, 11, 17, 5, 'Perfect honeymoon destination!', '2023-07-01 20:30:00').
opinion(12, 12, 19, 3, 'Business trip was okay, flight was uncomfortable.', '2023-07-02 21:45:00').
opinion(13, 13, 20, 4, 'Nice vacation, good value for money.', '2023-07-03 22:00:00').
opinion(14, 14, 21, 5, 'Family had a blast, would come back!', '2023-07-04 23:15:00').
opinion(15, 15, 24, 4, 'Exciting adventure, some minor issues with transport.', '2023-07-05 08:30:00').
opinion(16, 16, 25, 5, 'Excellent business facilities.', '2023-07-06 09:45:00').
opinion(17, 17, 26, 4, 'Relaxing getaway, beautiful location.', '2023-07-07 10:00:00').
opinion(18, 18, 27, 5, 'Best family vacation ever!', '2023-07-08 11:15:00').
opinion(19, 19, 29, 5, 'Dream wedding trip, everything was perfect.', '2023-07-09 12:30:00').
opinion(20, 20, 31, 4, 'Good vacation, but weather could have been better.', '2023-07-10 13:45:00').
opinion(21, 21, 32, 3, 'Average business trip, nothing special.', '2023-07-11 14:00:00').
opinion(22, 22, 33, 5, 'Amazing group trip, well organized.', '2023-07-12 15:15:00').
opinion(23, 23, 35, 4, 'Great adventure, some activities were cancelled.', '2023-07-13 16:30:00').
opinion(24, 24, 1, 5, 'Perfect business conference trip.', '2023-07-14 17:45:00').
opinion(25, 25, 2, 4, 'Nice getaway, hotel was comfortable.', '2023-07-15 18:00:00').
opinion(26, 26, 4, 5, 'Family loved the cruise!', '2023-07-16 19:15:00').
opinion(27, 27, 5, 5, 'Honeymoon was magical, exceeded expectations.', '2023-07-17 20:30:00').
opinion(28, 28, 7, 4, 'Good business trip, efficient service.', '2023-07-18 21:45:00').
opinion(29, 29, 8, 3, 'Vacation was okay, had some issues with booking.', '2023-07-19 22:00:00').
opinion(30, 30, 9, 5, 'Perfect family reunion trip!', '2023-07-20 23:15:00').
opinion(31, 31, 11, 4, 'Good car rental experience.', '2023-07-21 08:30:00').
opinion(32, 32, 12, 5, 'Excellent business trip, no complaints.', '2023-07-22 09:45:00').
opinion(33, 33, 13, 4, 'Nice vacation, beautiful destination.', '2023-07-23 10:00:00').
opinion(34, 34, 15, 5, 'Family had a wonderful time!', '2023-07-24 11:15:00').
opinion(35, 35, 16, 3, 'Honeymoon was good but had some service issues.', '2023-07-25 12:30:00').
opinion(36, 36, 18, 5, 'Perfect business accommodations.', '2023-07-26 13:45:00').
opinion(37, 37, 19, 4, 'Enjoyable vacation, would recommend.', '2023-07-27 14:00:00').
opinion(38, 38, 20, 5, 'Great family trip, kids loved the activities.', '2023-07-28 15:15:00').
opinion(39, 39, 22, 4, 'Good adventure, some logistical challenges.', '2023-07-29 16:30:00').
opinion(40, 40, 23, 5, 'Perfect business conference experience.', '2023-07-30 17:45:00').

% REGISTROS AGREGADOS (datos sinteticos, no pertenecen a la fuente)
opinion(41, 41, 25, 5, 'Opinion de ejemplo de la reserva 41', '2024-02-19 13:00:00').
opinion(42, 42, 26, 3, 'Opinion de ejemplo de la reserva 42', '2024-02-20 13:00:00').
opinion(43, 43, 27, 4, 'Opinion de ejemplo de la reserva 43', '2024-02-21 13:00:00').
opinion(44, 44, 29, 5, 'Opinion de ejemplo de la reserva 44', '2024-02-22 13:00:00').
opinion(45, 45, 30, 3, 'Opinion de ejemplo de la reserva 45', '2024-02-23 13:00:00').
opinion(46, 46, 31, 4, 'Opinion de ejemplo de la reserva 46', '2024-02-24 13:00:00').
opinion(47, 47, 32, 5, 'Opinion de ejemplo de la reserva 47', '2024-02-25 13:00:00').
opinion(48, 48, 34, 3, 'Opinion de ejemplo de la reserva 48', '2024-02-26 13:00:00').
opinion(49, 49, 35, 4, 'Opinion de ejemplo de la reserva 49', '2024-02-27 13:00:00').
opinion(50, 50, 1, 5, 'Opinion de ejemplo de la reserva 50', '2024-02-28 13:00:00').
opinion(51, 51, 36, 3, 'Opinion de ejemplo de la reserva 51', '2024-02-29 13:00:00').
opinion(52, 52, 37, 4, 'Opinion de ejemplo de la reserva 52', '2024-03-01 13:00:00').
opinion(53, 53, 38, 5, 'Opinion de ejemplo de la reserva 53', '2024-03-02 13:00:00').
opinion(54, 54, 39, 3, 'Opinion de ejemplo de la reserva 54', '2024-03-03 13:00:00').
opinion(55, 55, 40, 4, 'Opinion de ejemplo de la reserva 55', '2024-03-04 13:00:00').
opinion(56, 56, 41, 5, 'Opinion de ejemplo de la reserva 56', '2024-03-05 13:00:00').
opinion(57, 57, 42, 3, 'Opinion de ejemplo de la reserva 57', '2024-03-06 13:00:00').
opinion(58, 58, 43, 4, 'Opinion de ejemplo de la reserva 58', '2024-03-07 13:00:00').
opinion(59, 59, 44, 5, 'Opinion de ejemplo de la reserva 59', '2024-03-08 13:00:00').
opinion(60, 60, 45, 3, 'Opinion de ejemplo de la reserva 60', '2024-03-09 13:00:00').
opinion(61, 61, 46, 4, 'Opinion de ejemplo de la reserva 61', '2024-03-10 13:00:00').
opinion(62, 62, 47, 5, 'Opinion de ejemplo de la reserva 62', '2024-03-11 13:00:00').
opinion(63, 63, 48, 3, 'Opinion de ejemplo de la reserva 63', '2024-03-12 13:00:00').
opinion(64, 64, 49, 4, 'Opinion de ejemplo de la reserva 64', '2024-03-13 13:00:00').
opinion(65, 65, 50, 5, 'Opinion de ejemplo de la reserva 65', '2024-03-14 13:00:00').
opinion(66, 66, 51, 3, 'Opinion de ejemplo de la reserva 66', '2024-03-15 13:00:00').
opinion(67, 67, 52, 4, 'Opinion de ejemplo de la reserva 67', '2024-03-16 13:00:00').
opinion(68, 68, 53, 5, 'Opinion de ejemplo de la reserva 68', '2024-03-17 13:00:00').
opinion(69, 69, 54, 3, 'Opinion de ejemplo de la reserva 69', '2024-03-18 13:00:00').
opinion(70, 70, 55, 4, 'Opinion de ejemplo de la reserva 70', '2024-03-19 13:00:00').
opinion(71, 71, 56, 5, 'Opinion de ejemplo de la reserva 71', '2024-03-20 13:00:00').
opinion(72, 72, 57, 3, 'Opinion de ejemplo de la reserva 72', '2024-03-21 13:00:00').
opinion(73, 73, 58, 4, 'Opinion de ejemplo de la reserva 73', '2024-03-22 13:00:00').
opinion(74, 74, 59, 5, 'Opinion de ejemplo de la reserva 74', '2024-03-23 13:00:00').
opinion(75, 75, 60, 3, 'Opinion de ejemplo de la reserva 75', '2024-03-24 13:00:00').
opinion(76, 76, 61, 4, 'Opinion de ejemplo de la reserva 76', '2024-03-25 13:00:00').
opinion(77, 77, 62, 5, 'Opinion de ejemplo de la reserva 77', '2024-03-26 13:00:00').
opinion(78, 78, 63, 3, 'Opinion de ejemplo de la reserva 78', '2024-03-27 13:00:00').
opinion(79, 79, 64, 4, 'Opinion de ejemplo de la reserva 79', '2024-03-28 13:00:00').
opinion(80, 80, 65, 5, 'Opinion de ejemplo de la reserva 80', '2024-03-29 13:00:00').

/* ==============================================================
   CONSULTAS COMPLEJAS - 2 POR CADA UNA DE LAS 14 TABLAS
   Estas reglas forman parte del mismo archivo de la base de datos.
   ============================================================== */

:- use_module(library(aggregate)).
:- use_module(library(lists)).

% 01-02. UBICACION / ubicacion/4
ubicaciones_con_alojamientos(Ciudad,Pais,Hotel,Tarifa) :-
    ubicacion(Id,Ciudad,_,Pais),
    alojamiento(_,Hotel,_,Tarifa,_,_,Id),
    number(Tarifa),
    Tarifa =< 400.

rutas_entre_paises(PaisO,PaisD,Vuelo,Precio) :-
    vuelo(_,Vuelo,_,Origen,Destino,_,_,_,Precio),
    ubicacion(Origen,_,_,PaisO),
    ubicacion(Destino,_,_,PaisD),
    PaisO \= PaisD.

% 03-04. PASAJERO / pasajero/6
pasajeros_confirmados(Nombre,Grupo,Principal) :-
    pasajero(Id,Nombre,_,_,_,_),
    reserva_pasajero(ReservaId,Id,Principal),
    reserva(ReservaId,Grupo,_,_,_,_,'Confirmed').

pasajeros_satisfechos(Nombre,Grupo,Nota) :-
    pasajero(Id,Nombre,_,_,_,_),
    opinion(_,ReservaId,Id,Nota,_,_),
    Nota >= 4,
    reserva(ReservaId,Grupo,_,_,_,_,_).

% 05-06. EMPLEADO / empleado/5
agentes_confirmados(Agente,Grupo) :-
    empleado(Id,Agente,_,_,_),
    reserva(_,Grupo,_,_,Id,_,'Confirmed').

carga_empleado(Agente,Cantidad) :-
    empleado(Id,Agente,_,_,_),
    aggregate_all(count,reserva(_,_,_,_,Id,_,_),Cantidad),
    Cantidad > 0.

% 07-08. ALOJAMIENTO / alojamiento/7
tarifa_neta(Hotel,Ciudad,TarifaFinal) :-
    alojamiento(_,Hotel,_,Tarifa,_,Descuento,Lugar),
    ubicacion(Lugar,Ciudad,_,_),
    number(Tarifa),
    number(Descuento),
    TarifaFinal is Tarifa*(1-Descuento).

hospedajes_reservados(Grupo,Hotel,Costo) :-
    reserva(Id,Grupo,_,_,_,_,_),
    reserva_alojamiento(_,Id,AlojamientoId,_,_,Costo),
    alojamiento(AlojamientoId,Hotel,_,_,_,_,_).

% 09-10. TIPO DE TRANSPORTE / tipo_transporte/2
tipos_utilizados(Tipo,Cantidad) :-
    tipo_transporte(Id,Tipo),
    aggregate_all(count,
        reserva_transporte(_,_,Id,_,_,_,_),Cantidad),
    Cantidad > 0.

tipo_por_grupo(Grupo,Tipo,Costo) :-
    reserva(Id,Grupo,_,_,_,_,_),
    reserva_transporte(_,Id,TipoId,_,_,_,Costo),
    tipo_transporte(TipoId,Tipo).

% 11-12. VUELO / vuelo/9
itinerario_vuelo(Numero,Sale,Llega,Tarifa) :-
    vuelo(_,Numero,_,Origen,Destino,_,_,_,Tarifa),
    ubicacion(Origen,Sale,_,_),
    ubicacion(Destino,Llega,_,_).

vuelos_contratados(Grupo,Numero,Compania) :-
    reserva(Id,Grupo,_,_,_,_,_),
    reserva_transporte(_,Id,_,VueloId,_,_,_),
    VueloId \= null,
    vuelo(VueloId,Numero,Compania,_,_,_,_,_,_).

% 13-14. ALQUILER DE AUTO / alquiler_auto/8
ruta_auto(Empresa,Tipo,Recogida,Entrega,Costo) :-
    alquiler_auto(_,Empresa,Tipo,IdR,IdE,_,_,Costo),
    ubicacion(IdR,Recogida,_,_),
    ubicacion(IdE,Entrega,_,_).

autos_contratados(Grupo,Empresa,Costo) :-
    reserva(Id,Grupo,_,_,_,_,_),
    reserva_transporte(_,Id,_,_,AutoId,_,Costo),
    AutoId \= null,
    alquiler_auto(AutoId,Empresa,_,_,_,_,_,_).

% 15-16. CRUCERO / crucero/8
ruta_crucero(Barco,Salida,Llegada,Tarifa) :-
    crucero(_,Barco,_,IdS,IdL,_,_,Tarifa),
    ubicacion(IdS,Salida,_,_),
    ubicacion(IdL,Llegada,_,_).

cruceros_contratados(Grupo,Barco,Costo) :-
    reserva(Id,Grupo,_,_,_,_,_),
    reserva_transporte(_,Id,_,_,_,CruceroId,Costo),
    CruceroId \= null,
    crucero(CruceroId,Barco,_,_,_,_,_,_).

% 17-18. RESERVA / reserva/7
reservas_completas(Grupo,Agente,Viajero) :-
    reserva(Id,Grupo,_,_,Empleado,_,'Confirmed'),
    empleado(Empleado,Agente,_,_,_),
    reserva_pasajero(Id,Pasajero,_),
    pasajero(Pasajero,Viajero,_,_,_,_).

costo_calculado(Id,Grupo,Total) :-
    reserva(Id,Grupo,_,_,_,_,_),
    aggregate_all(sum(A),
        reserva_alojamiento(_,Id,_,_,_,A),SumaA),
    aggregate_all(sum(T),
        reserva_transporte(_,Id,_,_,_,_,T),SumaT),
    Total is SumaA+SumaT.

% 19-20. RESERVA-PASAJERO / reserva_pasajero/3
grupos_numerosos(Grupo,Cantidad) :-
    reserva(Id,Grupo,_,_,_,_,_),
    aggregate_all(count,
        reserva_pasajero(Id,_,_),Cantidad),
    Cantidad >= 2.

titular_y_acompanantes(Grupo,Titular,Acompana) :-
    reserva(Id,Grupo,_,_,_,_,_),
    reserva_pasajero(Id,P1,true),
    reserva_pasajero(Id,P2,false),
    P1 \= P2,
    pasajero(P1,Titular,_,_,_,_),
    pasajero(P2,Acompana,_,_,_,_).

% 21-22. RESERVA-ALOJAMIENTO / reserva_alojamiento/6
estancia_por_grupo(Grupo,Hotel,Ciudad,Costo) :-
    reserva(Id,Grupo,_,_,_,_,_),
    reserva_alojamiento(_,Id,HotelId,_,_,Costo),
    alojamiento(HotelId,Hotel,_,_,_,_,Lugar),
    ubicacion(Lugar,Ciudad,_,_).

estancias_costosas(Grupo,Hotel,Costo) :-
    reserva(Id,Grupo,_,_,_,_,_),
    reserva_alojamiento(_,Id,HotelId,_,_,Costo),
    alojamiento(HotelId,Hotel,_,_,_,_,_),
    Costo > 1000.

% 23-24. RESERVA-TRANSPORTE / reserva_transporte/7
transporte_de_reserva(Grupo,Tipo,Costo) :-
    reserva(Id,Grupo,_,_,_,_,_),
    reserva_transporte(_,Id,TipoId,_,_,_,Costo),
    tipo_transporte(TipoId,Tipo).

vuelos_mas_caros_que_hotel(Grupo,Aereo,Hotel) :-
    reserva(Id,Grupo,_,_,_,_,_),
    reserva_transporte(_,Id,_,VueloId,_,_,Aereo),
    VueloId \= null,
    reserva_alojamiento(_,Id,_,_,_,Hotel),
    Aereo > Hotel.

% 25-26. PAGO / pago/7
pagos_de_grupo(Grupo,Metodo,Importe) :-
    reserva(Id,Grupo,_,_,_,_,_),
    pago(_,Id,_,Importe,Metodo,_,_).

monto_pagado(Grupo,Total) :-
    reserva(Id,Grupo,_,_,_,_,_),
    aggregate_all(sum(Monto),
        pago(_,Id,_,Monto,_,_,_),Total).

% 27-28. OPINION / opinion/6
opiniones_contextualizadas(Cliente,Grupo,Nota) :-
    opinion(_,Id,P,Nota,_,_),
    pasajero(P,Cliente,_,_,_,_),
    reserva(Id,Grupo,_,_,_,_,_).

promedio_por_estado(Estado,Promedio) :-
    findall(N,
        (opinion(_,Id,_,N,_,_),
         reserva(Id,_,_,_,_,_,Estado)),Notas),
    Notas \= [],
    sum_list(Notas,Suma),
    length(Notas,Cantidad),
    Promedio is Suma/Cantidad.

/* EJEMPLOS DE EJECUCION
?- ubicaciones_con_alojamientos(Ciudad,Pais,Hotel,Tarifa).
?- pasajeros_confirmados(Nombre,Grupo,Principal).
?- itinerario_vuelo(Numero,Origen,Destino,Tarifa).
?- grupos_numerosos(Grupo,Cantidad).
?- monto_pagado(Grupo,Total).
?- promedio_por_estado(Estado,Promedio).
*/
