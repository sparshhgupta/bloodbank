--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

-- Started on 2024-03-28 12:46:15

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE IF EXISTS project;
--
-- TOC entry 3412 (class 1262 OID 16415)
-- Name: project; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE project WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';


ALTER DATABASE project OWNER TO postgres;

\connect project

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 225 (class 1259 OID 16606)
-- Name: blood_report; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blood_report (
    rid integer NOT NULL,
    wbc integer,
    rbc integer,
    haemoglobin integer,
    blood_grp character varying(20),
    stid integer,
    pid integer
);


ALTER TABLE public.blood_report OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16591)
-- Name: blood_stock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blood_stock (
    stid integer NOT NULL,
    add_date date,
    quantity integer,
    type character varying(20)
);


ALTER TABLE public.blood_stock OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16586)
-- Name: bloodbk_emp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bloodbk_emp (
    eid integer NOT NULL,
    stid integer NOT NULL
);


ALTER TABLE public.bloodbk_emp OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16596)
-- Name: bloodstk_eqp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bloodstk_eqp (
    eqid integer NOT NULL,
    rid integer NOT NULL
);


ALTER TABLE public.bloodstk_eqp OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16576)
-- Name: donor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.donor (
    pid integer NOT NULL,
    quantity_don integer
);


ALTER TABLE public.donor OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16571)
-- Name: emp_equip; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.emp_equip (
    eqid integer NOT NULL,
    eid integer NOT NULL
);


ALTER TABLE public.emp_equip OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16551)
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    eid integer NOT NULL,
    fname character varying(20),
    lname character varying(20),
    join_date date
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16601)
-- Name: equipment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.equipment (
    eqid integer NOT NULL,
    eq_type character varying(20),
    quantity integer,
    cost money,
    condition character(1)
);


ALTER TABLE public.equipment OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16566)
-- Name: person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person (
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


ALTER TABLE public.person OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16581)
-- Name: recipient; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recipient (
    pid integer NOT NULL,
    curr_disease character varying(30) NOT NULL
);


ALTER TABLE public.recipient OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16556)
-- Name: salared_employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salared_employee (
    eid integer NOT NULL,
    salary money
);


ALTER TABLE public.salared_employee OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16561)
-- Name: volunteer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.volunteer (
    eid integer NOT NULL,
    duration interval
);


ALTER TABLE public.volunteer OWNER TO postgres;

--
-- TOC entry 3406 (class 0 OID 16606)
-- Dependencies: 225
-- Data for Name: blood_report; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.blood_report VALUES (301, 7000, 5000000, 14, 'O+', 501, 101);
INSERT INTO public.blood_report VALUES (302, 8000, 4500000, 13, 'A-', 502, 102);
INSERT INTO public.blood_report VALUES (303, 9000, 5500000, 15, 'B+', 503, 103);


--
-- TOC entry 3403 (class 0 OID 16591)
-- Dependencies: 222
-- Data for Name: blood_stock; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.blood_stock VALUES (501, '2024-01-01', 200, 'Whole Blood');
INSERT INTO public.blood_stock VALUES (502, '2024-01-05', 300, 'Platelets');
INSERT INTO public.blood_stock VALUES (503, '2024-01-10', 150, 'Plasma');


--
-- TOC entry 3402 (class 0 OID 16586)
-- Dependencies: 221
-- Data for Name: bloodbk_emp; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.bloodbk_emp VALUES (1, 501);
INSERT INTO public.bloodbk_emp VALUES (2, 502);
INSERT INTO public.bloodbk_emp VALUES (3, 503);


--
-- TOC entry 3404 (class 0 OID 16596)
-- Dependencies: 223
-- Data for Name: bloodstk_eqp; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.bloodstk_eqp VALUES (201, 301);
INSERT INTO public.bloodstk_eqp VALUES (202, 302);
INSERT INTO public.bloodstk_eqp VALUES (203, 303);


--
-- TOC entry 3400 (class 0 OID 16576)
-- Dependencies: 219
-- Data for Name: donor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.donor VALUES (101, 300);
INSERT INTO public.donor VALUES (102, 250);
INSERT INTO public.donor VALUES (103, 400);


--
-- TOC entry 3399 (class 0 OID 16571)
-- Dependencies: 218
-- Data for Name: emp_equip; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.emp_equip VALUES (201, 1);
INSERT INTO public.emp_equip VALUES (202, 2);
INSERT INTO public.emp_equip VALUES (203, 3);


