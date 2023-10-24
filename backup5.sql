--
-- PostgreSQL database dump
--

-- Dumped from database version 14.9
-- Dumped by pg_dump version 14.9

-- Started on 2023-10-24 09:30:16

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
-- TOC entry 209 (class 1259 OID 24801)
-- Name: alumnos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumnos (
    id integer NOT NULL,
    nombres character varying(25),
    apellidos character varying(25),
    matricula integer NOT NULL,
    telefono integer NOT NULL,
    sexo character varying(25),
    fechanacimiento character varying(25),
    licenciatura character varying(25)
);


ALTER TABLE public.alumnos OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 24804)
-- Name: cuentas_docente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cuentas_docente (
    numero_personal integer NOT NULL,
    correo character varying(100),
    contrasena character varying(100),
    url_imagen character varying(255)
);


ALTER TABLE public.cuentas_docente OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 24807)
-- Name: docentes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.docentes (
    id integer NOT NULL,
    nombres character varying(25),
    apellidos character varying(25),
    numero_personal integer NOT NULL,
    telefono integer NOT NULL,
    sexo character varying(25),
    fechanacimiento character varying(25),
    facultad character varying(100)
);


ALTER TABLE public.docentes OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 24810)
-- Name: docentes_materias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.docentes_materias (
    numero_personal integer NOT NULL,
    nrc integer NOT NULL
);


ALTER TABLE public.docentes_materias OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 24813)
-- Name: materias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.materias (
    id integer NOT NULL,
    licenciatura character varying(25),
    nombre character varying(40),
    turno character varying(25),
    grupo integer NOT NULL,
    nrc integer NOT NULL,
    cupo integer NOT NULL
);


ALTER TABLE public.materias OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 24816)
-- Name: salones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salones (
    salon integer NOT NULL,
    edificio integer NOT NULL,
    nrc integer NOT NULL
);


ALTER TABLE public.salones OWNER TO postgres;

--
-- TOC entry 3337 (class 0 OID 24801)
-- Dependencies: 209
-- Data for Name: alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alumnos (id, nombres, apellidos, matricula, telefono, sexo, fechanacimiento, licenciatura) FROM stdin;
2	Irving Rafael	Conde Mar­n	20006735	456	Masculino	24 de abril de 2002	Ingenier­a de software
3	Magdyel	Aguilar Cid	20020309	789	Masculino	25 de noviembre de 2002	Ingenier­a de software
4	Ferm­n	Del Rosario Antonio	19004879	987	Masculino	23 de noviembre de 2001	Ingenier­a de software
5	Aaron Emiliano	Torres NœÏez	20006726	654	Masculino	15 de Octubre de 2001	Ingenier­a de software
6	Adriel Eduardo	Peregrina Soto	20006770	321	Masculino	12 de marzo de 2002	Ingenier­a de software
7	Diana	Bautista	21004503	272	Femenino	16 de marzo de 2003	Ingenieria de software
\.


--
-- TOC entry 3338 (class 0 OID 24804)
-- Dependencies: 210
-- Data for Name: cuentas_docente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cuentas_docente (numero_personal, correo, contrasena, url_imagen) FROM stdin;
1576912851	CentenoCentenito@gmail.com	IrvingConde123	https://firebasestorage.googleapis.com/v0/b/listasasistencia-f6f1d.appspot.com/o/images%2Fportada_love-live-sunshine-39.jpg?alt=media&token=7a7fdd0f-3d29-447e-91e5-c582900ec45b
1756255912	AdolfoParada@hotmail.com	IrvingConde123	https://firebasestorage.googleapis.com/v0/b/listasasistencia-f6f1d.appspot.com/o/images%2Fportada_love-live-sunshine-39.jpg?alt=media&token=d1d47ae4-8f85-4d5b-87fa-148eb0e82f94
\.


--
-- TOC entry 3339 (class 0 OID 24807)
-- Dependencies: 211
-- Data for Name: docentes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.docentes (id, nombres, apellidos, numero_personal, telefono, sexo, fechanacimiento, facultad) FROM stdin;
5	Ricardo	Carrera Hernandez	1756255912	654	Masculino	24 de marzo de 1970	Facultad de Negocios y Tecnolog­as
2	Adolfo	Centeno Tellez	1576912851	1324	Masculino	15 de octubre de 1972	Facultad de Negocios y Tecnolog­as
3	Mart­n	Mancilla Gomez	1918671851	1231	Masculino	20 de febrero de 1978	Facultad de Negocios y Tecnolog­as
4	Gabriel	Rodr­guez Vazquez	1186970176	987	Masculino	8 de noviembre de 1980	Facultad de Negocios y Tecnolog­as
6	Adolfo	Rodriguez Parada	1918671970	321	Masculino	2 de agosto de 1975	Facultad de Negocios y Tecnolog­as
1	Jorge Ernesto	Gonzalez Diaz	1236126713	123	Masculino	5 de agosto de 1980	Facultad de Negocios y Tecnolog­as
\.


