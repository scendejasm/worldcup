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
    round character varying(20) NOT NULL,
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

INSERT INTO public.games VALUES (41, 2018, 'Final', 66, 67, 4, 2);
INSERT INTO public.games VALUES (42, 2018, 'Third Place', 68, 69, 2, 0);
INSERT INTO public.games VALUES (43, 2018, 'Semi-Final', 67, 69, 2, 1);
INSERT INTO public.games VALUES (44, 2018, 'Semi-Final', 66, 68, 1, 0);
INSERT INTO public.games VALUES (45, 2018, 'Quarter-Final', 67, 70, 3, 2);
INSERT INTO public.games VALUES (46, 2018, 'Quarter-Final', 69, 71, 2, 0);
INSERT INTO public.games VALUES (47, 2018, 'Quarter-Final', 68, 72, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Quarter-Final', 66, 73, 2, 0);
INSERT INTO public.games VALUES (49, 2018, 'Eighth-Final', 69, 74, 2, 1);
INSERT INTO public.games VALUES (50, 2018, 'Eighth-Final', 71, 75, 1, 0);
INSERT INTO public.games VALUES (51, 2018, 'Eighth-Final', 68, 76, 3, 2);
INSERT INTO public.games VALUES (52, 2018, 'Eighth-Final', 72, 77, 2, 0);
INSERT INTO public.games VALUES (53, 2018, 'Eighth-Final', 67, 78, 2, 1);
INSERT INTO public.games VALUES (54, 2018, 'Eighth-Final', 70, 79, 2, 1);
INSERT INTO public.games VALUES (55, 2018, 'Eighth-Final', 73, 80, 2, 1);
INSERT INTO public.games VALUES (56, 2018, 'Eighth-Final', 66, 81, 4, 3);
INSERT INTO public.games VALUES (57, 2014, 'Final', 82, 81, 1, 0);
INSERT INTO public.games VALUES (58, 2014, 'Third Place', 83, 72, 3, 0);
INSERT INTO public.games VALUES (59, 2014, 'Semi-Final', 81, 83, 1, 0);
INSERT INTO public.games VALUES (60, 2014, 'Semi-Final', 82, 72, 7, 1);
INSERT INTO public.games VALUES (61, 2014, 'Quarter-Final', 83, 84, 1, 0);
INSERT INTO public.games VALUES (62, 2014, 'Quarter-Final', 81, 68, 1, 0);
INSERT INTO public.games VALUES (63, 2014, 'Quarter-Final', 72, 74, 2, 1);
INSERT INTO public.games VALUES (64, 2014, 'Quarter-Final', 82, 66, 1, 0);
INSERT INTO public.games VALUES (65, 2014, 'Eighth-Final', 72, 85, 2, 1);
INSERT INTO public.games VALUES (66, 2014, 'Eighth-Final', 74, 73, 2, 0);
INSERT INTO public.games VALUES (67, 2014, 'Eighth-Final', 66, 86, 2, 0);
INSERT INTO public.games VALUES (68, 2014, 'Eighth-Final', 82, 87, 2, 1);
INSERT INTO public.games VALUES (69, 2014, 'Eighth-Final', 83, 77, 2, 1);
INSERT INTO public.games VALUES (70, 2014, 'Eighth-Final', 84, 88, 2, 1);
INSERT INTO public.games VALUES (71, 2014, 'Eighth-Final', 81, 75, 1, 0);
INSERT INTO public.games VALUES (72, 2014, 'Eighth-Final', 68, 89, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (66, 'France');
INSERT INTO public.teams VALUES (67, 'Croatia');
INSERT INTO public.teams VALUES (68, 'Belgium');
INSERT INTO public.teams VALUES (69, 'England');
INSERT INTO public.teams VALUES (70, 'Russia');
INSERT INTO public.teams VALUES (71, 'Sweden');
INSERT INTO public.teams VALUES (72, 'Brazil');
INSERT INTO public.teams VALUES (73, 'Uruguay');
INSERT INTO public.teams VALUES (74, 'Colombia');
INSERT INTO public.teams VALUES (75, 'Switzerland');
INSERT INTO public.teams VALUES (76, 'Japan');
INSERT INTO public.teams VALUES (77, 'Mexico');
INSERT INTO public.teams VALUES (78, 'Denmark');
INSERT INTO public.teams VALUES (79, 'Spain');
INSERT INTO public.teams VALUES (80, 'Portugal');
INSERT INTO public.teams VALUES (81, 'Argentina');
INSERT INTO public.teams VALUES (82, 'Germany');
INSERT INTO public.teams VALUES (83, 'Netherlands');
INSERT INTO public.teams VALUES (84, 'Costa Rica');
INSERT INTO public.teams VALUES (85, 'Chile');
INSERT INTO public.teams VALUES (86, 'Nigeria');
INSERT INTO public.teams VALUES (87, 'Algeria');
INSERT INTO public.teams VALUES (88, 'Greece');
INSERT INTO public.teams VALUES (89, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 72, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 89, true);


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