--
-- TOC entry 3395 (class 0 OID 16551)
-- Dependencies: 214
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.employee VALUES (1, 'John', 'Doe', '2023-01-10');
INSERT INTO public.employee VALUES (2, 'Alice', 'Smith', '2023-02-15');
INSERT INTO public.employee VALUES (3, 'Michael', 'Johnson', '2023-03-20');


--
-- TOC entry 3405 (class 0 OID 16601)
-- Dependencies: 224
-- Data for Name: equipment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.equipment VALUES (201, 'Centrifuge', 5, '? 5,000.00', 'G');
INSERT INTO public.equipment VALUES (202, 'Refrigerator', 3, '? 3,000.00', 'G');
INSERT INTO public.equipment VALUES (203, 'Freezer', 2, '? 4,000.00', 'G');


--
-- TOC entry 3398 (class 0 OID 16566)
-- Dependencies: 217
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.person VALUES (101, 'Male', 30, 'AB+', 'Michael', 'Johnson', 'New York', '10001', 'michael@example.com', 1);
INSERT INTO public.person VALUES (102, 'Female', 25, 'A+', 'Emily', 'Davis', 'Los Angeles', '90001', 'emily@example.com', 2);
INSERT INTO public.person VALUES (103, 'Male', 35, 'O-', 'David', 'Brown', 'Chicago', '60001', 'david@example.com', 3);
INSERT INTO public.person VALUES (201, 'Male', 30, 'AB+', 'Sparsh', 'Gupta', 'Haridwar', '249401', 'sparsh@gmai.com', 3);
INSERT INTO public.person VALUES (202, 'Male', 61, 'O-', 'Shashwat', 'Pandey', 'Karachi', '05444', 'shashwat@gmai.com', 2);
INSERT INTO public.person VALUES (203, 'Female', 18, 'A+', 'Veda', 'Singh', 'Amravati', '444604', 'veda@hotmail.com', 1);


--
-- TOC entry 3401 (class 0 OID 16581)
-- Dependencies: 220
-- Data for Name: recipient; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.recipient VALUES (201, 'Cancer');
INSERT INTO public.recipient VALUES (202, 'Diabetes');
INSERT INTO public.recipient VALUES (203, 'Anemia');


--
-- TOC entry 3396 (class 0 OID 16556)
-- Dependencies: 215
-- Data for Name: salared_employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.salared_employee VALUES (1, '? 50,000.00');
INSERT INTO public.salared_employee VALUES (2, '? 60,000.00');
INSERT INTO public.salared_employee VALUES (3, '? 55,000.00');


--
-- TOC entry 3397 (class 0 OID 16561)
-- Dependencies: 216
-- Data for Name: volunteer; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.volunteer VALUES (1, '3 mons');
INSERT INTO public.volunteer VALUES (2, '6 mons');
INSERT INTO public.volunteer VALUES (3, '1 year');


--
-- TOC entry 3239 (class 2606 OID 16610)
-- Name: blood_report blood_report_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blood_report
    ADD CONSTRAINT blood_report_pkey PRIMARY KEY (rid);


--
-- TOC entry 3233 (class 2606 OID 16595)
-- Name: blood_stock blood_stock_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blood_stock
    ADD CONSTRAINT blood_stock_pkey PRIMARY KEY (stid);


--
-- TOC entry 3231 (class 2606 OID 16590)
-- Name: bloodbk_emp bloodbk_emp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bloodbk_emp
    ADD CONSTRAINT bloodbk_emp_pkey PRIMARY KEY (eid, stid);


--
-- TOC entry 3235 (class 2606 OID 16600)
-- Name: bloodstk_eqp bloodstk_eqp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bloodstk_eqp
    ADD CONSTRAINT bloodstk_eqp_pkey PRIMARY KEY (eqid, rid);


--
-- TOC entry 3227 (class 2606 OID 16580)
-- Name: donor donor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.donor
    ADD CONSTRAINT donor_pkey PRIMARY KEY (pid);


--
-- TOC entry 3225 (class 2606 OID 16575)
-- Name: emp_equip emp_equip_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emp_equip
    ADD CONSTRAINT emp_equip_pkey PRIMARY KEY (eid, eqid);


--
-- TOC entry 3217 (class 2606 OID 16555)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (eid);