--
-- TOC entry 3340 (class 0 OID 24810)
-- Dependencies: 212
-- Data for Name: docentes_materias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.docentes_materias (numero_personal, nrc) FROM stdin;
1576912851	91001
1576912851	91002
1576912851	91003
1236126713	91010
1236126713	91005
1236126713	91007
\.


--
-- TOC entry 3341 (class 0 OID 24813)
-- Dependencies: 213
-- Data for Name: materias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.materias (id, licenciatura, nombre, turno, grupo, nrc, cupo) FROM stdin;
1	ISW	Bases de Datos	Matutino	101	91001	30
2	ISW	Programaci½n B sica	Vespertino	102	91002	30
3	ISW	Desarrollo de software	Matutino	201	91003	30
10	ISW	Inteligencia Artificial	Vespertino	502	91010	30
4	ISW	Desarrollo de Sistemas en Red	Vespertino	202	91004	30
5	ISW	Desarrollo de aplicaciones m½viles	Matutino	301	91005	30
6	ISW	Principios de Construcci½n de Software	Vespertino	302	91006	30
7	ISW	Verificaci½n y Validaci½n de Software	Matutino	401	91007	30
8	ISW	Paradigmas de Programaci½n	Vespertino	402	91008	30
9	ISW	Bases de Datos no relacionales	Matutino	501	91009	30
11	ISW	Sistemas en red	Matutino	601	91063	30
12	ISW	Bases de datos	Matutino	601	91068	30
13	ISW	DiseÏo de software	Matutino	601	91060	30
14	ISW	Aplicaciones	Matutino	601	91064	30
15	ISW	Redes	Matutino	401	91015	30
16	ISW	Programaci½n	Matutino	201	91012	30
\.


--
-- TOC entry 3342 (class 0 OID 24816)
-- Dependencies: 214
-- Data for Name: salones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.salones (salon, edificio, nrc) FROM stdin;
6	1	91006
6	1	91063
6	1	91068
6	1	91060
6	1	91064
6	1	91006
6	1	91063
6	1	91068
6	1	91060
6	1	91064
\.


--
-- TOC entry 3184 (class 2606 OID 24820)
-- Name: alumnos alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (matricula);


--
-- TOC entry 3186 (class 2606 OID 24822)
-- Name: cuentas_docente cuentas_docente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cuentas_docente
    ADD CONSTRAINT cuentas_docente_pkey PRIMARY KEY (numero_personal);


--
-- TOC entry 3188 (class 2606 OID 24824)
-- Name: docentes docentes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.docentes
    ADD CONSTRAINT docentes_pkey PRIMARY KEY (numero_personal);


--
-- TOC entry 3194 (class 2606 OID 24826)
-- Name: materias materias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materias
    ADD CONSTRAINT materias_pkey PRIMARY KEY (nrc);


--
-- TOC entry 3190 (class 2606 OID 24828)
-- Name: docentes_materias unique_nrc_per_num_personal; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.docentes_materias
    ADD CONSTRAINT unique_nrc_per_num_personal UNIQUE (nrc);


--
-- TOC entry 3192 (class 2606 OID 24830)
-- Name: docentes_materias unique_num_per_nrc; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.docentes_materias
    ADD CONSTRAINT unique_num_per_nrc UNIQUE (numero_personal, nrc);


--
-- TOC entry 3195 (class 2606 OID 24831)
-- Name: cuentas_docente fk_cuentas_docente_docentes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cuentas_docente
    ADD CONSTRAINT fk_cuentas_docente_docentes FOREIGN KEY (numero_personal) REFERENCES public.docentes(numero_personal);


--
-- TOC entry 3196 (class 2606 OID 24836)
-- Name: docentes_materias fk_nrc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.docentes_materias
    ADD CONSTRAINT fk_nrc FOREIGN KEY (nrc) REFERENCES public.materias(nrc);


--
-- TOC entry 3197 (class 2606 OID 24841)
-- Name: docentes_materias fk_num_per; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.docentes_materias
    ADD CONSTRAINT fk_num_per FOREIGN KEY (numero_personal) REFERENCES public.docentes(numero_personal);


-- Completed on 2023-10-24 09:30:16

--
-- PostgreSQL database dump complete
--

