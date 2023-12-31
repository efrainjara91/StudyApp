PGDMP     .    :            
    {           data_base_lp5    14.5    14.5 7    ,           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            -           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            .           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            /           1262    49177    data_base_lp5    DATABASE     l   CREATE DATABASE data_base_lp5 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Paraguay.1252';
    DROP DATABASE data_base_lp5;
                postgres    false            �            1259    49235    comments    TABLE     �   CREATE TABLE public.comments (
    id integer NOT NULL,
    text text NOT NULL,
    topic_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.comments;
       public         heap    postgres    false            �            1259    49234    comments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.comments_id_seq;
       public          postgres    false    218            0           0    0    comments_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;
          public          postgres    false    217            �            1259    49277    shared_topics    TABLE     �   CREATE TABLE public.shared_topics (
    id integer NOT NULL,
    user_shared_id integer NOT NULL,
    topic_id integer NOT NULL,
    user_destination_id integer NOT NULL
);
 !   DROP TABLE public.shared_topics;
       public         heap    postgres    false            �            1259    49276    shared_topics_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shared_topics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.shared_topics_id_seq;
       public          postgres    false    220            1           0    0    shared_topics_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.shared_topics_id_seq OWNED BY public.shared_topics.id;
          public          postgres    false    219            �            1259    49178    themes    TABLE       CREATE TABLE public.themes (
    id integer NOT NULL,
    create_date timestamp without time zone,
    name character varying,
    description character varying,
    keywords character varying,
    owner_user_id integer,
    order_index integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.themes;
       public         heap    postgres    false            �            1259    49183    themes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.themes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.themes_id_seq;
       public          postgres    false    209            2           0    0    themes_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.themes_id_seq OWNED BY public.themes.id;
          public          postgres    false    210            �            1259    49184    themes_properties    TABLE     �   CREATE TABLE public.themes_properties (
    id integer NOT NULL,
    theme_id integer,
    property_name character varying,
    property_value character varying
);
 %   DROP TABLE public.themes_properties;
       public         heap    postgres    false            �            1259    49189    themes_properties_id_seq    SEQUENCE     �   CREATE SEQUENCE public.themes_properties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.themes_properties_id_seq;
       public          postgres    false    211            3           0    0    themes_properties_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.themes_properties_id_seq OWNED BY public.themes_properties.id;
          public          postgres    false    212            �            1259    49190    topics    TABLE     &  CREATE TABLE public.topics (
    id integer NOT NULL,
    create_date timestamp without time zone,
    name character varying,
    topic_id integer,
    "order" integer,
    priority integer,
    color character varying,
    owner_user_id integer,
    order_index integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.topics;
       public         heap    postgres    false            �            1259    49195    topics_id_seq    SEQUENCE     �   CREATE SEQUENCE public.topics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.topics_id_seq;
       public          postgres    false    213            4           0    0    topics_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.topics_id_seq OWNED BY public.topics.id;
          public          postgres    false    214            �            1259    49196    users    TABLE       CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying,
    last_name character varying,
    avatar character varying,
    email character varying,
    password character varying,
    deleted boolean,
    token character varying
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    49201    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    215            5           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    216            {           2604    49238    comments id    DEFAULT     j   ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);
 :   ALTER TABLE public.comments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            }           2604    49280    shared_topics id    DEFAULT     t   ALTER TABLE ONLY public.shared_topics ALTER COLUMN id SET DEFAULT nextval('public.shared_topics_id_seq'::regclass);
 ?   ALTER TABLE public.shared_topics ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            u           2604    49202 	   themes id    DEFAULT     f   ALTER TABLE ONLY public.themes ALTER COLUMN id SET DEFAULT nextval('public.themes_id_seq'::regclass);
 8   ALTER TABLE public.themes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            w           2604    49203    themes_properties id    DEFAULT     |   ALTER TABLE ONLY public.themes_properties ALTER COLUMN id SET DEFAULT nextval('public.themes_properties_id_seq'::regclass);
 C   ALTER TABLE public.themes_properties ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211            x           2604    49204 	   topics id    DEFAULT     f   ALTER TABLE ONLY public.topics ALTER COLUMN id SET DEFAULT nextval('public.topics_id_seq'::regclass);
 8   ALTER TABLE public.topics ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213            z           2604    49205    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            '          0    49235    comments 
   TABLE DATA           K   COPY public.comments (id, text, topic_id, user_id, created_at) FROM stdin;
    public          postgres    false    218   �@       )          0    49277    shared_topics 
   TABLE DATA           Z   COPY public.shared_topics (id, user_shared_id, topic_id, user_destination_id) FROM stdin;
    public          postgres    false    220   ZB                 0    49178    themes 
   TABLE DATA           j   COPY public.themes (id, create_date, name, description, keywords, owner_user_id, order_index) FROM stdin;
    public          postgres    false    209   �B                  0    49184    themes_properties 
   TABLE DATA           X   COPY public.themes_properties (id, theme_id, property_name, property_value) FROM stdin;
    public          postgres    false    211   �C       "          0    49190    topics 
   TABLE DATA           w   COPY public.topics (id, create_date, name, topic_id, "order", priority, color, owner_user_id, order_index) FROM stdin;
    public          postgres    false    213   ZD       $          0    49196    users 
   TABLE DATA           ]   COPY public.users (id, name, last_name, avatar, email, password, deleted, token) FROM stdin;
    public          postgres    false    215   �D       6           0    0    comments_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.comments_id_seq', 21, true);
          public          postgres    false    217            7           0    0    shared_topics_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.shared_topics_id_seq', 29, true);
          public          postgres    false    219            8           0    0    themes_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.themes_id_seq', 7, true);
          public          postgres    false    210            9           0    0    themes_properties_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.themes_properties_id_seq', 14, true);
          public          postgres    false    212            :           0    0    topics_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.topics_id_seq', 17, true);
          public          postgres    false    214            ;           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 14, true);
          public          postgres    false    216            �           2606    49243    comments comments_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public            postgres    false    218            �           2606    49282     shared_topics shared_topics_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.shared_topics
    ADD CONSTRAINT shared_topics_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.shared_topics DROP CONSTRAINT shared_topics_pkey;
       public            postgres    false    220                       2606    49207    themes themes_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.themes
    ADD CONSTRAINT themes_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.themes DROP CONSTRAINT themes_pkey;
       public            postgres    false    209            �           2606    49209 (   themes_properties themes_properties_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.themes_properties
    ADD CONSTRAINT themes_properties_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.themes_properties DROP CONSTRAINT themes_properties_pkey;
       public            postgres    false    211            �           2606    49211    topics topics_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.topics
    ADD CONSTRAINT topics_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.topics DROP CONSTRAINT topics_pkey;
       public            postgres    false    213            �           2606    49213    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    215            �           2606    49244    comments comments_topic_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_topic_id_fkey FOREIGN KEY (topic_id) REFERENCES public.topics(id);
 I   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_topic_id_fkey;
       public          postgres    false    3203    218    213            �           2606    49249    comments comments_user_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 H   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_user_id_fkey;
       public          postgres    false    215    3205    218            �           2606    49283 )   shared_topics shared_topics_topic_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.shared_topics
    ADD CONSTRAINT shared_topics_topic_id_fkey FOREIGN KEY (topic_id) REFERENCES public.topics(id);
 S   ALTER TABLE ONLY public.shared_topics DROP CONSTRAINT shared_topics_topic_id_fkey;
       public          postgres    false    213    3203    220            �           2606    49293 4   shared_topics shared_topics_user_destination_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.shared_topics
    ADD CONSTRAINT shared_topics_user_destination_id_fkey FOREIGN KEY (user_destination_id) REFERENCES public.users(id);
 ^   ALTER TABLE ONLY public.shared_topics DROP CONSTRAINT shared_topics_user_destination_id_fkey;
       public          postgres    false    215    220    3205            �           2606    49288 /   shared_topics shared_topics_user_shared_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.shared_topics
    ADD CONSTRAINT shared_topics_user_shared_id_fkey FOREIGN KEY (user_shared_id) REFERENCES public.users(id);
 Y   ALTER TABLE ONLY public.shared_topics DROP CONSTRAINT shared_topics_user_shared_id_fkey;
       public          postgres    false    220    215    3205            �           2606    49214     themes themes_owner_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.themes
    ADD CONSTRAINT themes_owner_user_id_fkey FOREIGN KEY (owner_user_id) REFERENCES public.users(id);
 J   ALTER TABLE ONLY public.themes DROP CONSTRAINT themes_owner_user_id_fkey;
       public          postgres    false    3205    215    209            �           2606    49219 1   themes_properties themes_properties_theme_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.themes_properties
    ADD CONSTRAINT themes_properties_theme_id_fkey FOREIGN KEY (theme_id) REFERENCES public.themes(id);
 [   ALTER TABLE ONLY public.themes_properties DROP CONSTRAINT themes_properties_theme_id_fkey;
       public          postgres    false    211    209    3199            �           2606    49224     topics topics_owner_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.topics
    ADD CONSTRAINT topics_owner_user_id_fkey FOREIGN KEY (owner_user_id) REFERENCES public.users(id);
 J   ALTER TABLE ONLY public.topics DROP CONSTRAINT topics_owner_user_id_fkey;
       public          postgres    false    215    3205    213            �           2606    49229    topics topics_topic_id_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.topics
    ADD CONSTRAINT topics_topic_id_fkey FOREIGN KEY (topic_id) REFERENCES public.topics(id);
 E   ALTER TABLE ONLY public.topics DROP CONSTRAINT topics_topic_id_fkey;
       public          postgres    false    213    3203    213            '   Z  x����N�0���S��b;YZ�@[;턶I�KG��-ChoO(������$�?����Cm����/����{���}y}�zE�,���VȊ����S��3C�K�g+�ᒨڝ��ˮ��?�-Ē��γ�z�o�]P��8'��ֈ*�����v�q0$��x���g%Ҁ���F\DagJ�4�g~ݿ��f��S�p!�3s��kL]��b��t`���y�6:�S���tUW�پ@��J��A
��:�����EW���뺚��r��f�5,o.�+Hm�]�?�>�E^2Y��.i�6v�_�B<WjBդ�IM�I�� ~bȱ�3Z�yM��      )   G   x�5���0Cѳ=�nJ�.�?	���˚ԡF�04`ZK[�W�����9�+�w���<�]�}o����8         �   x�}��j!�>�<�&�&)��rؐ��z�eX�bPgQ�з�YBwKAPq���'���m�a�>�R/��X(`q=B�.�C�h(B}q��I,����1P�,Z��a���w�q�<�]���p��@�����"�ܯ�<z�ɕP������-�M�w���Ԁ~����z5Ӆ��F�h���z��+����Q^[g�Yݝl�w�?y�/��i��^~l��?�Gyg          �   x�5�Q�0D�gO�	L[(��'��P��V��k��f�y�Ɍ��{���JQϴta���.=�S�	Z�E���cv>��&NT	ʁ3,1r�#{�G�a�E���ha���װd�5bE{!��8�o�c��:[+a��GvQ�o{^_�WX��o��a��.�����"�p�@�      "   a   x�34�4202�54�54R00�#Π��Ң�̲̔�NCsNCNCNec�4�?N.CS�C�2��\�9�*�9���L�L�2@]�\1z\\\ ��      $   -  x�u��v�0E��cX�d�Y�
�"�\NB$��"(����A���}Ε5�NVI��d 7 Nj���RUA:���4�`W5-��j���3+�E\�y��=�+��d�*�.��80p�[4�cʸ$�9�%Ɋ&)���.�m̶̅��>���6���b��=�@��b'�R�~����!���'غǪ/E��f)Qx��A=./<6;vd��n��Bk<]�ϱ��m�FAν�Ƴ�S2>�9�n�e,�j�#����ώ�����Z��&˂`;+C��7;�g���,��I�M��j�?     