--
-- PostgreSQL database dump
--

-- Dumped from database version 14.8 (Ubuntu 14.8-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.8 (Ubuntu 14.8-0ubuntu0.22.04.1)

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

DROP DATABASE students;
--
-- Name: students; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE students WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'pt_BR.UTF-8';


ALTER DATABASE students OWNER TO postgres;

\connect students

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
-- Name: courses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course character varying(60) NOT NULL
);


ALTER TABLE public.courses OWNER TO postgres;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_id_seq OWNER TO postgres;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;


--
-- Name: majors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.majors (
    major_id integer NOT NULL,
    major character varying(100) NOT NULL
);


ALTER TABLE public.majors OWNER TO postgres;

--
-- Name: majors_courses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.majors_courses (
    major_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.majors_courses OWNER TO postgres;

--
-- Name: majors_major_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.majors_major_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.majors_major_id_seq OWNER TO postgres;

--
-- Name: majors_major_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.majors_major_id_seq OWNED BY public.majors.major_id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    major_id integer,
    gpa numeric(2,1)
);


ALTER TABLE public.students OWNER TO postgres;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_student_id_seq OWNER TO postgres;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: majors major_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.majors ALTER COLUMN major_id SET DEFAULT nextval('public.majors_major_id_seq'::regclass);


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.courses VALUES (55, 'Data Structures and Algorithms');
INSERT INTO public.courses VALUES (56, 'Web Programming');
INSERT INTO public.courses VALUES (57, 'Database Systems');
INSERT INTO public.courses VALUES (58, 'Computer Networks');
INSERT INTO public.courses VALUES (59, 'SQL');
INSERT INTO public.courses VALUES (60, 'Machine Learning');
INSERT INTO public.courses VALUES (61, 'Computer Systems');
INSERT INTO public.courses VALUES (62, 'Web Applications');
INSERT INTO public.courses VALUES (63, 'Artificial Intelligence');
INSERT INTO public.courses VALUES (64, 'Python');
INSERT INTO public.courses VALUES (65, 'Object-Oriented Programming');
INSERT INTO public.courses VALUES (66, 'Calculus');
INSERT INTO public.courses VALUES (67, 'Game Architecture');
INSERT INTO public.courses VALUES (68, 'Algorithms');
INSERT INTO public.courses VALUES (69, 'UNIX');
INSERT INTO public.courses VALUES (70, 'Server Administration');
INSERT INTO public.courses VALUES (71, 'Network Security');


--
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.majors VALUES (25, 'Database Administration');
INSERT INTO public.majors VALUES (26, 'Web Development');
INSERT INTO public.majors VALUES (27, 'Data Science');
INSERT INTO public.majors VALUES (28, 'Network Engineering');
INSERT INTO public.majors VALUES (29, 'Computer Programming');
INSERT INTO public.majors VALUES (30, 'Game Design');
INSERT INTO public.majors VALUES (31, 'System Administration');


