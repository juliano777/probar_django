--
-- PostgreSQL database dump
--

-- Dumped from database version 11.0
-- Dumped by pg_dump version 11.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: sc_foo; Type: SCHEMA; Schema: -; Owner: user_django
--

CREATE SCHEMA sc_foo;


ALTER SCHEMA sc_foo OWNER TO user_django;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: user_django
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO user_django;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: user_django
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO user_django;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_django
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: user_django
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO user_django;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: user_django
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO user_django;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_django
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: user_django
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO user_django;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: user_django
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO user_django;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_django
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: user_django
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO user_django;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: user_django
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO user_django;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: user_django
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO user_django;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_django
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: user_django
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO user_django;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_django
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: user_django
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO user_django;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: user_django
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO user_django;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_django
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: user_django
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO user_django;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: user_django
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO user_django;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_django
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: user_django
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO user_django;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: user_django
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO user_django;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_django
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: user_django
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO user_django;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: user_django
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO user_django;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_django
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: user_django
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO user_django;

--
-- Name: tb_post; Type: TABLE; Schema: public; Owner: user_django
--

CREATE TABLE public.tb_post (
    _id integer NOT NULL,
    titulo character varying(150),
    tags character varying[],
    corpo text,
    criado timestamp with time zone DEFAULT now() NOT NULL,
    atualizado timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.tb_post OWNER TO user_django;

--
-- Name: tb_post__id_seq; Type: SEQUENCE; Schema: public; Owner: user_django
--

CREATE SEQUENCE public.tb_post__id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_post__id_seq OWNER TO user_django;

--
-- Name: tb_post__id_seq1; Type: SEQUENCE; Schema: public; Owner: user_django
--

CREATE SEQUENCE public.tb_post__id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_post__id_seq1 OWNER TO user_django;

--
-- Name: tb_post__id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_django
--

ALTER SEQUENCE public.tb_post__id_seq1 OWNED BY public.tb_post._id;


--
-- Name: tb_foo__id_seq; Type: SEQUENCE; Schema: sc_foo; Owner: user_django
--

CREATE SEQUENCE sc_foo.tb_foo__id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sc_foo.tb_foo__id_seq OWNER TO user_django;

--
-- Name: tb_foo; Type: TABLE; Schema: sc_foo; Owner: user_django
--

CREATE TABLE sc_foo.tb_foo (
    _id integer DEFAULT nextval('sc_foo.tb_foo__id_seq'::regclass) NOT NULL,
    campo text
);


ALTER TABLE sc_foo.tb_foo OWNER TO user_django;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: tb_post _id; Type: DEFAULT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.tb_post ALTER COLUMN _id SET DEFAULT nextval('public.tb_post__id_seq1'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: user_django
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: user_django
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: user_django
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add group	4	add_group
11	Can change group	4	change_group
12	Can delete group	4	delete_group
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add post	7	add_post
20	Can change post	7	change_post
21	Can delete post	7	delete_post
28	Can add foo	10	add_foo
29	Can change foo	10	change_foo
30	Can delete foo	10	delete_foo
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: user_django
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$30000$pvrRlrjklQMm$wCd77m09+rbrch3SkEVw31x9mVjNGbPVNkOJmkHrxB0=	2019-02-26 12:21:04.174066-03	t	admin			admin@localhost	t	t	2019-02-19 11:31:36.103948-03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: user_django
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: user_django
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: user_django
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-02-25 11:21:22.867467-03	4	titulo - criado	1	[{"added": {}}]	7	1
2	2019-02-25 11:21:38.348296-03	4	titulo - criado	3		7	1
3	2019-02-25 11:26:15.767089-03	6	None - criado	1	[{"added": {}}]	7	1
4	2019-02-25 11:30:53.699171-03	3	2019-02-25 14:30:53.698038+00:00 - criado	1	[{"added": {}}]	7	1
5	2019-02-25 11:31:30.520392-03	4	criado - 2019-02-25 14:31:30.519257+00:00	1	[{"added": {}}]	7	1
6	2019-02-25 11:33:58.18623-03	1	1 - Teste de Título	1	[{"added": {}}]	7	1
7	2019-02-25 11:40:54.099994-03	1	1 - Teste de Título	1	[{"added": {}}]	7	1
8	2019-02-25 12:55:26.172128-03	1	1 - Teste de Título	1	[{"added": {}}]	7	1
9	2019-02-25 12:55:47.264485-03	1	1 - Teste de Título	3		7	1
10	2019-02-25 12:56:05.383578-03	2	2 - Teste de Título	1	[{"added": {}}]	7	1
11	2019-02-25 12:56:29.4669-03	2	2 - Teste de Título	2	[{"changed": {"fields": ["tags"]}}]	7	1
12	2019-02-25 12:57:23.161202-03	2	2 - Teste de Título	2	[{"changed": {"fields": ["tags"]}}]	7	1
13	2019-02-25 14:37:12.051935-03	3	3 - Foo	1	[{"added": {}}]	7	1
14	2019-02-25 16:43:32.926402-03	1	1 - Tutorial psycopg2	1	[{"added": {}}]	7	1
15	2019-02-25 16:44:29.385645-03	2	2 - Intalação de Python no CentOS via Código-Fonte	1	[{"added": {}}]	7	1
16	2019-02-25 16:45:10.778684-03	3	3 - Intalação de PostgreSQL no Ubuntu via Código-Fonte	1	[{"added": {}}]	7	1
17	2019-02-25 16:50:21.488201-03	4	4 - Instalação do FreeBSD	1	[{"added": {}}]	7	1
18	2019-02-25 16:51:07.586765-03	5	5 - foo	1	[{"added": {}}]	7	1
19	2019-02-25 16:51:16.881978-03	5	5 - foo	3		7	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: user_django
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	user
4	auth	group
5	contenttypes	contenttype
6	sessions	session
7	posts	post
10	posts	foo
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: user_django
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-02-19 11:29:43.829316-03
2	auth	0001_initial	2019-02-19 11:29:44.461829-03
3	admin	0001_initial	2019-02-19 11:29:44.602346-03
4	admin	0002_logentry_remove_auto_add	2019-02-19 11:29:44.63546-03
5	contenttypes	0002_remove_content_type_name	2019-02-19 11:29:44.6855-03
6	auth	0002_alter_permission_name_max_length	2019-02-19 11:29:44.719098-03
7	auth	0003_alter_user_email_max_length	2019-02-19 11:29:44.751195-03
8	auth	0004_alter_user_username_opts	2019-02-19 11:29:44.776145-03
9	auth	0005_alter_user_last_login_null	2019-02-19 11:29:44.814675-03
10	auth	0006_require_contenttypes_0002	2019-02-19 11:29:44.826512-03
11	auth	0007_alter_validators_add_error_messages	2019-02-19 11:29:44.859539-03
12	auth	0008_alter_user_username_max_length	2019-02-19 11:29:44.921687-03
13	sessions	0001_initial	2019-02-19 11:29:45.080667-03
14	posts	0001_initial	2019-02-19 13:54:19.481759-03
15	posts	0002_foo	2019-02-19 14:04:38.62481-03
16	posts	0003_auto_20190219_1706	2019-02-19 14:06:34.370067-03
17	posts	0004_auto_20190219_1707	2019-02-19 14:07:25.534956-03
18	posts	0003_carro	2019-02-19 14:32:17.180041-03
19	posts	0003_auto_20190219_1800	2019-02-19 15:00:23.4961-03
20	posts	0003_auto_20190225_1207	2019-02-25 12:07:56.684873-03
21	posts	0004_post_tags	2019-02-25 12:54:05.312795-03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: user_django
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
wixri6xlkao8nwanvcfa8d76622o2w3q	ZWQ2ZTU1NjFlNjhiZTUwNmZhYjFjZjM1MTQ4ZDFhMmMyOGYyYmRkZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMzliNDUzZjZjYzNkNDJjZDdjMGQ0MjAyY2E2NzBiY2Q0MTAwMDI5In0=	2019-03-05 11:37:11.038193-03
tdknejhwb8h9wtvd0i5moob93apebpb9	ZWQ2ZTU1NjFlNjhiZTUwNmZhYjFjZjM1MTQ4ZDFhMmMyOGYyYmRkZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMzliNDUzZjZjYzNkNDJjZDdjMGQ0MjAyY2E2NzBiY2Q0MTAwMDI5In0=	2019-03-12 12:21:04.237735-03
\.


--
-- Data for Name: tb_post; Type: TABLE DATA; Schema: public; Owner: user_django
--

COPY public.tb_post (_id, titulo, tags, corpo, criado, atualizado) FROM stdin;
1	Tutorial psycopg2	{postgresql,python}	Visite o site:\r\n\r\nhttps://wiki.postgresql.org/wiki/Psycopg2_Tutorial	2019-02-25 16:43:32.886105-03	2019-02-25 16:43:32.886134-03
2	Intalação de Python no CentOS via Código-Fonte	{python,linux,centos,"source code"}	Bla bla bla	2019-02-25 16:44:29.384707-03	2019-02-25 16:44:29.384728-03
3	Intalação de PostgreSQL no Ubuntu via Código-Fonte	{postgresql,linux,ubuntu,"source code"}	Bla bla bla	2019-02-25 16:45:10.777528-03	2019-02-25 16:45:10.777554-03
4	Instalação do FreeBSD	{freebsd,bsd}	Bla bla bla	2019-02-25 16:50:21.487039-03	2019-02-25 16:50:21.487067-03
\.


--
-- Data for Name: tb_foo; Type: TABLE DATA; Schema: sc_foo; Owner: user_django
--

COPY sc_foo.tb_foo (_id, campo) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_django
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_django
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_django
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 33, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_django
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_django
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_django
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_django
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 19, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_django
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_django
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);


--
-- Name: tb_post__id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_django
--

SELECT pg_catalog.setval('public.tb_post__id_seq', 6, true);


--
-- Name: tb_post__id_seq1; Type: SEQUENCE SET; Schema: public; Owner: user_django
--

SELECT pg_catalog.setval('public.tb_post__id_seq1', 5, true);


--
-- Name: tb_foo__id_seq; Type: SEQUENCE SET; Schema: sc_foo; Owner: user_django
--

SELECT pg_catalog.setval('sc_foo.tb_foo__id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: tb_post tb_post_pkey; Type: CONSTRAINT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.tb_post
    ADD CONSTRAINT tb_post_pkey PRIMARY KEY (_id);


--
-- Name: tb_foo tb_foo_pkey; Type: CONSTRAINT; Schema: sc_foo; Owner: user_django
--

ALTER TABLE ONLY sc_foo.tb_foo
    ADD CONSTRAINT tb_foo_pkey PRIMARY KEY (_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: user_django
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: user_django
--

CREATE INDEX auth_group_permissions_0e939a4f ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: user_django
--

CREATE INDEX auth_group_permissions_8373b171 ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: user_django
--

CREATE INDEX auth_permission_417f1b1c ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: user_django
--

CREATE INDEX auth_user_groups_0e939a4f ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: user_django
--

CREATE INDEX auth_user_groups_e8701ad4 ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: user_django
--

CREATE INDEX auth_user_user_permissions_8373b171 ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: user_django
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: user_django
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: user_django
--

CREATE INDEX django_admin_log_417f1b1c ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: user_django
--

CREATE INDEX django_admin_log_e8701ad4 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: user_django
--

CREATE INDEX django_session_de54fa62 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: user_django
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user_django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

