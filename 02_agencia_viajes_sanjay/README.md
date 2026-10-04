# 02 — Agencia de viajes: adaptación del repositorio Sanjay

**Autor y fuente del esquema/datos SQL:** [Sanjay-RK-27/Travel-Agency-System](https://github.com/Sanjay-RK-27/Travel-Agency-System), revisión `d1139ed15c25be332fbb7007759a2c4a41d10312`.

| Archivo | Uso | Registros |
| --- | --- | ---: |
| `original.pl` | Conversión de los INSERT y los 14 predicados originales, en inglés; no es un .pl publicado por el autor | 558 |
| `agencia_viajes_14_tablas.pl` | Misma colección de 558 hechos originales **más reglas académicas añadidas** | 558 |
| `agencia_viajes_es_80.pl` | Predicados traducidos al español, hechos originales conservados y ampliación **sintética** | 1,157 |

Todos los predicados de la versión española cuentan con al menos 80 hechos; la tabla puente `reserva_pasajero/3` tiene 117 porque representa relaciones entre reservas y pasajeros. **Las 599 filas añadidas no provienen de la fuente pública.** La tabla `tipo_transporte` se amplió de 6 a 80 con categorías ficticias para la práctica: esa ampliación no equivale al modelo de negocio original.

La traducción es de **nombres de predicados y comentarios de los campos**, no de todos los valores literales. Los datos originales en inglés se conservan para poder contrastarlos.

**SQL de referencia:** [esquema](https://github.com/Sanjay-RK-27/Travel-Agency-System/blob/d1139ed15c25be332fbb7007759a2c4a41d10312/sql/create_schema_mysql.sql), [INSERT](https://github.com/Sanjay-RK-27/Travel-Agency-System/blob/d1139ed15c25be332fbb7007759a2c4a41d10312/sql/populate_data_mysql.sql), [diagrama EER](https://github.com/Sanjay-RK-27/Travel-Agency-System/blob/d1139ed15c25be332fbb7007759a2c4a41d10312/EER-Diagram.pdf) y [licencia](https://github.com/Sanjay-RK-27/Travel-Agency-System/blob/d1139ed15c25be332fbb7007759a2c4a41d10312/LICENSE) (Apache 2.0).

La conversión no ejecuta claves foráneas, disparadores ni actualizaciones SQL al cargarla en Prolog. En particular, el SQL calcula después el costo total de las reservas con un `UPDATE`; en los hechos convertidos se conserva el valor inicial `null`. Las comprobaciones de relaciones hechas para esta entrega fueron **estáticas**, no una ejecución de MySQL o SWI-Prolog. Consulta `../documentacion/AUDITORIA.md`.

**Carga una sola versión a la vez**. Ejemplo:

```prolog
?- ['agencia_viajes_es_80.pl'].
?- ubicacion(1, Ciudad, Estado, Pais).
?- reserva_pasajero(Reserva, Pasajero, EsPrincipal).
```
