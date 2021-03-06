PGDMP     -                    y           cvven_colloque    13.2    13.2     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16450    cvven_colloque    DATABASE     j   CREATE DATABASE cvven_colloque WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_France.1252';
    DROP DATABASE cvven_colloque;
                postgres    false            ?            1259    16519 	   evenement    TABLE     :  CREATE TABLE public.evenement (
    num_even integer NOT NULL,
    intitule character varying,
    theme character varying,
    date_debut date,
    date_fin date,
    nb_part_max integer,
    description character varying,
    organisateur character varying,
    type_even character varying,
    salle integer
);
    DROP TABLE public.evenement;
       public         heap    postgres    false            ?            1259    16540    inscrit    TABLE     e   CREATE TABLE public.inscrit (
    num_even integer NOT NULL,
    num_participant integer NOT NULL
);
    DROP TABLE public.inscrit;
       public         heap    postgres    false            ?            1259    16511    participant    TABLE       CREATE TABLE public.participant (
    num_pers integer NOT NULL,
    nom character varying,
    prenom character varying,
    email character varying,
    phone character varying,
    date_naiss date,
    organisation character varying,
    observation character varying(512)
);
    DROP TABLE public.participant;
       public         heap    postgres    false            ?            1259    16527    salle    TABLE     ?   CREATE TABLE public.salle (
    num_salle integer NOT NULL,
    nom_salle character varying,
    description character varying,
    capacite integer
);
    DROP TABLE public.salle;
       public         heap    postgres    false            ?            1259    16555    user    TABLE     ~   CREATE TABLE public."user" (
    id smallint NOT NULL,
    email character varying(50),
    password character varying(50)
);
    DROP TABLE public."user";
       public         heap    postgres    false            ?            1259    16467    utilisateur    TABLE     ?   CREATE TABLE public.utilisateur (
    num_user integer NOT NULL,
    nom character varying,
    prenom character varying,
    email character varying,
    password character varying
);
    DROP TABLE public.utilisateur;
       public         heap    postgres    false            ?          0    16519 	   evenement 
   TABLE DATA           ?   COPY public.evenement (num_even, intitule, theme, date_debut, date_fin, nb_part_max, description, organisateur, type_even, salle) FROM stdin;
    public          postgres    false    202   ?       ?          0    16540    inscrit 
   TABLE DATA           <   COPY public.inscrit (num_even, num_participant) FROM stdin;
    public          postgres    false    204   ?       ?          0    16511    participant 
   TABLE DATA           q   COPY public.participant (num_pers, nom, prenom, email, phone, date_naiss, organisation, observation) FROM stdin;
    public          postgres    false    201   ?       ?          0    16527    salle 
   TABLE DATA           L   COPY public.salle (num_salle, nom_salle, description, capacite) FROM stdin;
    public          postgres    false    203   ?       ?          0    16555    user 
   TABLE DATA           5   COPY public."user" (id, email, password) FROM stdin;
    public          postgres    false    205   ?       ?          0    16467    utilisateur 
   TABLE DATA           M   COPY public.utilisateur (num_user, nom, prenom, email, password) FROM stdin;
    public          postgres    false    200   ?       9           2606    16476    utilisateur email 
   CONSTRAINT     M   ALTER TABLE ONLY public.utilisateur
    ADD CONSTRAINT email UNIQUE (email);
 ;   ALTER TABLE ONLY public.utilisateur DROP CONSTRAINT email;
       public            postgres    false    200            ?           2606    16526    evenement evenement_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.evenement
    ADD CONSTRAINT evenement_pkey PRIMARY KEY (num_even);
 B   ALTER TABLE ONLY public.evenement DROP CONSTRAINT evenement_pkey;
       public            postgres    false    202            C           2606    16544    inscrit inscrit_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.inscrit
    ADD CONSTRAINT inscrit_pkey PRIMARY KEY (num_even, num_participant);
 >   ALTER TABLE ONLY public.inscrit DROP CONSTRAINT inscrit_pkey;
       public            postgres    false    204    204            =           2606    16518    participant participant_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.participant
    ADD CONSTRAINT participant_pkey PRIMARY KEY (num_pers);
 F   ALTER TABLE ONLY public.participant DROP CONSTRAINT participant_pkey;
       public            postgres    false    201            A           2606    16534    salle salle_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.salle
    ADD CONSTRAINT salle_pkey PRIMARY KEY (num_salle);
 :   ALTER TABLE ONLY public.salle DROP CONSTRAINT salle_pkey;
       public            postgres    false    203            ;           2606    16474    utilisateur user_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.utilisateur
    ADD CONSTRAINT user_pkey PRIMARY KEY (num_user);
 ?   ALTER TABLE ONLY public.utilisateur DROP CONSTRAINT user_pkey;
       public            postgres    false    200            E           2606    16559    user user_pkey1 
   CONSTRAINT     O   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey1 PRIMARY KEY (id);
 ;   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey1;
       public            postgres    false    205            G           2606    16545    inscrit num_even    FK CONSTRAINT     z   ALTER TABLE ONLY public.inscrit
    ADD CONSTRAINT num_even FOREIGN KEY (num_even) REFERENCES public.evenement(num_even);
 :   ALTER TABLE ONLY public.inscrit DROP CONSTRAINT num_even;
       public          postgres    false    202    204    2879            H           2606    16550    inscrit num_participant    FK CONSTRAINT     ?   ALTER TABLE ONLY public.inscrit
    ADD CONSTRAINT num_participant FOREIGN KEY (num_participant) REFERENCES public.participant(num_pers);
 A   ALTER TABLE ONLY public.inscrit DROP CONSTRAINT num_participant;
       public          postgres    false    204    201    2877            F           2606    16535    evenement salle    FK CONSTRAINT     }   ALTER TABLE ONLY public.evenement
    ADD CONSTRAINT salle FOREIGN KEY (salle) REFERENCES public.salle(num_salle) NOT VALID;
 9   ALTER TABLE ONLY public.evenement DROP CONSTRAINT salle;
       public          postgres    false    202    203    2881            ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   ?   x???AN?0E??)fY?%?F? ??`?`䎃ǩz?9?/?@T??*6#??Ҽ?i??L?ؒzdA?	z???Ӳ?c?p?GK?'	??R*1O6?\$Y??I?(?????9?O#C?{??)?1??M4FB/?_!W???]??휈|???ϩ5?V?s???WtR???T8`둭T?5zs%???Mij?Q`e???"lc ??E???#??R??]????֨w      ?      x?????? ? ?      ?   5   x?3?t??/-??H,??L??L????????\Β??ss3?=... ??     