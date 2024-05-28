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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 330);
INSERT INTO public.games VALUES (2, 1, 816);
INSERT INTO public.games VALUES (3, 3, 60);
INSERT INTO public.games VALUES (4, 3, 650);
INSERT INTO public.games VALUES (5, 1, 60);
INSERT INTO public.games VALUES (6, 1, 96);
INSERT INTO public.games VALUES (7, 1, 514);
INSERT INTO public.games VALUES (8, 8, 753);
INSERT INTO public.games VALUES (9, 8, 190);
INSERT INTO public.games VALUES (10, 10, 497);
INSERT INTO public.games VALUES (11, 10, 426);
INSERT INTO public.games VALUES (12, 8, 264);
INSERT INTO public.games VALUES (13, 8, 924);
INSERT INTO public.games VALUES (14, 8, 768);
INSERT INTO public.games VALUES (15, 15, 43);
INSERT INTO public.games VALUES (16, 15, 115);
INSERT INTO public.games VALUES (17, 17, 320);
INSERT INTO public.games VALUES (18, 17, 782);
INSERT INTO public.games VALUES (19, 15, 72);
INSERT INTO public.games VALUES (20, 15, 298);
INSERT INTO public.games VALUES (21, 15, 638);
INSERT INTO public.games VALUES (22, 23, 445);
INSERT INTO public.games VALUES (23, 23, 159);
INSERT INTO public.games VALUES (24, 24, 409);
INSERT INTO public.games VALUES (25, 24, 277);
INSERT INTO public.games VALUES (26, 23, 283);
INSERT INTO public.games VALUES (27, 23, 881);
INSERT INTO public.games VALUES (28, 23, 392);
INSERT INTO public.games VALUES (29, 25, 618);
INSERT INTO public.games VALUES (30, 25, 722);
INSERT INTO public.games VALUES (31, 26, 221);
INSERT INTO public.games VALUES (32, 26, 495);
INSERT INTO public.games VALUES (33, 25, 336);
INSERT INTO public.games VALUES (34, 25, 267);
INSERT INTO public.games VALUES (35, 25, 513);
INSERT INTO public.games VALUES (36, 27, 473);
INSERT INTO public.games VALUES (37, 27, 674);
INSERT INTO public.games VALUES (38, 28, 83);
INSERT INTO public.games VALUES (39, 28, 21);
INSERT INTO public.games VALUES (40, 27, 335);
INSERT INTO public.games VALUES (41, 27, 575);
INSERT INTO public.games VALUES (42, 27, 338);
INSERT INTO public.games VALUES (43, 29, 911);
INSERT INTO public.games VALUES (44, 29, 632);
INSERT INTO public.games VALUES (45, 30, 397);
INSERT INTO public.games VALUES (46, 30, 993);
INSERT INTO public.games VALUES (47, 29, 73);
INSERT INTO public.games VALUES (48, 29, 7);
INSERT INTO public.games VALUES (49, 29, 349);
INSERT INTO public.games VALUES (50, 31, 34);
INSERT INTO public.games VALUES (51, 31, 538);
INSERT INTO public.games VALUES (52, 32, 455);
INSERT INTO public.games VALUES (53, 32, 85);
INSERT INTO public.games VALUES (54, 31, 557);
INSERT INTO public.games VALUES (55, 31, 574);
INSERT INTO public.games VALUES (56, 31, 589);
INSERT INTO public.games VALUES (57, 33, 591);
INSERT INTO public.games VALUES (58, 33, 768);
INSERT INTO public.games VALUES (59, 34, 100);
INSERT INTO public.games VALUES (60, 34, 872);
INSERT INTO public.games VALUES (61, 33, 318);
INSERT INTO public.games VALUES (62, 33, 556);
INSERT INTO public.games VALUES (63, 33, 67);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1716913034261');
INSERT INTO public.users VALUES (3, 'user_1716913034260');
INSERT INTO public.users VALUES (8, 'user_1716913079058');
INSERT INTO public.users VALUES (10, 'user_1716913079057');
INSERT INTO public.users VALUES (15, 'user_1716913111939');
INSERT INTO public.users VALUES (17, 'user_1716913111938');
INSERT INTO public.users VALUES (22, 'ks68');
INSERT INTO public.users VALUES (23, 'user_1716913159117');
INSERT INTO public.users VALUES (24, 'user_1716913159116');
INSERT INTO public.users VALUES (25, 'user_1716913391361');
INSERT INTO public.users VALUES (26, 'user_1716913391360');
INSERT INTO public.users VALUES (27, 'user_1716913406097');
INSERT INTO public.users VALUES (28, 'user_1716913406096');
INSERT INTO public.users VALUES (29, 'user_1716913442897');
INSERT INTO public.users VALUES (30, 'user_1716913442896');
INSERT INTO public.users VALUES (31, 'user_1716913456947');
INSERT INTO public.users VALUES (32, 'user_1716913456946');
INSERT INTO public.users VALUES (33, 'user_1716913608874');
INSERT INTO public.users VALUES (34, 'user_1716913608873');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 63, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 34, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