--
-- Data for Name: majors_courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.majors_courses VALUES (25, 55);
INSERT INTO public.majors_courses VALUES (26, 56);
INSERT INTO public.majors_courses VALUES (25, 57);
INSERT INTO public.majors_courses VALUES (27, 55);
INSERT INTO public.majors_courses VALUES (28, 58);
INSERT INTO public.majors_courses VALUES (25, 59);
INSERT INTO public.majors_courses VALUES (27, 60);
INSERT INTO public.majors_courses VALUES (28, 61);
INSERT INTO public.majors_courses VALUES (29, 58);
INSERT INTO public.majors_courses VALUES (25, 62);
INSERT INTO public.majors_courses VALUES (30, 63);
INSERT INTO public.majors_courses VALUES (27, 64);
INSERT INTO public.majors_courses VALUES (29, 65);
INSERT INTO public.majors_courses VALUES (31, 61);
INSERT INTO public.majors_courses VALUES (30, 66);
INSERT INTO public.majors_courses VALUES (26, 55);
INSERT INTO public.majors_courses VALUES (27, 66);
INSERT INTO public.majors_courses VALUES (26, 65);
INSERT INTO public.majors_courses VALUES (30, 67);
INSERT INTO public.majors_courses VALUES (31, 58);
INSERT INTO public.majors_courses VALUES (30, 68);
INSERT INTO public.majors_courses VALUES (31, 69);
INSERT INTO public.majors_courses VALUES (31, 70);
INSERT INTO public.majors_courses VALUES (29, 61);
INSERT INTO public.majors_courses VALUES (29, 64);
INSERT INTO public.majors_courses VALUES (28, 71);
INSERT INTO public.majors_courses VALUES (26, 62);
INSERT INTO public.majors_courses VALUES (28, 68);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.students VALUES (63, 'Rhea', 'Kellems', 25, 2.5);
INSERT INTO public.students VALUES (64, 'Emma', 'Gilbert', NULL, NULL);
INSERT INTO public.students VALUES (65, 'Kimberly', 'Whitley', 26, 3.8);
INSERT INTO public.students VALUES (66, 'Jimmy', 'Felipe', 25, 3.7);
INSERT INTO public.students VALUES (67, 'Kyle', 'Stimson', NULL, 2.8);
INSERT INTO public.students VALUES (68, 'Casares', 'Hijo', 30, 4.0);
INSERT INTO public.students VALUES (69, 'Noe', 'Savage', NULL, 3.6);
INSERT INTO public.students VALUES (70, 'Sterling', 'Boss', 30, 3.9);
INSERT INTO public.students VALUES (71, 'Brian', 'Davis', NULL, 2.3);
INSERT INTO public.students VALUES (72, 'Kaija', 'Uronen', 30, 3.7);
INSERT INTO public.students VALUES (73, 'Faye', 'Conn', 30, 2.1);
INSERT INTO public.students VALUES (74, 'Efren', 'Reilly', 26, 3.9);
INSERT INTO public.students VALUES (75, 'Danh', 'Nhung', NULL, 2.4);
INSERT INTO public.students VALUES (76, 'Maxine', 'Hagenes', 25, 2.9);
INSERT INTO public.students VALUES (77, 'Larry', 'Saunders', 27, 2.2);
INSERT INTO public.students VALUES (78, 'Karl', 'Kuhar', 26, NULL);
INSERT INTO public.students VALUES (79, 'Lieke', 'Hazenveld', 30, 3.5);
INSERT INTO public.students VALUES (80, 'Obie', 'Hilpert', 26, NULL);
INSERT INTO public.students VALUES (81, 'Peter', 'Booysen', NULL, 2.9);
INSERT INTO public.students VALUES (82, 'Nathan', 'Turner', 25, 3.3);
INSERT INTO public.students VALUES (83, 'Gerald', 'Osiki', 27, 2.2);
INSERT INTO public.students VALUES (84, 'Vanya', 'Hassanah', 30, 4.0);
INSERT INTO public.students VALUES (85, 'Roxelana', 'Florescu', 25, 3.2);
INSERT INTO public.students VALUES (86, 'Helene', 'Parker', 27, 3.4);
INSERT INTO public.students VALUES (87, 'Mariana', 'Russel', 26, 1.8);
INSERT INTO public.students VALUES (88, 'Ajit', 'Dhungel', NULL, 3.0);
INSERT INTO public.students VALUES (89, 'Mehdi', 'Vandenberghe', 25, 1.9);
INSERT INTO public.students VALUES (90, 'Dejon', 'Howell', 26, 4.0);
INSERT INTO public.students VALUES (91, 'Aliya', 'Gulgowski', 31, 2.6);
INSERT INTO public.students VALUES (92, 'Ana', 'Tupajic', 27, 3.1);
INSERT INTO public.students VALUES (93, 'Hugo', 'Duran', NULL, 3.8);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 71, true);


--
-- Name: majors_major_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.majors_major_id_seq', 31, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_student_id_seq', 93, true);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- Name: majors_courses majors_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_pkey PRIMARY KEY (major_id, course_id);


--
-- Name: majors majors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (major_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: majors_courses majors_courses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- Name: majors_courses majors_courses_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- Name: students students_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- PostgreSQL database dump complete
--

