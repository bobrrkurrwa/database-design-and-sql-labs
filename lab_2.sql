--
-- PostgreSQL database dump
--

\restrict XthSz0qijeJg2bhMgeA6UNM02kLDoDQp1bu8tpvTUJqbht7JVARXPbhRvIwybQS

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-11-09 20:44:05

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
-- TOC entry 219 (class 1259 OID 16474)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    "Num" numeric(4,0) CONSTRAINT "Employees_Num_not_null" NOT NULL,
    "Fname" character varying(100) CONSTRAINT "Employees_Fname_not_null" NOT NULL,
    "Bday" date,
    "Gender" "char" DEFAULT 'm'::"char",
    "Job" character varying(30) CONSTRAINT "Employees_Job_not_null" NOT NULL,
    "WageRate" numeric(2,1) DEFAULT 1,
    "Sdate" date CONSTRAINT "Employees_Sdate_not_null" NOT NULL,
    "Address" character varying(200) CONSTRAINT "Employees_Address_not_null" NOT NULL,
    CONSTRAINT employees_gender_check CHECK ((("Gender" = 'f'::"char") OR ("Gender" = 'm'::"char"))),
    CONSTRAINT employees_wagerate_check CHECK ((("WageRate" >= 0.1) AND ("WageRate" <= 1.5)))
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16488)
-- Name: job_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job_history (
    "Num" numeric(6,0),
    "StartDate" date CONSTRAINT "Job_History_StartDate_not_null" NOT NULL,
    "EndDate" date CONSTRAINT "Job_History_EndDate_not_null" NOT NULL,
    "Job" character varying(30) CONSTRAINT "Job_History_Job_not_null" NOT NULL,
    "NumDepartment" numeric(2,0) DEFAULT 1,
    CONSTRAINT num_department_check CHECK ((("NumDepartment" > (0)::numeric) AND ("NumDepartment" <= (30)::numeric)))
);


ALTER TABLE public.job_history OWNER TO postgres;

--
-- TOC entry 4866 (class 2606 OID 16485)
-- Name: employees Employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT "Employees_pkey" PRIMARY KEY ("Num");


--
-- TOC entry 4867 (class 2606 OID 16496)
-- Name: job_history job_history_num_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_history
    ADD CONSTRAINT job_history_num_fk FOREIGN KEY ("Num") REFERENCES public.employees("Num");


--
-- TOC entry 5020 (class 0 OID 0)
-- Dependencies: 219
-- Name: TABLE employees; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.employees TO bd_editor;


-- Completed on 2026-11-09 20:44:05

--
-- PostgreSQL database dump complete
--

\unrestrict XthSz0qijeJg2bhMgeA6UNM02kLDoDQp1bu8tpvTUJqbht7JVARXPbhRvIwybQS

