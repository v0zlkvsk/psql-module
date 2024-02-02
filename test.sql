--
-- PostgreSQL database dump
--

-- Dumped from database version 14.10 (Homebrew)
-- Dumped by pg_dump version 14.10 (Homebrew)

-- Started on 2024-02-02 20:21:47 CET

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
-- TOC entry 210 (class 1259 OID 16396)
-- Name: actors; Type: TABLE; Schema: public; Owner: vld.zlkvsk
--

CREATE TABLE public.actors (
    id integer NOT NULL,
    fullname character varying(150) DEFAULT 'Ryan'::character varying NOT NULL,
    films character varying(100),
    directors character varying(100)
);


ALTER TABLE public.actors OWNER TO "vld.zlkvsk";

--
-- TOC entry 209 (class 1259 OID 16395)
-- Name: actors_id_seq; Type: SEQUENCE; Schema: public; Owner: vld.zlkvsk
--

CREATE SEQUENCE public.actors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actors_id_seq OWNER TO "vld.zlkvsk";

--
-- TOC entry 3599 (class 0 OID 0)
-- Dependencies: 209
-- Name: actors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vld.zlkvsk
--

ALTER SEQUENCE public.actors_id_seq OWNED BY public.actors.id;


--
-- TOC entry 3451 (class 2604 OID 16399)
-- Name: actors id; Type: DEFAULT; Schema: public; Owner: vld.zlkvsk
--

ALTER TABLE ONLY public.actors ALTER COLUMN id SET DEFAULT nextval('public.actors_id_seq'::regclass);


--
-- TOC entry 3593 (class 0 OID 16396)
-- Dependencies: 210
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: vld.zlkvsk
--

COPY public.actors (id, fullname, films, directors) FROM stdin;
1	Margo Robbie	Barbie	Greta Gerwig
2	Ryan Gosling	Barbie	Greta Gerwig
3	Kate Winslet	Titanic	James Cameron
4	Leonardo DiCaprio	Titanic	James Cameron
5	Joaquin Phoenix	Napoleon	Ridley Scott
6	Archie Madekwe	Gran Turosismo	Neill Blomkamp
\.


--
-- TOC entry 3600 (class 0 OID 0)
-- Dependencies: 209
-- Name: actors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vld.zlkvsk
--

SELECT pg_catalog.setval('public.actors_id_seq', 6, true);


-- Completed on 2024-02-02 20:21:47 CET

--
-- PostgreSQL database dump complete
--

