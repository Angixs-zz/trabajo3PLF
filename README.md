# Trabajo 3 — Bases de datos en SWI-Prolog

Repositorio organizado para distinguir el ejercicio elaborado en clase de las adaptaciones de bases de datos públicas. Cada carpeta es independiente: **no cargues simultáneamente todos los archivos `.pl`**, pues algunas tablas comparten nombres de predicados.

## Carpetas y entregables

| Carpeta | Contenido | Procedencia |
| --- | --- | --- |
| [01_ejercicio3_bd](01_ejercicio3_bd/) | Base inicial, consultas y explicación | Ejercicio académico desarrollado antes de seleccionar una fuente pública |
| [02_agencia_viajes_sanjay](02_agencia_viajes_sanjay/) | Conversión original a Prolog (14 tablas), variante con reglas y ampliación española de ≥80 registros por tabla | Adaptación del SQL de Sanjay-RK-27 |
| [03_fuente_alternativa_wosheng](03_fuente_alternativa_wosheng/) | Otra conversión a Prolog, basada en **otro** esquema de 33 tablas | Adaptación del SQL de WoshengDeng |
| [documentacion](documentacion/) | Auditoría, conteos, correspondencia con la fuente y límites de la adaptación | Verificaciones del trabajo |

### 1. Ejercicio 3 — base inicial

- `ejercicio3_bd.pl`: **15 tablas**, todas con 70 registros como mínimo.
- `consultas_ejercicio3.txt`: **30 consultas por tabla (2 para cada una de las 15)** y **2 consultas generales adicionales**, es decir, 32 comandos documentados.
- `explicacion_consultas_ejercicio3.txt`: explicación de los comandos anteriores.

En SWI-Prolog, abre esa carpeta y ejecuta:

```prolog
?- ['ejercicio3_bd.pl'].
?- listar_paises_con_ciudades.
```

**Atención:** el ejercicio contiene 15 tablas, no 10. Cumple un requisito de «al menos 10», pero si el profesor exige *exactamente* 10 hay que acordar cuáles conservar antes de entregar.

### 2. Agencia de viajes — fuente Sanjay (14 tablas)

- `original.pl`: hechos convertidos desde el SQL de la fuente, en inglés (**558 hechos**).
- `agencia_viajes_14_tablas.pl`: los mismos **558 hechos** y reglas académicas adicionales.
- `agencia_viajes_es_80.pl`: predicados en español y **1,157 hechos**; se conservan los 558 originales y se añaden **599 hechos sintéticos**. Todas las tablas tienen al menos 80; `reserva_pasajero` tiene 117 relaciones.
- `LICENSE-ORIGEN-SANJAY.txt`: licencia Apache 2.0 del repositorio de referencia.

Para la **versión ampliada** abre solo este archivo:

```prolog
?- ['agencia_viajes_es_80.pl'].
?- aggregate_all(count, ubicacion(_,_,_,_), Cantidad).
```

Fuente: [Sanjay-RK-27/Travel-Agency-System](https://github.com/Sanjay-RK-27/Travel-Agency-System), revisión [d1139ed](https://github.com/Sanjay-RK-27/Travel-Agency-System/commit/d1139ed15c25be332fbb7007759a2c4a41d10312). Archivos usados: [esquema SQL](https://github.com/Sanjay-RK-27/Travel-Agency-System/blob/main/sql/create_schema_mysql.sql), [datos SQL](https://github.com/Sanjay-RK-27/Travel-Agency-System/blob/main/sql/populate_data_mysql.sql) y [diagrama EER](https://github.com/Sanjay-RK-27/Travel-Agency-System/blob/main/EER-Diagram.pdf).

### 3. Fuente alternativa — Wosheng

`agencia_viajes_publica.pl` procede de [WoshengDeng/travel-agency-system](https://github.com/WoshengDeng/travel-agency-system), revisión [35c3921](https://github.com/WoshengDeng/travel-agency-system/commit/35c392168896b3ec4f1aee7366352e9bd8dbe62f). Es una **base distinta, de 33 tablas**, y no debe presentarse como la fuente de los 14 predicados de Sanjay.

## Antes de entregar

Consulta [documentacion/AUDITORIA.md](documentacion/AUDITORIA.md) para conocer exactamente qué se comparó, qué se corrigió, qué datos fueron inventados para el ejercicio y las limitaciones de la conversión SQL → Prolog. El primer ejercicio tiene sus propias consultas; **esas consultas no son de la base Sanjay ampliada**.
