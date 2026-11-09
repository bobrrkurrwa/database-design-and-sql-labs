--
-- PostgreSQL database dump
--

\restrict 9HKyqfliy7b7hvQQxtXWsyoUIBA24d5LwDQgHGOolLbDpCmr8uudbQnFeNJU8kS

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-11-09 20:43:20

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 221 (class 1259 OID 16406)
-- Name: albums; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.albums (
    album_name character varying(255) NOT NULL,
    release_year smallint NOT NULL,
    tracks_count smallint NOT NULL
);


ALTER TABLE public.albums OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16398)
-- Name: artists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.artists (
    artist_name character varying(255) NOT NULL,
    country_name character varying(255),
    foundation_year smallint
);


ALTER TABLE public.artists OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16414)
-- Name: disc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.disc (
    album_name character varying(255) NOT NULL,
    cost numeric(10,2) NOT NULL,
    sold bigint NOT NULL
);


ALTER TABLE public.disc OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16389)
-- Name: music_tracks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.music_tracks (
    track_name character varying(255) NOT NULL,
    album_name character varying(255),
    artist_name character varying(255) NOT NULL,
    release_year smallint
);


ALTER TABLE public.music_tracks OWNER TO postgres;

--
-- TOC entry 4872 (class 2606 OID 16413)
-- Name: albums albums_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.albums
    ADD CONSTRAINT albums_pkey PRIMARY KEY (album_name);


--
-- TOC entry 4870 (class 2606 OID 16405)
-- Name: artists artists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artists
    ADD CONSTRAINT artists_pkey PRIMARY KEY (artist_name);


--
-- TOC entry 4874 (class 2606 OID 16421)
-- Name: disc disc_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disc
    ADD CONSTRAINT disc_pkey PRIMARY KEY (album_name);


--
-- TOC entry 4868 (class 2606 OID 16397)
-- Name: music_tracks music_tracks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.music_tracks
    ADD CONSTRAINT music_tracks_pkey PRIMARY KEY (track_name);


--
-- TOC entry 4877 (class 2606 OID 16448)
-- Name: disc fk_disc_album; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disc
    ADD CONSTRAINT fk_disc_album FOREIGN KEY (album_name) REFERENCES public.albums(album_name);


--
-- TOC entry 4875 (class 2606 OID 16438)
-- Name: music_tracks fk_music_tracks_album; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.music_tracks
    ADD CONSTRAINT fk_music_tracks_album FOREIGN KEY (album_name) REFERENCES public.albums(album_name);


--
-- TOC entry 4876 (class 2606 OID 16428)
-- Name: music_tracks fk_music_tracks_artist; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.music_tracks
    ADD CONSTRAINT fk_music_tracks_artist FOREIGN KEY (artist_name) REFERENCES public.artists(artist_name);


-- Completed on 2026-11-09 20:43:20

--
-- PostgreSQL database dump complete
--

\unrestrict 9HKyqfliy7b7hvQQxtXWsyoUIBA24d5LwDQgHGOolLbDpCmr8uudbQnFeNJU8kS

