--
-- PostgreSQL database dump
--

-- Dumped from database version 14.9
-- Dumped by pg_dump version 14.9

-- Started on 2023-10-30 18:11:03

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
-- TOC entry 219 (class 1259 OID 33125)
-- Name: materias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.materias (
    id integer NOT NULL,
    licenciatura character varying(30) NOT NULL,
    nombre character varying(100) NOT NULL,
    turno character varying(10) NOT NULL,
    nrc integer NOT NULL,
    grupo integer NOT NULL
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
-- TOC entry 3351 (class 0 OID 33101)
-- Dependencies: 209
-- Data for Name: alumno_materias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alumno_materias (id, matricula_alumno, ncr_materias) FROM stdin;
1	21004503	89012
2	S20020309	16234
3	S20020309	56789
4	S20020309	67390
5	S20020309	95345
6	S20020309	78601
7	S20020309	23056
8	S20020309	86012
9	S20020309	34967
10	S19004895	16234
11	S19004895	56789
12	S19004895	67390
13	S19004895	95345
14	S19004895	78601
15	S19004895	23056
16	S19004895	86012
17	S19004895	34967
18	S20006737	16234
19	S20006737	56789
20	S20006737	67390
21	S20006737	95345
22	S20006737	78601
23	S20006783	16234
24	S20006783	56789
25	S20006783	67390
26	S20006783	95345
27	S20006783	78601
28	S20006784	16234
29	S20006784	56789
30	S20006784	67390
31	S20006784	95345
32	S20006784	78601
33	S20006735	16234
34	S20006735	56789
35	S20006735	67390
36	S20006735	95345
37	S20006735	78601
38	S20006756	16234
39	S20006756	56789
40	S20006756	67390
41	S20006756	95345
42	S20006756	78601
43	S20020311	16234
44	S20020311	56789
45	S20020311	67390
46	S20020311	95345
47	S20020311	78601
48	S20020316	16234
49	S20020316	56789
50	S20020316	67390
51	S20020316	95345
52	S20020316	78601
53	S20006732	16234
54	S20006732	56789
55	S20006732	67390
56	S20006732	95345
57	S20006732	78601
58	S20006730	16234
59	S20006730	56789
60	S20006730	67390
61	S20006730	95345
62	S20006730	78601
63	S20006728	16234
64	S20006728	56789
65	S20006728	67390
66	S20006728	95345
67	S20006728	78601
68	S20006748	16234
69	S20006748	56789
70	S20006748	67390
71	S20006748	95345
72	S20006748	78601
73	S20006761	16234
74	S20006761	56789
75	S20006761	67390
76	S20006761	95345
77	S20006761	78601
78	S19004877	16234
79	S19004877	56789
80	S19004877	67390
81	S19004877	95345
82	S19004877	78601
83	S20006742	16234
84	S20006742	56789
85	S20006742	67390
86	S20006742	95345
87	S20006742	78601
88	S20006770	16234
89	S20006770	56789
90	S20006770	67390
91	S20006770	95345
92	S20006770	78601
\.


--
-- TOC entry 3353 (class 0 OID 33105)
-- Dependencies: 211
-- Data for Name: alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alumnos (id, nombre, matricula, sexo, licenciatura) FROM stdin;
1	Magdyel Aguilar Cid	S20020309	Femenino	ISOF
2	Christian Eduardo Amaro Reyes	S19004895	Masculino	ISOF
3	Heriberto Arriola Peztaña	S20006737	Masculino	ISOF
4	Jaime Ivan Avila Muñoz	S20006783	Masculino	ISOF
5	Yareli Sugey Bravo Morales	S20006784	Femenino	ISOF
6	Irving Rafael Conde Marin	S20006735	Masculino	ISOF
7	Juan David Delgado Muñoz	S20006756	Masculino	ISOF
8	Yolotzin Groth Hernandez	S20020311	Femenino	ISOF
9	Angel Guarneros Maldonado	S20020316	Masculino	ISOF
10	Yahir Jesus Jacome Cogco	S20006732	Masculino	ISOF
11	Carlos Arturo Jose Fragoso	S20006730	Masculino	ISOF
12	Erick Juarez Espinosa	S20006728	Masculino	ISOF
13	Rodrigo Mencias Gonzalez	S20006748	Masculino	ISOF
14	Itzel Mendez Martinez	S20006761	Femenino	ISOF
15	Jesus Saith Meneses Conde	S19004877	Masculino	ISOF
16	Axel Gustavo Peña Sanchez	S20006742	Masculino	ISOF
17	Adriel Eduardo Peregrina Soto	S20006770	Masculino	ISOF
18	Fhatima Reyes Alejandre	S20006773	Femenino	ISOF
19	Zurisaddai Reyes Juarez	S20006762	Masculino	ISOF
20	Lilliam Romero Reyes	S20006765	Femenino	ISOF
21	Anahi Ximena Sanchez Vasquez	S20006727	Femenino	ISOF
22	Aaron Emiliano Torres Nuñez	S20006726	Masculino	ISOF
23	Bryan Valerio Reyes	S20006768	Masculino	ISOF
24	Wendy Belen Vallejo Patraca	S20006733	Femenino	ISOF
25	Maria Gonzalez Lopez	S20010001	Femenino	ISOF
26	Juan Rodriguez Ramirez	S20010002	Masculino	ISOF
27	Carlos Martinez Hernandez	S20010003	Masculino	ISOF
28	Sofia Luna Garcia	S20010004	Femenino	ISOF
29	Luis Sanchez Rodriguez	S20010005	Masculino	ISOF
30	Ana Flores Martinez	S20010006	Femenino	ISOF
31	Jorge Gutierrez Ramos	S20010007	Masculino	ISOF
32	Eva Morales Perez	S20010008	Femenino	ISOF
33	Pedro Lopez Hernandez	S20010009	Masculino	ISOF
34	Lucia Castro Gomez	S20010010	Femenino	ISOF
35	Fernando Robles Jimenez	S20010011	Masculino	ISOF
36	Maria Garcia Cruz	S20010012	Femenino	ISOF
37	Javier Hernandez Lopez	S20010013	Masculino	ISOF
38	Raquel Diaz Sanchez	S20010014	Femenino	ISOF
39	Carla Ortega Martinez	S20010015	Femenino	ISOF
40	Jorge Torres Ruiz	S20010016	Masculino	ISOF
41	Luis Silva Perez	S20010017	Masculino	ISOF
42	Patricia Rojas Garcia	S20010018	Femenino	ISOF
43	Francisco Gomez Gonzalez	S20010019	Masculino	ISOF
44	Ana Mendez Hernandez	S20010020	Femenino	ISOF
45	Andres Juarez Ramirez	S20010021	Masculino	ISOF
46	Maria Perez Sanchez	S20010022	Femenino	ISOF
47	Carlos Castillo Lopez	S20010023	Masculino	ISOF
48	Marta Garcia Martinez	S20010024	Femenino	ISOF
49	Javier Hernandez Gonzalez	S20010025	Masculino	ISOF
50	Lucia Lopez Perez	S20010026	Femenino	ISOF
51	Jorge Martinez Ruiz	S20010027	Masculino	ISOF
52	Eva Rodriguez Ramos	S20010028	Femenino	ISOF
53	Luis Gonzalez Gomez	S20010029	Masculino	ISOF
54	Carla Sanchez Martinez	S20010030	Femenino	ISOF
55	Ana Rodriguez Martinez	S20020001	Femenino	ISOF
56	Juan Garcia Lopez	S20020002	Masculino	ISOF
57	Carlos Martinez Ramirez	S20020003	Masculino	ISOF
58	Sofia Lopez Hernandez	S20020004	Femenino	ISOF
59	Luis Sanchez Rodriguez	S20020005	Masculino	ISOF
60	Angel Flores Perez	S20020006	Masculino	ISOF
61	Jorge Gomez Gutierrez	S20020007	Masculino	ISOF
62	Eva Morales Hernandez	S20020008	Femenino	ISOF
63	Pedro Hernandez Lopez	S20020009	Masculino	ISOF
64	Lucia Castro Martinez	S20020010	Femenino	ISOF
65	Fernando Robles Ruiz	S20020011	Masculino	ISOF
66	Maria Garcia Cruz	S20020012	Femenino	ISOF
67	Javier Hernandez Lopez	S20020013	Masculino	ISOF
68	Raquel Diaz Martinez	S20020014	Femenino	ISOF
69	Carla Ortega Ramirez	S20020015	Femenino	ISOF
70	Jorge Torres Lopez	S20020016	Masculino	ISOF
71	Luis Silva Hernandez	S20020017	Masculino	ISOF
72	Patricia Rojas Ramirez	S20020018	Femenino	ISOF
73	Francisco Gomez Ruiz	S20020019	Masculino	ISOF
74	Ana Mendez Lopez	S20020020	Femenino	ISOF
75	Andres Juarez Martinez	S20020021	Masculino	ISOF
76	Maria Perez Ramos	S20020022	Femenino	ISOF
77	Carlos Castillo Gomez	S20020023	Masculino	ISOF
78	Marta Garcia Martinez	S20020024	Femenino	ISOF
79	Javier Hernandez Gonzalez	S20020025	Masculino	ISOF
80	Lucia Lopez Perez	S20020026	Femenino	ISOF
81	Jorge Martinez Ruiz	S20020027	Masculino	ISOF
82	Eva Rodriguez Ramos	S20020028	Femenino	ISOF
83	Luis Gonzalez Gomez	S20020029	Masculino	ISOF
84	Carla Sanchez Martinez	S20020030	Femenino	ISOF
86	Diana	21004503	Femenino	Ingenieria de software
\.


--
-- TOC entry 3355 (class 0 OID 33109)
-- Dependencies: 213
-- Data for Name: cuenta_alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) FROM stdin;
S20020309	S20020309@estudiantes.uv.mx	20020309	www.uv.com/estudiante/foto1
S19004895	S19004895@estudiantes.uv.mx	19004895	www.uv.com/estudiante/foto2
S20006737	S20006737@estudiantes.uv.mx	20006737	www.uv.com/estudiante/foto3
S20006783	S20006783@estudiantes.uv.mx	20006783	www.uv.com/estudiante/foto4
S20006784	S20006784@estudiantes.uv.mx	20006784	www.uv.com/estudiante/foto5
S20006735	S20006735@estudiantes.uv.mx	20006735	www.uv.com/estudiante/foto6
S20006756	S20006756@estudiantes.uv.mx	20006756	www.uv.com/estudiante/foto7
S20020311	S20020311@estudiantes.uv.mx	20020311	www.uv.com/estudiante/foto8
S20020316	S20020316@estudiantes.uv.mx	20020316	www.uv.com/estudiante/foto9
S20006732	S20006732@estudiantes.uv.mx	20006732	www.uv.com/estudiante/foto10
S20006730	S20006730@estudiantes.uv.mx	20006730	www.uv.com/estudiante/foto11
S20006728	S20006728@estudiantes.uv.mx	20006728	www.uv.com/estudiante/foto12
S20006748	S20006748@estudiantes.uv.mx	20006748	www.uv.com/estudiante/foto13
S20006761	S20006761@estudiantes.uv.mx	20006761	www.uv.com/estudiante/foto14
S19004877	S19004877@estudiantes.uv.mx	19004877	www.uv.com/estudiante/foto15
S20006742	S20006742@estudiantes.uv.mx	20006742	www.uv.com/estudiante/foto16
S20006770	S20006770@estudiantes.uv.mx	20006770	www.uv.com/estudiante/foto17
S20006773	S20006773@estudiantes.uv.mx	20006773	www.uv.com/estudiante/foto18
S20006762	S20006762@estudiantes.uv.mx	20006762	www.uv.com/estudiante/foto19
S20006765	S20006765@estudiantes.uv.mx	20006765	www.uv.com/estudiante/foto20
S20006727	S20006727@estudiantes.uv.mx	20006727	www.uv.com/estudiante/foto21
S20006726	S20006726@estudiantes.uv.mx	20006726	www.uv.com/estudiante/foto22
S20006768	S20006768@estudiantes.uv.mx	20006768	www.uv.com/estudiante/foto23
S20006733	S20006733@estudiantes.uv.mx	20006733	www.uv.com/estudiante/foto24
S20010001	S20010001@estudiantes.uv.mx	20010001	www.uv.com/estudiante/foto25
S20010002	S20010002@estudiantes.uv.mx	20010002	www.uv.com/estudiante/foto26
S20010003	S20010003@estudiantes.uv.mx	20010003	www.uv.com/estudiante/foto27
S20010004	S20010004@estudiantes.uv.mx	20010004	www.uv.com/estudiante/foto28
S20010005	S20010005@estudiantes.uv.mx	20010005	www.uv.com/estudiante/foto29
S20010006	S20010006@estudiantes.uv.mx	20010006	www.uv.com/estudiante/foto30
21004503	diana@gmail.com	12345678	no
\.


