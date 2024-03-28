PGDMP     7                     |            project    15.4    15.4 5    Q           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            R           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            S           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            T           1262    16415    project    DATABASE     z   CREATE DATABASE project WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE project;
                postgres    false            �            1259    16606    blood_report    TABLE     �   CREATE TABLE public.blood_report (
    rid integer NOT NULL,
    wbc integer,
    rbc integer,
    haemoglobin integer,
    blood_grp character varying(20),
    stid integer,
    pid integer
);
     DROP TABLE public.blood_report;
       public         heap    postgres    false            �            1259    16591    blood_stock    TABLE     �   CREATE TABLE public.blood_stock (
    stid integer NOT NULL,
    add_date date,
    quantity integer,
    type character varying(20)
);
    DROP TABLE public.blood_stock;
       public         heap    postgres    false            �            1259    16586    bloodbk_emp    TABLE     Y   CREATE TABLE public.bloodbk_emp (
    eid integer NOT NULL,
    stid integer NOT NULL
);
    DROP TABLE public.bloodbk_emp;
       public         heap    postgres    false            �            1259    16596    bloodstk_eqp    TABLE     Z   CREATE TABLE public.bloodstk_eqp (
    eqid integer NOT NULL,
    rid integer NOT NULL
);
     DROP TABLE public.bloodstk_eqp;
       public         heap    postgres    false            �            1259    16576    donor    TABLE     R   CREATE TABLE public.donor (
    pid integer NOT NULL,
    quantity_don integer
);
    DROP TABLE public.donor;
       public         heap    postgres    false            �            1259    16571 	   emp_equip    TABLE     W   CREATE TABLE public.emp_equip (
    eqid integer NOT NULL,
    eid integer NOT NULL
);
    DROP TABLE public.emp_equip;
       public         heap    postgres    false            �            1259    16551    employee    TABLE     �   CREATE TABLE public.employee (
    eid integer NOT NULL,
    fname character varying(20),
    lname character varying(20),
    join_date date
);
    DROP TABLE public.employee;
       public         heap    postgres    false            �            1259    16601 	   equipment    TABLE     �   CREATE TABLE public.equipment (
    eqid integer NOT NULL,
    eq_type character varying(20),
    quantity integer,
    cost money,
    condition character(1)
);
    DROP TABLE public.equipment;
       public         heap    postgres    false            �            1259    16566    person    TABLE     I  CREATE TABLE public.person (
    pid integer NOT NULL,
    gender character varying(10),
    age integer,
    blood_grp character varying(3),
    fname character varying(20),
    lname character varying(20),
    city character varying(25),
    pin_code character varying(10),
    email character varying(255),
    eid integer
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    16581 	   recipient    TABLE     m   CREATE TABLE public.recipient (
    pid integer NOT NULL,
    curr_disease character varying(30) NOT NULL
);
    DROP TABLE public.recipient;
       public         heap    postgres    false            �            1259    16556    salared_employee    TABLE     U   CREATE TABLE public.salared_employee (
    eid integer NOT NULL,
    salary money
);
 $   DROP TABLE public.salared_employee;
       public         heap    postgres    false            �            1259    16561 	   volunteer    TABLE     S   CREATE TABLE public.volunteer (
    eid integer NOT NULL,
    duration interval
);
    DROP TABLE public.volunteer;
       public         heap    postgres    false            N          0    16606    blood_report 
   TABLE DATA                 public          postgres    false    225   �:       K          0    16591    blood_stock 
   TABLE DATA                 public          postgres    false    222   �;       J          0    16586    bloodbk_emp 
   TABLE DATA                 public          postgres    false    221   <       L          0    16596    bloodstk_eqp 
   TABLE DATA                 public          postgres    false    223   t<       H          0    16576    donor 
   TABLE DATA                 public          postgres    false    219   �<       G          0    16571 	   emp_equip 
   TABLE DATA                 public          postgres    false    218   &=       C          0    16551    employee 
   TABLE DATA                 public          postgres    false    214   }=       M          0    16601 	   equipment 
   TABLE DATA                 public          postgres    false    224   	>       F          0    16566    person 
   TABLE DATA                 public          postgres    false    217   �>       I          0    16581 	   recipient 
   TABLE DATA                 public          postgres    false    220   �?       D          0    16556    salared_employee 
   TABLE DATA                 public          postgres    false    215   T@       E          0    16561 	   volunteer 
   TABLE DATA                 public          postgres    false    216   �@       �           2606    16610    blood_report blood_report_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.blood_report
    ADD CONSTRAINT blood_report_pkey PRIMARY KEY (rid);
 H   ALTER TABLE ONLY public.blood_report DROP CONSTRAINT blood_report_pkey;
       public            postgres    false    225            �           2606    16595    blood_stock blood_stock_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.blood_stock
    ADD CONSTRAINT blood_stock_pkey PRIMARY KEY (stid);
 F   ALTER TABLE ONLY public.blood_stock DROP CONSTRAINT blood_stock_pkey;
       public            postgres    false    222            �           2606    16590    bloodbk_emp bloodbk_emp_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.bloodbk_emp
    ADD CONSTRAINT bloodbk_emp_pkey PRIMARY KEY (eid, stid);
 F   ALTER TABLE ONLY public.bloodbk_emp DROP CONSTRAINT bloodbk_emp_pkey;
       public            postgres    false    221    221            �           2606    16600    bloodstk_eqp bloodstk_eqp_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.bloodstk_eqp
    ADD CONSTRAINT bloodstk_eqp_pkey PRIMARY KEY (eqid, rid);
 H   ALTER TABLE ONLY public.bloodstk_eqp DROP CONSTRAINT bloodstk_eqp_pkey;
       public            postgres    false    223    223            �           2606    16580    donor donor_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.donor
    ADD CONSTRAINT donor_pkey PRIMARY KEY (pid);
 :   ALTER TABLE ONLY public.donor DROP CONSTRAINT donor_pkey;
       public            postgres    false    219            �           2606    16575    emp_equip emp_equip_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.emp_equip
    ADD CONSTRAINT emp_equip_pkey PRIMARY KEY (eid, eqid);
 B   ALTER TABLE ONLY public.emp_equip DROP CONSTRAINT emp_equip_pkey;
       public            postgres    false    218    218            �           2606    16555    employee employee_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (eid);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_pkey;
       public            postgres    false    214            �           2606    16605    equipment equipment_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (eqid);
 B   ALTER TABLE ONLY public.equipment DROP CONSTRAINT equipment_pkey;
       public            postgres    false    224            �           2606    16570    person person_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (pid);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    217            �           2606    16585    recipient recipient_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.recipient
    ADD CONSTRAINT recipient_pkey PRIMARY KEY (pid);
 B   ALTER TABLE ONLY public.recipient DROP CONSTRAINT recipient_pkey;
       public            postgres    false    220            �           2606    16560 &   salared_employee salared_employee_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.salared_employee
    ADD CONSTRAINT salared_employee_pkey PRIMARY KEY (eid);
 P   ALTER TABLE ONLY public.salared_employee DROP CONSTRAINT salared_employee_pkey;
       public            postgres    false    215            �           2606    16565    volunteer volunteer_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.volunteer
    ADD CONSTRAINT volunteer_pkey PRIMARY KEY (eid);
 B   ALTER TABLE ONLY public.volunteer DROP CONSTRAINT volunteer_pkey;
       public            postgres    false    216            �           2606    16651 .   blood_report fk_blood_report_blood_blood_stock    FK CONSTRAINT     �   ALTER TABLE ONLY public.blood_report
    ADD CONSTRAINT fk_blood_report_blood_blood_stock FOREIGN KEY (stid) REFERENCES public.blood_stock(stid);
 X   ALTER TABLE ONLY public.blood_report DROP CONSTRAINT fk_blood_report_blood_blood_stock;
       public          postgres    false    222    225    3233            �           2606    16646 #   blood_report fk_blood_report_person    FK CONSTRAINT     �   ALTER TABLE ONLY public.blood_report
    ADD CONSTRAINT fk_blood_report_person FOREIGN KEY (pid) REFERENCES public.person(pid);
 M   ALTER TABLE ONLY public.blood_report DROP CONSTRAINT fk_blood_report_person;
       public          postgres    false    3223    217    225            �           2606    16661 &   bloodbk_emp fk_bloodbk_emp_blood_stock    FK CONSTRAINT     �   ALTER TABLE ONLY public.bloodbk_emp
    ADD CONSTRAINT fk_bloodbk_emp_blood_stock FOREIGN KEY (stid) REFERENCES public.blood_stock(stid);
 P   ALTER TABLE ONLY public.bloodbk_emp DROP CONSTRAINT fk_bloodbk_emp_blood_stock;
       public          postgres    false    3233    222    221            �           2606    16656 #   bloodbk_emp fk_bloodbk_emp_employee    FK CONSTRAINT     �   ALTER TABLE ONLY public.bloodbk_emp
    ADD CONSTRAINT fk_bloodbk_emp_employee FOREIGN KEY (eid) REFERENCES public.employee(eid);
 M   ALTER TABLE ONLY public.bloodbk_emp DROP CONSTRAINT fk_bloodbk_emp_employee;
       public          postgres    false    3217    221    214            �           2606    16666 )   bloodstk_eqp fk_bloodstk_eqp_blood_report    FK CONSTRAINT     �   ALTER TABLE ONLY public.bloodstk_eqp
    ADD CONSTRAINT fk_bloodstk_eqp_blood_report FOREIGN KEY (rid) REFERENCES public.blood_report(rid);
 S   ALTER TABLE ONLY public.bloodstk_eqp DROP CONSTRAINT fk_bloodstk_eqp_blood_report;
       public          postgres    false    225    223    3239            �           2606    16671 &   bloodstk_eqp fk_bloodstk_eqp_equipment    FK CONSTRAINT     �   ALTER TABLE ONLY public.bloodstk_eqp
    ADD CONSTRAINT fk_bloodstk_eqp_equipment FOREIGN KEY (eqid) REFERENCES public.equipment(eqid);
 P   ALTER TABLE ONLY public.bloodstk_eqp DROP CONSTRAINT fk_bloodstk_eqp_equipment;
       public          postgres    false    3237    224    223            �           2606    16626    donor fk_donor_person    FK CONSTRAINT     r   ALTER TABLE ONLY public.donor
    ADD CONSTRAINT fk_donor_person FOREIGN KEY (pid) REFERENCES public.person(pid);
 ?   ALTER TABLE ONLY public.donor DROP CONSTRAINT fk_donor_person;
       public          postgres    false    219    217    3223            �           2606    16611    emp_equip fk_emp_equip_employee    FK CONSTRAINT     ~   ALTER TABLE ONLY public.emp_equip
    ADD CONSTRAINT fk_emp_equip_employee FOREIGN KEY (eid) REFERENCES public.employee(eid);
 I   ALTER TABLE ONLY public.emp_equip DROP CONSTRAINT fk_emp_equip_employee;
       public          postgres    false    3217    218    214            �           2606    16616     emp_equip fk_emp_equip_equipment    FK CONSTRAINT     �   ALTER TABLE ONLY public.emp_equip
    ADD CONSTRAINT fk_emp_equip_equipment FOREIGN KEY (eqid) REFERENCES public.equipment(eqid);
 J   ALTER TABLE ONLY public.emp_equip DROP CONSTRAINT fk_emp_equip_equipment;
       public          postgres    false    218    224    3237            �           2606    16621    person fk_person_employee    FK CONSTRAINT     x   ALTER TABLE ONLY public.person
    ADD CONSTRAINT fk_person_employee FOREIGN KEY (eid) REFERENCES public.employee(eid);
 C   ALTER TABLE ONLY public.person DROP CONSTRAINT fk_person_employee;
       public          postgres    false    214    3217    217            �           2606    16631    recipient fk_recipient_person    FK CONSTRAINT     z   ALTER TABLE ONLY public.recipient
    ADD CONSTRAINT fk_recipient_person FOREIGN KEY (pid) REFERENCES public.person(pid);
 G   ALTER TABLE ONLY public.recipient DROP CONSTRAINT fk_recipient_person;
       public          postgres    false    3223    217    220            �           2606    16641 -   salared_employee fk_salared_employee_employee    FK CONSTRAINT     �   ALTER TABLE ONLY public.salared_employee
    ADD CONSTRAINT fk_salared_employee_employee FOREIGN KEY (eid) REFERENCES public.employee(eid);
 W   ALTER TABLE ONLY public.salared_employee DROP CONSTRAINT fk_salared_employee_employee;
       public          postgres    false    215    214    3217            �           2606    16636    volunteer fk_volunteer_employee    FK CONSTRAINT     ~   ALTER TABLE ONLY public.volunteer
    ADD CONSTRAINT fk_volunteer_employee FOREIGN KEY (eid) REFERENCES public.employee(eid);
 I   ALTER TABLE ONLY public.volunteer DROP CONSTRAINT fk_volunteer_employee;
       public          postgres    false    214    216    3217            N   �   x���v
