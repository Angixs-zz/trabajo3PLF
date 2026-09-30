/*
   Ejercicio 3 - Base de datos de una agencia de viajes
   Como en el Ejercicio 2, cada predicado de hechos representa una tabla
   y las reglas representan consultas. Incluye 15 tablas y mas de 200 hechos.

   Tablas: pais/2, ciudad/3, aeropuerto/3, aerolinea/3, avion/3,
   vuelo/6, hotel/4, habitacion/4, cliente/4, reserva/5, pasajero/3,
   pago/4, destino/3, actividad/4, opinion/4.
*/

% ------------------------------ TABLAS ------------------------------
% pais(ID, nombre).
pais(1, 'Mexico'). pais(2, 'Espana'). pais(3, 'Francia').
pais(4, 'Italia'). pais(5, 'Colombia'). pais(6, 'Japon').

% ciudad(ID, nombre, pais).
ciudad(1, 'Ciudad de Mexico', 1). ciudad(2, 'Cancun', 1).
ciudad(3, 'Guadalajara', 1). ciudad(4, 'Madrid', 2).
ciudad(5, 'Barcelona', 2). ciudad(6, 'Paris', 3).
ciudad(7, 'Roma', 4). ciudad(8, 'Bogota', 5).
ciudad(9, 'Medellin', 5). ciudad(10, 'Tokio', 6).
ciudad(11, 'Osaka', 6). ciudad(12, 'Florencia', 4).

% aeropuerto(ID, nombre, ciudad).
aeropuerto(1, 'Benito Juarez', 1). aeropuerto(2, 'Cancun Internacional', 2).
aeropuerto(3, 'Miguel Hidalgo', 3). aeropuerto(4, 'Barajas', 4).
aeropuerto(5, 'El Prat', 5). aeropuerto(6, 'Charles de Gaulle', 6).
aeropuerto(7, 'Fiumicino', 7). aeropuerto(8, 'El Dorado', 8).
aeropuerto(9, 'Jose Maria Cordova', 9). aeropuerto(10, 'Haneda', 10).
aeropuerto(11, 'Kansai', 11). aeropuerto(12, 'Peretola', 12).

% aerolinea(ID, nombre, pais).
aerolinea(1, 'AeroMex', 1). aerolinea(2, 'Iberia', 2).
aerolinea(3, 'Air France', 3). aerolinea(4, 'Alitalia Nova', 4).
aerolinea(5, 'Andes Air', 5). aerolinea(6, 'Nippon Wings', 6).

% avion(ID, modelo, capacidad).
avion(1, 'A320', 180). avion(2, 'Boeing 737', 160).
avion(3, 'A350', 300). avion(4, 'Boeing 787', 250).
avion(5, 'Embraer 190', 100). avion(6, 'A321', 200).
avion(7, 'Boeing 777', 350). avion(8, 'A220', 130).

% vuelo(ID, aerolinea, avion, origen_aeropuerto, destino_aeropuerto, precio).
vuelo(1, 1, 1, 1, 2, 2200). vuelo(2, 1, 2, 1, 3, 1800).
vuelo(3, 1, 6, 2, 1, 2500). vuelo(4, 2, 3, 4, 5, 1200).
vuelo(5, 2, 4, 4, 6, 3800). vuelo(6, 2, 3, 5, 4, 1400).
vuelo(7, 3, 4, 6, 7, 2900). vuelo(8, 3, 3, 6, 4, 3100).
vuelo(9, 4, 5, 7, 12, 900). vuelo(10, 4, 3, 12, 7, 950).
vuelo(11, 5, 2, 8, 9, 700). vuelo(12, 5, 1, 9, 8, 750).
vuelo(13, 6, 7, 10, 11, 1600). vuelo(14, 6, 7, 11, 10, 1550).
vuelo(15, 1, 4, 1, 4, 8900). vuelo(16, 2, 4, 4, 1, 9200).
vuelo(17, 3, 7, 6, 10, 14500). vuelo(18, 6, 7, 10, 6, 15200).