--
-- TOC entry 3356 (class 0 OID 33114)
-- Dependencies: 214
-- Data for Name: cuenta_docentes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cuenta_docentes (no_personal, correo, "contraseña", url_imagen) FROM stdin;
1002	Maria.Gonzales@docente.uv.mx	98765432	www.uv.mx/docente/foto
1003	Martin.Mancilla@docente.uv.mx	56781234	www.uv.mx/docente/foto
1004	Adolfo.Rodriguez@docente.uv.mx	87654321	www.uv.mx/docente/foto
1005	Gabriel.Rodriguez@docente.uv.mx	23456781	www.uv.mx/docente/foto
1006	Agustin.Lagunes@docente.uv.mx	43218765	www.uv.mx/docente/foto
1007	Adolfo.Centeno@docente.uv.mx	34567812	www.uv.mx/docente/foto
1001	Jorge.Gonzalez@docente.uv.mx	12345678	https://firebasestorage.googleapis.com/v0/b/beebooks-b76d1.appspot.com/o/notapequenos1.jpg?alt=media&token=f2ac428e-283e-4955-a29c-ab1a2c4d9b18
\.


--
-- TOC entry 3357 (class 0 OID 33117)
-- Dependencies: 215
-- Data for Name: docente_materias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.docente_materias (id, numero_personal, ncr_materia) FROM stdin;
1	1001	89012
2	1001	98125
3	1001	16234
4	1001	56789
5	1001	67390
6	1001	95345
7	1001	78601
\.


