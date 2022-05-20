--
-- PostgreSQL database dump
--

-- Dumped from database version 12.10 (Ubuntu 12.10-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.10 (Ubuntu 12.10-0ubuntu0.20.04.1)

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
-- Name: applicant_details; Type: TABLE; Schema: public; Owner: rakesh
--

CREATE TABLE public.applicant_details (
    id integer NOT NULL,
    full_name character varying NOT NULL,
    mobile character varying NOT NULL,
    qualifications character varying NOT NULL,
    gender character varying NOT NULL,
    age integer NOT NULL,
    address character varying NOT NULL,
    job_id integer NOT NULL,
    applied_at timestamp without time zone DEFAULT now() NOT NULL,
    applicant_exper character varying NOT NULL
);


ALTER TABLE public.applicant_details OWNER TO rakesh;

--
-- Name: TABLE applicant_details; Type: COMMENT; Schema: public; Owner: rakesh
--

COMMENT ON TABLE public.applicant_details IS 'It will contain the records of applied applicants';


--
-- Name: applicant_details_id_seq; Type: SEQUENCE; Schema: public; Owner: rakesh
--

CREATE SEQUENCE public.applicant_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.applicant_details_id_seq OWNER TO rakesh;

--
-- Name: applicant_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rakesh
--

ALTER SEQUENCE public.applicant_details_id_seq OWNED BY public.applicant_details.id;


--
-- Name: interview_records; Type: TABLE; Schema: public; Owner: rakesh
--

CREATE TABLE public.interview_records (
    id integer NOT NULL,
    total_marks integer NOT NULL,
    ap_round integer DEFAULT 1 NOT NULL,
    a_id integer NOT NULL
);


ALTER TABLE public.interview_records OWNER TO rakesh;

--
-- Name: TABLE interview_records; Type: COMMENT; Schema: public; Owner: rakesh
--

COMMENT ON TABLE public.interview_records IS 'it will contain all the records of taken interview.';


--
-- Name: interview_records_id_seq; Type: SEQUENCE; Schema: public; Owner: rakesh
--

CREATE SEQUENCE public.interview_records_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.interview_records_id_seq OWNER TO rakesh;

--
-- Name: interview_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rakesh
--

ALTER SEQUENCE public.interview_records_id_seq OWNED BY public.interview_records.id;


--
-- Name: job_details; Type: TABLE; Schema: public; Owner: rakesh
--

CREATE TABLE public.job_details (
    id integer NOT NULL,
    job_name character varying NOT NULL,
    job_type character varying NOT NULL,
    job_desc character varying,
    create_at timestamp without time zone DEFAULT now() NOT NULL,
    experience character varying NOT NULL,
    job_techno character varying NOT NULL
);


ALTER TABLE public.job_details OWNER TO rakesh;

--
-- Name: job_details_id_seq; Type: SEQUENCE; Schema: public; Owner: rakesh
--

CREATE SEQUENCE public.job_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_details_id_seq OWNER TO rakesh;

--
-- Name: job_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rakesh
--

ALTER SEQUENCE public.job_details_id_seq OWNED BY public.job_details.id;


--
-- Name: questions; Type: TABLE; Schema: public; Owner: rakesh
--

CREATE TABLE public.questions (
    id integer NOT NULL,
    question character varying NOT NULL,
    marks integer DEFAULT 10 NOT NULL,
    category character varying NOT NULL
);


ALTER TABLE public.questions OWNER TO rakesh;

--
-- Name: questions_id_seq; Type: SEQUENCE; Schema: public; Owner: rakesh
--

CREATE SEQUENCE public.questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.questions_id_seq OWNER TO rakesh;

--
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rakesh
--

ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;


--
-- Name: user_details; Type: TABLE; Schema: public; Owner: rakesh
--

CREATE TABLE public.user_details (
    id integer NOT NULL,
    full_name character varying NOT NULL,
    mobile character varying NOT NULL,
    password character varying NOT NULL,
    status character varying NOT NULL
);


ALTER TABLE public.user_details OWNER TO rakesh;

--
-- Name: user_details_id_seq; Type: SEQUENCE; Schema: public; Owner: rakesh
--

CREATE SEQUENCE public.user_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_details_id_seq OWNER TO rakesh;

--
-- Name: user_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rakesh
--

ALTER SEQUENCE public.user_details_id_seq OWNED BY public.user_details.id;


--
-- Name: applicant_details id; Type: DEFAULT; Schema: public; Owner: rakesh
--

ALTER TABLE ONLY public.applicant_details ALTER COLUMN id SET DEFAULT nextval('public.applicant_details_id_seq'::regclass);


--
-- Name: interview_records id; Type: DEFAULT; Schema: public; Owner: rakesh
--

ALTER TABLE ONLY public.interview_records ALTER COLUMN id SET DEFAULT nextval('public.interview_records_id_seq'::regclass);


--
-- Name: job_details id; Type: DEFAULT; Schema: public; Owner: rakesh
--

ALTER TABLE ONLY public.job_details ALTER COLUMN id SET DEFAULT nextval('public.job_details_id_seq'::regclass);


--
-- Name: questions id; Type: DEFAULT; Schema: public; Owner: rakesh
--

ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);


--
-- Name: user_details id; Type: DEFAULT; Schema: public; Owner: rakesh
--