% hotel(ID, nombre, ciudad, categoria_estrellas).
hotel(1, 'Mar Azul Resort', 2, 5). hotel(2, 'Centro Historico Suites', 1, 4).
hotel(3, 'Jardin de Guadalajara', 3, 4). hotel(4, 'Gran Via Hotel', 4, 5).
hotel(5, 'Rambla Boutique', 5, 4). hotel(6, 'Lumiere Paris', 6, 5).
hotel(7, 'Roma Antigua', 7, 4). hotel(8, 'Andes Plaza', 8, 4).
hotel(9, 'Paisa Verde', 9, 3). hotel(10, 'Tokyo Central', 10, 5).
hotel(11, 'Osaka Garden', 11, 4). hotel(12, 'Toscana Inn', 12, 3).

% habitacion(ID, hotel, tipo, precio_noche).
habitacion(1, 1, suite, 4500). habitacion(2, 1, doble, 2800).
habitacion(3, 2, sencilla, 1500). habitacion(4, 2, doble, 2200).
habitacion(5, 3, doble, 1800). habitacion(6, 4, suite, 5200).
habitacion(7, 4, doble, 3100). habitacion(8, 5, sencilla, 2300).
habitacion(9, 6, suite, 6000). habitacion(10, 7, doble, 2700).
habitacion(11, 8, doble, 1900). habitacion(12, 9, sencilla, 1200).
habitacion(13, 10, suite, 7000). habitacion(14, 11, doble, 3000).
habitacion(15, 12, sencilla, 1600). habitacion(16, 3, sencilla, 1300).

% cliente(ID, nombre, correo, pais).
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

% reserva(ID, cliente, vuelo, estado, total).
reserva(1, 1, 1, confirmada, 2200). reserva(2, 1, 4, confirmada, 1200).
reserva(3, 2, 2, confirmada, 1800). reserva(4, 2, 5, pendiente, 3800).
reserva(5, 3, 7, confirmada, 2900). reserva(6, 3, 9, confirmada, 900).
reserva(7, 4, 15, confirmada, 8900). reserva(8, 4, 3, cancelada, 2500).
reserva(9, 5, 11, confirmada, 700). reserva(10, 5, 12, confirmada, 750).
reserva(11, 6, 12, pendiente, 750). reserva(12, 6, 11, confirmada, 700).
reserva(13, 7, 16, confirmada, 9200). reserva(14, 7, 6, confirmada, 1400).
reserva(15, 8, 1, confirmada, 2200). reserva(16, 8, 15, pendiente, 8900).
reserva(17, 9, 8, confirmada, 3100). reserva(18, 9, 5, confirmada, 3800).
reserva(19, 10, 9, confirmada, 900). reserva(20, 10, 10, confirmada, 950).
reserva(21, 11, 3, confirmada, 2500). reserva(22, 11, 2, cancelada, 1800).
reserva(23, 12, 13, confirmada, 1600). reserva(24, 12, 17, pendiente, 14500).
reserva(25, 13, 11, confirmada, 700). reserva(26, 13, 12, confirmada, 750).
reserva(27, 14, 4, confirmada, 1200). reserva(28, 14, 6, confirmada, 1400).
reserva(29, 15, 1, pendiente, 2200). reserva(30, 15, 15, confirmada, 8900).
reserva(31, 16, 5, confirmada, 3800). reserva(32, 16, 7, confirmada, 2900).
reserva(33, 17, 9, confirmada, 900). reserva(34, 17, 10, confirmada, 950).
reserva(35, 18, 14, confirmada, 1550). reserva(36, 18, 18, pendiente, 15200).
reserva(37, 19, 2, confirmada, 1800). reserva(38, 19, 15, confirmada, 8900).
reserva(39, 20, 11, confirmada, 700). reserva(40, 20, 8, pendiente, 3100).

