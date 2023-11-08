--
-- PostgreSQL database dump
--

-- Dumped from database version 14.9
-- Dumped by pg_dump version 14.9

-- Started on 2023-11-08 10:27:28

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 209 (class 1259 OID 33101)
-- Name: alumno_materias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumno_materias (
    id integer NOT NULL,
    matricula_alumno character varying(10) NOT NULL,
    ncr_materias integer NOT NULL
);


ALTER TABLE public.alumno_materias OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 33104)
-- Name: alumno-materias_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.alumno_materias ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."alumno-materias_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 211 (class 1259 OID 33105)
-- Name: alumnos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumnos (
    id integer NOT NULL,
    nombre character varying(60) NOT NULL,
    matricula character varying(10) NOT NULL,
    sexo character varying(10) NOT NULL,
    licenciatura character varying(30) NOT NULL
);


ALTER TABLE public.alumnos OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 33108)
-- Name: alumnos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.alumnos ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.alumnos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 213 (class 1259 OID 33109)
-- Name: cuenta_alumnos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cuenta_alumnos (
    matricula character varying NOT NULL,
    correo character varying(30) NOT NULL,
    "contraseña" character varying(8) NOT NULL,
    url_imagen character varying(250) NOT NULL
);


ALTER TABLE public.cuenta_alumnos OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 33114)
-- Name: cuenta_docentes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cuenta_docentes (
    no_personal integer NOT NULL,
    correo character varying(50) NOT NULL,
    "contraseña" character varying(8) NOT NULL,
    url_imagen character varying(250) NOT NULL
);


ALTER TABLE public.cuenta_docentes OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 33117)
-- Name: docente_materias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.docente_materias (
    id integer NOT NULL,
    numero_personal integer NOT NULL,
    ncr_materia integer NOT NULL
);


ALTER TABLE public.docente_materias OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 33120)
-- Name: docente-materias_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.docente_materias ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."docente-materias_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 217 (class 1259 OID 33121)
-- Name: docentes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.docentes (
    id integer NOT NULL,
    nombre character varying(60) NOT NULL,
    no_personal integer NOT NULL,
    sexo character varying(10) NOT NULL,
    facultad character varying(30) NOT NULL,
    cargo character varying(20) NOT NULL
);


ALTER TABLE public.docentes OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 33124)
-- Name: docentes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.docentes ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.docentes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 41185)
-- Name: materia_salon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.materia_salon (
    id integer NOT NULL,
    nrc integer NOT NULL,
    salon integer NOT NULL,
    edificio integer NOT NULL,
    lunes character varying(15),
    martes character varying(15),
    miercoles character varying(15),
    jueves character varying(15),
    viernes character varying(15)
);


ALTER TABLE public.materia_salon OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 41184)
-- Name: materia_salon_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.materia_salon ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.materia_salon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 219 (class 1259 OID 33125)
-- Name: materias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.materias (
    id integer NOT NULL,
    licenciatura character varying(30) NOT NULL,
    nombre character varying(100) NOT NULL,
    turno character varying(10) NOT NULL,
    nrc integer NOT NULL,
    grupo integer NOT NULL,
    horasemana integer NOT NULL
);


