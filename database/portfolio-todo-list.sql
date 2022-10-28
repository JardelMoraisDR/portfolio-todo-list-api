--
-- PostgreSQL database dump
--

-- Dumped from database version 11.11
-- Dumped by pg_dump version 13.2

-- Started on 2022-10-28 14:47:38

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

--
-- TOC entry 198 (class 1259 OID 180312)
-- Name: Tasks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Tasks" (
    "Id" integer NOT NULL,
    "Description" text,
    "Value" integer NOT NULL
);


ALTER TABLE public."Tasks" OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 180310)
-- Name: Tasks_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Tasks" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Tasks_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 196 (class 1259 OID 180305)
-- Name: __EFMigrationsHistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);


ALTER TABLE public."__EFMigrationsHistory" OWNER TO postgres;

--
-- TOC entry 2817 (class 0 OID 180312)
-- Dependencies: 198
-- Data for Name: Tasks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Tasks" ("Id", "Description", "Value") FROM stdin;
6	Comprar martelo	1
11	Comprar pneu	0
2	Lavar louça	1
13	Ir na imobiliária	0
5	Comprar tesoura	0
9	Limpar carro	0
10	Tirar lixo	1
8	Pesquisar preços	1
\.


--
-- TOC entry 2815 (class 0 OID 180305)
-- Dependencies: 196
-- Data for Name: __EFMigrationsHistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
20221025022600_InitialMigration	5.0.10
\.


--
-- TOC entry 2823 (class 0 OID 0)
-- Dependencies: 197
-- Name: Tasks_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Tasks_Id_seq"', 13, true);


--
-- TOC entry 2693 (class 2606 OID 180319)
-- Name: Tasks PK_Tasks; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tasks"
    ADD CONSTRAINT "PK_Tasks" PRIMARY KEY ("Id");


--
-- TOC entry 2691 (class 2606 OID 180309)
-- Name: __EFMigrationsHistory PK___EFMigrationsHistory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");


-- Completed on 2022-10-28 14:47:38

--
-- PostgreSQL database dump complete
--
