--
-- PostgreSQL database dump
--

-- Dumped from database version 11.10
-- Dumped by pg_dump version 11.10

-- Started on 2021-03-17 19:46:15

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

DROP DATABASE etl_pizza;
--
-- TOC entry 2817 (class 1262 OID 16821)
-- Name: etl_pizza; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE etl_pizza WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';


ALTER DATABASE etl_pizza OWNER TO postgres;

\connect etl_pizza

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

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 25046)
-- Name: Datafiniti_Pizza; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Datafiniti_Pizza" (
    index bigint,
    "SiteID" text,
    "DateUpdated" text,
    "Address" text,
    "Categories" text,
    "City" text,
    "Country" text,
    "Menu_Description" text,
    "Menu_Name" text,
    "Name" text,
    "Postal_Code" text,
    "Price_Range_Min" bigint,
    "Price_Range_Max" bigint,
    "Province" text
);


ALTER TABLE public."Datafiniti_Pizza" OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 25039)
-- Name: Pizza_Dataset; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pizza_Dataset" (
    index bigint,
    "SiteID" text,
    "Key" text,
    "Latitude" double precision,
    "Longitude" double precision
);


ALTER TABLE public."Pizza_Dataset" OWNER TO postgres;

--
-- TOC entry 2690 (class 1259 OID 25052)
-- Name: ix_Datafiniti_Pizza_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "ix_Datafiniti_Pizza_index" ON public."Datafiniti_Pizza" USING btree (index);


--
-- TOC entry 2689 (class 1259 OID 25045)
-- Name: ix_Pizza_Dataset_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "ix_Pizza_Dataset_index" ON public."Pizza_Dataset" USING btree (index);


-- Completed on 2021-03-17 19:46:15

--
-- PostgreSQL database dump complete
--

