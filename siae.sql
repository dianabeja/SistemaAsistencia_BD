PGDMP     4    	            	    {            SIAE #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1) #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1) )    P           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            Q           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            R           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            S           1262    18290    SIAE    DATABASE     [   CREATE DATABASE "SIAE" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'es_US.UTF-8';
    DROP DATABASE "SIAE";
                obedhipolito    false            �            1259    18310    alumno-materias    TABLE     �   CREATE TABLE public."alumno-materias" (
    id integer NOT NULL,
    matricula_alumno character varying(10) NOT NULL,
    ncr_materias integer NOT NULL
);
 %   DROP TABLE public."alumno-materias";
       public         heap    obedhipolito    false            �            1259    18309    alumno-materias_id_seq    SEQUENCE     �   ALTER TABLE public."alumno-materias" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."alumno-materias_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          obedhipolito    false    214            �            1259    18292    alumnos    TABLE     �   CREATE TABLE public.alumnos (
    id integer NOT NULL,
    nombre character varying(60) NOT NULL,
    matricula character varying(10) NOT NULL,
    sexo character varying(10) NOT NULL,
    licenciatura character varying(30) NOT NULL
);
    DROP TABLE public.alumnos;
       public         heap    obedhipolito    false            �            1259    18291    alumnos_id_seq    SEQUENCE     �   ALTER TABLE public.alumnos ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.alumnos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          obedhipolito    false    210            �            1259    18357    cuenta-alumnos    TABLE     �   CREATE TABLE public."cuenta-alumnos" (
    matricula character varying NOT NULL,
    correo character varying(30) NOT NULL,
    "contraseña" character varying(8) NOT NULL,
    "url-imagen" character varying(250) NOT NULL
);
 $   DROP TABLE public."cuenta-alumnos";
       public         heap    obedhipolito    false            �            1259    18360    cuenta-docentes    TABLE     �   CREATE TABLE public."cuenta-docentes" (
    no_personal integer NOT NULL,
    correo character varying(50) NOT NULL,
    "contraseña" character varying(8) NOT NULL,
    "url-imagen" character varying(250) NOT NULL
);
 %   DROP TABLE public."cuenta-docentes";
       public         heap    obedhipolito    false            �            1259    18326    docente-materias    TABLE     �   CREATE TABLE public."docente-materias" (
    id integer NOT NULL,
    numero_personal integer NOT NULL,
    ncr_materia integer NOT NULL
);
 &   DROP TABLE public."docente-materias";
       public         heap    obedhipolito    false            �            1259    18325    docente-materias_id_seq    SEQUENCE     �   ALTER TABLE public."docente-materias" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."docente-materias_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          obedhipolito    false    216            �            1259    18332    docentes    TABLE       CREATE TABLE public.docentes (
    id integer NOT NULL,
    nombre character varying(60) NOT NULL,
    no_personal integer NOT NULL,
    sexo character varying(10) NOT NULL,
    facultad character varying(30) NOT NULL,
    cargo character varying(20) NOT NULL
);
    DROP TABLE public.docentes;
       public         heap    obedhipolito    false            �            1259    18331    docentes_id_seq    SEQUENCE     �   ALTER TABLE public.docentes ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.docentes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          obedhipolito    false    218            �            1259    18304    materias    TABLE     �   CREATE TABLE public.materias (
    id integer NOT NULL,
    licenciatura character varying(30) NOT NULL,
    nombre character varying(100) NOT NULL,
    turno character varying(10) NOT NULL,
    nrc integer NOT NULL,
    grupo integer NOT NULL
);
    DROP TABLE public.materias;
       public         heap    obedhipolito    false            �            1259    18303    materias_id_seq    SEQUENCE     �   ALTER TABLE public.materias ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.materias_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          obedhipolito    false    212            G          0    18310    alumno-materias 
   TABLE DATA           O   COPY public."alumno-materias" (id, matricula_alumno, ncr_materias) FROM stdin;
    public          obedhipolito    false    214   22       C          0    18292    alumnos 
   TABLE DATA           L   COPY public.alumnos (id, nombre, matricula, sexo, licenciatura) FROM stdin;
    public          obedhipolito    false    210   O2       L          0    18357    cuenta-alumnos 
   TABLE DATA           Z   COPY public."cuenta-alumnos" (matricula, correo, "contraseña", "url-imagen") FROM stdin;
    public          obedhipolito    false    219   '7       M          0    18360    cuenta-docentes 
   TABLE DATA           ]   COPY public."cuenta-docentes" (no_personal, correo, "contraseña", "url-imagen") FROM stdin;
    public          obedhipolito    false    220   �8       I          0    18326    docente-materias 
   TABLE DATA           N   COPY public."docente-materias" (id, numero_personal, ncr_materia) FROM stdin;
    public          obedhipolito    false    216   }9       K          0    18332    docentes 
   TABLE DATA           R   COPY public.docentes (id, nombre, no_personal, sexo, facultad, cargo) FROM stdin;
    public          obedhipolito    false    218   �9       E          0    18304    materias 
   TABLE DATA           O   COPY public.materias (id, licenciatura, nombre, turno, nrc, grupo) FROM stdin;
    public          obedhipolito    false    212   m:       T           0    0    alumno-materias_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."alumno-materias_id_seq"', 1, false);
          public          obedhipolito    false    213            U           0    0    alumnos_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.alumnos_id_seq', 84, true);
          public          obedhipolito    false    209            V           0    0    docente-materias_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."docente-materias_id_seq"', 1, false);
          public          obedhipolito    false    215            W           0    0    docentes_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.docentes_id_seq', 7, true);
          public          obedhipolito    false    217            X           0    0    materias_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.materias_id_seq', 94, true);
          public          obedhipolito    false    211            �           2606    18314 $   alumno-materias alumno-materias_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."alumno-materias"
    ADD CONSTRAINT "alumno-materias_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."alumno-materias" DROP CONSTRAINT "alumno-materias_pkey";
       public            obedhipolito    false    214            �           2606    18296    alumnos alumnos_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (matricula);
 >   ALTER TABLE ONLY public.alumnos DROP CONSTRAINT alumnos_pkey;
       public            obedhipolito    false    210            �           2606    18366 "   cuenta-alumnos cuenta-alumnos_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."cuenta-alumnos"
    ADD CONSTRAINT "cuenta-alumnos_pkey" PRIMARY KEY (matricula);
 P   ALTER TABLE ONLY public."cuenta-alumnos" DROP CONSTRAINT "cuenta-alumnos_pkey";
       public            obedhipolito    false    219            �           2606    18378 $   cuenta-docentes cuenta-docentes_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public."cuenta-docentes"
    ADD CONSTRAINT "cuenta-docentes_pkey" PRIMARY KEY (no_personal);
 R   ALTER TABLE ONLY public."cuenta-docentes" DROP CONSTRAINT "cuenta-docentes_pkey";
       public            obedhipolito    false    220            �           2606    18330 &   docente-materias docente-materias_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."docente-materias"
    ADD CONSTRAINT "docente-materias_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."docente-materias" DROP CONSTRAINT "docente-materias_pkey";
       public            obedhipolito    false    216            �           2606    18336    docentes docentes_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.docentes
    ADD CONSTRAINT docentes_pkey PRIMARY KEY (no_personal);
 @   ALTER TABLE ONLY public.docentes DROP CONSTRAINT docentes_pkey;
       public            obedhipolito    false    218            �           2606    18308    materias materias_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.materias
    ADD CONSTRAINT materias_pkey PRIMARY KEY (nrc);
 @   ALTER TABLE ONLY public.materias DROP CONSTRAINT materias_pkey;
       public            obedhipolito    false    212            �           2606    18315    alumno-materias FK_alumno    FK CONSTRAINT     �   ALTER TABLE ONLY public."alumno-materias"
    ADD CONSTRAINT "FK_alumno" FOREIGN KEY (matricula_alumno) REFERENCES public.alumnos(matricula);
 G   ALTER TABLE ONLY public."alumno-materias" DROP CONSTRAINT "FK_alumno";
       public          obedhipolito    false    210    214    3236            �           2606    18367    cuenta-alumnos FK_alumnos    FK CONSTRAINT     �   ALTER TABLE ONLY public."cuenta-alumnos"
    ADD CONSTRAINT "FK_alumnos" FOREIGN KEY (matricula) REFERENCES public.alumnos(matricula);
 G   ALTER TABLE ONLY public."cuenta-alumnos" DROP CONSTRAINT "FK_alumnos";
       public          obedhipolito    false    3236    210    219            �           2606    18347    docente-materias FK_docente    FK CONSTRAINT     �   ALTER TABLE ONLY public."docente-materias"
    ADD CONSTRAINT "FK_docente" FOREIGN KEY (numero_personal) REFERENCES public.docentes(no_personal);
 I   ALTER TABLE ONLY public."docente-materias" DROP CONSTRAINT "FK_docente";
       public          obedhipolito    false    216    3244    218            �           2606    18372    cuenta-docentes FK_docente    FK CONSTRAINT     �   ALTER TABLE ONLY public."cuenta-docentes"
    ADD CONSTRAINT "FK_docente" FOREIGN KEY (no_personal) REFERENCES public.docentes(no_personal);
 H   ALTER TABLE ONLY public."cuenta-docentes" DROP CONSTRAINT "FK_docente";
       public          obedhipolito    false    220    3244    218            �           2606    18320    alumno-materias FK_materia    FK CONSTRAINT     �   ALTER TABLE ONLY public."alumno-materias"
    ADD CONSTRAINT "FK_materia" FOREIGN KEY (ncr_materias) REFERENCES public.materias(nrc);
 H   ALTER TABLE ONLY public."alumno-materias" DROP CONSTRAINT "FK_materia";
       public          obedhipolito    false    3238    212    214            �           2606    18352    docente-materias FK_materia    FK CONSTRAINT     �   ALTER TABLE ONLY public."docente-materias"
    ADD CONSTRAINT "FK_materia" FOREIGN KEY (ncr_materia) REFERENCES public.materias(nrc);
 I   ALTER TABLE ONLY public."docente-materias" DROP CONSTRAINT "FK_materia";
       public          obedhipolito    false    212    216    3238            G      x������ � �      C   �  x���]r�6ǟ�S�r��GE�Uk��#eҦ�DD(�����֭r�\�K�E,�>K,�?9>{y�"��U�W*c;�<�o���Q����a�����`TU+Q�&�|yF�|�����E�_��Ma��4�45�t!��<���O����I��S!�u����-O�j~���a$ܑ�}F��\���F�4�F�z�T�<+f�ʜo�7�R�t�I�$�*�r�I	�4�֭8����"(�t�(v�R�Y�>�����e)�v4�}g�[�9.�F�Kit���.�:;C��=���Ȫ��F�5���^���J�oX��AS7���ވ\W�Gƀ�����F��]�����BJ&�ՙQ9