--
-- TOC entry 3359 (class 0 OID 33121)
-- Dependencies: 217
-- Data for Name: docentes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.docentes (id, nombre, no_personal, sexo, facultad, cargo) FROM stdin;
1	JorgeGonzalez Diaz	1001	Masculino	FNT	Docente
2	Maria Dolores Gonzales Martinez	1002	Femenino	FNT	Docente
3	Martin Mancilla Gomez	1003	Masculino	FNT	Docente
4	Adolfo Rodriguez Parada	1004	Masculino	FNT	Docente
5	Gabriel Rodriguez Vasquez	1005	Masculino	FNT	Docente
6	Agustin Lagunes Dominguez	1006	Masculino	FNT	Docente
7	Adolfo Centeno Tellez	1007	Masculino	FNT	Docente
\.


--
-- TOC entry 3361 (class 0 OID 33125)
-- Dependencies: 219
-- Data for Name: materias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.materias (id, licenciatura, nombre, turno, nrc, grupo) FROM stdin;
1	ISW	Ingles I	Matutino	16645	101
2	ISW	Ingles I	Vespertino	67891	102
3	ISW	Ingles II	Matutino	23776	201
4	ISW	Ingles II	Vespertino	74901	202
5	ISW	Computacion basica	Matutino	34767	101
6	ISW	Computacion basica	Vespertino	83712	102
7	ISW	Introduccion a la programacion	Matutino	45778	101
8	ISW	Introduccion a la programacion	Vespertino	97123	102
9	ISW	Fundamentos de matematicos	Matutino	56749	101
10	ISW	Fundamentos de matematicos	Vespertino	51334	102
11	ISW	Habilidades del pensamiento critico y creativo	Matutino	67840	101
12	ISW	Habilidades del pensamiento critico y creativo	Vespertino	14545	102
13	ISW	Lectura y redaccion a traves del analisis del mundo contemporaneo	Matutino	58701	101
14	ISW	Lectura y redaccion a traves del analisis del mundo contemporaneo	Vespertino	28456	102
15	ISW	Laboratorio de resolucion de problemas	Matutino	89712	201
16	ISW	Laboratorio de resolucion de problemas	Vespertino	38367	202
17	ISW	Programacion	Matutino	90873	201
18	ISW	Programacion	Vespertino	45328	202
19	ISW	Algebra lineal para computacion	Matutino	56689	201
20	ISW	Algebra lineal para computacion	Vespertino	67934	202
21	ISW	Habilidades de comunicacion	Matutino	67870	201
22	ISW	Habilidades de comunicacion	Vespertino	14345	202
23	ISW	Matematicas discretas	Matutino	23476	201
24	ISW	Matematicas discretas	Vespertino	78801	202
25	ISW	Requerimientos de software	Matutino	33567	301
26	ISW	Requerimientos de software	Vespertino	88012	302
27	ISW	Estructura de datos	Matutino	45878	301
28	ISW	Estructura de datos	Vespertino	98125	302
29	ISW	Bases de datos	Matutino	50749	301
30	ISW	Bases de datos	Vespertino	31274	302
31	ISW	Sistemas operativos	Matutino	64890	301
32	ISW	Sistemas operativos	Vespertino	22456	302
33	ISW	Probabilidad y estadistica para computacion	Matutino	78401	301
34	ISW	Probabilidad y estadistica para computacion	Vespertino	34667	302
35	ISW	Principios de diseño de software	Matutino	89012	401
36	ISW	Principios de diseño de software	Vespertino	47678	402
37	ISW	Paradigmas de programacion	Matutino	30923	401
38	ISW	Paradigmas de programacion	Vespertino	53789	402
39	ISW	Principios de construccion de software	Matutino	40734	401
40	ISW	Principios de construccion de software	Vespertino	65820	402
41	ISW	Redes	Matutino	12545	401
42	ISW	Redes	Vespertino	77901	402
43	ISW	Procesos para ingenieria de software	Matutino	27456	401
44	ISW	Procesos para ingenieria de software	Vespertino	39012	402
45	ISW	Diseño de software	Matutino	90153	501
46	ISW	Diseño de software	Vespertino	43678	502
47	ISW	Administracion de proyectos de software	Matutino	68290	501
48	ISW	Administracion de proyectos de software	Vespertino	93823	502
49	ISW	Tecnologias para la construccion de software	Matutino	98234	501
50	ISW	Tecnologias para la construccion de software	Vespertino	57789	502
51	ISW	Prueba de software	Matutino	23466	501
52	ISW	Prueba de software	Vespertino	72001	502
53	ISW	Derecho de las tecnologias de informacion y comunicacion	Matutino	34547	501
54	ISW	Derecho de las tecnologias de informacion y comunicacion	Vespertino	84012	502
55	ISW	Verificacion y validacion de software	Matutino	49678	601
56	ISW	Verificacion y validacion de software	Vespertino	90123	602
57	ISW	Desarrollo de software	Matutino	46789	601
58	ISW	Desarrollo de software	Vespertino	67234	602
59	ISW	Desarrollo de aplicaciones	Matutino	37892	601
60	ISW	Desarrollo de aplicaciones	Vespertino	22745	602
61	ISW	Desarrollo de sistemas en red	Matutino	70401	601
62	ISW	Desarrollo de sistemas en red	Vespertino	23756	602
63	ISW	Proyecto guiado	Matutino	89112	701
64	ISW	Proyecto guiado	Vespertino	33067	702
65	ISW	Practicas de ingenieria de software	Matutino	90623	701
66	ISW	Practicas de ingenieria de software	Vespertino	45018	702
67	ISW	Desarrollo de sistemas web	Matutino	60236	701
68	ISW	Desarrollo de sistemas web	Vespertino	50719	702
69	ISW	Economia para la toma de decisiones	Matutino	37890	701
70	ISW	Economia para la toma de decisiones	Vespertino	12845	702
71	ISW	Bases de datos no convencionales	Matutino	77301	701
72	ISW	Bases de datos no convencionales	Vespertino	13456	702
73	ISW	Sistemas operativos moviles	Matutino	89310	701
74	ISW	Sistemas operativos moviles	Vespertino	34507	702
75	ISW	Administracion de base de datos	Matutino	90183	101
76	ISW	Administracion de base de datos	Vespertino	45078	102
77	ISW	Pruebas de penetracion	Matutino	81274	101
78	ISW	Pruebas de penetracion	Vespertino	50789	102
79	ISW	Inteligencia artificial aplicada a la ingenieria de software	Matutino	67893	101
80	ISW	Inteligencia artificial aplicada a la ingenieria de software	Vespertino	72445	102
81	ISW	Programacion multinucleo	Matutino	78301	101
82	ISW	Programacion multinucleo	Vespertino	25456	102
83	ISW	Medicion de software	Matutino	89010	101
84	ISW	Medicion de software	Vespertino	34367	102
85	ISW	Diseño de interfaces de usuario	Matutino	92223	101
86	ISW	Diseño de interfaces de usuario	Vespertino	46678	102
87	ISW	Administracion avanzada de servicios	Matutino	16234	101
88	ISW	Administracion avanzada de servicios	Vespertino	56789	102
89	ISW	Proyectos de software	Matutino	67390	101
90	ISW	Proyectos de software	Vespertino	95345	102
91	ISW	Programacion segura	Matutino	78601	101
92	ISW	Programacion segura	Vespertino	23056	102
93	ISW	Reingenieria de software	Matutino	86012	101
94	ISW	Reingenieria de software	Vespertino	34967	102
\.