% pasajero(ID, reserva, nombre).
pasajero(1, 1, 'Lucia Gomez'). pasajero(2, 1, 'Mateo Gomez').
pasajero(3, 2, 'Lucia Gomez'). pasajero(4, 3, 'Pedro Sanchez').
pasajero(5, 4, 'Pedro Sanchez'). pasajero(6, 5, 'Marta Ruiz').
pasajero(7, 6, 'Marta Ruiz'). pasajero(8, 7, 'Diego Torres').
pasajero(9, 8, 'Diego Torres'). pasajero(10, 9, 'Sofia Herrera').
pasajero(11, 10, 'Sofia Herrera'). pasajero(12, 11, 'Andres Castro').
pasajero(13, 12, 'Andres Castro'). pasajero(14, 13, 'Camila Rojas').
pasajero(15, 14, 'Camila Rojas'). pasajero(16, 15, 'Javier Morales').
pasajero(17, 16, 'Javier Morales'). pasajero(18, 17, 'Elena Vidal').
pasajero(19, 18, 'Elena Vidal'). pasajero(20, 19, 'Raul Medina').
pasajero(21, 20, 'Raul Medina'). pasajero(22, 21, 'Paula Nunez').
pasajero(23, 22, 'Paula Nunez'). pasajero(24, 23, 'Oscar Vega').
pasajero(25, 24, 'Oscar Vega'). pasajero(26, 25, 'Nora Silva').
pasajero(27, 26, 'Nora Silva'). pasajero(28, 27, 'Hugo Reyes').
pasajero(29, 28, 'Hugo Reyes'). pasajero(30, 29, 'Irene Lara').
pasajero(31, 30, 'Irene Lara'). pasajero(32, 31, 'Mario Fuentes').

% pago(ID, reserva, monto, metodo).
pago(1, 1, 2200, tarjeta). pago(2, 2, 1200, transferencia).
pago(3, 3, 1800, tarjeta). pago(4, 5, 2900, tarjeta).
pago(5, 6, 900, efectivo). pago(6, 7, 8900, tarjeta).
pago(7, 9, 700, transferencia). pago(8, 10, 750, tarjeta).
pago(9, 12, 700, efectivo). pago(10, 13, 9200, tarjeta).
pago(11, 14, 1400, tarjeta). pago(12, 15, 2200, transferencia).
pago(13, 17, 3100, tarjeta). pago(14, 18, 3800, tarjeta).
pago(15, 19, 900, efectivo). pago(16, 20, 950, tarjeta).
pago(17, 21, 2500, transferencia). pago(18, 23, 1600, tarjeta).
pago(19, 25, 700, efectivo). pago(20, 26, 750, tarjeta).
pago(21, 27, 1200, tarjeta). pago(22, 28, 1400, transferencia).
pago(23, 30, 8900, tarjeta). pago(24, 31, 3800, efectivo).
pago(25, 32, 2900, tarjeta). pago(26, 33, 900, transferencia).
pago(27, 34, 950, tarjeta). pago(28, 35, 1550, tarjeta).
pago(29, 37, 1800, efectivo). pago(30, 38, 8900, tarjeta).
pago(31, 39, 700, transferencia).

% destino(ID, ciudad, descripcion).
destino(1, 1, 'Capital cultural y gastronomica'). destino(2, 2, 'Playas del Caribe').
destino(3, 3, 'Tradicion y mariachi'). destino(4, 4, 'Museos y vida nocturna').
destino(5, 5, 'Arquitectura modernista'). destino(6, 6, 'Arte y monumentos').
destino(7, 7, 'Historia romana'). destino(8, 8, 'Cultura y montana').
destino(9, 9, 'Naturaleza y cafe'). destino(10, 10, 'Tecnologia y tradicion').
destino(11, 11, 'Gastronomia japonesa'). destino(12, 12, 'Arte renacentista').

% actividad(ID, destino, nombre, precio).
actividad(1, 1, 'Tour por el centro', 500). actividad(2, 1, 'Museo de Antropologia', 300).
actividad(3, 2, 'Snorkel en arrecife', 1200). actividad(4, 2, 'Tour de cenotes', 900).
actividad(5, 3, 'Ruta del tequila', 1500). actividad(6, 4, 'Tour del Palacio Real', 800).
actividad(7, 5, 'Ruta de Gaudi', 950). actividad(8, 6, 'Crucero por el Sena', 1100).
actividad(9, 7, 'Coliseo y foro', 1300). actividad(10, 8, 'Monserrate', 600).
actividad(11, 9, 'Tour de cafe', 1000). actividad(12, 10, 'Templos de Tokio', 750).
actividad(13, 11, 'Clase de cocina', 1400). actividad(14, 12, 'Galeria Uffizi', 1000).