Q���W((M��L�K���O�/J-�/*Qs�	uV�060�Q0700�Q05 Cumu�P���PӚ˓h�t,�昘�4�6�d�Iu[B\7�h�ą� ��rq I�=      K   }   x���v
Q���W((M��L�K���O�/.�O�Vs�	uV�050�QP7202�50"u#�PxF~N��H���5�'��!g
4�l\@NbIjNjI1I�#fh 4��jXqn"�$.. ��?      J   I   x���v
Q���W((M��L�K���OIʎO�-Ps�	uV�0�Q050Դ��$N�H���Aꍁ깸 �I*�      L   L   x���v
Q���W((M��L�K���O).ɎO-,Ps�	uV�020�Q060Դ��$Z�H�IZ�AZ��Z�� m-o      H   F   x���v
Q���W((M��L�K���/Rs�	uV�040�Q060д��$��HG�ȔH��:
&`s�� %<$�      G   G   x���v
Q���W((M��L�K�-�O-,�,Ps�	uV�020�Q0Դ��$N�����u����� ��(�      C   |   x���v
Q���W((M��L�K�-�ɯLMUs�	uV�0�QP����S�.�� ����X��P��@]Ӛ˓C����2`����%s�tM�5���739#15G���<�YƺF`7qq �;�      M   �   x���v
Q���W((M��L�K-,�,�M�+Qs�	uV�020�QPw
e������(�쁤�����P@�]]Ӛ˓8㌀�Rӊ2�S�K�����i H�[QjjU*�,#�Y&�fqq ��@^      F   A  x����N�0��y�ޡI;�x�PT�8$��5kc�.�`���ABb2�5����t�y<y]��|� ��Cɤ[p[������$&g��i?����Q�����G2���{q�k�n�'2��2�����B�nb�;f�׭i�p��n����&Z�-�-ld�03%��+��{?��=hh��G��r�L��Ծ���	dq����:��y���`K�t�.*@x +�,rÝ���Q�A������8P�*��S�W�!i?Co�I��m;��>�5�:�����k,�̷���T����	S9�:��Z�o�8Ц      I   Z   x���v
Q���W((M��L�+JM�,�L�+Qs�	uV�020�QPwN�KN-R״��$N�P�KfbRjIj1	ڌ���Rs3A��� ��0�      D   Y   x���v
Q���W((M��L�+N�I,JM�O�-�ɯLMUs�	uV�0�QP�W05�100�30P״��$A�X��ڍ!��"i�� cN6`      E   Q   x���v
Q���W((M��L�+��)�+IM-Rs�	uV�0�QP7V���+V״��$F�P�iZ��Z*S�@Z�� ��.0     