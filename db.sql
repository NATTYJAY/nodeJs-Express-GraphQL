PGDMP         5        
        x           template     11.7 (Ubuntu 11.7-1.pgdg19.10+1) #   11.7 (Ubuntu 11.7-0ubuntu0.19.10.1)     ~           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            ?           1262    215745    template    DATABASE     z   CREATE DATABASE template WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE template;
             template    false                        2615    215746    template    SCHEMA        CREATE SCHEMA template;
    DROP SCHEMA template;
             template    false            ?            1259    215749    Contact    TABLE     {  CREATE TABLE template."Contact" (
    id integer NOT NULL,
    "firstName" character varying(255) NOT NULL,
    "lastName" character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    phone character varying(13),
    "createdDate" timestamp without time zone DEFAULT now() NOT NULL,
    "lastModifiedDate" timestamp without time zone DEFAULT now() NOT NULL
);
    DROP TABLE template."Contact";
       template         template    false    4            ?            1259    215747    Contact_id_seq    SEQUENCE     ?   CREATE SEQUENCE template."Contact_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE template."Contact_id_seq";
       template       template    false    4    197            ?           0    0    Contact_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE template."Contact_id_seq" OWNED BY template."Contact".id;
            template       template    false    196            ?
           2604    215752 
   Contact id    DEFAULT     p   ALTER TABLE ONLY template."Contact" ALTER COLUMN id SET DEFAULT nextval('template."Contact_id_seq"'::regclass);
 =   ALTER TABLE template."Contact" ALTER COLUMN id DROP DEFAULT;
       template       template    false    197    196    197            {          0    215749    Contact 
   TABLE DATA               s   COPY template."Contact" (id, "firstName", "lastName", email, phone, "createdDate", "lastModifiedDate") FROM stdin;
    template       template    false    197   ?       ?           0    0    Contact_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('template."Contact_id_seq"', 3, true);
            template       template    false    196                        2606    215759    Contact Contact_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY template."Contact"
    ADD CONSTRAINT "Contact_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY template."Contact" DROP CONSTRAINT "Contact_pkey";
       template         template    false    197            {   ?   x?}?M
?0??u??@??K?f?A??Ph???X?!?>x??z??⥶%l???V????x?????sAHh ?"s1*??(3?NqP????AS??4N6?A.?zH?;???}*%?$??;	? O?L?     