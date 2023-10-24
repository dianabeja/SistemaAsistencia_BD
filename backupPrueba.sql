PGDMP     $    &    
        	    {            sistema    14.9    14.9                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16397    sistema    DATABASE     d   CREATE DATABASE sistema WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE sistema;
                postgres    false            �            1259    16398    alumnos    TABLE     3  CREATE TABLE public.alumnos (
    id integer NOT NULL,
    nombres character varying(25),
    apellidos character varying(25),
    matricula integer NOT NULL,
    telefono integer NOT NULL,
    sexo character varying(25),
    fechanacimiento character varying(25),
    licenciatura character varying(25)
);
    DROP TABLE public.alumnos;
       public         heap    postgres    false            �            1259    16401    cuentas_docente    TABLE     �   CREATE TABLE public.cuentas_docente (
    numero_personal integer NOT NULL,
    correo character varying(100),
    contrasena character varying(100),
    url_imagen character varying(255)
);
 #   DROP TABLE public.cuentas_docente;
       public         heap    postgres    false            �            1259    16404    docentes    TABLE     7  CREATE TABLE public.docentes (
    id integer NOT NULL,
    nombres character varying(25),
    apellidos character varying(25),
    numero_personal integer NOT NULL,
    telefono integer NOT NULL,
    sexo character varying(25),
    fechanacimiento character varying(25),
    facultad character varying(100)
);
    DROP TABLE public.docentes;
       public         heap    postgres    false            �            1259    16407    docentes_materias    TABLE     j   CREATE TABLE public.docentes_materias (
    numero_personal integer NOT NULL,
    nrc integer NOT NULL
);
 %   DROP TABLE public.docentes_materias;
       public         heap    postgres    false            �            1259    16410    materias    TABLE     �   CREATE TABLE public.materias (
    id integer NOT NULL,
    licenciatura character varying(25),
    nombre character varying(40),
    turno character varying(25),
    grupo integer NOT NULL,
    nrc integer NOT NULL,
    cupo integer NOT NULL
);
    DROP TABLE public.materias;
       public         heap    postgres    false            �            1259    16413    salones    TABLE     u   CREATE TABLE public.salones (
    salon integer NOT NULL,
    edificio integer NOT NULL,
    nrc integer NOT NULL
);
    DROP TABLE public.salones;
       public         heap    postgres    false            	          0    16398    alumnos 
   TABLE DATA           s   COPY public.alumnos (id, nombres, apellidos, matricula, telefono, sexo, fechanacimiento, licenciatura) FROM stdin;
    public          postgres    false    209          
          0    16401    cuentas_docente 
   TABLE DATA           Z   COPY public.cuentas_docente (numero_personal, correo, contrasena, url_imagen) FROM stdin;
    public          postgres    false    210   T                 0    16404    docentes 
   TABLE DATA           v   COPY public.docentes (id, nombres, apellidos, numero_personal, telefono, sexo, fechanacimiento, facultad) FROM stdin;
    public          postgres    false    211   X                  0    16407    docentes_materias 
   TABLE DATA           A   COPY public.docentes_materias (numero_personal, nrc) FROM stdin;
    public          postgres    false    212   �!                 0    16410    materias 
   TABLE DATA           U   COPY public.materias (id, licenciatura, nombre, turno, grupo, nrc, cupo) FROM stdin;
    public          postgres    false    213   �!                 0    16413    salones 
   TABLE DATA           7   COPY public.salones (salon, edificio, nrc) FROM stdin;
    public          postgres    false    214   ]#       p           2606    16417    alumnos alumnos_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (matricula);
 >   ALTER TABLE ONLY public.alumnos DROP CONSTRAINT alumnos_pkey;
       public            postgres    false    209            r           2606    16419 $   cuentas_docente cuentas_docente_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.cuentas_docente
    ADD CONSTRAINT cuentas_docente_pkey PRIMARY KEY (numero_personal);
 N   ALTER TABLE ONLY public.cuentas_docente DROP CONSTRAINT cuentas_docente_pkey;
       public            postgres    false    210            t           2606    16421    docentes docentes_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.docentes
    ADD CONSTRAINT docentes_pkey PRIMARY KEY (numero_personal);
 @   ALTER TABLE ONLY public.docentes DROP CONSTRAINT docentes_pkey;
       public            postgres    false    211            z           2606    16423    materias materias_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.materias
    ADD CONSTRAINT materias_pkey PRIMARY KEY (nrc);
 @   ALTER TABLE ONLY public.materias DROP CONSTRAINT materias_pkey;
       public            postgres    false    213            v           2606    16425 -   docentes_materias unique_nrc_per_num_personal 
   CONSTRAINT     g   ALTER TABLE ONLY public.docentes_materias
    ADD CONSTRAINT unique_nrc_per_num_personal UNIQUE (nrc);
 W   ALTER TABLE ONLY public.docentes_materias DROP CONSTRAINT unique_nrc_per_num_personal;
       public            postgres    false    212            x           2606    16427 $   docentes_materias unique_num_per_nrc 
   CONSTRAINT     o   ALTER TABLE ONLY public.docentes_materias
    ADD CONSTRAINT unique_num_per_nrc UNIQUE (numero_personal, nrc);
 N   ALTER TABLE ONLY public.docentes_materias DROP CONSTRAINT unique_num_per_nrc;
       public            postgres    false    212    212            {           2606    16428 +   cuentas_docente fk_cuentas_docente_docentes    FK CONSTRAINT     �   ALTER TABLE ONLY public.cuentas_docente
    ADD CONSTRAINT fk_cuentas_docente_docentes FOREIGN KEY (numero_personal) REFERENCES public.docentes(numero_personal);
 U   ALTER TABLE ONLY public.cuentas_docente DROP CONSTRAINT fk_cuentas_docente_docentes;
       public          postgres    false    3188    210    211            |           2606    16433    docentes_materias fk_nrc    FK CONSTRAINT     w   ALTER TABLE ONLY public.docentes_materias
    ADD CONSTRAINT fk_nrc FOREIGN KEY (nrc) REFERENCES public.materias(nrc);
 B   ALTER TABLE ONLY public.docentes_materias DROP CONSTRAINT fk_nrc;
       public          postgres    false    212    3194    213            }           2606    16438    docentes_materias fk_num_per    FK CONSTRAINT     �   ALTER TABLE ONLY public.docentes_materias
    ADD CONSTRAINT fk_num_per FOREIGN KEY (numero_personal) REFERENCES public.docentes(numero_personal);
 F   ALTER TABLE ONLY public.docentes_materias DROP CONSTRAINT fk_num_per;
       public          postgres    false    212    3188    211            	   .  x���AN�0EדS�ȱ��Y��H]Pa�fh�h�Ė&I���%@�U( P�Y���f����5b�;�-̽��X#��8PR������5�۱%�Ae"��=SaJ��5֑1����6�!�ԏ�\5#��bNu+�e	fVN�y�:�'�ݳ=	���r7]�Vl|�L^Tn��<����̔P��T���Jr���ˎZ� ��̶���oO�p,IP��D�~�r���H
�j�pĲ�kזm��P���%F�V�T�"�C>��eX���q�T�ɥeT(���,~"����Β$� ����      
   �   x�ՏAN�0Eǰ�hii1�񛟘8s&�A_�Z�ZY���pr���\��0ra�nF��/t]6�i�^����F�"}����C�:��s�l�% $����ک>ȐO`�=078nH)'*�=j�v��N<'�Xxt �����#�~l>���\6��}b�h���αފ�I�����c��,�Ts���y�z���~�\W*���Vj@Ɍ3�I�&f�ƥ��C#�(뷦��of���         3  x���Kj�0���:A��ȏe�#��RB骛�51YCe�P�)���*���]y%!���i���a��(�x����@��PZ�RA����}3:��V���F���1^h��3��X�ŗx�Ƴ��|�>Spm��E~ ��ֹ鲈J�%�\-%�S7�x�c�UVS�p>����:�b�]�jY��`*��Z�x�H��X�
�����=�p>�#M���1�ы�euU.�*Ez�������M��'�<{�^0���^��\�i���~���U��G-���)���	㯉[�Sa!U�]p�?����U�e�C�,         8   x�]ȱ�0E�:���]��QJs�]_ɳ1C��3Bx^M������:��'�1         j  x�u�Mn�0���)|�*��,eâRU$��f�Ȓ��mZ�=z��C�n�,��{���l�y˖`Ѳ�
���3��Jg��ق�[yI�/F����bKfE��MDJBʀT��Ђ1ZJ$�޹O0��RF�* � f�J�G�	`����2Uj%x������,C�^�O�2����a�(�b���s��?��$�*Zn��`�7{��|��:sꆘ���ډ�*�h�+3ze�&���b[����+7'ut2o�'`����GFK��>��N��̠�`�~Et1Nl���i߆�a��[���q᮳����?��t�
P	�Ђ��v�I:9n�[���,9]��ӾO:˩��y��W
�%         (   x�3�4�4400�2��̌�,8� �2��H����� O��     