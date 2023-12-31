PGDMP     +    '            	    {         	   SIAEFINAL    14.9    14.9 )    %           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            &           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            '           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            (           1262    33100 	   SIAEFINAL    DATABASE     h   CREATE DATABASE "SIAEFINAL" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE "SIAEFINAL";
                postgres    false            �            1259    33101    alumno_materias    TABLE     �   CREATE TABLE public.alumno_materias (
    id integer NOT NULL,
    matricula_alumno character varying(10) NOT NULL,
    ncr_materias integer NOT NULL
);
 #   DROP TABLE public.alumno_materias;
       public         heap    postgres    false            �            1259    33104    alumno-materias_id_seq    SEQUENCE     �   ALTER TABLE public.alumno_materias ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."alumno-materias_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    209            �            1259    33105    alumnos    TABLE     �   CREATE TABLE public.alumnos (
    id integer NOT NULL,
    nombre character varying(60) NOT NULL,
    matricula character varying(10) NOT NULL,
    sexo character varying(10) NOT NULL,
    licenciatura character varying(30) NOT NULL
);
    DROP TABLE public.alumnos;
       public         heap    postgres    false            �            1259    33108    alumnos_id_seq    SEQUENCE     �   ALTER TABLE public.alumnos ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.alumnos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    211            �            1259    33109    cuenta_alumnos    TABLE     �   CREATE TABLE public.cuenta_alumnos (
    matricula character varying NOT NULL,
    correo character varying(30) NOT NULL,
    "contraseña" character varying(8) NOT NULL,
    url_imagen character varying(250) NOT NULL
);
 "   DROP TABLE public.cuenta_alumnos;
       public         heap    postgres    false            �            1259    33114    cuenta_docentes    TABLE     �   CREATE TABLE public.cuenta_docentes (
    no_personal integer NOT NULL,
    correo character varying(50) NOT NULL,
    "contraseña" character varying(8) NOT NULL,
    url_imagen character varying(250) NOT NULL
);
 #   DROP TABLE public.cuenta_docentes;
       public         heap    postgres    false            �            1259    33117    docente_materias    TABLE     �   CREATE TABLE public.docente_materias (
    id integer NOT NULL,
    numero_personal integer NOT NULL,
    ncr_materia integer NOT NULL
);
 $   DROP TABLE public.docente_materias;
       public         heap    postgres    false            �            1259    33120    docente-materias_id_seq    SEQUENCE     �   ALTER TABLE public.docente_materias ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."docente-materias_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            �            1259    33121    docentes    TABLE       CREATE TABLE public.docentes (
    id integer NOT NULL,
    nombre character varying(60) NOT NULL,
    no_personal integer NOT NULL,
    sexo character varying(10) NOT NULL,
    facultad character varying(30) NOT NULL,
    cargo character varying(20) NOT NULL
);
    DROP TABLE public.docentes;
       public         heap    postgres    false            �            1259    33124    docentes_id_seq    SEQUENCE     �   ALTER TABLE public.docentes ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.docentes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �            1259    33125    materias    TABLE     �   CREATE TABLE public.materias (
    id integer NOT NULL,
    licenciatura character varying(30) NOT NULL,
    nombre character varying(100) NOT NULL,
    turno character varying(10) NOT NULL,
    nrc integer NOT NULL,
    grupo integer NOT NULL
);
    DROP TABLE public.materias;
       public         heap    postgres    false            �            1259    33128    materias_id_seq    SEQUENCE     �   ALTER TABLE public.materias ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.materias_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219                      0    33101    alumno_materias 
   TABLE DATA           M   COPY public.alumno_materias (id, matricula_alumno, ncr_materias) FROM stdin;
    public          postgres    false    209   *1                 0    33105    alumnos 
   TABLE DATA           L   COPY public.alumnos (id, nombre, matricula, sexo, licenciatura) FROM stdin;
    public          postgres    false    211   X1                 0    33109    cuenta_alumnos 
   TABLE DATA           V   COPY public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) FROM stdin;
    public          postgres    false    213   N6                 0    33114    cuenta_docentes 
   TABLE DATA           Y   COPY public.cuenta_docentes (no_personal, correo, "contraseña", url_imagen) FROM stdin;
    public          postgres    false    214   �7                 0    33117    docente_materias 
   TABLE DATA           L   COPY public.docente_materias (id, numero_personal, ncr_materia) FROM stdin;
    public          postgres    false    215   &9                 0    33121    docentes 
   TABLE DATA           R   COPY public.docentes (id, nombre, no_personal, sexo, facultad, cargo) FROM stdin;
    public          postgres    false    217   X9       !          0    33125    materias 
   TABLE DATA           O   COPY public.materias (id, licenciatura, nombre, turno, nrc, grupo) FROM stdin;
    public          postgres    false    219   +:       )           0    0    alumno-materias_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."alumno-materias_id_seq"', 1, true);
          public          postgres    false    210            *           0    0    alumnos_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.alumnos_id_seq', 86, true);
          public          postgres    false    212            +           0    0    docente-materias_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."docente-materias_id_seq"', 2, true);
          public          postgres    false    216            ,           0    0    docentes_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.docentes_id_seq', 7, true);
          public          postgres    false    218            -           0    0    materias_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.materias_id_seq', 94, true);
          public          postgres    false    220            y           2606    33130 $   alumno_materias alumno-materias_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.alumno_materias
    ADD CONSTRAINT "alumno-materias_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.alumno_materias DROP CONSTRAINT "alumno-materias_pkey";
       public            postgres    false    209            {           2606    33132    alumnos alumnos_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (matricula);
 >   ALTER TABLE ONLY public.alumnos DROP CONSTRAINT alumnos_pkey;
       public            postgres    false    211            }           2606    33134 "   cuenta_alumnos cuenta-alumnos_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.cuenta_alumnos
    ADD CONSTRAINT "cuenta-alumnos_pkey" PRIMARY KEY (matricula);
 N   ALTER TABLE ONLY public.cuenta_alumnos DROP CONSTRAINT "cuenta-alumnos_pkey";
       public            postgres    false    213                       2606    33136 $   cuenta_docentes cuenta-docentes_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.cuenta_docentes
    ADD CONSTRAINT "cuenta-docentes_pkey" PRIMARY KEY (no_personal);
 P   ALTER TABLE ONLY public.cuenta_docentes DROP CONSTRAINT "cuenta-docentes_pkey";
       public            postgres    false    214            �           2606    33138 &   docente_materias docente-materias_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.docente_materias
    ADD CONSTRAINT "docente-materias_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.docente_materias DROP CONSTRAINT "docente-materias_pkey";
       public            postgres    false    215            �           2606    33140    docentes docentes_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.docentes
    ADD CONSTRAINT docentes_pkey PRIMARY KEY (no_personal);
 @   ALTER TABLE ONLY public.docentes DROP CONSTRAINT docentes_pkey;
       public            postgres    false    217            �           2606    33142    materias materias_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.materias
    ADD CONSTRAINT materias_pkey PRIMARY KEY (nrc);
 @   ALTER TABLE ONLY public.materias DROP CONSTRAINT materias_pkey;
       public            postgres    false    219            �           2606    33143    alumno_materias FK_alumno    FK CONSTRAINT     �   ALTER TABLE ONLY public.alumno_materias
    ADD CONSTRAINT "FK_alumno" FOREIGN KEY (matricula_alumno) REFERENCES public.alumnos(matricula);
 E   ALTER TABLE ONLY public.alumno_materias DROP CONSTRAINT "FK_alumno";
       public          postgres    false    209    3195    211            �           2606    33148    cuenta_alumnos FK_alumnos    FK CONSTRAINT     �   ALTER TABLE ONLY public.cuenta_alumnos
    ADD CONSTRAINT "FK_alumnos" FOREIGN KEY (matricula) REFERENCES public.alumnos(matricula);
 E   ALTER TABLE ONLY public.cuenta_alumnos DROP CONSTRAINT "FK_alumnos";
       public          postgres    false    211    213    3195            �           2606    33153    docente_materias FK_docente    FK CONSTRAINT     �   ALTER TABLE ONLY public.docente_materias
    ADD CONSTRAINT "FK_docente" FOREIGN KEY (numero_personal) REFERENCES public.docentes(no_personal);
 G   ALTER TABLE ONLY public.docente_materias DROP CONSTRAINT "FK_docente";
       public          postgres    false    215    3203    217            �           2606    33158    cuenta_docentes FK_docente    FK CONSTRAINT     �   ALTER TABLE ONLY public.cuenta_docentes
    ADD CONSTRAINT "FK_docente" FOREIGN KEY (no_personal) REFERENCES public.docentes(no_personal);
 F   ALTER TABLE ONLY public.cuenta_docentes DROP CONSTRAINT "FK_docente";
       public          postgres    false    217    214    3203            �           2606    33163    alumno_materias FK_materia    FK CONSTRAINT     �   ALTER TABLE ONLY public.alumno_materias
    ADD CONSTRAINT "FK_materia" FOREIGN KEY (ncr_materias) REFERENCES public.materias(nrc);
 F   ALTER TABLE ONLY public.alumno_materias DROP CONSTRAINT "FK_materia";
       public          postgres    false    209    3205    219            �           2606    33168    docente_materias FK_materia    FK CONSTRAINT     �   ALTER TABLE ONLY public.docente_materias
    ADD CONSTRAINT "FK_materia" FOREIGN KEY (ncr_materia) REFERENCES public.materias(nrc);
 G   ALTER TABLE ONLY public.docente_materias DROP CONSTRAINT "FK_materia";
       public          postgres    false    215    3205    219                  x�3�42400150洰404����� +V�         �  x���]r�6ǟ�S�r��GE�Uk��#uҦ�D�)����Z�V9C.�%E�"�v��%���$�=�<{�_�*��+��xx��`��(KUj���xlu0���(�]��i�<