ALTER TABLE public.materias OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 33128)
-- Name: materias_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.materias ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.materias_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3359 (class 0 OID 33101)
-- Dependencies: 209
-- Data for Name: alumno_materias; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (1, '21004503', 89012);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (2, 'S20020309', 16234);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (3, 'S20020309', 56789);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (4, 'S20020309', 67390);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (5, 'S20020309', 95345);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (6, 'S20020309', 78601);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (7, 'S20020309', 23056);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (8, 'S20020309', 86012);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (9, 'S20020309', 34967);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (10, 'S19004895', 16234);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (11, 'S19004895', 56789);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (12, 'S19004895', 67390);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (13, 'S19004895', 95345);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (14, 'S19004895', 78601);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (15, 'S19004895', 23056);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (16, 'S19004895', 86012);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (17, 'S19004895', 34967);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (18, 'S20006737', 16234);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (19, 'S20006737', 56789);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (20, 'S20006737', 67390);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (21, 'S20006737', 95345);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (22, 'S20006737', 78601);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (23, 'S20006783', 16234);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (24, 'S20006783', 56789);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (25, 'S20006783', 67390);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (26, 'S20006783', 95345);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (27, 'S20006783', 78601);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (28, 'S20006784', 16234);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (29, 'S20006784', 56789);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (30, 'S20006784', 67390);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (31, 'S20006784', 95345);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (32, 'S20006784', 78601);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (33, 'S20006735', 16234);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (34, 'S20006735', 56789);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (35, 'S20006735', 67390);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (36, 'S20006735', 95345);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (37, 'S20006735', 78601);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (38, 'S20006756', 16234);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (39, 'S20006756', 56789);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (40, 'S20006756', 67390);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (41, 'S20006756', 95345);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (42, 'S20006756', 78601);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (43, 'S20020311', 16234);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (44, 'S20020311', 56789);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (45, 'S20020311', 67390);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (46, 'S20020311', 95345);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (47, 'S20020311', 78601);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (48, 'S20020316', 16234);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (49, 'S20020316', 56789);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (50, 'S20020316', 67390);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (51, 'S20020316', 95345);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (52, 'S20020316', 78601);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (53, 'S20006732', 16234);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (54, 'S20006732', 56789);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (55, 'S20006732', 67390);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (56, 'S20006732', 95345);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (57, 'S20006732', 78601);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (58, 'S20006730', 16234);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (59, 'S20006730', 56789);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (60, 'S20006730', 67390);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (61, 'S20006730', 95345);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (62, 'S20006730', 78601);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (63, 'S20006728', 16234);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (64, 'S20006728', 56789);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (65, 'S20006728', 67390);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (66, 'S20006728', 95345);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (67, 'S20006728', 78601);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (68, 'S20006748', 16234);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (69, 'S20006748', 56789);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (70, 'S20006748', 67390);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (71, 'S20006748', 95345);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (72, 'S20006748', 78601);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (73, 'S20006761', 16234);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (74, 'S20006761', 56789);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (75, 'S20006761', 67390);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (76, 'S20006761', 95345);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (77, 'S20006761', 78601);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (78, 'S19004877', 16234);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (79, 'S19004877', 56789);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (80, 'S19004877', 67390);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (81, 'S19004877', 95345);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (82, 'S19004877', 78601);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (83, 'S20006742', 16234);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (84, 'S20006742', 56789);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (85, 'S20006742', 67390);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (86, 'S20006742', 95345);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (87, 'S20006742', 78601);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (88, 'S20006770', 16234);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (89, 'S20006770', 56789);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (90, 'S20006770', 67390);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (91, 'S20006770', 95345);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (92, 'S20006770', 78601);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (93, 'S20006732', 98125);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (94, 'S20006732', 98125);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (95, 'S20006730', 98125);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (96, 'S20006728', 98125);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (97, 'S20006748', 98125);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (98, 'S20006761', 98125);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (99, 'S19004877', 98125);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (100, 'S20006742', 98125);
INSERT INTO public.alumno_materias (id, matricula_alumno, ncr_materias) OVERRIDING SYSTEM VALUE VALUES (101, 'S20006770', 98125);


