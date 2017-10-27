--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: pusers; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE pusers (
    target_place integer,
    name text
);


ALTER TABLE pusers OWNER TO pablo;

--
-- Name: tusers; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE tusers (
    id integer NOT NULL,
    name text
);


ALTER TABLE tusers OWNER TO pablo;

--
-- Name: tusers_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE tusers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tusers_id_seq OWNER TO pablo;

--
-- Name: tusers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE tusers_id_seq OWNED BY tusers.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY tusers ALTER COLUMN id SET DEFAULT nextval('tusers_id_seq'::regclass);


--
-- Data for Name: pusers; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY pusers (target_place, name) FROM stdin;
1	user3
3	user4
\.


--
-- Data for Name: tusers; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY tusers (id, name) FROM stdin;
1	user1
2	user2
3	user3
4	user6
5	user5
6	user4
\.


--
-- Name: tusers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('tusers_id_seq', 6, true);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