&˽_��Y�B:����B����S�r��]���]^�
��1Y��b�Ԅd�\���]�mv�%F?Q�W�Q�����Ћgid�	�a][�*_���VGq)_�;F�H;�/[����2�����V� x�Q�G��,���"��>�#����V�IT�4�E��s����Q�m���1���X��9Y�{���9@B8��<@���$`�e!�)�e��*�v��(a���~/G��]�/�ŗ#$��\MP���GCF���S�\X�����=6(�Z�=��Q�u�ng'(���P~_�֍I{��sC್6��"�Jsy��� i��$�v�?���س�0���3�,��C|2j�W��qp�)�Ǒw���<w�� ��B�6�W#>�!�щ�W�O�{��/͸�4I>q8H�V`y
~��y���q��b$�S�\�|����[�7nۨ�0�[��R�IL���/1��X��e������w��w��}o����8����'� ��0���s�	��p��{�k�&���m��z�1���-S�����r��9r�R����p���=p�U�8�N��K�'����Qp	�ꤙ@\��>��\���(�r1.4��jG=�{F�`��u�`ב���`�ћȆ9d�^��_����Ǎ�Ⱦ�m �� N�Sd�G�^���s؎l��rǔ�6�0���5l���7�s؎��& ��p��D�`;q�=]���L�M,��N�ݍ\�
���d���ڮ���ɔ�#�`��	e�$�cv��a����1昝��l�av�:�a����̆f��3昝��l�a��w777���      L   ~  x�}��n�0Dg�c��I{�?x�R�)�!͐���ש����F�Qw:�R��V�4����|�~|�}_���gw�'�n����������˩�N��8	�
"���8K1o�0m���8����%L��8J�R���4@Xp��[wGي,a��E�Q��#Pk�Dð�8jʀ"��"��pW��~WE��U�*�U"V]Y2&L����`)gi�B�&L�e��U�7�0�7��C�ȼ�G�>j�#B��ѹ���`�!�7�GQG�=v4���;"���0��)r/(T�*����=
Gx�H���7��x�-ʽ �>6�c�|�^�uQ�7�7m��(``	X$]��ٱ����`��Y��,��.
XX�W?��_w9�_<O��      M   �   x�}н
� �Y�h��5t�f���&V����/R�$��r�8�0J�����`��r�f�}���X��EY�h���)	�&���u�*�
�F8�UY�Y2/Lʐ��^i�7���D�5��;VI�+R��Q��?��	cĐ5ҍ�̍Kgvs�>K���.6�B��Ac�2���      I      x������ � �      K   �   x�u��j�0��~�Ҥmz-�v�v�EK4cP$jח<����1�QB����[:�L�4����z]�Cى�ᣃV{�;U�{��UVO�<a0i}wB\��F��v�Q���1c��"6��-4�򏚫�٘^��3�f����������]�����~'�Q�O��N���U|�GQ��B��*���0y�      E   �  x��Xێ�6}��
A!K�$?�M�H��)җ�h<ک �=�e��������&Kg=�m����.�C���Ԕ��~ۼ��m����~������]mJQ>ȥ��0�@6ƺ���6,�T֚��0�+��Z�`$*2��?��7�c�*m����%[�)[J��f�i�wsC�h}q����	EW�:Bq��1� !�������!tS?�P��'6���V�B+�-'U�Ji�*Kr��ocw~Э-���!b��"(>ç �N�>�Q��/�K �S�+��8�.4�<x0�Ο/p�)���o��/88@����,��YQ�4���e.��L�<��߂����"a�ۙ0�7(�����*:,=Q�4/	�rPN����ןW�YgUBr��X<])�R���W�>l����u��y� NI�j���.υ,��KD�k�D���F]"	�H�k$\z-��q�����-��,�x�$*H��W�<9��I&f����SCPrc�8}�C`:���7
a�-'.X %��ތ�0'����4r�r S�.Zsqr%��'>|��t�_�*Vb͐s��VSL���!�x�cу		l��E
,/Z�ؕ]���=?����a�����L���Q�Y���B6U��&c*(���ݯ��՘��ӗw2L=ހ�����=�\R��P��� Hwˉ�s=a�+�����J���ZX�g���%��T�s�en���H�3!��y�Z\*(��4 �c�p����А~�@j ���9Wr�?q��5v�q��� �\��|Pȇ
�'>��b<�0�a@^(�$t"!�E�z��T)�Ĕ_C��m��>�S���KQ4�R����̵�\̧*s�氽Ta��*/s>I|�؉O���?�B-�9���O�{��[�*��<\P=�@[H>A4��L��,}̆�w�zW��FfLʼ���B�
l0��5�a����5>$����1�2�Q���c�3梁�&	ǈ[N�Z@X�\K�<�B�{(�:���;�8��p���E�������S��j[�Ы�\����e1�yz�&�=� ��@U	�����El���ʊ�m|
[&RB´$�Ufp'����KX�o@=�C�_�d�iE
<��D�w{���n˕���r
Rͷ�ZXR��ϕ�*Y��.�Vš?���U�O�oz-v!��V]��+�%�S��.�%��a���v�gBrv<ZO	�]sX���	�>��C�x��`r��c��7�E.ۉo��L:���y�=-v��m�jnZ���N姴��]�*U���/����	.��[�/�/����lc�pWãoR3����U�(%��w�l}Zw�2&sʭ�R�仿��wNx������"����f�|s�B�/mnvK��{>�+�R�0d{x0rr�L�z��z1�D�E��.~�A&}�e��:�����DN�)     