--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: five; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.five (
    five_id integer NOT NULL,
    name character varying(60) NOT NULL,
    age integer,
    description character varying(255)
);


ALTER TABLE public.five OWNER TO freecodecamp;

--
-- Name: five_five_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.five_five_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.five_five_id_seq OWNER TO freecodecamp;

--
-- Name: five_five_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.five_five_id_seq OWNED BY public.five.five_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60),
    age integer,
    number integer,
    surface numeric(4,1),
    description text,
    livable boolean NOT NULL,
    close boolean NOT NULL,
    tmp integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60),
    planet_id integer NOT NULL,
    description character varying(60),
    age integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60),
    star_id integer NOT NULL,
    age integer,
    description character varying(60)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60),
    galaxy_id integer NOT NULL,
    age integer,
    description character varying(60)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: five five_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.five ALTER COLUMN five_id SET DEFAULT nextval('public.five_five_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: five; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.five VALUES (1, 'five', 9, NULL);
INSERT INTO public.five VALUES (2, 'five', 9, NULL);
INSERT INTO public.five VALUES (3, 'five', 9, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'gala', 156, 1, 256.0, 'the best', true, false, NULL);
INSERT INTO public.galaxy VALUES (2, 'gala', 156, 1, 256.0, 'the best', true, false, NULL);
INSERT INTO public.galaxy VALUES (3, 'gala', 156, 1, 256.0, 'the best', true, false, NULL);
INSERT INTO public.galaxy VALUES (4, 'gala', 156, 1, 256.0, 'the best', true, false, NULL);
INSERT INTO public.galaxy VALUES (5, 'gala', 156, 1, 256.0, 'the best', true, false, NULL);
INSERT INTO public.galaxy VALUES (6, 'gala', 156, 1, 256.0, 'the best', true, false, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'the moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'the moon', 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (27, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (28, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (29, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (30, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (31, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (32, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (33, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (34, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (35, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (36, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (37, 'the moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (38, 'the moon', 3, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mars', 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Mars', 2, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Mars', 3, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 3, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Mars', 3, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Mars', 3, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Mars', 3, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Mars', 3, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Mars', 3, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Mars', 3, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Mars', 3, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Mars', 3, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'Mars', 3, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'the star', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'the star', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'the star', 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'the star', 3, NULL, NULL);
INSERT INTO public.star VALUES (5, 'the star', 3, NULL, NULL);
INSERT INTO public.star VALUES (6, 'the star', 3, NULL, NULL);


--
-- Name: five_five_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.five_five_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 38, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: five five_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.five
    ADD CONSTRAINT five_description_key UNIQUE (description);


--
-- Name: five five_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.five
    ADD CONSTRAINT five_pkey PRIMARY KEY (five_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_tmp_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_tmp_key UNIQUE (tmp);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

