-- Esquema de Agencia de Viajes basado en el DDL original de Sanjay-RK-27
-- Compatible con MySQL 8.0.16 o posterior (por las restricciones CHECK).
-- Incluye las 14 tablas y sus relaciones FK para generar el diagrama EER.

CREATE DATABASE IF NOT EXISTS travel_agency_db
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;
USE travel_agency_db;

SET default_storage_engine = InnoDB;

CREATE TABLE IF NOT EXISTS Ubicacion (
  UbicacionID INT NOT NULL AUTO_INCREMENT,
  Ciudad VARCHAR(100) NOT NULL,
  Estado VARCHAR(100) NULL,
  Pais VARCHAR(100) NOT NULL,
  PRIMARY KEY (UbicacionID),
  INDEX idx_country (Pais),
  INDEX idx_city (Ciudad)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS Pasajero (
  PasajeroID INT NOT NULL AUTO_INCREMENT,
  Nombre VARCHAR(255) NOT NULL,
  Genero ENUM('Male', 'Female', 'Other') NULL,
  Edad INT NULL,
  Correo VARCHAR(255) NULL,
  Telefono VARCHAR(20) NULL,
  PRIMARY KEY (PasajeroID),
  UNIQUE KEY uq_passenger_email (Correo),
  INDEX idx_name (Nombre),
  INDEX idx_age (Edad),
  CONSTRAINT chk_passenger_age CHECK (Edad > 0 AND Edad < 120)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS Empleado (
  EmpleadoID INT NOT NULL AUTO_INCREMENT,
  Nombre VARCHAR(255) NOT NULL,
  Cargo VARCHAR(100) NULL,
  FechaIngreso DATE NULL,
  SupervisorEmpleadoID INT NULL,
  PRIMARY KEY (EmpleadoID),
  INDEX idx_role (Cargo),
  INDEX idx_join_date (FechaIngreso),
  CONSTRAINT fk_employee_supervisor
    FOREIGN KEY (SupervisorEmpleadoID) REFERENCES Empleado(EmpleadoID)
    ON DELETE SET NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS Alojamiento (
  AlojamientoID INT NOT NULL AUTO_INCREMENT,
  Nombre VARCHAR(255) NOT NULL,
  Tipo ENUM('Hotel', 'Resort', 'Airbnb', 'Guesthouse', 'Inn', 'Suites') NULL,
  Tarifa DECIMAL(10,2) NULL,
  Instalaciones TEXT NULL,
  Descuento DECIMAL(4,2) NULL DEFAULT 0.00,
  UbicacionID INT NOT NULL,
  PRIMARY KEY (AlojamientoID),
  INDEX idx_type (Tipo),
  INDEX idx_rate (Tarifa),
  INDEX idx_accommodation_location (UbicacionID),
  CONSTRAINT chk_accommodation_rate CHECK (Tarifa >= 0),
  CONSTRAINT chk_accommodation_discount CHECK (Descuento >= 0 AND Descuento <= 1),
  CONSTRAINT fk_accommodation_location
    FOREIGN KEY (UbicacionID) REFERENCES Ubicacion(UbicacionID)
    ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS TipoTransporte (
  TipoTransporteID INT NOT NULL AUTO_INCREMENT,
  Nombre VARCHAR(50) NOT NULL,
  PRIMARY KEY (TipoTransporteID),
  UNIQUE KEY uq_transportation_type_name (Nombre)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS Vuelo (
  VueloID INT NOT NULL AUTO_INCREMENT,
  NumeroVuelo VARCHAR(20) NOT NULL,
  Aerolinea VARCHAR(100) NOT NULL,
  UbicacionOrigenID INT NOT NULL,
  UbicacionDestinoID INT NOT NULL,
  FechaHoraSalida DATETIME NOT NULL,
  FechaHoraLlegada DATETIME NOT NULL,
  Clase ENUM('Economy', 'Premium Economy', 'Business', 'First') NULL,
  Tarifa DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (VueloID),
  INDEX idx_flight_number (NumeroVuelo),
  INDEX idx_carrier (Aerolinea),
  INDEX idx_departure (FechaHoraSalida),
  INDEX idx_flight_source (UbicacionOrigenID),
  INDEX idx_flight_dest (UbicacionDestinoID),
  CONSTRAINT chk_flight_fare CHECK (Tarifa >= 0),
  CONSTRAINT fk_flight_source_location
    FOREIGN KEY (UbicacionOrigenID) REFERENCES Ubicacion(UbicacionID)
    ON DELETE CASCADE,
  CONSTRAINT fk_flight_dest_location
    FOREIGN KEY (UbicacionDestinoID) REFERENCES Ubicacion(UbicacionID)
    ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS AlquilerAuto (
  AlquilerAutoID INT NOT NULL AUTO_INCREMENT,
  Empresa VARCHAR(100) NOT NULL,
  TipoAuto VARCHAR(100) NULL,
  UbicacionRecogidaID INT NOT NULL,
  UbicacionDevolucionID INT NOT NULL,
  FechaHoraRecogida DATETIME NOT NULL,
  FechaHoraDevolucion DATETIME NOT NULL,
  CostoRenta DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (AlquilerAutoID),
  INDEX idx_company (Empresa),
  INDEX idx_pickup_date (FechaHoraRecogida),
  INDEX idx_car_pickup (UbicacionRecogidaID),
  INDEX idx_car_dropoff (UbicacionDevolucionID),
  CONSTRAINT chk_car_rental_rent CHECK (CostoRenta >= 0),
  CONSTRAINT fk_car_pickup_location
    FOREIGN KEY (UbicacionRecogidaID) REFERENCES Ubicacion(UbicacionID)
    ON DELETE CASCADE,
  CONSTRAINT fk_car_dropoff_location
    FOREIGN KEY (UbicacionDevolucionID) REFERENCES Ubicacion(UbicacionID)
    ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS Crucero (
  CruceroID INT NOT NULL AUTO_INCREMENT,
  NombreCrucero VARCHAR(255) NOT NULL,
  Linea VARCHAR(100) NULL,
  UbicacionOrigenID INT NOT NULL,
  UbicacionDestinoID INT NOT NULL,
  FechaSalida DATE NOT NULL,
  FechaRegreso DATE NOT NULL,
  Tarifa DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (CruceroID),
  INDEX idx_cruise_name (NombreCrucero),
  INDEX idx_departure_date (FechaSalida),
  INDEX idx_cruise_source (UbicacionOrigenID),
  INDEX idx_cruise_dest (UbicacionDestinoID),
  CONSTRAINT chk_cruise_fare CHECK (Tarifa >= 0),
  CONSTRAINT fk_cruise_source_location
    FOREIGN KEY (UbicacionOrigenID) REFERENCES Ubicacion(UbicacionID)
    ON DELETE CASCADE,
  CONSTRAINT fk_cruise_dest_location
    FOREIGN KEY (UbicacionDestinoID) REFERENCES Ubicacion(UbicacionID)
    ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS Reserva (
  ReservaID INT NOT NULL AUTO_INCREMENT,
  NombreGrupo VARCHAR(255) NULL,
  Proposito ENUM('Leisure', 'Business', 'Family', 'Honeymoon', 'Adventure', 'Other') NULL,
  FechaReserva DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  EmpleadoID INT NULL,
  CostoTotal DECIMAL(12,2) NULL,
  EstadoReserva ENUM('Pending', 'Confirmed', 'Cancelled', 'Completed') NULL DEFAULT 'Pending',
  PRIMARY KEY (ReservaID),
  INDEX idx_booking_date (FechaReserva),
  INDEX idx_purpose (Proposito),
  INDEX idx_booking_employee (EmpleadoID),
  CONSTRAINT chk_booking_total_cost CHECK (CostoTotal >= 0),
  CONSTRAINT fk_booking_employee
    FOREIGN KEY (EmpleadoID) REFERENCES Empleado(EmpleadoID)
    ON DELETE SET NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS ReservaPasajero (
  ReservaID INT NOT NULL,
  PasajeroID INT NOT NULL,
  EsPrincipal BOOLEAN NULL DEFAULT FALSE,
  PRIMARY KEY (ReservaID, PasajeroID),
  CONSTRAINT fk_bookingpassenger_booking
    FOREIGN KEY (ReservaID) REFERENCES Reserva(ReservaID)
    ON DELETE CASCADE,
  CONSTRAINT fk_bookingpassenger_passenger
    FOREIGN KEY (PasajeroID) REFERENCES Pasajero(PasajeroID)
    ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS ReservaAlojamiento (
  ReservaAlojamientoID INT NOT NULL AUTO_INCREMENT,
  ReservaID INT NOT NULL,
  AlojamientoID INT NOT NULL,
  FechaEntrada DATE NOT NULL,
  FechaSalida DATE NOT NULL,
  Costo DECIMAL(10,2) NULL,
  PRIMARY KEY (ReservaAlojamientoID),
  INDEX idx_check_in (FechaEntrada),
  CONSTRAINT chk_booking_accommodation_cost CHECK (Costo >= 0),
  CONSTRAINT fk_bookingaccommodation_booking
    FOREIGN KEY (ReservaID) REFERENCES Reserva(ReservaID)
    ON DELETE CASCADE,
  CONSTRAINT fk_bookingaccommodation_accommodation
    FOREIGN KEY (AlojamientoID) REFERENCES Alojamiento(AlojamientoID)
    ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS ReservaTransporte (
  ReservaTransporteID INT NOT NULL AUTO_INCREMENT,
  ReservaID INT NOT NULL,
  TipoTransporteID INT NOT NULL,
  VueloID INT NULL,
  AlquilerAutoID INT NULL,
  CruceroID INT NULL,
  Costo DECIMAL(10,2) NULL,
  PRIMARY KEY (ReservaTransporteID),
  CONSTRAINT chk_booking_transportation_cost CHECK (Costo >= 0),
  CONSTRAINT chk_one_transport CHECK (
    (VueloID IS NOT NULL) +
    (AlquilerAutoID IS NOT NULL) +
    (CruceroID IS NOT NULL) = 1
  ),
  CONSTRAINT fk_bookingtransportation_booking
    FOREIGN KEY (ReservaID) REFERENCES Reserva(ReservaID)
    ON DELETE CASCADE,
  CONSTRAINT fk_bookingtransportation_type
    FOREIGN KEY (TipoTransporteID) REFERENCES TipoTransporte(TipoTransporteID)
    ON DELETE CASCADE,
  CONSTRAINT fk_bookingtransportation_flight
    FOREIGN KEY (VueloID) REFERENCES Vuelo(VueloID),
  CONSTRAINT fk_bookingtransportation_carrental
    FOREIGN KEY (AlquilerAutoID) REFERENCES AlquilerAuto(AlquilerAutoID),
  CONSTRAINT fk_bookingtransportation_cruise
    FOREIGN KEY (CruceroID) REFERENCES Crucero(CruceroID)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS Pago (
  PagoID INT NOT NULL AUTO_INCREMENT,
  ReservaID INT NOT NULL,
  FechaPago DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  Monto DECIMAL(12,2) NOT NULL,
  TipoPago ENUM('Credit Card', 'Debit Card', 'Bank Transfer', 'Cash', 'Other') NULL,
  UltimosCuatroTarjeta VARCHAR(4) NULL,
  FechaVencimiento VARCHAR(7) NULL COMMENT 'Formato MM/YYYY',
  PRIMARY KEY (PagoID),
  INDEX idx_payment_date (FechaPago),
  CONSTRAINT chk_payment_amount CHECK (Monto > 0),
  CONSTRAINT fk_payment_booking
    FOREIGN KEY (ReservaID) REFERENCES Reserva(ReservaID)
    ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS Opinion (
  OpinionID INT NOT NULL AUTO_INCREMENT,
  ReservaID INT NOT NULL,
  PasajeroID INT NOT NULL,
  Calificacion INT NOT NULL,
  `Texto` TEXT NULL,
  FechaOpinion DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (OpinionID),
  UNIQUE KEY uq_review_booking_passenger (ReservaID, PasajeroID),
  INDEX idx_rating (Calificacion),
  CONSTRAINT chk_review_rating CHECK (Calificacion >= 1 AND Calificacion <= 5),
  CONSTRAINT fk_review_booking
    FOREIGN KEY (ReservaID) REFERENCES Reserva(ReservaID)
    ON DELETE CASCADE,
  CONSTRAINT fk_review_passenger
    FOREIGN KEY (PasajeroID) REFERENCES Pasajero(PasajeroID)
    ON DELETE CASCADE
) ENGINE=InnoDB;

-- El esquema de referencia también inserta estas seis categorías base.
INSERT IGNORE INTO TipoTransporte (Nombre) VALUES
  ('Vuelo'), ('Car Rental'), ('Bus'), ('Crucero'), ('Train'), ('Ferry');
