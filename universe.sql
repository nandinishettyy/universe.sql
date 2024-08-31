--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_earth integer,
    no_of_planets integer,
    galaxyone character varying(20),
    galaxytwo character varying(20)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_g_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_g_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_g_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_g_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_g_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    area numeric(8,2),
    description text,
    planet_id integer,
    moonone character varying(20),
    moontwo character varying(20)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_m_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_m_id_seq OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_m_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    is_spherical boolean DEFAULT true,
    has_life boolean DEFAULT false,
    star_id integer,
    planetone character varying(20),
    planettwo character varying(20)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_p_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_p_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_p_id_seq OWNER TO freecodecamp;

--
-- Name: planet_p_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_p_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_earth integer,
    area integer,
    galaxy_id integer DEFAULT 1,
    starone character varying(20),
    startwo character varying(20)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_s_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_s_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_s_id_seq OWNER TO freecodecamp;

--
-- Name: star_s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_s_id_seq OWNED BY public.star.star_id;


--
-- Name: tablefive; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.tablefive (
    tablefive_id integer NOT NULL,
    name character varying(20) NOT NULL,
    one character varying(20)
);


ALTER TABLE public.tablefive OWNER TO freecodecamp;

--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_g_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_m_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_p_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_s_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'ABC', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'XYZ', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'UVW', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'default_value', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'default_value', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'default_value', NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (10, 'default_value', NULL, NULL, 200, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'default_value', NULL, NULL, 100, NULL, NULL);
INSERT INTO public.moon VALUES (30, 'default_value', NULL, NULL, 200, NULL, NULL);
INSERT INTO public.moon VALUES (40, 'default_value', NULL, NULL, 100, NULL, NULL);
INSERT INTO public.moon VALUES (50, 'default_value', NULL, NULL, 100, NULL, NULL);
INSERT INTO public.moon VALUES (60, 'default_value', NULL, NULL, 100, NULL, NULL);
INSERT INTO public.moon VALUES (70, 'default_value', NULL, NULL, 100, NULL, NULL);
INSERT INTO public.moon VALUES (80, 'default_value', NULL, NULL, 100, NULL, NULL);
INSERT INTO public.moon VALUES (90, 'default_value', NULL, NULL, 100, NULL, NULL);
INSERT INTO public.moon VALUES (101, 'default_value', NULL, NULL, 100, NULL, NULL);
INSERT INTO public.moon VALUES (102, 'default_value', NULL, NULL, 100, NULL, NULL);
INSERT INTO public.moon VALUES (103, 'default_value', NULL, NULL, 100, NULL, NULL);
INSERT INTO public.moon VALUES (104, 'default_value', NULL, NULL, 100, NULL, NULL);
INSERT INTO public.moon VALUES (105, 'default_value', NULL, NULL, 100, NULL, NULL);
INSERT INTO public.moon VALUES (106, 'default_value', NULL, NULL, 100, NULL, NULL);
INSERT INTO public.moon VALUES (107, 'default_value', NULL, NULL, 100, NULL, NULL);
INSERT INTO public.moon VALUES (108, 'default_value', NULL, NULL, 100, NULL, NULL);
INSERT INTO public.moon VALUES (109, 'default_value', NULL, NULL, 100, NULL, NULL);
INSERT INTO public.moon VALUES (110, 'default_value', NULL, NULL, 100, NULL, NULL);
INSERT INTO public.moon VALUES (111, 'default_value', NULL, NULL, 100, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (100, 'default_value', true, false, 1, NULL, NULL);
INSERT INTO public.planet VALUES (200, 'default_value', true, false, 1, NULL, NULL);
INSERT INTO public.planet VALUES (300, 'default_value', true, false, 1, NULL, NULL);
INSERT INTO public.planet VALUES (400, 'default_value', true, false, 1, NULL, NULL);
INSERT INTO public.planet VALUES (500, 'default_value', true, false, 1, NULL, NULL);
INSERT INTO public.planet VALUES (600, 'default_value', true, false, 1, NULL, NULL);
INSERT INTO public.planet VALUES (700, 'default_value', true, false, 1, NULL, NULL);
INSERT INTO public.planet VALUES (800, 'default_value', true, false, 1, NULL, NULL);
INSERT INTO public.planet VALUES (900, 'default_value', true, false, 1, NULL, NULL);
INSERT INTO public.planet VALUES (1000, 'default_value', true, false, 1, NULL, NULL);
INSERT INTO public.planet VALUES (1100, 'default_value', true, false, 1, NULL, NULL);
INSERT INTO public.planet VALUES (1200, 'default_value', true, false, 1, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'default_value', NULL, NULL, 2, NULL, NULL);
INSERT INTO public.star VALUES (2, 'default_value', NULL, NULL, 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'default_value', NULL, NULL, 2, NULL, NULL);
INSERT INTO public.star VALUES (4, 'default_value', NULL, NULL, 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'default_value', NULL, NULL, 1, NULL, NULL);
INSERT INTO public.star VALUES (6, 'default_value', NULL, NULL, 1, NULL, NULL);


--
-- Data for Name: tablefive; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.tablefive VALUES (11, 'default_value', NULL);
INSERT INTO public.tablefive VALUES (22, 'default_value', NULL);
INSERT INTO public.tablefive VALUES (33, 'default_value', NULL);


--
-- Name: galaxy_g_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_g_id_seq', 1, false);


--
-- Name: moon_m_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_m_id_seq', 1, false);


--
-- Name: planet_p_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_p_id_seq', 1, false);


--
-- Name: star_s_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_s_id_seq', 2, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: tablefive tablefive_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tablefive
    ADD CONSTRAINT tablefive_pkey PRIMARY KEY (tablefive_id);


--
-- Name: planet unique1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique1 UNIQUE (planetone);


--
-- Name: galaxy unique2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique2 UNIQUE (galaxyone);


--
-- Name: star unique3; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique3 UNIQUE (starone);


--
-- Name: moon unique4; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique4 UNIQUE (moonone);


--
-- Name: tablefive unique5; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tablefive
    ADD CONSTRAINT unique5 UNIQUE (one);


--
-- Name: moon m_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT m_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet p_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT p_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star s_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT s_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