--
-- TOC entry 3368 (class 0 OID 0)
-- Dependencies: 210
-- Name: alumno-materias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."alumno-materias_id_seq"', 92, true);


--
-- TOC entry 3369 (class 0 OID 0)
-- Dependencies: 212
-- Name: alumnos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumnos_id_seq', 86, true);


--
-- TOC entry 3370 (class 0 OID 0)
-- Dependencies: 216
-- Name: docente-materias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."docente-materias_id_seq"', 7, true);


--
-- TOC entry 3371 (class 0 OID 0)
-- Dependencies: 218
-- Name: docentes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.docentes_id_seq', 7, true);


--
-- TOC entry 3372 (class 0 OID 0)
-- Dependencies: 220
-- Name: materias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.materias_id_seq', 94, true);


--
-- TOC entry 3193 (class 2606 OID 33130)
-- Name: alumno_materias alumno-materias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno_materias
    ADD CONSTRAINT "alumno-materias_pkey" PRIMARY KEY (id);


--
-- TOC entry 3195 (class 2606 OID 33132)
-- Name: alumnos alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (matricula);


--
-- TOC entry 3197 (class 2606 OID 33134)
-- Name: cuenta_alumnos cuenta-alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cuenta_alumnos
    ADD CONSTRAINT "cuenta-alumnos_pkey" PRIMARY KEY (matricula);