--
-- TOC entry 3237 (class 2606 OID 16605)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (eqid);


--
-- TOC entry 3223 (class 2606 OID 16570)
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (pid);


--
-- TOC entry 3229 (class 2606 OID 16585)
-- Name: recipient recipient_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipient
    ADD CONSTRAINT recipient_pkey PRIMARY KEY (pid);


--
-- TOC entry 3219 (class 2606 OID 16560)
-- Name: salared_employee salared_employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salared_employee
    ADD CONSTRAINT salared_employee_pkey PRIMARY KEY (eid);


--
-- TOC entry 3221 (class 2606 OID 16565)
-- Name: volunteer volunteer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.volunteer
    ADD CONSTRAINT volunteer_pkey PRIMARY KEY (eid);


--
-- TOC entry 3251 (class 2606 OID 16651)
-- Name: blood_report fk_blood_report_blood_blood_stock; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blood_report
    ADD CONSTRAINT fk_blood_report_blood_blood_stock FOREIGN KEY (stid) REFERENCES public.blood_stock(stid);


--
-- TOC entry 3252 (class 2606 OID 16646)
-- Name: blood_report fk_blood_report_person; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blood_report
    ADD CONSTRAINT fk_blood_report_person FOREIGN KEY (pid) REFERENCES public.person(pid);


--
-- TOC entry 3247 (class 2606 OID 16661)
-- Name: bloodbk_emp fk_bloodbk_emp_blood_stock; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bloodbk_emp
    ADD CONSTRAINT fk_bloodbk_emp_blood_stock FOREIGN KEY (stid) REFERENCES public.blood_stock(stid);


--
-- TOC entry 3248 (class 2606 OID 16656)
-- Name: bloodbk_emp fk_bloodbk_emp_employee; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bloodbk_emp
    ADD CONSTRAINT fk_bloodbk_emp_employee FOREIGN KEY (eid) REFERENCES public.employee(eid);


--
-- TOC entry 3249 (class 2606 OID 16666)
-- Name: bloodstk_eqp fk_bloodstk_eqp_blood_report; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bloodstk_eqp
    ADD CONSTRAINT fk_bloodstk_eqp_blood_report FOREIGN KEY (rid) REFERENCES public.blood_report(rid);


--
-- TOC entry 3250 (class 2606 OID 16671)
-- Name: bloodstk_eqp fk_bloodstk_eqp_equipment; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bloodstk_eqp
    ADD CONSTRAINT fk_bloodstk_eqp_equipment FOREIGN KEY (eqid) REFERENCES public.equipment(eqid);


--
-- TOC entry 3245 (class 2606 OID 16626)
-- Name: donor fk_donor_person; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.donor
    ADD CONSTRAINT fk_donor_person FOREIGN KEY (pid) REFERENCES public.person(pid);


--
-- TOC entry 3243 (class 2606 OID 16611)
-- Name: emp_equip fk_emp_equip_employee; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emp_equip
    ADD CONSTRAINT fk_emp_equip_employee FOREIGN KEY (eid) REFERENCES public.employee(eid);


--
-- TOC entry 3244 (class 2606 OID 16616)
-- Name: emp_equip fk_emp_equip_equipment; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emp_equip
    ADD CONSTRAINT fk_emp_equip_equipment FOREIGN KEY (eqid) REFERENCES public.equipment(eqid);


--
-- TOC entry 3242 (class 2606 OID 16621)
-- Name: person fk_person_employee; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT fk_person_employee FOREIGN KEY (eid) REFERENCES public.employee(eid);


--
-- TOC entry 3246 (class 2606 OID 16631)
-- Name: recipient fk_recipient_person; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipient
    ADD CONSTRAINT fk_recipient_person FOREIGN KEY (pid) REFERENCES public.person(pid);


--
-- TOC entry 3240 (class 2606 OID 16641)
-- Name: salared_employee fk_salared_employee_employee; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salared_employee
    ADD CONSTRAINT fk_salared_employee_employee FOREIGN KEY (eid) REFERENCES public.employee(eid);


--
-- TOC entry 3241 (class 2606 OID 16636)
-- Name: volunteer fk_volunteer_employee; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.volunteer
    ADD CONSTRAINT fk_volunteer_employee FOREIGN KEY (eid) REFERENCES public.employee(eid);


-- Completed on 2024-03-28 12:46:15

--
-- PostgreSQL database dump complete
--

