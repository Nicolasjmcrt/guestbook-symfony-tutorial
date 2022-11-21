--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6
-- Dumped by pg_dump version 14.6 (Homebrew)

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

--
-- Data for Name: conference; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.conference (id, city, year, is_international) FROM stdin;
2	Tokyo	2023	t
1	Compiègne	2022	f
\.


--
-- Data for Name: comment; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.comment (id, conference_id, author, text, email, created_at, photo_file_name) FROM stdin;
5	1	Nicolas	nljhgjyfddfglhkjlknjk	jumeaucourtn@gmail.com	2022-11-21 16:39:00	\N
\.


--
-- Data for Name: doctrine_migration_versions; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.doctrine_migration_versions (version, executed_at, execution_time) FROM stdin;
DoctrineMigrations\\Version20221121144023	2022-11-21 14:41:11	42
\.


--
-- Data for Name: messenger_messages; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.messenger_messages (id, body, headers, queue_name, created_at, available_at, delivered_at) FROM stdin;
\.


--
-- Name: comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.comment_id_seq', 5, true);


--
-- Name: conference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.conference_id_seq', 2, true);


--
-- Name: messenger_messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.messenger_messages_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

