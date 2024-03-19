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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (21, 2018, 'Final', 235, 236, 4, 2);
INSERT INTO public.games VALUES (22, 2018, 'Third Place', 237, 238, 2, 0);
INSERT INTO public.games VALUES (23, 2018, 'Semi-Final', 236, 238, 2, 1);
INSERT INTO public.games VALUES (24, 2018, 'Semi-Final', 235, 237, 1, 0);
INSERT INTO public.games VALUES (25, 2018, 'Quarter-Final', 236, 239, 3, 2);
INSERT INTO public.games VALUES (26, 2018, 'Quarter-Final', 238, 240, 2, 0);
INSERT INTO public.games VALUES (27, 2018, 'Quarter-Final', 237, 241, 2, 1);
INSERT INTO public.games VALUES (28, 2018, 'Quarter-Final', 235, 242, 2, 0);
INSERT INTO public.games VALUES (29, 2018, 'Eighth-Final', 238, 243, 2, 1);
INSERT INTO public.games VALUES (30, 2018, 'Eighth-Final', 240, 244, 1, 0);
INSERT INTO public.games VALUES (31, 2018, 'Eighth-Final', 237, 245, 3, 2);
INSERT INTO public.games VALUES (32, 2018, 'Eighth-Final', 241, 246, 2, 0);
INSERT INTO public.games VALUES (33, 2018, 'Eighth-Final', 236, 247, 2, 1);
INSERT INTO public.games VALUES (34, 2018, 'Eighth-Final', 239, 248, 2, 1);
INSERT INTO public.games VALUES (35, 2018, 'Eighth-Final', 242, 249, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Eighth-Final', 235, 250, 4, 3);
INSERT INTO public.games VALUES (37, 2014, 'Final', 251, 250, 1, 0);
INSERT INTO public.games VALUES (38, 2014, 'Third Place', 252, 241, 3, 0);
INSERT INTO public.games VALUES (39, 2014, 'Semi-Final', 250, 252, 1, 0);
INSERT INTO public.games VALUES (40, 2014, 'Semi-Final', 251, 241, 7, 1);
INSERT INTO public.games VALUES (41, 2014, 'Quarter-Final', 252, 253, 1, 0);
INSERT INTO public.games VALUES (42, 2014, 'Quarter-Final', 250, 237, 1, 0);
INSERT INTO public.games VALUES (43, 2014, 'Quarter-Final', 241, 243, 2, 1);
INSERT INTO public.games VALUES (44, 2014, 'Quarter-Final', 251, 235, 1, 0);
INSERT INTO public.games VALUES (45, 2014, 'Eighth-Final', 241, 254, 2, 1);
INSERT INTO public.games VALUES (46, 2014, 'Eighth-Final', 243, 242, 2, 0);
INSERT INTO public.games VALUES (47, 2014, 'Eighth-Final', 235, 255, 2, 0);
INSERT INTO public.games VALUES (48, 2014, 'Eighth-Final', 251, 256, 2, 1);
INSERT INTO public.games VALUES (49, 2014, 'Eighth-Final', 252, 246, 2, 1);
INSERT INTO public.games VALUES (50, 2014, 'Eighth-Final', 253, 257, 2, 1);
INSERT INTO public.games VALUES (51, 2014, 'Eighth-Final', 250, 244, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Eighth-Final', 237, 258, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (235, 'France');
INSERT INTO public.teams VALUES (236, 'Croatia');
INSERT INTO public.teams VALUES (237, 'Belgium');
INSERT INTO public.teams VALUES (238, 'England');
INSERT INTO public.teams VALUES (239, 'Russia');
INSERT INTO public.teams VALUES (240, 'Sweden');
INSERT INTO public.teams VALUES (241, 'Brazil');
INSERT INTO public.teams VALUES (242, 'Uruguay');
INSERT INTO public.teams VALUES (243, 'Colombia');
INSERT INTO public.teams VALUES (244, 'Switzerland');
INSERT INTO public.teams VALUES (245, 'Japan');
INSERT INTO public.teams VALUES (246, 'Mexico');
INSERT INTO public.teams VALUES (247, 'Denmark');
INSERT INTO public.teams VALUES (248, 'Spain');
INSERT INTO public.teams VALUES (249, 'Portugal');
INSERT INTO public.teams VALUES (250, 'Argentina');
INSERT INTO public.teams VALUES (251, 'Germany');
INSERT INTO public.teams VALUES (252, 'Netherlands');
INSERT INTO public.teams VALUES (253, 'Costa Rica');
INSERT INTO public.teams VALUES (254, 'Chile');
INSERT INTO public.teams VALUES (255, 'Nigeria');
INSERT INTO public.teams VALUES (256, 'Algeria');
INSERT INTO public.teams VALUES (257, 'Greece');
INSERT INTO public.teams VALUES (258, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 52, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 258, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

