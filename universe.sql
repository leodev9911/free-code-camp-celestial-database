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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(50) NOT NULL,
    abbreviation character(3)
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_million_years numeric,
    type character varying(50) NOT NULL
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
    name character varying(30) NOT NULL,
    discovery_year integer,
    age_in_million_years numeric,
    distance_from_earth numeric,
    has_life boolean,
    planet_id integer NOT NULL
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
    number_of_planets integer,
    age_in_million_years numeric,
    distance_from_earth numeric,
    has_life boolean,
    is_spherical boolean NOT NULL,
    star_id integer NOT NULL,
    name character varying(30) NOT NULL
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
    name character varying(30) NOT NULL,
    age_in_million_years numeric,
    distance_from_earth numeric,
    galaxy_id integer NOT NULL
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Ursa Major', 'UMa');
INSERT INTO public.constellation VALUES (2, 'Orion', 'Ori');
INSERT INTO public.constellation VALUES (3, 'Scorpius', 'Sco');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Vía Láctea', 'Galaxia espiral barrada que alberga nuestro Sistema Solar. Tiene un diámetro de ~100,000 años luz.', 13600, 'Espiral barrada');
INSERT INTO public.galaxy VALUES (2, 'Andrómeda', 'Galaxia espiral más cercana a la Vía Láctea. Se estima que colisionará con nuestra galaxia en ~4,500 millones de años.', 10000, 'Espiral');
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 'Galaxia con un prominente anillo de polvo y un bulbo central masivo. Vista de canto, parece un sombrero.', 13000, 'Espiral');
INSERT INTO public.galaxy VALUES (4, 'Remolino', 'Galaxia espiral interactuando con una galaxia compañera más pequeña. Ejemplo clásico de estructura espiral.', 400, 'Espiral');
INSERT INTO public.galaxy VALUES (5, 'Enana de Sagitario', 'Galaxia satélite de la Vía Láctea en proceso de ser canibalizada por nuestra galaxia.', 12000, 'Elíptica enana');
INSERT INTO public.galaxy VALUES (6, 'Cigarro', 'Galaxia con una intensa formación estelar debido a interacciones gravitacionales con M81.', 500, 'Irregular');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1610, 4500, 0.384, false, 3);
INSERT INTO public.moon VALUES (2, 'Fobos', 1877, 4500, 0.000009, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 1877, 4500, 0.000023, false, 4);
INSERT INTO public.moon VALUES (4, 'Ío', 1610, 4500, 628, false, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 1610, 4500, 628, false, 5);
INSERT INTO public.moon VALUES (6, 'Ganímedes', 1610, 4500, 628, false, 5);
INSERT INTO public.moon VALUES (7, 'Calisto', 1610, 4500, 628, false, 5);
INSERT INTO public.moon VALUES (8, 'Mimas', 1789, 4500, 1278, false, 6);
INSERT INTO public.moon VALUES (9, 'Encélado', 1789, 4500, 1278, false, 6);
INSERT INTO public.moon VALUES (10, 'Tetis', 1684, 4500, 1278, false, 6);
INSERT INTO public.moon VALUES (11, 'Dione', 1684, 4500, 1278, false, 6);
INSERT INTO public.moon VALUES (12, 'Rea', 1672, 4500, 1278, false, 6);
INSERT INTO public.moon VALUES (13, 'Titán', 1655, 4500, 1278, false, 6);
INSERT INTO public.moon VALUES (14, 'Hiperión', 1848, 4500, 1278, false, 6);
INSERT INTO public.moon VALUES (15, 'Jápeto', 1671, 4500, 1278, false, 6);
INSERT INTO public.moon VALUES (16, 'Miranda', 1948, 4500, 2721, false, 7);
INSERT INTO public.moon VALUES (17, 'Ariel', 1851, 4500, 2721, false, 7);
INSERT INTO public.moon VALUES (18, 'Umbriel', 1851, 4500, 2721, false, 7);
INSERT INTO public.moon VALUES (19, 'Titania', 1787, 4500, 2721, false, 7);
INSERT INTO public.moon VALUES (20, 'Oberón', 1787, 4500, 2721, false, 7);
INSERT INTO public.moon VALUES (21, 'Tritón', 1846, 4500, 4347, false, 8);
INSERT INTO public.moon VALUES (22, 'Nereida', 1949, 4500, 4347, false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 8, 4500, 0, false, true, 1, 'Mercurio');
INSERT INTO public.planet VALUES (2, 8, 4500, 0, false, true, 1, 'Venus');
INSERT INTO public.planet VALUES (3, 8, 4500, 0, true, true, 1, 'Tierra');
INSERT INTO public.planet VALUES (4, 8, 4500, 0, false, true, 1, 'Marte');
INSERT INTO public.planet VALUES (5, 8, 4500, 0, false, true, 1, 'Júpiter');
INSERT INTO public.planet VALUES (6, 8, 4500, 0, false, true, 1, 'Saturno');
INSERT INTO public.planet VALUES (7, 8, 4500, 0, false, true, 1, 'Urano');
INSERT INTO public.planet VALUES (8, 8, 4500, 0, false, true, 1, 'Neptuno');
INSERT INTO public.planet VALUES (9, 3, 200, 8.6, false, true, 2, 'Sirio b');
INSERT INTO public.planet VALUES (10, 2, 500, 97, true, true, 3, 'Alpherat c');
INSERT INTO public.planet VALUES (11, 5, 3000, 23, false, true, 4, 'Mirach d');
INSERT INTO public.planet VALUES (12, 7, 8000, 31, false, true, 5, 'Sombrero-α e');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 4600, 0.0000158, 1);
INSERT INTO public.star VALUES (2, 'Sirio', 250, 8.6, 1);
INSERT INTO public.star VALUES (3, 'Alpheratz', 60, 97, 2);
INSERT INTO public.star VALUES (4, 'Mirach', 5000, 200, 2);
INSERT INTO public.star VALUES (5, 'Sombrero-α', 8000, 29000000, 3);
INSERT INTO public.star VALUES (6, 'M51-UR1', 10, 23000000, 4);
INSERT INTO public.star VALUES (7, 'M51-P1', 500, 23000000, 4);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: constellation constellation_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_unique UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


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
-- PostgreSQL database dump complete
--