ALTER TABLE ONLY public.user_details ALTER COLUMN id SET DEFAULT nextval('public.user_details_id_seq'::regclass);


--
-- Data for Name: applicant_details; Type: TABLE DATA; Schema: public; Owner: rakesh
--

COPY public.applicant_details (id, full_name, mobile, qualifications, gender, age, address, job_id, applied_at, applicant_exper) FROM stdin;
18	Saifu	9097149097	MCA	male	23	Afganistan	16	2022-05-09 11:45:06.180846	0
19	Ram	9097939353	Btech	male	23	Surat	17	2022-05-09 14:33:35.467617	0.5
\.


--
-- Data for Name: interview_records; Type: TABLE DATA; Schema: public; Owner: rakesh
--

COPY public.interview_records (id, total_marks, ap_round, a_id) FROM stdin;
13	30	2	18
\.


--
-- Data for Name: job_details; Type: TABLE DATA; Schema: public; Owner: rakesh
--

COPY public.job_details (id, job_name, job_type, job_desc, create_at, experience, job_techno) FROM stdin;
16	Python Developer	Web Developer	 coding, designing, deploying, and debugging of project	2022-05-09 11:42:06.363411	0-1	Python
17	Java Developer	Web Developer	 coding, designing, deploying, and debugging development projects	2022-05-09 14:30:16.118271	2-3	Java
\.


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: rakesh
--

COPY public.questions (id, question, marks, category) FROM stdin;
17	Who developed Java ?	10	Java
18	Who developed Python ?	10	Python
19	 What is the difference between list and tuples in Python?	10	Python
20	What type of language is python?	10	Python
21	How is memory managed in Python?	10	Python
22	What are the key features of Python?	10	Python
23	 Explain JDK, JRE and JVM?	10	Java
24	 Explain public static void main(String args[]) in Java.?	10	Java
25	 Why Java is not 100% Object-oriented?	10	Java
\.


--
-- Data for Name: user_details; Type: TABLE DATA; Schema: public; Owner: rakesh
--

COPY public.user_details (id, full_name, mobile, password, status) FROM stdin;
15	Rahul Kumar	9097006878	Rahul@123	1
20	Saifu	9097149097	Saifu@123	0
23	Gaurav Kumar	9852949059	Gk@12345	0
25	Rakesh Kumar	9097142242	Rakesh@123	1
26	Ram	9097939353	Ram@1234	0
27	Tirth	9097121212	Tirth@123	0
\.


--
-- Name: applicant_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rakesh
--

SELECT pg_catalog.setval('public.applicant_details_id_seq', 19, true);


--
-- Name: interview_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rakesh
--

SELECT pg_catalog.setval('public.interview_records_id_seq', 13, true);


--
-- Name: job_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rakesh
--

SELECT pg_catalog.setval('public.job_details_id_seq', 17, true);


--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rakesh
--

SELECT pg_catalog.setval('public.questions_id_seq', 25, true);


--
-- Name: user_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rakesh
--

SELECT pg_catalog.setval('public.user_details_id_seq', 27, true);


--
-- Name: applicant_details applicant_details_pk; Type: CONSTRAINT; Schema: public; Owner: rakesh
--

ALTER TABLE ONLY public.applicant_details
    ADD CONSTRAINT applicant_details_pk PRIMARY KEY (id);


--
-- Name: applicant_details applicant_details_un; Type: CONSTRAINT; Schema: public; Owner: rakesh
--

ALTER TABLE ONLY public.applicant_details
    ADD CONSTRAINT applicant_details_un UNIQUE (mobile);


--
-- Name: interview_records interview_records_pk; Type: CONSTRAINT; Schema: public; Owner: rakesh
--

ALTER TABLE ONLY public.interview_records
    ADD CONSTRAINT interview_records_pk PRIMARY KEY (id);


--
-- Name: job_details job_details_pk; Type: CONSTRAINT; Schema: public; Owner: rakesh
--

ALTER TABLE ONLY public.job_details
    ADD CONSTRAINT job_details_pk PRIMARY KEY (id);


--
-- Name: questions questions_pk; Type: CONSTRAINT; Schema: public; Owner: rakesh
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pk PRIMARY KEY (id);


--
-- Name: user_details user_details_pk; Type: CONSTRAINT; Schema: public; Owner: rakesh
--

ALTER TABLE ONLY public.user_details
    ADD CONSTRAINT user_details_pk PRIMARY KEY (id);


--
-- Name: user_details user_details_un; Type: CONSTRAINT; Schema: public; Owner: rakesh
--

ALTER TABLE ONLY public.user_details
    ADD CONSTRAINT user_details_un UNIQUE (mobile);


--
-- Name: applicant_details applicant_details_fk; Type: FK CONSTRAINT; Schema: public; Owner: rakesh
--

ALTER TABLE ONLY public.applicant_details
    ADD CONSTRAINT applicant_details_fk FOREIGN KEY (job_id) REFERENCES public.job_details(id) ON DELETE CASCADE;


--
-- Name: interview_records interview_records_fk; Type: FK CONSTRAINT; Schema: public; Owner: rakesh
--

ALTER TABLE ONLY public.interview_records
    ADD CONSTRAINT interview_records_fk FOREIGN KEY (a_id) REFERENCES public.applicant_details(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

