PGDMP     +    :                z            retail_final    14.6    14.6                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16446    retail_final    DATABASE     p   CREATE DATABASE retail_final WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE retail_final;
                postgres    false            ?            1259    16452    barang    TABLE     ?   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(50),
    harga integer,
    stok integer,
    id_supplier integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            ?            1259    16462 
   pembayaran    TABLE     x   CREATE TABLE public.pembayaran (
    id_pembayaran integer NOT NULL,
    tanggal_bayar date,
    total_bayar integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            ?            1259    16457    pembeli    TABLE     ?   CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying(50),
    jk character(1),
    alamat character varying(30)
);
    DROP TABLE public.pembeli;
       public         heap    postgres    false            ?            1259    16447    supplier    TABLE     ?   CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(50),
    no_hp character(15),
    alamat character varying(60)
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            ?          0    16452    barang 
   TABLE DATA           R   COPY public.barang (id_barang, nama_barang, harga, stok, id_supplier) FROM stdin;
    public          postgres    false    210   ?       ?          0    16462 
   pembayaran 
   TABLE DATA           O   COPY public.pembayaran (id_pembayaran, tanggal_bayar, total_bayar) FROM stdin;
    public          postgres    false    212   H       ?          0    16457    pembeli 
   TABLE DATA           G   COPY public.pembeli (id_pembeli, nama_pembeli, jk, alamat) FROM stdin;
    public          postgres    false    211   ?       ?          0    16447    supplier 
   TABLE DATA           M   COPY public.supplier (id_supplier, nama_supplier, no_hp, alamat) FROM stdin;
    public          postgres    false    209   ?       j           2606    16456    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    210            n           2606    16466    pembayaran pembayaran_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (id_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    212            l           2606    16461    pembeli pembeli_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);
 >   ALTER TABLE ONLY public.pembeli DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    211            h           2606    16451    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    209            o           2606    16467    barang fk_supplier_barang    FK CONSTRAINT     ?   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT fk_supplier_barang FOREIGN KEY (id_supplier) REFERENCES public.supplier(id_supplier) ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.barang DROP CONSTRAINT fk_supplier_barang;
       public          postgres    false    209    210    3176            ?   9  x?M??j? ??O??<????2??([??Rv?ۺU??h????h?h W߇~?
??`?j4{??0j|V??AȺ??矱J0]L?????a?A??VDN????vћ?Q?)2+???Fc??J?????b6??&?o? 	??VW3??&??2.G?D??I[?;??BY??mq?Y?????8??	???/k??$e;wr????V3n$?U%?q????T?2V|J֨95???<?4z???????y??Ӗ?Û?|??Ō???BP0-???p+?-炼??x?ǀyɹ??2?帄?8?KO?ۻW???x?????p?      ?   ?   x?M?K!?5??	C+w????10?+???R?IX??u48NS?Dp??\????X?z5???1#X????k??^
)}J?%?^6????~? ?7?<?JT8?BO4??J???&g?Rm[~??T???i???9?      ?   ?   x?U?ͪ?0?ד??O ???.?????ݸmhG?Gm?????_NΙO?%Ԩ??ڀB?%T?G51?1$?bU?2????hF/d1gJÈ??Z??b???k???p?N3???~??zZ)?'.????%?8?S(?DV??ȥ??s?(]?d?g?B
???P4c?k|?)_Bu#m?<??~a2\??i??%??x?	!???Y9      ?   ?  x?m??N?0???S???I?&???*UjA??e??&ve; ??;vmW?????3c,?b/??~<p???j???| r??=?HlwΚ?4??????}??`EvǞU??c5ř?????1-E?"WY^?'t???^?????̮}????y????|PW@^,??[	?????????I??z/?ƪI?|6?n??bΊ+??O?L"??)?W?{?oLg,l??@?T???I??X?9"??,?t8v*X???arõ??????p6?jըQ????|?,o???<??*O`	*?}nX?&	?F????ަ$B?SiX?q?[^?sˇ??k)??VM}}?g?Ny????e?????^!z?gwF?xX?????"@?ˢ?l?O????/I??)     