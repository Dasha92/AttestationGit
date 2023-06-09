PGDMP     6                    {         	   Sportshop    15.1    15.1 5    5           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            6           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            7           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            8           1262    16681 	   Sportshop    DATABASE        CREATE DATABASE "Sportshop" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Sportshop";
                postgres    false            �            1259    16683    category    TABLE     [   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    16682    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    215            9           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    214            �            1259    16690    image    TABLE     ~   CREATE TABLE public.image (
    id integer NOT NULL,
    file_name character varying(255),
    product_id integer NOT NULL
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    16689    image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.image_id_seq;
       public          postgres    false    217            :           0    0    image_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public          postgres    false    216            �            1259    16697    orders    TABLE       CREATE TABLE public.orders (
    id integer NOT NULL,
    count integer NOT NULL,
    date_time timestamp(6) without time zone,
    number character varying(255),
    price real NOT NULL,
    status smallint,
    person_id integer NOT NULL,
    product_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    16696    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    219            ;           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    218            �            1259    16704    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    login character varying(100),
    password character varying(255),
    role character varying(255)
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    16703    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    221            <           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    220            �            1259    16713    product    TABLE     �  CREATE TABLE public.product (
    id integer NOT NULL,
    date_time timestamp(6) without time zone,
    description text NOT NULL,
    price real NOT NULL,
    seller character varying(255) NOT NULL,
    title text NOT NULL,
    warehouse character varying(255) NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT product_price_check CHECK ((price >= (1)::double precision))
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    16723    product_cart    TABLE     m   CREATE TABLE public.product_cart (
    id integer NOT NULL,
    person_id integer,
    product_id integer
);
     DROP TABLE public.product_cart;
       public         heap    postgres    false            �            1259    16722    product_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_cart_id_seq;
       public          postgres    false    225            =           0    0    product_cart_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_cart_id_seq OWNED BY public.product_cart.id;
          public          postgres    false    224            �            1259    16712    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    223            >           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    222            ~           2604    16686    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                       2604    16693    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16700 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    16707 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    16716 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16726    product_cart id    DEFAULT     r   ALTER TABLE ONLY public.product_cart ALTER COLUMN id SET DEFAULT nextval('public.product_cart_id_seq'::regclass);
 >   ALTER TABLE public.product_cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            (          0    16683    category 
   TABLE DATA                 public          postgres    false    215   �9       *          0    16690    image 
   TABLE DATA                 public          postgres    false    217   :       ,          0    16697    orders 
   TABLE DATA                 public          postgres    false    219   S?       .          0    16704    person 
   TABLE DATA                 public          postgres    false    221   Z@       0          0    16713    product 
   TABLE DATA                 public          postgres    false    223   MA       2          0    16723    product_cart 
   TABLE DATA                 public          postgres    false    225   �S       ?           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 6, true);
          public          postgres    false    214            @           0    0    image_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.image_id_seq', 45, true);
          public          postgres    false    216            A           0    0    orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 3, true);
          public          postgres    false    218            B           0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 2, true);
          public          postgres    false    220            C           0    0    product_cart_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.product_cart_id_seq', 5, true);
          public          postgres    false    224            D           0    0    product_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.product_id_seq', 9, true);
          public          postgres    false    222            �           2606    16688    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    215            �           2606    16695    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    217            �           2606    16702    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    219            �           2606    16711    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    221            �           2606    16728    product_cart product_cart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT product_cart_pkey;
       public            postgres    false    225            �           2606    16721    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    223            �           2606    16730 $   product uk_qka6vxqdy1dprtqnx9trdd47c 
   CONSTRAINT     `   ALTER TABLE ONLY public.product
    ADD CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c UNIQUE (title);
 N   ALTER TABLE ONLY public.product DROP CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c;
       public            postgres    false    223            �           2606    16736 "   orders fk1b0m4muwx1t377w9if3w6wwqn    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn FOREIGN KEY (person_id) REFERENCES public.person(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn;
       public          postgres    false    219    221    3212            �           2606    16746 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    223    3206    215            �           2606    16741 "   orders fk787ibr3guwp6xobrpbofnv7le    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk787ibr3guwp6xobrpbofnv7le FOREIGN KEY (product_id) REFERENCES public.product(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk787ibr3guwp6xobrpbofnv7le;
       public          postgres    false    3214    219    223            �           2606    16731 !   image fkgpextbyee3uk9u6o2381m7ft1    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1 FOREIGN KEY (product_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.image DROP CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1;
       public          postgres    false    217    3214    223            �           2606    16756 (   product_cart fkhpnrxdy3jhujameyod08ilvvw    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw;
       public          postgres    false    225    223    3214            �           2606    16751 (   product_cart fksgnkc1ko2i1o9yr2p63ysq3rn    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn FOREIGN KEY (person_id) REFERENCES public.person(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn;
       public          postgres    false    221    225    3212            (   �   x���v
Q���W((M��L�KN,IM�/�T��L�Q�K�M�Ts�	uV�0�QP���bÅ��^�paۅ�.v�kZsy�f�)Ƞ��_�4����U(�(���qa+&��L^6d/�y� #�� J_C      *   (  x������G���;�GUI��p4��������_��������|�4t�A���O�>}��7��x��ݏ��}����2�/��_��˗��_~[���~_o�����k�����}��7?ܾ���/D���D�i�r�������r�=�����/>��W_�������l�=���mj3&�޽�^wf/R�B;С(��T�c���S��8���r:�N���Z�Е�󞄿�Ծz�q7�Պq�W���s^+�&n��v�=1��i�b��f��T��e�t��{mYE�����&.�j��Giy�G���dϖx�$����
�1e��#tn�J�����=j���I�B���)����:䎉+�9+_�V�k�f��d&�Q�͘3v��c=�\|������f���[F{ԝ�li����{�v�8�+T�
S_�C�)�T.Jl�2ǣ��i��.5�J;��P���D��F
��n~��b�EW�4��`���N��q��Y�ױXU�d�{~�}4�e�ZmTa�ځ{nLa�u.W��ξ�����ǍLc�\so:�*:_dW��L�����Ƭ՜b/�-8�2(4�j⽭?Z�<�<�*`��f GKP�;���2f�g�kx���2�ј`[�L�&�"՝)ڮ�r^`�\�/c�5M��J��`[qqjH�s�t��|g�e�1�a���̄��[���LT�wt���*��ug���V�s��X[;Wj.��N�M��b�4�X̺�ܚQт�P �ќ�N(@6�w�dZ��2��XX��5l��m�u@�eP���J8�)���2v����@�B�@������-�!����Ul9�s������B�b�R�~#=؏E�<�X���4���'ڻ����u�Cv�!��b�i���-6!m����L�G��ܣ���@����},�Z��8��X��6�"����⑹Ͱ�9����b=�'�V�S���Ѩ���J��ζ���b�t�@�o#�b��n6�x��НW�׼�R4.��X���2"R��R�+چ��X%��������b��l��O
����ӑ�{��G]-U6����b30��U�K�D�hj�X�#e��¨ol�/c������,鍹΃�L������Η��XL=���L���H��AHIiM�fK�o��دOJ;�؄|�����&��xu���8L������b��;L��f��^�K�	�<扞���e�����v��V(�⡱
#,,����\F>lb�[�,�c�a�|6Z�;/���F����_*�m�Bc����}| ���'�?�>��b�      ,   �   x���=k�0�=��$ �Ig���!���Ф]�$�`Hl��_%Э�d���������������_��S�v]# k�h�/Kw�����$`���⼸e�SL+C���ЬaI��^�>'ؑ �%EZ*�H��B�g�drܦnn��ԹGi�e��%5�[dfS�4W�y\K7��eS?G�4�� s*���Gп�Vd3SZk�N@
\D��*��AK���GR�U��q���86�o//�C      .   �   x���OO�0 �;������H<-��*���g�b(tK(б�^v1޽����H@�0$����Y)r��N�,Da�R�Dm�&S�*���dɗ Y��K���ȊJ��t+��V6��Ѷ����_x��|<C6p:Z��W~��B�g߷�mn}�s�~'��|�ȿ`���+��?�̈́�z��:��ֱ��()��QO����A�7:�{8�rj]�/,�97��� ��]�      0      x��[�n�}�h��0\�K.��q|�X�%'�_Y&b"�hPT�-��HG�_;��+���pwG;{�/��B�$U��{zvfuA �0(/wfz���N�:�<�ҥ�^�lοt��y���6�V���z���sv���ueg㍝�w6��ƍ�ۛ��ln]̻ۛW�׮mlfgs����+�ooݼA�҃��~�ͷΙ�=s���.��+�y�^�7��ͥZ�T�׫���z��Z�/7����'�,�$az�L�8�%�fɤ��^%��_��}��G��i;�����7��a�_1ɇ4�8=���$2�`�OB��F��t7�M� =Nߧ'|�,������L&4�7��Ɵ%�������a�鱡B#�K��(c��,�34���E��4��X�)��.��VDS��쯗h���uJ�F�n<O7������x<y|�O��y�2�S}̈́��%��������I������v����u��`����F�C���h<�3$�ӳXqɈi'л��x$���n���.��6�w�8�[˖�ە�bռ��.}��/��	������ ��Sy4<��N��ާ�wdexz"s&�����-��Ezv��m�%5��w�dJ��'�L~���aP��{��>	�"��&�#����w��U���r�}O?����}���.��݆n�$#z�=	ZB\2�l1�>/٥lO�S�E�L���a22�>�~���i�2	ڌ1�7v��=v��m�	n�d��[j���sxi���O��k1g�O��~���έ�f-�o�����`R!\Z����>J�Mv�;	���*�p�K���9���N?�[�iO�aS��h~c
�W_���d��!�����~q��O���9�n�7��je�U]�c���ں�q`����T���N�W�_0�����3���8��O	/i�a4�ux`al�'p�cm��i|qW�\�[CO���M����) �'����;��`��cp����+����@�; X?4\G����]
�}���!Aoak�@�]�([H1��M�z!��)^�Sb<*�#�؜ś9������}A/I1�ép����"N���p�mN�<O�*�b��Q7��^���� :��دG^��e�8�כ����O��h�Ԃ5����7l�.�"[���^>��<�<tS}��	�^q�Z��TX�܂V[�5��f���5Z-� ���J}������K�w_�«,�.�=�}��P;"�<mְ\�Poy��s ��ݞ#a,�7=�ۚ?9.5����ެVˍ���ch�7߼�m�SM��H��#61�$������ۈ�)��|l�Yf|�Oh3dCM�#�_W��@���0��(.��z4-�T3,�9��\d�p�/�i�U�7�C�B&�rS��>R4r1�$���]�Zi��M\�e	~U4�L�r qX�B���i*O��hPb1LX` ��Q6[�h���&8%[��kha�	p���w�\=�����!H���ls�V�v�W�(�7�9��=H(���n���su&,X�3���yG��1L^��y��J��������ʼ2��Q{�_�t=r��}��mg`w.���>ߗp����=����r�HA�q�VH���s�")7����£ZO
�D�{�Zb�X�ɠw׭U3�2V�b���-h�XQa�E���;_��|Ɂ����" ȩ�Cc�E���;�D����Id*�Z���\��I�X�}�3�:���,V����$��3Y������=����Oe�wXSh�O�iC�$�2"Ad��ɀ�-�m�E����w��vO^��&$�甝���yu}�YY]Ym�,�sf�4�]\��J��������^���oX#�@��,�Q!6�3�$�b�а���98tzVb����{4;������m6?Ԁ���q��R�'t W��8hC��<�<fBU{)����~����,%d6C�)��տK�A��<B�����d�vB
s���,R�U����;�|{,Qmށ6���A$��B;��� ��6jၽ��H�4N���{OŅx.2���ز {�lXx�c�}�J2����q.�V��(��1� ��f��oBO%��kG�I&��o0^������˞�k�ˡz�D��:�`!�c���B�)�3ӌ�I�1�ӳ�L��¯B�ߖ/��*�l��7O�y��|�ɰ �{����Z�Qh��� {�.�`i�*�9�w����z>x�Mw}܈�Al"Ƞ@s ��+et���͢D_]��T*�D���ӳ2���ODM���:�}�~�4Y���s����w����r�n.�h�y�e��Ꙩ ��f�>rp$,v�/�������k��h[쫠9���9�OE���Я��H 6��)5'R�	?�+701� U�"PJH�,���s�99V4:u�7ێ��i�vc	����q��Ԣ'Vvp�ѧ�R�в?��d�u�	َ�d-���Y�+��n����qc�y����rX#\&~��*��+�z�V/$�N]:HZ���v��e�8� Լʶ+�¾[�3�հ������s�T+	h��Et�K\Bp��!D��)��%@���ɂ\I4�o0����@�e�V`�B�j��̻<k�� X���<�[�heW�[�zm)� �_a&��.�1r�-��J��6G��mH�"�F"�b�Ǯ��_t5���8?*��ǱR���*�� �<^E��c�H�(d���*kdJ����D��&��|�գI��B�,痖��ytD��U9�,��荴���?��b}�R�.�i�w�����G )0Bn�%�_)�5����̧�v����7�!"�DjkE��0P�y�Q�T+��Yk4�LseA������ͤ���V"ȕk9Y�F�F���h(p�T� ):Z�e}<�����t�� ���a�[J��H�İE�~����<U&�T�1�D�u�ݑ�u�S��ˬv�S)ЌY9�v��$��Z�����7vv�3�v��7�T>|Y��||�^�&����E�n��pS�j{m�֪��5WWjڧ�y��FZ��/M�B�-�<F�����9N����1�ze�W��K�~�,���cT�
��<��{�cՏ�d�}?�;I��k���"��6���@����"�޲(��"2T�-����k�\��QQP*�%���=Q"��t�>8�A�/�P����J����R"z~x��)^�ŀ�A�'�	ڊ��p�m�*�/�L	���όh�l�"��L� I��P�V�����~9up&�(��`LYBO�P�p�l�*+�&�i���9��Ă>�$K�9͗�;	V���_��4��5����}�b҄&?�P�V�4�$�fZ|W�����UXiU&��́#1Œ�}G?`2���B?Y&�E ��,LU+��z�=F��	�s?�=@
E�-��em�9����*[K\h�^��z�4(n�)�J]v )��j�ʮ��f�ʶв�]��Ԑ�]O@�@K�:*]��e�f=0DFNw��/5'���n���z��t�?(��8G EKٱ���8ϗ�!�ŋ[���4W��*���nb�앝<S2��Ղ�ݟi��+�Tzh���b��$T!�4��Ѐ�&n���~�H����D�.���*�j�)<�����7�^٬7�>�(X�6Us���˫��.����z5��H`(�Jr���j(V��^oUVW��fS'8C�B�BA�rie<P־+�Щ+cg���ɜ	�*[�?�4�ޫU�w�� SvX����_#-)�ӯ"Kzb4<=�g a&|/�X�E�9� �z��B��O�>�H\�\���
:�)O�vV�5�ya��jT�ʇ�s/�Q�}s���)ڳZ(�E$.�oC�t50JU�@4z�#!����>���0��d$��=N잩D
�\Tv/ag�W��43�SS��Tq�s_����zĸܧx~{��!G�Pb�.?����!^!��[�Wؓ|N��3�Lx�;�@�we>�;���}�>�4�W��"$
I��/��+n�>�e�X@���9
u�� `  dXA��V[�]|��K,2�$��G������^3/\�U�5W���i���ں������Z�[��Jse������P悺E{Vv�}/�7S�&
�t��h�C���K������N!�O�چ�LC�B������r��_J�!|z�A2��B��9�.��.P�L.,l�?��-GH죹�L��i�
���L)T�w!��`q�-J}��C�1������1Tl{�����ȳ�*d��bW��X�lOr�[VL]=����iN#����Ef���M]i3aE�������5�%.wE��1��_H.]+t��H�ݓ�j�j5�_�Z�D�� ��[M�ς�&X7��_��A��;=�k/|���Cj^뾚���v�v�Hޠ_�מ૑�x�'�3o�;x����B�I97�W��|���S�J~��8�<-*�rC�F����Uݹv��A�=SI�UJ��	�ӿ'�qK���H[�eE���Y�.�-X����}�C����K�sdqA��C�k��Љl9�3(�� t���ȡ!�s8��س��� ~A?���Q�yӡ9c����E0pDp@`����{��li�˰��1��D��-�������m�s�;s濸!�      2   
   x���         