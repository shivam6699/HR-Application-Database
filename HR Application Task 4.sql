PGDMP      ,                }            HR Application    17.2    17.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16710    HR Application    DATABASE     �   CREATE DATABASE "HR Application" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
     DROP DATABASE "HR Application";
                     postgres    false            �            1259    16721    departments    TABLE     �   CREATE TABLE public.departments (
    departmentid integer NOT NULL,
    departmentname character varying(50),
    managerid integer
);
    DROP TABLE public.departments;
       public         heap r       postgres    false            �            1259    16726 	   employees    TABLE     -  CREATE TABLE public.employees (
    employeeid integer NOT NULL,
    firstname character varying(50),
    lastname character varying(50),
    email character varying(100),
    phone character varying(20),
    hiredate date,
    departmentid integer,
    managerid integer,
    salary numeric(10,2)
);
    DROP TABLE public.employees;
       public         heap r       postgres    false            �            1259    16738    payroll    TABLE     �   CREATE TABLE public.payroll (
    payrollid integer NOT NULL,
    employeeid integer,
    paymentdate date,
    amount numeric(10,2),
    paymentmethod character varying(50)
);
    DROP TABLE public.payroll;
       public         heap r       postgres    false            �            1259    16731    performancereviews    TABLE     �   CREATE TABLE public.performancereviews (
    reviewid integer NOT NULL,
    employeeid integer,
    reviewdate date,
    performancescore character varying(20),
    comments text
);
 &   DROP TABLE public.performancereviews;
       public         heap r       postgres    false            �            1259    16743    quarysolutions    TABLE     (   CREATE TABLE public.quarysolutions (
);
 "   DROP TABLE public.quarysolutions;
       public         heap r       postgres    false            �          0    16721    departments 
   TABLE DATA           N   COPY public.departments (departmentid, departmentname, managerid) FROM stdin;
    public               postgres    false    217   �       �          0    16726 	   employees 
   TABLE DATA           }   COPY public.employees (employeeid, firstname, lastname, email, phone, hiredate, departmentid, managerid, salary) FROM stdin;
    public               postgres    false    218   �       �          0    16738    payroll 
   TABLE DATA           \   COPY public.payroll (payrollid, employeeid, paymentdate, amount, paymentmethod) FROM stdin;
    public               postgres    false    220   �       �          0    16731    performancereviews 
   TABLE DATA           j   COPY public.performancereviews (reviewid, employeeid, reviewdate, performancescore, comments) FROM stdin;
    public               postgres    false    219   �       �          0    16743    quarysolutions 
   TABLE DATA           (   COPY public.quarysolutions  FROM stdin;
    public               postgres    false    221   �       1           2606    16725    departments departments_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (departmentid);
 F   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
       public                 postgres    false    217            3           2606    16730    employees employees_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employeeid);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public                 postgres    false    218            7           2606    16742    payroll payroll_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.payroll
    ADD CONSTRAINT payroll_pkey PRIMARY KEY (payrollid);
 >   ALTER TABLE ONLY public.payroll DROP CONSTRAINT payroll_pkey;
       public                 postgres    false    220            5           2606    16737 *   performancereviews performancereviews_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.performancereviews
    ADD CONSTRAINT performancereviews_pkey PRIMARY KEY (reviewid);
 T   ALTER TABLE ONLY public.performancereviews DROP CONSTRAINT performancereviews_pkey;
       public                 postgres    false    219            �   �   x�%�K
�@D�ݧ�	$�֢(D�����1�����^�RpI���A�&�P U*��̢e�L�p�B�YLnjl����la��m��볘�s��\t��DF�9�8�d���Op�c
�n䋙����U	wG^G��EU�뀈_�~0      �   >  x�u�1o�0���_���ak�N�E����բ�&@DH���ޑ�,.B�y��{i²�c��	C���շ��]�EUzW�ܐ���(M�
>�p����i��p�x;�a��1m���S�F��x��C�-1�Ar��%䂔O�b�Ch���O��tH;�m "e,���	��]8�n����4c����7�]�bf�m���v9���)�Aʰ�xl��7p�=��҈�ʆ��~�Iaf����@�0������K�U(!�Z737R�;��Jy���A)����C�����?5��4S	����hF�f����E�et���      �   �   x�m�;
�@�Z:E.`#�߭s��iLp\8��L�@[�cfY%�$�L��,�g�u;������{�8�%�z�2\�n�����.ȋ�k�S�u����5���Ȼ�Kaπ���n�[��nO��~T�����?՞T�      �   @  x�M��N�0E��W�b��+Y"Tʆ�X�1δ��#�N)ϸPɑ,�;sgS�b�ՋF�F���d�9�=M%����;��kB�F�l��^��ys ��l���|A�E/�V5��򯷱`�	 ����\�|I�r���n����#���1�#x�DA@��$����\���K��1d̥B�8�b����@���Y_J��cbw	>�J��7u�!�f�&���v	L6z?��Ɠ�#}7������< �,�4�-g-��$��'vm~O��=�)��i��HN;P���D���[�M�l8o�{�xΫ�� t�      �      x������ � �     