# Auditoría de procedencia y estructura

Fecha de revisión: 4 de octubre de 2026. Se revisaron los archivos del repositorio `Angixs-zz/trabajo3PLF` y las fuentes públicas indicadas abajo.

## Resumen comprobado

1. **Ejercicio inicial:** `ejercicio3_bd.pl` tiene **15 tablas** (no 10) y todas alcanzan al menos 70 hechos. Sus archivos de consultas documentan **30 consultas por tabla (2 × 15)** y otras **2 consultas generales**. Se comprobó que los 32 comandos `listar_...` aparecen definidos en el `.pl`.
2. **Fuente Sanjay:** el SQL crea **14 tablas**. El archivo `original.pl` tiene **558 hechos**. Se compararon los campos y sus valores contra los INSERT del archivo SQL; **no hubo discrepancias** después de normalizar la representación de números, `NULL` y booleanos y reconstruir los ID autoincrementales. La tabla `TransportationType` se inicializa con 6 hechos desde el script del esquema, no desde `populate_data_mysql.sql`.
3. **Variante con reglas:** `agencia_viajes_14_tablas.pl` tiene exactamente los mismos 558 hechos que `original.pl`, y añade reglas de consulta académicas.
4. **Versión española:** `agencia_viajes_es_80.pl` conserva sin cambios de contenido los 558 hechos iniciales (únicamente traduce nombres de predicados), y agrega **599 hechos sintéticos**; total **1,157**. Se comprobaron los prefijos de hechos de las 14 tablas y las claves foráneas declaradas en el esquema SQL. **No aparecieron referencias a IDs inexistentes** en las dos versiones de Sanjay.
5. **Fuente Wosheng:** su `database/schema.sql` define **33 tablas**, que corresponden por nombre a 33 predicados de `agencia_viajes_publica.pl` (**2,144 hechos**). No se comprobó la igualdad de todos sus valores frente a `database/seed.sql`.

## Cantidad por tabla de la fuente Sanjay

| Tabla SQL / predicado original | Predicado traducido | SQL original | Versión ampliada |
| --- | --- | ---: | ---: |
| Location / location | ubicacion | 40 | 80 |
| Passenger / passenger | pasajero | 35 | 80 |
| Employee / employee | empleado | 30 | 80 |
| Accommodation / accommodation | alojamiento | 35 | 80 |
| TransportationType / transportationtype | tipo_transporte | 6 | 80 |
| Flight / flight | vuelo | 40 | 80 |
| CarRental / carrental | alquiler_auto | 30 | 80 |
| Cruise / cruise | crucero | 30 | 80 |
| Booking / booking | reserva | 50 | 80 |
| BookingPassenger / bookingpassenger | reserva_pasajero | 72 | 117 |
| BookingAccommodation / bookingaccommodation | reserva_alojamiento | 50 | 80 |
| BookingTransportation / bookingtransportation | reserva_transporte | 50 | 80 |
| Payment / payment | pago | 50 | 80 |
| Review / review | opinion | 40 | 80 |
| **Total** | | **558** | **1,157** |

`reserva_pasajero` es una tabla puente; se repiten los ID de reserva porque una reserva puede tener más de un pasajero. No se trata de claves primarias duplicadas de una tabla convencional de un único ID.

## Correcciones exclusivamente sintéticas

Se revisaron y corrigieron en `agencia_viajes_es_80.pl` los **40 estados** de las ubicaciones mexicanas añadidas, **30 valores de género** discordantes con los personajes ficticios usados en la generación y **23 campos de tarjetas** de pagos ficticios (sin datos de tarjeta para efectivo/transferencia y completando los ejemplos de tarjeta de crédito). No se cambiaron los hechos procedentes de los scripts SQL.

## Límites que deben explicarse al profesor

- `original.pl` es una **conversión académica a Prolog**, no un archivo originalmente publicado por Sanjay. Las relaciones y sus valores proceden de sus scripts SQL; este repositorio no contiene el software Flask/MySQL original completo.
- El SQL fuente aplica al final un `UPDATE Booking` para calcular `TotalCost`. El `.pl` conserva los `null` de los INSERT originales; no reproduce el estado final de una base MySQL después de ejecutar el UPDATE.
- En Prolog no se hacen cumplir automáticamente las restricciones MySQL (`PRIMARY KEY`, `FOREIGN KEY`, `UNIQUE`, `CHECK`, `ENUM` y disparadores). La prueba de referencias fue estática sobre los campos FK declarados; no sustituye la ejecución del motor ni verifica todas las reglas de negocio.
- Los **74 tipos de transporte inventados** (ID 7 a 80) son una decisión didáctica para alcanzar el mínimo de 80 hechos por predicado. En una implementación de producción se conservarían las seis categorías reales; no se deben atribuir las 74 categorías nuevas a Sanjay.
- La versión en español traduce nombres y comentarios de campos, **no todos los literales** (por ejemplo, nombres de ciudades, categorías, estados de reserva).
- Las consultas `consultas_ejercicio3.txt` y su explicación **son únicamente de `ejercicio3_bd.pl`**. No equivalen a 2 consultas por cada tabla de la base ampliada de Sanjay: ese trabajo, si se requiere, debe elaborarse aparte.
- La condición indicada para la primera entrega era de **10 tablas**. Se detectaron **15**: supera un mínimo de 10, pero no equivale a una exigencia de exactamente 10.
- No se ejecutó SWI-Prolog ni MySQL durante la auditoría. Los resultados citados son comprobaciones textuales y estructurales de código, datos, IDs y relaciones.

## Fuentes verificables

- Sanjay-RK-27, [Travel-Agency-System](https://github.com/Sanjay-RK-27/Travel-Agency-System), commit `d1139ed15c25be332fbb7007759a2c4a41d10312`: [DDL SQL](https://github.com/Sanjay-RK-27/Travel-Agency-System/blob/d1139ed15c25be332fbb7007759a2c4a41d10312/sql/create_schema_mysql.sql), [datos SQL](https://github.com/Sanjay-RK-27/Travel-Agency-System/blob/d1139ed15c25be332fbb7007759a2c4a41d10312/sql/populate_data_mysql.sql), [EER](https://github.com/Sanjay-RK-27/Travel-Agency-System/blob/d1139ed15c25be332fbb7007759a2c4a41d10312/EER-Diagram.pdf) y [LICENSE](https://github.com/Sanjay-RK-27/Travel-Agency-System/blob/d1139ed15c25be332fbb7007759a2c4a41d10312/LICENSE) (Apache 2.0).
- WoshengDeng, [travel-agency-system](https://github.com/WoshengDeng/travel-agency-system), commit `35c392168896b3ec4f1aee7366352e9bd8dbe62f`: [esquema](https://github.com/WoshengDeng/travel-agency-system/blob/35c392168896b3ec4f1aee7366352e9bd8dbe62f/database/schema.sql), [datos](https://github.com/WoshengDeng/travel-agency-system/blob/35c392168896b3ec4f1aee7366352e9bd8dbe62f/database/seed.sql).