--
-- TOC entry 3361 (class 0 OID 33105)
-- Dependencies: 211
-- Data for Name: alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (1, 'Magdyel Aguilar Cid', 'S20020309', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (2, 'Christian Eduardo Amaro Reyes', 'S19004895', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (3, 'Heriberto Arriola Peztaña', 'S20006737', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (4, 'Jaime Ivan Avila Muñoz', 'S20006783', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (5, 'Yareli Sugey Bravo Morales', 'S20006784', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (6, 'Irving Rafael Conde Marin', 'S20006735', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (7, 'Juan David Delgado Muñoz', 'S20006756', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (8, 'Yolotzin Groth Hernandez', 'S20020311', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (9, 'Angel Guarneros Maldonado', 'S20020316', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (10, 'Yahir Jesus Jacome Cogco', 'S20006732', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (11, 'Carlos Arturo Jose Fragoso', 'S20006730', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (12, 'Erick Juarez Espinosa', 'S20006728', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (13, 'Rodrigo Mencias Gonzalez', 'S20006748', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (14, 'Itzel Mendez Martinez', 'S20006761', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (15, 'Jesus Saith Meneses Conde', 'S19004877', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (16, 'Axel Gustavo Peña Sanchez', 'S20006742', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (17, 'Adriel Eduardo Peregrina Soto', 'S20006770', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (18, 'Fhatima Reyes Alejandre', 'S20006773', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (19, 'Zurisaddai Reyes Juarez', 'S20006762', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (20, 'Lilliam Romero Reyes', 'S20006765', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (21, 'Anahi Ximena Sanchez Vasquez', 'S20006727', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (22, 'Aaron Emiliano Torres Nuñez', 'S20006726', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (23, 'Bryan Valerio Reyes', 'S20006768', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (24, 'Wendy Belen Vallejo Patraca', 'S20006733', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (25, 'Maria Gonzalez Lopez', 'S20010001', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (26, 'Juan Rodriguez Ramirez', 'S20010002', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (27, 'Carlos Martinez Hernandez', 'S20010003', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (28, 'Sofia Luna Garcia', 'S20010004', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (29, 'Luis Sanchez Rodriguez', 'S20010005', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (30, 'Ana Flores Martinez', 'S20010006', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (31, 'Jorge Gutierrez Ramos', 'S20010007', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (32, 'Eva Morales Perez', 'S20010008', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (33, 'Pedro Lopez Hernandez', 'S20010009', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (34, 'Lucia Castro Gomez', 'S20010010', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (35, 'Fernando Robles Jimenez', 'S20010011', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (36, 'Maria Garcia Cruz', 'S20010012', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (37, 'Javier Hernandez Lopez', 'S20010013', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (38, 'Raquel Diaz Sanchez', 'S20010014', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (39, 'Carla Ortega Martinez', 'S20010015', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (40, 'Jorge Torres Ruiz', 'S20010016', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (41, 'Luis Silva Perez', 'S20010017', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (42, 'Patricia Rojas Garcia', 'S20010018', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (43, 'Francisco Gomez Gonzalez', 'S20010019', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (44, 'Ana Mendez Hernandez', 'S20010020', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (45, 'Andres Juarez Ramirez', 'S20010021', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (46, 'Maria Perez Sanchez', 'S20010022', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (47, 'Carlos Castillo Lopez', 'S20010023', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (48, 'Marta Garcia Martinez', 'S20010024', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (49, 'Javier Hernandez Gonzalez', 'S20010025', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (50, 'Lucia Lopez Perez', 'S20010026', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (51, 'Jorge Martinez Ruiz', 'S20010027', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (52, 'Eva Rodriguez Ramos', 'S20010028', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (53, 'Luis Gonzalez Gomez', 'S20010029', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (54, 'Carla Sanchez Martinez', 'S20010030', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (55, 'Ana Rodriguez Martinez', 'S20020001', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (56, 'Juan Garcia Lopez', 'S20020002', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (57, 'Carlos Martinez Ramirez', 'S20020003', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (58, 'Sofia Lopez Hernandez', 'S20020004', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (59, 'Luis Sanchez Rodriguez', 'S20020005', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (60, 'Angel Flores Perez', 'S20020006', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (61, 'Jorge Gomez Gutierrez', 'S20020007', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (62, 'Eva Morales Hernandez', 'S20020008', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (63, 'Pedro Hernandez Lopez', 'S20020009', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (64, 'Lucia Castro Martinez', 'S20020010', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (65, 'Fernando Robles Ruiz', 'S20020011', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (66, 'Maria Garcia Cruz', 'S20020012', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (67, 'Javier Hernandez Lopez', 'S20020013', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (68, 'Raquel Diaz Martinez', 'S20020014', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (69, 'Carla Ortega Ramirez', 'S20020015', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (70, 'Jorge Torres Lopez', 'S20020016', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (71, 'Luis Silva Hernandez', 'S20020017', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (72, 'Patricia Rojas Ramirez', 'S20020018', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (73, 'Francisco Gomez Ruiz', 'S20020019', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (74, 'Ana Mendez Lopez', 'S20020020', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (75, 'Andres Juarez Martinez', 'S20020021', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (76, 'Maria Perez Ramos', 'S20020022', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (77, 'Carlos Castillo Gomez', 'S20020023', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (78, 'Marta Garcia Martinez', 'S20020024', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (79, 'Javier Hernandez Gonzalez', 'S20020025', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (80, 'Lucia Lopez Perez', 'S20020026', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (81, 'Jorge Martinez Ruiz', 'S20020027', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (82, 'Eva Rodriguez Ramos', 'S20020028', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (83, 'Luis Gonzalez Gomez', 'S20020029', 'Masculino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (84, 'Carla Sanchez Martinez', 'S20020030', 'Femenino', 'ISOF');
INSERT INTO public.alumnos (id, nombre, matricula, sexo, licenciatura) OVERRIDING SYSTEM VALUE VALUES (86, 'Diana', '21004503', 'Femenino', 'Ingenieria de software');


--
-- TOC entry 3363 (class 0 OID 33109)
-- Dependencies: 213
-- Data for Name: cuenta_alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20020309', 'S20020309@estudiantes.uv.mx', '20020309', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S19004895', 'S19004895@estudiantes.uv.mx', '19004895', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20006737', 'S20006737@estudiantes.uv.mx', '20006737', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20006783', 'S20006783@estudiantes.uv.mx', '20006783', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20006784', 'S20006784@estudiantes.uv.mx', '20006784', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20006735', 'S20006735@estudiantes.uv.mx', '20006735', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20006756', 'S20006756@estudiantes.uv.mx', '20006756', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20020311', 'S20020311@estudiantes.uv.mx', '20020311', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20020316', 'S20020316@estudiantes.uv.mx', '20020316', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20006732', 'S20006732@estudiantes.uv.mx', '20006732', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20006730', 'S20006730@estudiantes.uv.mx', '20006730', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20006728', 'S20006728@estudiantes.uv.mx', '20006728', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20006748', 'S20006748@estudiantes.uv.mx', '20006748', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20006761', 'S20006761@estudiantes.uv.mx', '20006761', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S19004877', 'S19004877@estudiantes.uv.mx', '19004877', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20006742', 'S20006742@estudiantes.uv.mx', '20006742', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20006770', 'S20006770@estudiantes.uv.mx', '20006770', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20006773', 'S20006773@estudiantes.uv.mx', '20006773', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20006762', 'S20006762@estudiantes.uv.mx', '20006762', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20006765', 'S20006765@estudiantes.uv.mx', '20006765', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20006727', 'S20006727@estudiantes.uv.mx', '20006727', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20006726', 'S20006726@estudiantes.uv.mx', '20006726', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20006768', 'S20006768@estudiantes.uv.mx', '20006768', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20006733', 'S20006733@estudiantes.uv.mx', '20006733', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20010001', 'S20010001@estudiantes.uv.mx', '20010001', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20010002', 'S20010002@estudiantes.uv.mx', '20010002', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20010003', 'S20010003@estudiantes.uv.mx', '20010003', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20010004', 'S20010004@estudiantes.uv.mx', '20010004', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20010005', 'S20010005@estudiantes.uv.mx', '20010005', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('S20010006', 'S20010006@estudiantes.uv.mx', '20010006', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');
INSERT INTO public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) VALUES ('21004503', 'diana@gmail.com', '12345678', 'gs://heartmodel-caedd.appspot.com/foto-perfil-generica.jpg');


--
-- TOC entry 3364 (class 0 OID 33114)
-- Dependencies: 214
-- Data for Name: cuenta_docentes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cuenta_docentes (no_personal, correo, "contraseña", url_imagen) VALUES (1002, 'Maria.Gonzales@docente.uv.mx', '98765432', 'www.uv.mx/docente/foto');
INSERT INTO public.cuenta_docentes (no_personal, correo, "contraseña", url_imagen) VALUES (1003, 'Martin.Mancilla@docente.uv.mx', '56781234', 'www.uv.mx/docente/foto');
INSERT INTO public.cuenta_docentes (no_personal, correo, "contraseña", url_imagen) VALUES (1004, 'Adolfo.Rodriguez@docente.uv.mx', '87654321', 'www.uv.mx/docente/foto');
INSERT INTO public.cuenta_docentes (no_personal, correo, "contraseña", url_imagen) VALUES (1005, 'Gabriel.Rodriguez@docente.uv.mx', '23456781', 'www.uv.mx/docente/foto');
INSERT INTO public.cuenta_docentes (no_personal, correo, "contraseña", url_imagen) VALUES (1006, 'Agustin.Lagunes@docente.uv.mx', '43218765', 'www.uv.mx/docente/foto');
INSERT INTO public.cuenta_docentes (no_personal, correo, "contraseña", url_imagen) VALUES (1007, 'Adolfo.Centeno@docente.uv.mx', '34567812', 'www.uv.mx/docente/foto');
INSERT INTO public.cuenta_docentes (no_personal, correo, "contraseña", url_imagen) VALUES (1001, 'Jorge.Gonzalez@docente.uv.mx', '12345678', 'https://firebasestorage.googleapis.com/v0/b/beebooks-b76d1.appspot.com/o/notapequenos1.jpg?alt=media&token=f2ac428e-283e-4955-a29c-ab1a2c4d9b18');


--
-- TOC entry 3365 (class 0 OID 33117)
-- Dependencies: 215
-- Data for Name: docente_materias; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.docente_materias (id, numero_personal, ncr_materia) OVERRIDING SYSTEM VALUE VALUES (1, 1001, 89012);
INSERT INTO public.docente_materias (id, numero_personal, ncr_materia) OVERRIDING SYSTEM VALUE VALUES (2, 1001, 98125);
INSERT INTO public.docente_materias (id, numero_personal, ncr_materia) OVERRIDING SYSTEM VALUE VALUES (3, 1001, 16234);
INSERT INTO public.docente_materias (id, numero_personal, ncr_materia) OVERRIDING SYSTEM VALUE VALUES (4, 1001, 56789);
INSERT INTO public.docente_materias (id, numero_personal, ncr_materia) OVERRIDING SYSTEM VALUE VALUES (5, 1001, 67390);
INSERT INTO public.docente_materias (id, numero_personal, ncr_materia) OVERRIDING SYSTEM VALUE VALUES (6, 1001, 95345);
INSERT INTO public.docente_materias (id, numero_personal, ncr_materia) OVERRIDING SYSTEM VALUE VALUES (7, 1001, 78601);


--
-- TOC entry 3367 (class 0 OID 33121)
-- Dependencies: 217
-- Data for Name: docentes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.docentes (id, nombre, no_personal, sexo, facultad, cargo) OVERRIDING SYSTEM VALUE VALUES (1, 'JorgeGonzalez Diaz', 1001, 'Masculino', 'FNT', 'Docente');
INSERT INTO public.docentes (id, nombre, no_personal, sexo, facultad, cargo) OVERRIDING SYSTEM VALUE VALUES (2, 'Maria Dolores Gonzales Martinez', 1002, 'Femenino', 'FNT', 'Docente');
INSERT INTO public.docentes (id, nombre, no_personal, sexo, facultad, cargo) OVERRIDING SYSTEM VALUE VALUES (3, 'Martin Mancilla Gomez', 1003, 'Masculino', 'FNT', 'Docente');
INSERT INTO public.docentes (id, nombre, no_personal, sexo, facultad, cargo) OVERRIDING SYSTEM VALUE VALUES (4, 'Adolfo Rodriguez Parada', 1004, 'Masculino', 'FNT', 'Docente');
INSERT INTO public.docentes (id, nombre, no_personal, sexo, facultad, cargo) OVERRIDING SYSTEM VALUE VALUES (5, 'Gabriel Rodriguez Vasquez', 1005, 'Masculino', 'FNT', 'Docente');
INSERT INTO public.docentes (id, nombre, no_personal, sexo, facultad, cargo) OVERRIDING SYSTEM VALUE VALUES (6, 'Agustin Lagunes Dominguez', 1006, 'Masculino', 'FNT', 'Docente');
INSERT INTO public.docentes (id, nombre, no_personal, sexo, facultad, cargo) OVERRIDING SYSTEM VALUE VALUES (7, 'Adolfo Centeno Tellez', 1007, 'Masculino', 'FNT', 'Docente');


--
-- TOC entry 3372 (class 0 OID 41185)
-- Dependencies: 222
-- Data for Name: materia_salon; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.materia_salon (id, nrc, salon, edificio, lunes, martes, miercoles, jueves, viernes) OVERRIDING SYSTEM VALUE VALUES (1, 89012, 11, 1, '07:00-09:00', NULL, '07:00-09:00', NULL, '07:00-09:00');
INSERT INTO public.materia_salon (id, nrc, salon, edificio, lunes, martes, miercoles, jueves, viernes) OVERRIDING SYSTEM VALUE VALUES (2, 16234, 11, 1, '09:00-11:00', NULL, '09:00-11:00', NULL, '09:00-11:00');
INSERT INTO public.materia_salon (id, nrc, salon, edificio, lunes, martes, miercoles, jueves, viernes) OVERRIDING SYSTEM VALUE VALUES (3, 56789, 11, 1, '11:00-13:00', NULL, '11:00-13:00', NULL, '11:00-13:00');
INSERT INTO public.materia_salon (id, nrc, salon, edificio, lunes, martes, miercoles, jueves, viernes) OVERRIDING SYSTEM VALUE VALUES (4, 67390, 11, 1, '13:00-15:00', NULL, '13:00-15:00', NULL, '13:00-15:00');
INSERT INTO public.materia_salon (id, nrc, salon, edificio, lunes, martes, miercoles, jueves, viernes) OVERRIDING SYSTEM VALUE VALUES (5, 95345, 11, 1, '15:00-17:00', NULL, '15:00-17:00', NULL, '15:00-17:00');
INSERT INTO public.materia_salon (id, nrc, salon, edificio, lunes, martes, miercoles, jueves, viernes) OVERRIDING SYSTEM VALUE VALUES (6, 78601, 11, 1, '17:00-19:00', NULL, '17:00-19:00', NULL, '17:00-19:00');
INSERT INTO public.materia_salon (id, nrc, salon, edificio, lunes, martes, miercoles, jueves, viernes) OVERRIDING SYSTEM VALUE VALUES (7, 12545, 1, 1, '09:00-11:00', '09:00-11:00', '09:00-11:00', '09:00-11:00', '09:00-11:00');


--
-- TOC entry 3369 (class 0 OID 33125)
-- Dependencies: 219
-- Data for Name: materias; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (1, 'ISW', 'Ingles I', 'Matutino', 16645, 101, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (2, 'ISW', 'Ingles I', 'Vespertino', 67891, 102, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (3, 'ISW', 'Ingles II', 'Matutino', 23776, 201, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (4, 'ISW', 'Ingles II', 'Vespertino', 74901, 202, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (5, 'ISW', 'Computacion basica', 'Matutino', 34767, 101, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (6, 'ISW', 'Computacion basica', 'Vespertino', 83712, 102, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (7, 'ISW', 'Introduccion a la programacion', 'Matutino', 45778, 101, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (8, 'ISW', 'Introduccion a la programacion', 'Vespertino', 97123, 102, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (9, 'ISW', 'Fundamentos de matematicos', 'Matutino', 56749, 101, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (10, 'ISW', 'Fundamentos de matematicos', 'Vespertino', 51334, 102, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (11, 'ISW', 'Habilidades del pensamiento critico y creativo', 'Matutino', 67840, 101, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (12, 'ISW', 'Habilidades del pensamiento critico y creativo', 'Vespertino', 14545, 102, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (13, 'ISW', 'Lectura y redaccion a traves del analisis del mundo contemporaneo', 'Matutino', 58701, 101, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (14, 'ISW', 'Lectura y redaccion a traves del analisis del mundo contemporaneo', 'Vespertino', 28456, 102, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (15, 'ISW', 'Laboratorio de resolucion de problemas', 'Matutino', 89712, 201, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (16, 'ISW', 'Laboratorio de resolucion de problemas', 'Vespertino', 38367, 202, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (17, 'ISW', 'Programacion', 'Matutino', 90873, 201, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (18, 'ISW', 'Programacion', 'Vespertino', 45328, 202, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (19, 'ISW', 'Algebra lineal para computacion', 'Matutino', 56689, 201, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (20, 'ISW', 'Algebra lineal para computacion', 'Vespertino', 67934, 202, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (21, 'ISW', 'Habilidades de comunicacion', 'Matutino', 67870, 201, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (22, 'ISW', 'Habilidades de comunicacion', 'Vespertino', 14345, 202, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (23, 'ISW', 'Matematicas discretas', 'Matutino', 23476, 201, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (24, 'ISW', 'Matematicas discretas', 'Vespertino', 78801, 202, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (25, 'ISW', 'Requerimientos de software', 'Matutino', 33567, 301, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (26, 'ISW', 'Requerimientos de software', 'Vespertino', 88012, 302, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (27, 'ISW', 'Estructura de datos', 'Matutino', 45878, 301, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (28, 'ISW', 'Estructura de datos', 'Vespertino', 98125, 302, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (29, 'ISW', 'Bases de datos', 'Matutino', 50749, 301, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (30, 'ISW', 'Bases de datos', 'Vespertino', 31274, 302, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (31, 'ISW', 'Sistemas operativos', 'Matutino', 64890, 301, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (32, 'ISW', 'Sistemas operativos', 'Vespertino', 22456, 302, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (33, 'ISW', 'Probabilidad y estadistica para computacion', 'Matutino', 78401, 301, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (34, 'ISW', 'Probabilidad y estadistica para computacion', 'Vespertino', 34667, 302, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (35, 'ISW', 'Principios de diseño de software', 'Matutino', 89012, 401, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (36, 'ISW', 'Principios de diseño de software', 'Vespertino', 47678, 402, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (37, 'ISW', 'Paradigmas de programacion', 'Matutino', 30923, 401, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (38, 'ISW', 'Paradigmas de programacion', 'Vespertino', 53789, 402, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (39, 'ISW', 'Principios de construccion de software', 'Matutino', 40734, 401, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (40, 'ISW', 'Principios de construccion de software', 'Vespertino', 65820, 402, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (41, 'ISW', 'Redes', 'Matutino', 12545, 401, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (42, 'ISW', 'Redes', 'Vespertino', 77901, 402, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (43, 'ISW', 'Procesos para ingenieria de software', 'Matutino', 27456, 401, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (44, 'ISW', 'Procesos para ingenieria de software', 'Vespertino', 39012, 402, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (45, 'ISW', 'Diseño de software', 'Matutino', 90153, 501, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (46, 'ISW', 'Diseño de software', 'Vespertino', 43678, 502, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (47, 'ISW', 'Administracion de proyectos de software', 'Matutino', 68290, 501, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (48, 'ISW', 'Administracion de proyectos de software', 'Vespertino', 93823, 502, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (49, 'ISW', 'Tecnologias para la construccion de software', 'Matutino', 98234, 501, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (50, 'ISW', 'Tecnologias para la construccion de software', 'Vespertino', 57789, 502, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (51, 'ISW', 'Prueba de software', 'Matutino', 23466, 501, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (52, 'ISW', 'Prueba de software', 'Vespertino', 72001, 502, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (53, 'ISW', 'Derecho de las tecnologias de informacion y comunicacion', 'Matutino', 34547, 501, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (54, 'ISW', 'Derecho de las tecnologias de informacion y comunicacion', 'Vespertino', 84012, 502, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (55, 'ISW', 'Verificacion y validacion de software', 'Matutino', 49678, 601, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (56, 'ISW', 'Verificacion y validacion de software', 'Vespertino', 90123, 602, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (57, 'ISW', 'Desarrollo de software', 'Matutino', 46789, 601, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (58, 'ISW', 'Desarrollo de software', 'Vespertino', 67234, 602, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (59, 'ISW', 'Desarrollo de aplicaciones', 'Matutino', 37892, 601, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (60, 'ISW', 'Desarrollo de aplicaciones', 'Vespertino', 22745, 602, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (61, 'ISW', 'Desarrollo de sistemas en red', 'Matutino', 70401, 601, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (62, 'ISW', 'Desarrollo de sistemas en red', 'Vespertino', 23756, 602, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (63, 'ISW', 'Proyecto guiado', 'Matutino', 89112, 701, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (64, 'ISW', 'Proyecto guiado', 'Vespertino', 33067, 702, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (65, 'ISW', 'Practicas de ingenieria de software', 'Matutino', 90623, 701, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (66, 'ISW', 'Practicas de ingenieria de software', 'Vespertino', 45018, 702, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (67, 'ISW', 'Desarrollo de sistemas web', 'Matutino', 60236, 701, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (68, 'ISW', 'Desarrollo de sistemas web', 'Vespertino', 50719, 702, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (69, 'ISW', 'Economia para la toma de decisiones', 'Matutino', 37890, 701, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (70, 'ISW', 'Economia para la toma de decisiones', 'Vespertino', 12845, 702, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (71, 'ISW', 'Bases de datos no convencionales', 'Matutino', 77301, 701, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (72, 'ISW', 'Bases de datos no convencionales', 'Vespertino', 13456, 702, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (73, 'ISW', 'Sistemas operativos moviles', 'Matutino', 89310, 701, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (74, 'ISW', 'Sistemas operativos moviles', 'Vespertino', 34507, 702, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (75, 'ISW', 'Administracion de base de datos', 'Matutino', 90183, 101, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (76, 'ISW', 'Administracion de base de datos', 'Vespertino', 45078, 102, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (77, 'ISW', 'Pruebas de penetracion', 'Matutino', 81274, 101, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (78, 'ISW', 'Pruebas de penetracion', 'Vespertino', 50789, 102, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (79, 'ISW', 'Inteligencia artificial aplicada a la ingenieria de software', 'Matutino', 67893, 101, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (80, 'ISW', 'Inteligencia artificial aplicada a la ingenieria de software', 'Vespertino', 72445, 102, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (81, 'ISW', 'Programacion multinucleo', 'Matutino', 78301, 101, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (82, 'ISW', 'Programacion multinucleo', 'Vespertino', 25456, 102, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (83, 'ISW', 'Medicion de software', 'Matutino', 89010, 101, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (84, 'ISW', 'Medicion de software', 'Vespertino', 34367, 102, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (85, 'ISW', 'Diseño de interfaces de usuario', 'Matutino', 92223, 101, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (86, 'ISW', 'Diseño de interfaces de usuario', 'Vespertino', 46678, 102, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (87, 'ISW', 'Administracion avanzada de servicios', 'Matutino', 16234, 101, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (88, 'ISW', 'Administracion avanzada de servicios', 'Vespertino', 56789, 102, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (89, 'ISW', 'Proyectos de software', 'Matutino', 67390, 101, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (90, 'ISW', 'Proyectos de software', 'Vespertino', 95345, 102, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (91, 'ISW', 'Programacion segura', 'Matutino', 78601, 101, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (92, 'ISW', 'Programacion segura', 'Vespertino', 23056, 102, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (93, 'ISW', 'Reingenieria de software', 'Matutino', 86012, 101, 6);
INSERT INTO public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) OVERRIDING SYSTEM VALUE VALUES (94, 'ISW', 'Reingenieria de software', 'Vespertino', 34967, 102, 6);


--
-- TOC entry 3378 (class 0 OID 0)
-- Dependencies: 210
-- Name: alumno-materias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."alumno-materias_id_seq"', 101, true);


--
-- TOC entry 3379 (class 0 OID 0)
-- Dependencies: 212
-- Name: alumnos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumnos_id_seq', 86, true);


--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 216
-- Name: docente-materias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."docente-materias_id_seq"', 7, true);


--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 218
-- Name: docentes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.docentes_id_seq', 7, true);


--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 221
-- Name: materia_salon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.materia_salon_id_seq', 7, true);


--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 220
-- Name: materias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.materias_id_seq', 95, true);


--
-- TOC entry 3198 (class 2606 OID 33130)
-- Name: alumno_materias alumno-materias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno_materias
    ADD CONSTRAINT "alumno-materias_pkey" PRIMARY KEY (id);


--
-- TOC entry 3200 (class 2606 OID 33132)
-- Name: alumnos alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (matricula);


--
-- TOC entry 3202 (class 2606 OID 33134)
-- Name: cuenta_alumnos cuenta-alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cuenta_alumnos
    ADD CONSTRAINT "cuenta-alumnos_pkey" PRIMARY KEY (matricula);


--
-- TOC entry 3204 (class 2606 OID 33136)
-- Name: cuenta_docentes cuenta-docentes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cuenta_docentes
    ADD CONSTRAINT "cuenta-docentes_pkey" PRIMARY KEY (no_personal);


--
-- TOC entry 3206 (class 2606 OID 33138)
-- Name: docente_materias docente-materias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.docente_materias
    ADD CONSTRAINT "docente-materias_pkey" PRIMARY KEY (id);


--
-- TOC entry 3208 (class 2606 OID 33140)
-- Name: docentes docentes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.docentes
    ADD CONSTRAINT docentes_pkey PRIMARY KEY (no_personal);


--
-- TOC entry 3212 (class 2606 OID 41189)
-- Name: materia_salon materia_salon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materia_salon
    ADD CONSTRAINT materia_salon_pkey PRIMARY KEY (id);


--
-- TOC entry 3210 (class 2606 OID 33142)
-- Name: materias materias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materias
    ADD CONSTRAINT materias_pkey PRIMARY KEY (nrc);


--
-- TOC entry 3213 (class 2606 OID 33143)
-- Name: alumno_materias FK_alumno; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno_materias
    ADD CONSTRAINT "FK_alumno" FOREIGN KEY (matricula_alumno) REFERENCES public.alumnos(matricula);


--
-- TOC entry 3215 (class 2606 OID 33148)
-- Name: cuenta_alumnos FK_alumnos; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cuenta_alumnos
    ADD CONSTRAINT "FK_alumnos" FOREIGN KEY (matricula) REFERENCES public.alumnos(matricula);


--
-- TOC entry 3217 (class 2606 OID 33153)
-- Name: docente_materias FK_docente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.docente_materias
    ADD CONSTRAINT "FK_docente" FOREIGN KEY (numero_personal) REFERENCES public.docentes(no_personal);


--
-- TOC entry 3216 (class 2606 OID 33158)
-- Name: cuenta_docentes FK_docente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cuenta_docentes
    ADD CONSTRAINT "FK_docente" FOREIGN KEY (no_personal) REFERENCES public.docentes(no_personal);


--
-- TOC entry 3214 (class 2606 OID 33163)
-- Name: alumno_materias FK_materia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno_materias
    ADD CONSTRAINT "FK_materia" FOREIGN KEY (ncr_materias) REFERENCES public.materias(nrc);


--
-- TOC entry 3218 (class 2606 OID 33168)
-- Name: docente_materias FK_materia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.docente_materias
    ADD CONSTRAINT "FK_materia" FOREIGN KEY (ncr_materia) REFERENCES public.materias(nrc);


--
-- TOC entry 3219 (class 2606 OID 41190)
-- Name: materia_salon nrc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materia_salon
    ADD CONSTRAINT nrc FOREIGN KEY (nrc) REFERENCES public.materias(nrc);


-- Completed on 2023-11-08 10:27:28

--
-- PostgreSQL database dump complete
--

