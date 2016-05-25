PGDMP         0                t           csus_development    9.5.3    9.5.3 4    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    16386    csus_development    DATABASE     �   CREATE DATABASE csus_development WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_GB.UTF-8' LC_CTYPE = 'en_GB.UTF-8';
     DROP DATABASE csus_development;
             marcus    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            �           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12393    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16435 	   hospitals    TABLE     #  CREATE TABLE hospitals (
    id integer NOT NULL,
    hospital_name text,
    hospital_post_code character varying,
    latitude numeric,
    longitude numeric,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    trust_id integer
);
    DROP TABLE public.hospitals;
       public         marcus    false    6            �            1259    16433    hospitals_id_seq    SEQUENCE     r   CREATE SEQUENCE hospitals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.hospitals_id_seq;
       public       marcus    false    189    6            �           0    0    hospitals_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE hospitals_id_seq OWNED BY hospitals.id;
            public       marcus    false    188            �            1259    16446    reviews    TABLE     &  CREATE TABLE reviews (
    id integer NOT NULL,
    review_title text,
    review_body text,
    sus_score numeric,
    csus_score numeric,
    star_rating integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id integer
);
    DROP TABLE public.reviews;
       public         marcus    false    6            �            1259    16444    reviews_id_seq    SEQUENCE     p   CREATE SEQUENCE reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.reviews_id_seq;
       public       marcus    false    191    6            �           0    0    reviews_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE reviews_id_seq OWNED BY reviews.id;
            public       marcus    false    190            �            1259    16388    schema_migrations    TABLE     K   CREATE TABLE schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         marcus    false    6            �            1259    16413    systems    TABLE     �   CREATE TABLE systems (
    id integer NOT NULL,
    system_name text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.systems;
       public         marcus    false    6            �            1259    16411    systems_id_seq    SEQUENCE     p   CREATE SEQUENCE systems_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.systems_id_seq;
       public       marcus    false    6    185            �           0    0    systems_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE systems_id_seq OWNED BY systems.id;
            public       marcus    false    184            �            1259    16424    trusts    TABLE     $  CREATE TABLE trusts (
    id integer NOT NULL,
    trust_name text,
    nhs_code character varying,
    trust_post_code character varying,
    latitude numeric,
    longitude numeric,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.trusts;
       public         marcus    false    6            �            1259    16422    trusts_id_seq    SEQUENCE     o   CREATE SEQUENCE trusts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.trusts_id_seq;
       public       marcus    false    6    187            �           0    0    trusts_id_seq    SEQUENCE OWNED BY     1   ALTER SEQUENCE trusts_id_seq OWNED BY trusts.id;
            public       marcus    false    186            �            1259    16397    users    TABLE     �  CREATE TABLE users (
    id integer NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.users;
       public         marcus    false    6            �            1259    16395    users_id_seq    SEQUENCE     n   CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       marcus    false    183    6            �           0    0    users_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE users_id_seq OWNED BY users.id;
            public       marcus    false    182            	           2604    16438    id    DEFAULT     ^   ALTER TABLE ONLY hospitals ALTER COLUMN id SET DEFAULT nextval('hospitals_id_seq'::regclass);
 ;   ALTER TABLE public.hospitals ALTER COLUMN id DROP DEFAULT;
       public       marcus    false    189    188    189            
           2604    16449    id    DEFAULT     Z   ALTER TABLE ONLY reviews ALTER COLUMN id SET DEFAULT nextval('reviews_id_seq'::regclass);
 9   ALTER TABLE public.reviews ALTER COLUMN id DROP DEFAULT;
       public       marcus    false    190    191    191                       2604    16416    id    DEFAULT     Z   ALTER TABLE ONLY systems ALTER COLUMN id SET DEFAULT nextval('systems_id_seq'::regclass);
 9   ALTER TABLE public.systems ALTER COLUMN id DROP DEFAULT;
       public       marcus    false    184    185    185                       2604    16427    id    DEFAULT     X   ALTER TABLE ONLY trusts ALTER COLUMN id SET DEFAULT nextval('trusts_id_seq'::regclass);
 8   ALTER TABLE public.trusts ALTER COLUMN id DROP DEFAULT;
       public       marcus    false    186    187    187                       2604    16400    id    DEFAULT     V   ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       marcus    false    183    182    183            �          0    16435 	   hospitals 
   TABLE DATA               z   COPY hospitals (id, hospital_name, hospital_post_code, latitude, longitude, created_at, updated_at, trust_id) FROM stdin;
    public       marcus    false    189   �7       �           0    0    hospitals_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('hospitals_id_seq', 1, false);
            public       marcus    false    188            �          0    16446    reviews 
   TABLE DATA               ~   COPY reviews (id, review_title, review_body, sus_score, csus_score, star_rating, created_at, updated_at, user_id) FROM stdin;
    public       marcus    false    191   �7       �           0    0    reviews_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('reviews_id_seq', 1, true);
            public       marcus    false    190            �          0    16388    schema_migrations 
   TABLE DATA               -   COPY schema_migrations (version) FROM stdin;
    public       marcus    false    181   :8       �          0    16413    systems 
   TABLE DATA               C   COPY systems (id, system_name, created_at, updated_at) FROM stdin;
    public       marcus    false    185   �8       �           0    0    systems_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('systems_id_seq', 3, true);
            public       marcus    false    184            �          0    16424    trusts 
   TABLE DATA               q   COPY trusts (id, trust_name, nhs_code, trust_post_code, latitude, longitude, created_at, updated_at) FROM stdin;
    public       marcus    false    187   �8       �           0    0    trusts_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('trusts_id_seq', 1, false);
            public       marcus    false    186            �          0    16397    users 
   TABLE DATA               �   COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
    public       marcus    false    183   9       �           0    0    users_id_seq    SEQUENCE SET     3   SELECT pg_catalog.setval('users_id_seq', 1, true);
            public       marcus    false    182                       2606    16443    hospitals_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY hospitals
    ADD CONSTRAINT hospitals_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.hospitals DROP CONSTRAINT hospitals_pkey;
       public         marcus    false    189    189                       2606    16454    reviews_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.reviews DROP CONSTRAINT reviews_pkey;
       public         marcus    false    191    191                       2606    16421    systems_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY systems
    ADD CONSTRAINT systems_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.systems DROP CONSTRAINT systems_pkey;
       public         marcus    false    185    185                       2606    16432    trusts_pkey 
   CONSTRAINT     I   ALTER TABLE ONLY trusts
    ADD CONSTRAINT trusts_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.trusts DROP CONSTRAINT trusts_pkey;
       public         marcus    false    187    187                       2606    16408 
   users_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         marcus    false    183    183                       1259    16462    index_hospitals_on_trust_id    INDEX     N   CREATE INDEX index_hospitals_on_trust_id ON hospitals USING btree (trust_id);
 /   DROP INDEX public.index_hospitals_on_trust_id;
       public         marcus    false    189                       1259    16456    index_reviews_on_user_id    INDEX     H   CREATE INDEX index_reviews_on_user_id ON reviews USING btree (user_id);
 ,   DROP INDEX public.index_reviews_on_user_id;
       public         marcus    false    191                       1259    16409    index_users_on_email    INDEX     G   CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);
 (   DROP INDEX public.index_users_on_email;
       public         marcus    false    183                       1259    16410 #   index_users_on_reset_password_token    INDEX     e   CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);
 7   DROP INDEX public.index_users_on_reset_password_token;
       public         marcus    false    183                       1259    16394    unique_schema_migrations    INDEX     Y   CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);
 ,   DROP INDEX public.unique_schema_migrations;
       public         marcus    false    181                       2606    16463    fk_rails_4f6eb8cd3b    FK CONSTRAINT     p   ALTER TABLE ONLY hospitals
    ADD CONSTRAINT fk_rails_4f6eb8cd3b FOREIGN KEY (trust_id) REFERENCES trusts(id);
 G   ALTER TABLE ONLY public.hospitals DROP CONSTRAINT fk_rails_4f6eb8cd3b;
       public       marcus    false    2067    187    189                       2606    16457    fk_rails_74a66bd6c5    FK CONSTRAINT     l   ALTER TABLE ONLY reviews
    ADD CONSTRAINT fk_rails_74a66bd6c5 FOREIGN KEY (user_id) REFERENCES users(id);
 E   ALTER TABLE ONLY public.reviews DROP CONSTRAINT fk_rails_74a66bd6c5;
       public       marcus    false    191    183    2063            �      x������ � �      �   b   x�3�,I-.��KWHT(J-�L-�,��,V(�,.I�U ��R�*J��rR9�8M���������������������������%>�?�=... Z-C      �   ?   x�M��	�PD�{��}���� �20��mH��>:����9e_������_S�qmq|�Q      �   `   x�}ͱ� ��L�pI `���RX`���������m뎑�G�,c���㬚����b)e��/]?�і��"5B��!�< X \��'%      �      x������ � �      �   �   x�3��M,J.-NJ,wH�M���K���T1JT14Pq�3)rr��M��5�.δ�M�7/��	�-�ͩ(�wN)v�27*���0I�p��OL+��"CN#C3]S]#SK+ 26�366710�'ehd�g ��H,�ʍ���K��r��qqq �K6_     