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
    round character varying(60) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL
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
    name character varying(30) NOT NULL
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

INSERT INTO public.games VALUES (33, 'Final', 67, 68, 4, 2, 2018);
INSERT INTO public.games VALUES (34, 'Third Place', 69, 70, 2, 0, 2018);
INSERT INTO public.games VALUES (35, 'Semi-Final', 68, 70, 2, 1, 2018);
INSERT INTO public.games VALUES (36, 'Semi-Final', 67, 69, 1, 0, 2018);
INSERT INTO public.games VALUES (37, 'Quarter-Final', 68, 76, 3, 2, 2018);
INSERT INTO public.games VALUES (38, 'Quarter-Final', 70, 78, 2, 0, 2018);
INSERT INTO public.games VALUES (39, 'Quarter-Final', 69, 80, 2, 1, 2018);
INSERT INTO public.games VALUES (40, 'Quarter-Final', 67, 82, 2, 0, 2018);
INSERT INTO public.games VALUES (41, 'Eighth-Final', 70, 84, 2, 1, 2018);
INSERT INTO public.games VALUES (42, 'Eighth-Final', 78, 86, 1, 0, 2018);
INSERT INTO public.games VALUES (43, 'Eighth-Final', 69, 88, 3, 2, 2018);
INSERT INTO public.games VALUES (44, 'Eighth-Final', 80, 90, 2, 0, 2018);
INSERT INTO public.games VALUES (45, 'Eighth-Final', 68, 92, 2, 1, 2018);
INSERT INTO public.games VALUES (46, 'Eighth-Final', 76, 94, 2, 1, 2018);
INSERT INTO public.games VALUES (47, 'Eighth-Final', 82, 96, 2, 1, 2018);
INSERT INTO public.games VALUES (48, 'Eighth-Final', 67, 98, 4, 3, 2018);
INSERT INTO public.games VALUES (49, 'Final', 99, 98, 1, 0, 2014);
INSERT INTO public.games VALUES (50, 'Third Place', 101, 80, 3, 0, 2014);
INSERT INTO public.games VALUES (51, 'Semi-Final', 98, 101, 1, 0, 2014);
INSERT INTO public.games VALUES (52, 'Semi-Final', 99, 80, 7, 1, 2014);
INSERT INTO public.games VALUES (53, 'Quarter-Final', 101, 108, 1, 0, 2014);
INSERT INTO public.games VALUES (54, 'Quarter-Final', 98, 69, 1, 0, 2014);
INSERT INTO public.games VALUES (55, 'Quarter-Final', 80, 84, 2, 1, 2014);
INSERT INTO public.games VALUES (56, 'Quarter-Final', 99, 67, 1, 0, 2014);
INSERT INTO public.games VALUES (57, 'Eighth-Final', 80, 116, 2, 1, 2014);
INSERT INTO public.games VALUES (58, 'Eighth-Final', 84, 82, 2, 0, 2014);
INSERT INTO public.games VALUES (59, 'Eighth-Final', 67, 120, 2, 0, 2014);
INSERT INTO public.games VALUES (60, 'Eighth-Final', 99, 122, 2, 1, 2014);
INSERT INTO public.games VALUES (61, 'Eighth-Final', 101, 90, 2, 1, 2014);
INSERT INTO public.games VALUES (62, 'Eighth-Final', 108, 126, 2, 1, 2014);
INSERT INTO public.games VALUES (63, 'Eighth-Final', 98, 86, 1, 0, 2014);
INSERT INTO public.games VALUES (64, 'Eighth-Final', 69, 130, 2, 1, 2014);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (67, 'France');
INSERT INTO public.teams VALUES (68, 'Croatia');
INSERT INTO public.teams VALUES (69, 'Belgium');
INSERT INTO public.teams VALUES (70, 'England');
INSERT INTO public.teams VALUES (76, 'Russia');
INSERT INTO public.teams VALUES (78, 'Sweden');
INSERT INTO public.teams VALUES (80, 'Brazil');
INSERT INTO public.teams VALUES (82, 'Uruguay');
INSERT INTO public.teams VALUES (84, 'Colombia');
INSERT INTO public.teams VALUES (86, 'Switzerland');
INSERT INTO public.teams VALUES (88, 'Japan');
INSERT INTO public.teams VALUES (90, 'Mexico');
INSERT INTO public.teams VALUES (92, 'Denmark');
INSERT INTO public.teams VALUES (94, 'Spain');
INSERT INTO public.teams VALUES (96, 'Portugal');
INSERT INTO public.teams VALUES (98, 'Argentina');
INSERT INTO public.teams VALUES (99, 'Germany');
INSERT INTO public.teams VALUES (101, 'Netherlands');
INSERT INTO public.teams VALUES (108, 'Costa Rica');
INSERT INTO public.teams VALUES (116, 'Chile');
INSERT INTO public.teams VALUES (120, 'Nigeria');
INSERT INTO public.teams VALUES (122, 'Algeria');
INSERT INTO public.teams VALUES (126, 'Greece');
INSERT INTO public.teams VALUES (130, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 130, true);


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