% opinion(ID, cliente, destino, puntuacion).
opinion(1, 1, 2, 5). opinion(2, 2, 1, 4). opinion(3, 3, 4, 5).
opinion(4, 4, 6, 4). opinion(5, 5, 8, 5). opinion(6, 6, 9, 4).
opinion(7, 7, 5, 5). opinion(8, 8, 2, 3). opinion(9, 9, 6, 5).
opinion(10, 10, 7, 4). opinion(11, 11, 3, 5). opinion(12, 12, 10, 5).
opinion(13, 13, 9, 4). opinion(14, 14, 4, 3). opinion(15, 15, 2, 5).
opinion(16, 16, 5, 4). opinion(17, 17, 12, 5). opinion(18, 18, 10, 4).
opinion(19, 19, 1, 5). opinion(20, 20, 8, 4).

% ---------------------- CONSULTAS (2 POR TABLA) ---------------------
% pais/2
paises_con_ciudades(Pais, Ciudad) :- pais(ID, Pais), ciudad(_, Ciudad, ID).
cantidad_ciudades_por_pais(Pais, Cantidad) :- pais(ID, Pais), findall(CiudadID, ciudad(CiudadID, _, ID), Cs), length(Cs, Cantidad).
% ciudad/3
ciudades_de_pais(Pais, Ciudad) :- pais(ID, Pais), ciudad(_, Ciudad, ID).
destinos_conocidos(Ciudad, Descripcion) :- ciudad(ID, Ciudad, _), destino(_, ID, Descripcion).
% aeropuerto/3
aeropuertos_de_ciudad(Ciudad, Aeropuerto) :- ciudad(ID, Ciudad, _), aeropuerto(_, Aeropuerto, ID).
vuelos_que_salen_de(Ciudad, Aerolinea, Destino) :- aeropuerto(O, _, C), ciudad(C, Ciudad, _), vuelo(_, A, _, O, D, _), aerolinea(A, Aerolinea, _), aeropuerto(D, _, DC), ciudad(DC, Destino, _).
% aerolinea/3
aerolineas_de_pais(Pais, Aerolinea) :- pais(ID, Pais), aerolinea(_, Aerolinea, ID).
vuelos_por_aerolinea(Aerolinea, Cantidad) :- aerolinea(ID, Aerolinea, _), findall(V, vuelo(V, ID, _, _, _, _), Vs), length(Vs, Cantidad).
% avion/3
aviones_de_alta_capacidad(Modelo, Capacidad) :- avion(_, Modelo, Capacidad), Capacidad >= 200.
vuelos_con_avion(Modelo, Vuelo) :- avion(ID, Modelo, _), vuelo(Vuelo, _, ID, _, _, _).
% vuelo/6
vuelos_baratos(PrecioMaximo, Aerolinea, Origen, Destino, Precio) :- vuelo(_, A, _, O, D, Precio), Precio =< PrecioMaximo, aerolinea(A, Aerolinea, _), aeropuerto(O, _, CO), ciudad(CO, Origen, _), aeropuerto(D, _, CD), ciudad(CD, Destino, _).
vuelos_internacionales(Vuelo, Origen, Destino) :- vuelo(Vuelo, _, _, O, D, _), aeropuerto(O, _, CO), aeropuerto(D, _, CD), ciudad(CO, Origen, PO), ciudad(CD, Destino, PD), PO \= PD.
% hotel/4
hoteles_por_categoria(Categoria, Nombre, Ciudad) :- hotel(_, Nombre, C, Categoria), ciudad(C, Ciudad, _).
hoteles_con_habitacion_barata(Nombre, Precio) :- hotel(H, Nombre, _, _), habitacion(_, H, _, Precio), Precio < 2000.
% habitacion/4
habitaciones_por_tipo(Tipo, Hotel, Precio) :- habitacion(_, H, Tipo, Precio), hotel(H, Hotel, _, _).
habitaciones_premium(Hotel, Precio) :- habitacion(_, H, _, Precio), Precio >= 5000, hotel(H, Hotel, _, _).
% cliente/4
clientes_por_pais(Pais, Cliente) :- pais(ID, Pais), cliente(_, Cliente, _, ID).
clientes_con_reservas(Cliente, Cantidad) :- cliente(ID, Cliente, _, _), findall(R, reserva(R, ID, _, _, _), Rs), length(Rs, Cantidad), Cantidad > 0.
% reserva/5
reservas_confirmadas(Cliente, Vuelo, Total) :- reserva(_, C, Vuelo, confirmada, Total), cliente(C, Cliente, _, _).
gasto_confirmado_cliente(Cliente, Total) :- cliente(C, Cliente, _, _), findall(M, reserva(_, C, _, confirmada, M), Ms), sum_list(Ms, Total).
% pasajero/3
pasajeros_de_reserva(Reserva, Nombre) :- pasajero(_, Reserva, Nombre).
reservas_con_varios_pasajeros(Reserva, Cantidad) :- reserva(Reserva, _, _, _, _), findall(P, pasajero(_, Reserva, P), Ps), length(Ps, Cantidad), Cantidad > 1.
% pago/4
pagos_por_metodo(Metodo, Cantidad) :- findall(ID, pago(ID, _, _, Metodo), IDs), length(IDs, Cantidad).
total_recaudado(Total) :- findall(Monto, pago(_, _, Monto, _), Montos), sum_list(Montos, Total).
% destino/3
destinos_de_pais(Pais, Ciudad) :- pais(P, Pais), ciudad(C, Ciudad, P), destino(_, C, _).
destinos_mejor_calificados(Ciudad, Promedio) :- destino(D, C, _), ciudad(C, Ciudad, _), findall(N, opinion(_, _, D, N), Ns), Ns \= [], sum_list(Ns, S), length(Ns, L), Promedio is S/L.
% actividad/4
actividades_por_destino(Ciudad, Actividad, Precio) :- destino(D, C, _), ciudad(C, Ciudad, _), actividad(_, D, Actividad, Precio).
actividades_economicas(Actividad, Precio) :- actividad(_, _, Actividad, Precio), Precio =< 800.
% opinion/4
opiniones_de_cliente(Cliente, CiudadDestino, Puntuacion) :- opinion(_, C, D, Puntuacion), cliente(C, Cliente, _, _), destino(D, CI, _), ciudad(CI, CiudadDestino, _).
promedio_opiniones_destino(Ciudad, Promedio) :- destino(D, C, _), ciudad(C, Ciudad, _), findall(N, opinion(_, _, D, N), Ns), Ns \= [], sum_list(Ns, S), length(Ns, L), Promedio is S/L.

% -------------------- LISTADOS SIN USAR PUNTO Y COMA -----------------
% Cada listar_* imprime todas las respuestas de su consulta y termina.
listar_paises_con_ciudades :- forall(paises_con_ciudades(P, C), writeln(pais_ciudad(P, C))).
listar_cantidad_ciudades_por_pais :- forall(cantidad_ciudades_por_pais(P, N), writeln(ciudades(P, N))).
listar_ciudades_de_pais :- forall(ciudades_de_pais('Mexico', C), writeln(ciudad(C))).
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
listar_destinos_mejor_calificados :- forall(destinos_mejor_calificados(C, P), writeln(promedio_destino(C, P))).
listar_actividades_por_destino :- forall(actividades_por_destino('Cancun', A, P), writeln(actividad_cancun(A, P))).
listar_actividades_economicas :- forall(actividades_economicas(A, P), writeln(actividad_economica(A, P))).
listar_opiniones_de_cliente :- forall(opiniones_de_cliente('Lucia Gomez', D, P), writeln(opinion_lucia(D, P))).
listar_promedio_opiniones_destino :- forall(promedio_opiniones_destino(C, P), writeln(promedio_opinion(C, P))).

% Nota: el total de hechos supera 200; las 15 tablas participan en consultas.