��V�ʊ�����"·V�����Y�E��Q��Y�k���N��$Hܩ�m�:J�p��'\�?5?���0��H�>#�wM._�#N�?i#�v�~*t��sReη�E�+]f�?	�J��R�6�u+N*㷲��1]/�ݡ�}օ�Ϫ�k��GYJ����}�Yn��e�K�Q�R]�bE�K<�ΐs|u8(�7�j*�{�:�t���F@�|�����n�ԍ�$�7"��8�1`wF��⨇�g~W}��*�+�d"`[���`��+Q�.�葕.�C!{��(��^�=�*ǉ�Ώ���;�Pi���.�IMH�P�忝�U�f�YbD���p��.aK��x�F� ֵ�/���� ju��e!�b$��3�{�����,����o� ��UQ(q�[��X�~ r��c�0B�wl`i��D�w3�;l�@@>�Vj��6��q5G"�`^�Q�0Hg?��o��,d7����6b?B���"%l�������㈛"\���%�xs��Q��	*u2�hȨS�v��k��/��c�r���^ا]b��=6������E����ݺ1iO�|��l�M.����\.�+;@��@�;��]��ק���,3La���>������j\c����;��m��wb���v�M�������+ӌO�{ ��/͸�4I>q8H�V`y
~��y�y��`��H����� ��neC���oܶQ�äo��GH'1u˧����b�V����{P��7�������USķ3��0�"��d\���ό��[M ����}]�59�MnC���S��x�}o��f�5\��͑��2G^_�K}&�[�h����u2��]�<!�X|p���K�,P'��r����j�>GQ��q���P;�ݻ0�s��(���s��,�g 3Ȏ�E6�!;���~=�G��/7�E��o��q:�"�^��:�==��v�`۵��;��q�9l�oaf���m��v<�6� �7�pۉ�v�`{�q9�p�XFٝv��.'����ܓh'.�]A)��)�G����H0���=f����c6�1;}��0���mf��ӷ�3�N�f6�1;}��0��4fX�R0@���w�;�V�z(�ͮ�K���ϟnnn��8         �  x�}��n!���0	0���C��DmZEj�����˖��㛅F��g0{	AB
��/��x��?N���x������|�G��y�Rm?���>�!�a,�

"�?�%hMաZ�UqTZPCr�(��8*����TA���
"��Uԡ��&���#�CE��D5 �@�[uG���`V�g%VDX��Y�bŅ%�CEYMd��V�l��x�e��b�˛�ա�o�Z1"�>f�c6}D�+|���j�X��|CTkC��G��{T�G�^�#��5�)r/X���X>�+�X8��XO[�{E��^��r��c�>&�G�>6eC�:��VK�"��"��`%�H�]d�*X,�u���*`��v���R�H��������ɥMb>>�·��,uQR.�v�ɿm�������         !  x�}�=O�0�g燰Ŏ�o�
*�J�.�,��LS_����Ӕ���>="��0�;���=�T����?~��ȳ4�;��?%1��<2�����{���:X �,/���D¶5u�W�ӎxY0f��H��`��ru���@2�mG7�y�v��19L.+��7��T�� �k�왆_��!������ј58t���Dm���+:�S$�Ј���B�g�����'듰����j�$�����戵�;O��FA��CU�&e����*-AUI]jYo<�o�ļ         "   x�3�4400䴰404�2�p,-�L�b���� O��         �   x�u��j�0��~�Ҥmz-�v�v�EK4cP$jח<����1�QB����[:�L�4����z]�Cى�ᣃV{�;U�{��UVO�<a0i}wB\��F��v�Q���1c��"6��-4�򏚫�٘^��3�f����������]�����~'�Q�O��N���U|�GQ��B��*���0y�      !   �  x��Xێ�6}��
A!K�$?�M�H��)җ�h<ک �=�e��������&Kg=�m����.�C���Ԕ��~ۼ��m����~������]mJQ>ȥ��0�@6ƺ���6,�T֚��0�+��Z�`$*2��?��7�c�*m����%[�)[J��f�i�wsC�h}q����	EW�:Bq��1� !�������!tS?�P��'6���V�B+�-'U�Ji�*Kr��ocw~Э-���!b��"(>ç �N�>�Q��/�K �S�+��8�.4�<x0�Ο/p�)���o��/88@����,��YQ�4���e.��L�<��߂����"a�ۙ0�7(�����*:,=Q�4/	�rPN����ןW�YgUBr��X<])�R���W�>l����u��y� NI�j���.υ,��KD�k�D���F]"	�H�k$\z-��q�����-��,�x�$*H��W�<9��I&f����SCPrc�8}�C`:���7
a�-'.X %��ތ�0'����4r�r S�.Zsqr%��'>|��t�_�*Vb͐s��VSL���!�x�cу		l��E
,/Z�ؕ]���=?����a�����L���Q�Y���B6U��&c*(���ݯ��՘��ӗw2L=ހ�����=�\R��P��� Hwˉ�s=a�+�����J���ZX�g���%��T�s�en���H�3!��y�Z\*(��4 �c�p����А~�@j ���9Wr�?q��5v�q��� �\��|Pȇ
�'>��b<�0�a@^(�$t"!�E�z��T)�Ĕ_C��m��>�S���KQ4�R����̵�\̧*s�氽Ta��*/s>I|�؉O���?�B-�9���O�{��[�*��<\P=�@[H>A4��L��,}̆�w�zW��FfLʼ���B�
l0��5�a����5>$����1�2�Q���c�3梁�&	ǈ[N�Z@X�\K�<�B�{(�:���;�8��p���E�������S��j[�Ы�\����e1�yz�&�=� ��@U	�����El���ʊ�m|
[&RB´$�Ufp'����KX�o@=�C�_�d�iE
<��D�w{���n˕���r
Rͷ�ZXR��ϕ�*Y��.�Vš?���U�O�oz-v!��V]��+�%�S��.�%��a���v�gBrv<ZO	�]sX���	�>��C�x��`r��c��7�E.ۉo��L:���y�=-v��m�jnZ���N姴��]�*U���/����	.��[�/�/����lc�pWãoR3����U�(%��w�l}Zw�2&sʭ�R�仿��wNx������"����f�|s�B�/mnvK��{>�+�R�0d{x0rr�L�z��z1�D�E��.~�A&}�e��:�����DN�)     