--
-- TOC entry 3199 (class 2606 OID 33136)
-- Name: cuenta_docentes cuenta-docentes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cuenta_docentes
    ADD CONSTRAINT "cuenta-docentes_pkey" PRIMARY KEY (no_personal);


--
-- TOC entry 3201 (class 2606 OID 33138)
-- Name: docente_materias docente-materias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.docente_materias
    ADD CONSTRAINT "docente-materias_pkey" PRIMARY KEY (id);


--
-- TOC entry 3203 (class 2606 OID 33140)
-- Name: docentes docentes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.docentes
    ADD CONSTRAINT docentes_pkey PRIMARY KEY (no_personal);


--
-- TOC entry 3205 (class 2606 OID 33142)
-- Name: materias materias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materias
    ADD CONSTRAINT materias_pkey PRIMARY KEY (nrc);


--
-- TOC entry 3206 (class 2606 OID 33143)
-- Name: alumno_materias FK_alumno; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno_materias
    ADD CONSTRAINT "FK_alumno" FOREIGN KEY (matricula_alumno) REFERENCES public.alumnos(matricula);


--
-- TOC entry 3208 (class 2606 OID 33148)
-- Name: cuenta_alumnos FK_alumnos; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cuenta_alumnos
    ADD CONSTRAINT "FK_alumnos" FOREIGN KEY (matricula) REFERENCES public.alumnos(matricula);


--
-- TOC entry 3210 (class 2606 OID 33153)
-- Name: docente_materias FK_docente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.docente_materias
    ADD CONSTRAINT "FK_docente" FOREIGN KEY (numero_personal) REFERENCES public.docentes(no_personal);


--
-- TOC entry 3209 (class 2606 OID 33158)
-- Name: cuenta_docentes FK_docente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cuenta_docentes
    ADD CONSTRAINT "FK_docente" FOREIGN KEY (no_personal) REFERENCES public.docentes(no_personal);


--
-- TOC entry 3207 (class 2606 OID 33163)
-- Name: alumno_materias FK_materia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno_materias
    ADD CONSTRAINT "FK_materia" FOREIGN KEY (ncr_materias) REFERENCES public.materias(nrc);


--
-- TOC entry 3211 (class 2606 OID 33168)
-- Name: docente_materias FK_materia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.docente_materias
    ADD CONSTRAINT "FK_materia" FOREIGN KEY (ncr_materia) REFERENCES public.materias(nrc);


-- Completed on 2023-10-30 18:11:03

--
-- PostgreSQL database dump complete
--

