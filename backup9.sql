PGDMP     .        
        
    {         	   SIAEFINAL    14.9    14.9 /    /           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            0           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            1           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            2           1262    33100 	   SIAEFINAL    DATABASE     h   CREATE DATABASE "SIAEFINAL" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Mexico.1252';
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
            public          postgres    false    217            �            1259    41185    materia_salon    TABLE     A  CREATE TABLE public.materia_salon (
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
 !   DROP TABLE public.materia_salon;
       public         heap    postgres    false            �            1259    41184    materia_salon_id_seq    SEQUENCE     �   ALTER TABLE public.materia_salon ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.materia_salon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    222            �            1259    33125    materias    TABLE       CREATE TABLE public.materias (
    id integer NOT NULL,
    licenciatura character varying(30) NOT NULL,
    nombre character varying(100) NOT NULL,
    turno character varying(10) NOT NULL,
    nrc integer NOT NULL,
    grupo integer NOT NULL,
    horasemana integer NOT NULL
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
            public          postgres    false    219                      0    33101    alumno_materias 
   TABLE DATA           M   COPY public.alumno_materias (id, matricula_alumno, ncr_materias) FROM stdin;
    public          postgres    false    209   /9       !          0    33105    alumnos 
   TABLE DATA           L   COPY public.alumnos (id, nombre, matricula, sexo, licenciatura) FROM stdin;
    public          postgres    false    211   �:       #          0    33109    cuenta_alumnos 
   TABLE DATA           V   COPY public.cuenta_alumnos (matricula, correo, "contraseña", url_imagen) FROM stdin;
    public          postgres    false    213   �?       $          0    33114    cuenta_docentes 
   TABLE DATA           Y   COPY public.cuenta_docentes (no_personal, correo, "contraseña", url_imagen) FROM stdin;
    public          postgres    false    214   �A       %          0    33117    docente_materias 
   TABLE DATA           L   COPY public.docente_materias (id, numero_personal, ncr_materia) FROM stdin;
    public          postgres    false    215   �B       '          0    33121    docentes 
   TABLE DATA           R   COPY public.docentes (id, nombre, no_personal, sexo, facultad, cargo) FROM stdin;
    public          postgres    false    217   C       ,          0    41185    materia_salon 
   TABLE DATA           l   COPY public.materia_salon (id, nrc, salon, edificio, lunes, martes, miercoles, jueves, viernes) FROM stdin;
    public          postgres    false    222   �C       )          0    33125    materias 
   TABLE DATA           [   COPY public.materias (id, licenciatura, nombre, turno, nrc, grupo, horasemana) FROM stdin;
    public          postgres    false    219   _D       3           0    0    alumno-materias_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."alumno-materias_id_seq"', 101, true);
          public          postgres    false    210            4           0    0    alumnos_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.alumnos_id_seq', 86, true);
          public          postgres    false    212            5           0    0    docente-materias_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."docente-materias_id_seq"', 7, true);
          public          postgres    false    216            6           0    0    docentes_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.docentes_id_seq', 7, true);
          public          postgres    false    218            7           0    0    materia_salon_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.materia_salon_id_seq', 6, true);
          public          postgres    false    221            8           0    0    materias_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.materias_id_seq', 95, true);
          public          postgres    false    220            ~           2606    33130 $   alumno_materias alumno-materias_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.alumno_materias
    ADD CONSTRAINT "alumno-materias_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.alumno_materias DROP CONSTRAINT "alumno-materias_pkey";
       public            postgres    false    209            �           2606    33132    alumnos alumnos_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (matricula);
 >   ALTER TABLE ONLY public.alumnos DROP CONSTRAINT alumnos_pkey;
       public            postgres    false    211            �           2606    33134 "   cuenta_alumnos cuenta-alumnos_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.cuenta_alumnos
    ADD CONSTRAINT "cuenta-alumnos_pkey" PRIMARY KEY (matricula);
 N   ALTER TABLE ONLY public.cuenta_alumnos DROP CONSTRAINT "cuenta-alumnos_pkey";
       public            postgres    false    213            �           2606    33136 $   cuenta_docentes cuenta-docentes_pkey 
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
       public            postgres    false    217            �           2606    41189     materia_salon materia_salon_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.materia_salon
    ADD CONSTRAINT materia_salon_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.materia_salon DROP CONSTRAINT materia_salon_pkey;
       public            postgres    false    222            �           2606    33142    materias materias_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.materias
    ADD CONSTRAINT materias_pkey PRIMARY KEY (nrc);
 @   ALTER TABLE ONLY public.materias DROP CONSTRAINT materias_pkey;
       public            postgres    false    219            �           2606    33143    alumno_materias FK_alumno    FK CONSTRAINT     �   ALTER TABLE ONLY public.alumno_materias
    ADD CONSTRAINT "FK_alumno" FOREIGN KEY (matricula_alumno) REFERENCES public.alumnos(matricula);
 E   ALTER TABLE ONLY public.alumno_materias DROP CONSTRAINT "FK_alumno";
       public          postgres    false    209    211    3200            �           2606    33148    cuenta_alumnos FK_alumnos    FK CONSTRAINT     �   ALTER TABLE ONLY public.cuenta_alumnos
    ADD CONSTRAINT "FK_alumnos" FOREIGN KEY (matricula) REFERENCES public.alumnos(matricula);
 E   ALTER TABLE ONLY public.cuenta_alumnos DROP CONSTRAINT "FK_alumnos";
       public          postgres    false    3200    211    213            �           2606    33153    docente_materias FK_docente    FK CONSTRAINT     �   ALTER TABLE ONLY public.docente_materias
    ADD CONSTRAINT "FK_docente" FOREIGN KEY (numero_personal) REFERENCES public.docentes(no_personal);
 G   ALTER TABLE ONLY public.docente_materias DROP CONSTRAINT "FK_docente";
       public          postgres    false    217    215    3208            �           2606    33158    cuenta_docentes FK_docente    FK CONSTRAINT     �   ALTER TABLE ONLY public.cuenta_docentes
    ADD CONSTRAINT "FK_docente" FOREIGN KEY (no_personal) REFERENCES public.docentes(no_personal);
 F   ALTER TABLE ONLY public.cuenta_docentes DROP CONSTRAINT "FK_docente";
       public          postgres    false    3208    214    217            �           2606    33163    alumno_materias FK_materia    FK CONSTRAINT     �   ALTER TABLE ONLY public.alumno_materias
    ADD CONSTRAINT "FK_materia" FOREIGN KEY (ncr_materias) REFERENCES public.materias(nrc);
 F   ALTER TABLE ONLY public.alumno_materias DROP CONSTRAINT "FK_materia";
       public          postgres    false    209    3210    219            �           2606    33168    docente_materias FK_materia    FK CONSTRAINT     �   ALTER TABLE ONLY public.docente_materias
    ADD CONSTRAINT "FK_materia" FOREIGN KEY (ncr_materia) REFERENCES public.materias(nrc);
 G   ALTER TABLE ONLY public.docente_materias DROP CONSTRAINT "FK_materia";
       public          postgres    false    219    3210    215            �           2606    41190    materia_salon nrc    FK CONSTRAINT     p   ALTER TABLE ONLY public.materia_salon
    ADD CONSTRAINT nrc FOREIGN KEY (nrc) REFERENCES public.materias(nrc);
 ;   ALTER TABLE ONLY public.materia_salon DROP CONSTRAINT nrc;
       public          postgres    false    222    219    3210               �  x�e�KnA���0��yos�sd�b������0���1��9-j�>_&b��?��}m��:��$k�� ��+I��*���ߏ�j�흵T>_����1�T��H��ta�:Fia�&fi�.������D�eB�]�D�eF�]�/�=ys����h�E4�w��o"�!���mD��w��_�v����h�E4�w}��7�\�!�J����^�siȻM>�&�D�/�ɿg�w�7�!D�#S"�È���go�'�|M>�&_D���{��&B>��T�yG���N�t����h�E4�w���&B���R"�ˈ����{9�D���'��h�羆�s���?B��Q"�!��~/�8��h�I4�"�����^�i"�[��o%B������|����+��P�:���ك����(�~��g���� �]O      !   �  x���]r�6ǟ�S�r��GE�Uk��#uҦ�D�)����Z�V9C.�%E�"�v��%���$�=�<{�_�*��+��xx��`��(KUj���xlu0���(�]��i�<
��V�ʊ�����"·V�����Y�E��Q��Y�k���N��$Hܩ�m�:J�p��'\�?5?���0��H�>#�wM._�#N�?i#�v�~*t��sReη�E�+]f�?	�J��R�6�u+N*㷲��1]/�ݡ�}օ�Ϫ�k��GYJ����}�Yn��e�K�Q�R]�bE�K<�ΐs|u8(�7�j*�{�:�t���F@�|�����n�ԍ�$�7"��8�1`wF��⨇�g~W}��*�+�d"`[���`��+Q�.�葕.�C!{��(��^�=�*ǉ�Ώ���;�Pi���.�IMH�P�忝�U�f�YbD���p��.aK��x�F� ֵ�/���� ju��e!�b$��3�{�����,����o� ��UQ(q�[��X�~ r��c�0B�wl`i��D�w3�;l�@@>�Vj��6��q5G"�`^�Q�0Hg?��o��,d7����6b?B���"%l�������㈛"\���%�xs��Q��	*u2�hȨS�v��k��/��c�r���^ا]b��=6������E����ݺ1iO�|��l�M.����\.�+;@��@�;��]��ק���,3La���>������j\c����;��m��wb���v�M�������+ӌO�{ ��/͸�4I>q8H�V`y
~��y�y��`��H����� ��neC���oܶQ�äo��GH'1u˧����b�V����{P��7�������USķ3��0�"��d\���ό��[M ����}]�59�MnC���S��x�}o��f�5\��͑��2G^_�K}&�[�h����u2��]�<!�X|p���K�,P'��r����j�>GQ��q���P;�ݻ0�s��(���s��,�g 3Ȏ�E6�!;���~=�G��/7�E��o��q:�"�^��:�==��v�`۵��;��q�9l�oaf���m��v<�6� �7�pۉ�v�`{�q9�p�XFٝv��.'����ܓh'.�]A)��)�G����H0���=f����c6�1;}��0���mf��ӷ�3�N�f6�1;}��0��4fX�R0@���w�;�V�z(�ͮ�K���ϟnnn��8      #   �  x����r�0Dk�/��$Nv*���4��	;0g�����V\��X뙻eř�%��ќ��).���5.������m����c�O}��.]�����e���2���i�vs|\��n�_�1^��s�ss������ �TBJ�rp�@m?S6���@��dR y��L��k1��=�TNj�@��d*$� 7��S�L
$Ix�lR�aO$�4H$+���J$%S9Ƀ�e�� qc�D�e/�gJlؠ�{��r��F������ty��<ht9cz,O�5���r���5��p�|�F��ɷi4,�#X�����99{�8{M:'�џ�&e��@R�M
$�0�lR y����lR � 	on6)�$�}ʦ�|�6�:�;�n��~ar�M߭%���UU�#'[      $   !  x�}�=O�0�g燰Ŏ�o�
*�J�.�,��LS_����Ӕ���>="��0�;���=�T����?~��ȳ4�;��?%1��<2�����{���:X �,/���D¶5u�W�ӎxY0f��H��`��ru���@2�mG7�y�v��19L.+��7��T�� �k�왆_��!������ј58t���Dm���+:�S$�Ј���B�g�����'듰����j�$�����戵�;O��FA��CU�&e����*-AUI]jYo<�o�ļ      %   @   x�-˹�0���'��.�J�<��*t1M؂���Ed� Y6��O�jQ�B|��]`      '   �   x�u��j�0��~�Ҥmz-�v�v�EK4cP$jח<����1�QB����[:�L�4����z]�Cى�ᣃV{�;U�{��UVO�<a0i}wB\��F��v�Q���1c��"6��-4�򏚫�٘^��3�f����������]�����~'�Q�O��N���U|�GQ��B��*���0y�      ,   q   x�}���0c�E?�H|�����B>af�� @3��i�����|~hO�Y5`�Jd%�1��֪A�W#w�!��
l�Jd�0햚�`�^��4�R[Gc��F�>���,<�      )   �  x��Xێ�6}��
A!K�$?�M�.� ES�/}�x�S{���_��c�$j��z.��a���C���������6�ݾuc��`�y�]�)��զd�F=��'7���6u	V����Bk��1��ʈ�ҲcU���p�'���+�v�=R+���K�$��䘩�$����Mt�Ek����{�!�H��� ��Ǔ�� *���?���\7�c�s��N~|ӏg�J�] b�n���B"\YFǟ�ַ~gw.8���u�=��hB_�7ў�sPY�r���"y���d�y%��w�4���*��>ct��֏>�q��H�����`;GR��feNU�O�I���J��3��-�M���P���};G�Ȱm�<��&[�T�	A�F �S����?�2�fF��f^����䘉�oڽ��ݵ�s�l����[������]�騁�	��q58�����YF]#��o�B,D�����,x��;Ѳ�2K^�2f�I�xb�/���>�JLq쟦�vpD�t�F$(uˍ
�qp�x���i�S��H6R93 gd.�S3%G��c�믂W,(W
.ؚ)�sɵĸ"1����EFQFHp%M�rp~ўv.��"7�6������2�z^az��2#�Wǡg�*�9fTa$�5��S�!����~�$p~��Ly�;�i���4��QA ٝ߇;L���'���/kn��y$`?�x�J����{Y�^Y27��%{M�5��Jy��Ԃ�;<L(��Ăv�
F9���S�}�w�����g�D���sH�y{�1`^	h��.�S����*!$���|�,�O_`�^3e8t*��WŠ�#9�Ğ_]��m��o��wp��8ө��QF���SUb	g��T����_2���1~��[7��X���H��/�=�C꼰|��L{PI�B~[P:yd�"暸�	������l�>^i�:pM���+"P���b����Ív����2<[2����W��^q�����#�b�����T��d�}�[.�V,JL��wxRT���zҸا�~�v��iTB�u��T��ɧS�<�l����)�5SPgDSw�/v]�0f�ʔ|/�ݖ��0kx�-ԍjӰR#^b�;И���Is����.��s�%ukv�?�x��3���:Vt����@@�Rx����>g�-°Clqi[+��_��Z��S˛~��
n<#V���������oH���]2+~"�Ț�|ڎ\�0
9f\~�\sY2�����"\�����`����deg���[�1߰o��h���7yb��Ex|�`77-}�k#NOzï;Q���/u�/<��PX��W#/;,X&⇧��b�pkÓmR���l�}Oh�9?��ulݙ�L����nf�m�W�N����(t�U\d֙��l= �:s��տ�j�Z�fW<�T�ĉ5�
kF���*%�:�^!�/&;q����꓀�3����L}����=<<��\�K     