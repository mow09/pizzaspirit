--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

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

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO django;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO django;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO django;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO django;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO django;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO django;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO django;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO django;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO django;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO django;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO django;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO django;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: django
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


ALTER TABLE public.django_admin_log OWNER TO django;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO django;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO django;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO django;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO django;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO django;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO django;

--
-- Name: pizza_order; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.pizza_order (
    id integer NOT NULL,
    order_state character varying(1) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    customer_id integer NOT NULL
);


ALTER TABLE public.pizza_order OWNER TO django;

--
-- Name: pizza_order_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.pizza_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pizza_order_id_seq OWNER TO django;

--
-- Name: pizza_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.pizza_order_id_seq OWNED BY public.pizza_order.id;


--
-- Name: pizza_order_pizzas; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.pizza_order_pizzas (
    id integer NOT NULL,
    order_id integer NOT NULL,
    pizzaorder_id integer NOT NULL
);


ALTER TABLE public.pizza_order_pizzas OWNER TO django;

--
-- Name: pizza_order_pizzas_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.pizza_order_pizzas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pizza_order_pizzas_id_seq OWNER TO django;

--
-- Name: pizza_order_pizzas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.pizza_order_pizzas_id_seq OWNED BY public.pizza_order_pizzas.id;


--
-- Name: pizza_pizza; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.pizza_pizza (
    id integer NOT NULL,
    flavor character varying(42) NOT NULL
);


ALTER TABLE public.pizza_pizza OWNER TO django;

--
-- Name: pizza_pizza_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.pizza_pizza_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pizza_pizza_id_seq OWNER TO django;

--
-- Name: pizza_pizza_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.pizza_pizza_id_seq OWNED BY public.pizza_pizza.id;


--
-- Name: pizza_pizzaorder; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.pizza_pizzaorder (
    id integer NOT NULL,
    size character varying(1) NOT NULL,
    quantity integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    pizza_id integer
);


ALTER TABLE public.pizza_pizzaorder OWNER TO django;

--
-- Name: pizza_pizzaorder_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.pizza_pizzaorder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pizza_pizzaorder_id_seq OWNER TO django;

--
-- Name: pizza_pizzaorder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.pizza_pizzaorder_id_seq OWNED BY public.pizza_pizzaorder.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: pizza_order id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.pizza_order ALTER COLUMN id SET DEFAULT nextval('public.pizza_order_id_seq'::regclass);


--
-- Name: pizza_order_pizzas id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.pizza_order_pizzas ALTER COLUMN id SET DEFAULT nextval('public.pizza_order_pizzas_id_seq'::regclass);


--
-- Name: pizza_pizza id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.pizza_pizza ALTER COLUMN id SET DEFAULT nextval('public.pizza_pizza_id_seq'::regclass);


--
-- Name: pizza_pizzaorder id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.pizza_pizzaorder ALTER COLUMN id SET DEFAULT nextval('public.pizza_pizzaorder_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add customer	1	add_customer
2	Can change customer	1	change_customer
3	Can delete customer	1	delete_customer
4	Can view customer	1	view_customer
5	Can add order state	2	add_orderstate
6	Can change order state	2	change_orderstate
7	Can delete order state	2	delete_orderstate
8	Can view order state	2	view_orderstate
9	Can add pizza	3	add_pizza
10	Can change pizza	3	change_pizza
11	Can delete pizza	3	delete_pizza
12	Can view pizza	3	view_pizza
13	Can add pizza order	4	add_pizzaorder
14	Can change pizza order	4	change_pizzaorder
15	Can delete pizza order	4	delete_pizzaorder
16	Can view pizza order	4	view_pizzaorder
17	Can add order	5	add_order
18	Can change order	5	change_order
19	Can delete order	5	delete_order
20	Can view order	5	view_order
21	Can add log entry	6	add_logentry
22	Can change log entry	6	change_logentry
23	Can delete log entry	6	delete_logentry
24	Can view log entry	6	view_logentry
25	Can add permission	7	add_permission
26	Can change permission	7	change_permission
27	Can delete permission	7	delete_permission
28	Can view permission	7	view_permission
29	Can add group	8	add_group
30	Can change group	8	change_group
31	Can delete group	8	delete_group
32	Can view group	8	view_group
33	Can add user	9	add_user
34	Can change user	9	change_user
35	Can delete user	9	delete_user
36	Can view user	9	view_user
37	Can add content type	10	add_contenttype
38	Can change content type	10	change_contenttype
39	Can delete content type	10	delete_contenttype
40	Can view content type	10	view_contenttype
41	Can add session	11	add_session
42	Can change session	11	change_session
43	Can delete session	11	delete_session
44	Can view session	11	view_session
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$216000$jOJJhOSCAcgx$XILgzKc2CPXulL76mov7wFVplU0eEzXMg93UHkqXnu8=	2020-11-29 19:39:30.271866+01	t	admin				t	t	2020-11-29 19:38:24.109807+01
2	pbkdf2_sha256$216000$diBBDSEnB2RY$Q6zb49VSgvnzc4d/xMw7REAV2iNCkeZsWDaQLoBvehI=	\N	f	Don				f	t	2020-11-29 19:41:23.853024+01
3	pbkdf2_sha256$216000$JGbgHPzXOWsw$ZXy6i4GV/q/EfqM/Me7i1lMf5Nc/+G8jyJfim37e04Q=	\N	f	Sapore				f	t	2020-11-29 19:43:14.260719+01
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-11-29 19:41:23.973646+01	2	Don	1	[{"added": {}}]	9	1
2	2020-11-29 19:43:14.380873+01	3	Sapore	1	[{"added": {}}]	9	1
3	2020-11-29 19:43:34.510635+01	1	Pizza Margarita	1	[{"added": {}}]	3	1
4	2020-11-29 19:43:41.017702+01	2	Pizza Marinara	1	[{"added": {}}]	3	1
5	2020-11-29 19:43:45.989031+01	3	Pizza Salami	1	[{"added": {}}]	3	1
6	2020-11-29 19:44:11.096484+01	1	5x Salami         in size S	1	[{"added": {}}]	4	1
7	2020-11-29 19:44:35.209625+01	2	1x Margarita         in size M	1	[{"added": {}}]	4	1
8	2020-11-29 19:44:59.417006+01	3	1x Marinara         in size M	1	[{"added": {}}]	4	1
9	2020-11-29 19:45:13.973308+01	4	1x Margarita         in size L	1	[{"added": {}}]	4	1
10	2020-11-29 19:45:23.79991+01	5	2x Margarita         in size L	1	[{"added": {}}]	4	1
11	2020-11-29 19:45:35.189293+01	6	3x Margarita         in size L	1	[{"added": {}}]	4	1
12	2020-11-29 19:45:56.582908+01	1	By admin	1	[{"added": {}}]	5	1
13	2020-11-29 19:46:28.280044+01	2	By Sapore	1	[{"added": {}}]	5	1
14	2020-11-29 19:47:12.634715+01	3	By Sapore	1	[{"added": {}}]	5	1
15	2020-11-29 19:47:52.315952+01	4	By Sapore	1	[{"added": {}}]	5	1
16	2020-11-29 19:48:20.554443+01	5	By Don	1	[{"added": {}}]	5	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	pizza	customer
2	pizza	orderstate
3	pizza	pizza
4	pizza	pizzaorder
5	pizza	order
6	admin	logentry
7	auth	permission
8	auth	group
9	auth	user
10	contenttypes	contenttype
11	sessions	session
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-11-29 19:37:58.655981+01
2	auth	0001_initial	2020-11-29 19:37:58.68685+01
3	admin	0001_initial	2020-11-29 19:37:58.722894+01
4	admin	0002_logentry_remove_auto_add	2020-11-29 19:37:58.736128+01
5	admin	0003_logentry_add_action_flag_choices	2020-11-29 19:37:58.743494+01
6	contenttypes	0002_remove_content_type_name	2020-11-29 19:37:58.762889+01
7	auth	0002_alter_permission_name_max_length	2020-11-29 19:37:58.77095+01
8	auth	0003_alter_user_email_max_length	2020-11-29 19:37:58.779721+01
9	auth	0004_alter_user_username_opts	2020-11-29 19:37:58.786826+01
10	auth	0005_alter_user_last_login_null	2020-11-29 19:37:58.794689+01
11	auth	0006_require_contenttypes_0002	2020-11-29 19:37:58.796736+01
12	auth	0007_alter_validators_add_error_messages	2020-11-29 19:37:58.805244+01
13	auth	0008_alter_user_username_max_length	2020-11-29 19:37:58.815597+01
14	auth	0009_alter_user_last_name_max_length	2020-11-29 19:37:58.826717+01
15	auth	0010_alter_group_name_max_length	2020-11-29 19:37:58.835982+01
16	auth	0011_update_proxy_permissions	2020-11-29 19:37:58.843284+01
17	auth	0012_alter_user_first_name_max_length	2020-11-29 19:37:58.854887+01
18	pizza	0001_initial	2020-11-29 19:37:58.881585+01
19	pizza	0002_auto_20201129_1835	2020-11-29 19:37:58.912314+01
20	sessions	0001_initial	2020-11-29 19:37:58.918329+01
21	pizza	0003_auto_20201213_1523	2020-12-13 16:23:30.142468+01
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
4xms8azq1gwunsm0ig3357oztlkdj5im	.eJxVjMsOwiAURP-FtSFUHhaX7vsNhPtAqgaS0q6M_25JutBkVnPOzFuEuK05bI2XMJO4ikGcfjuI-OTSAT1iuVeJtazLDLIr8qBNTpX4dTvcv4McW-5rlxIgemZ9ATR7fEo6Wq-so3My3pLBMY2KidFo42xUCAN4p3j3QHy-JI45Ww:1kjRbe:DWgV8aP35ilDtxHu930bA2AQR6-e52YNyPQ3MzCvNmk	2020-12-13 19:39:30.274121+01
\.


--
-- Data for Name: pizza_order; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.pizza_order (id, order_state, created_at, updated_at, customer_id) FROM stdin;
1	R	2020-11-29 19:45:56.57893+01	2020-11-29 19:45:56.578947+01	1
2	M	2020-11-29 19:46:28.276972+01	2020-11-29 19:46:28.276989+01	3
3	C	2020-11-29 19:47:12.631597+01	2020-11-29 19:47:12.631614+01	3
4	O	2020-11-29 19:47:52.312641+01	2020-11-29 19:47:52.312663+01	3
5	R	2020-11-29 19:48:20.551338+01	2020-11-29 19:48:20.551354+01	2
6	O	2020-11-29 21:38:53.913074+01	2020-11-29 21:38:53.913097+01	1
\.


--
-- Data for Name: pizza_order_pizzas; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.pizza_order_pizzas (id, order_id, pizzaorder_id) FROM stdin;
1	1	1
2	2	4
3	3	5
4	4	4
5	5	2
6	5	3
7	6	1
\.


--
-- Data for Name: pizza_pizza; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.pizza_pizza (id, flavor) FROM stdin;
1	Margarita
2	Marinara
3	Salami
\.


--
-- Data for Name: pizza_pizzaorder; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.pizza_pizzaorder (id, size, quantity, created_at, updated_at, pizza_id) FROM stdin;
1	S	5	2020-11-29 19:44:11.095069+01	2020-11-29 19:44:11.09509+01	3
2	M	1	2020-11-29 19:44:35.208595+01	2020-11-29 19:44:35.208612+01	1
3	M	1	2020-11-29 19:44:59.416001+01	2020-11-29 19:44:59.416018+01	2
4	L	1	2020-11-29 19:45:13.972006+01	2020-11-29 19:45:13.972028+01	1
5	L	2	2020-11-29 19:45:23.798954+01	2020-11-29 19:45:23.79897+01	1
6	L	3	2020-11-29 19:45:35.188319+01	2020-11-29 19:45:35.188335+01	1
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 16, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);


--
-- Name: pizza_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.pizza_order_id_seq', 6, true);


--
-- Name: pizza_order_pizzas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.pizza_order_pizzas_id_seq', 7, true);


--
-- Name: pizza_pizza_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.pizza_pizza_id_seq', 3, true);


--
-- Name: pizza_pizzaorder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.pizza_pizzaorder_id_seq', 6, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: pizza_order_pizzas pizza_order_pizzas_order_id_pizzaorder_id_19227605_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.pizza_order_pizzas
    ADD CONSTRAINT pizza_order_pizzas_order_id_pizzaorder_id_19227605_uniq UNIQUE (order_id, pizzaorder_id);


--
-- Name: pizza_order_pizzas pizza_order_pizzas_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.pizza_order_pizzas
    ADD CONSTRAINT pizza_order_pizzas_pkey PRIMARY KEY (id);


--
-- Name: pizza_order pizza_order_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.pizza_order
    ADD CONSTRAINT pizza_order_pkey PRIMARY KEY (id);


--
-- Name: pizza_pizza pizza_pizza_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.pizza_pizza
    ADD CONSTRAINT pizza_pizza_pkey PRIMARY KEY (id);


--
-- Name: pizza_pizzaorder pizza_pizzaorder_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.pizza_pizzaorder
    ADD CONSTRAINT pizza_pizzaorder_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: pizza_order_customer_id_584131fd; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX pizza_order_customer_id_584131fd ON public.pizza_order USING btree (customer_id);


--
-- Name: pizza_order_pizzas_order_id_8bc6fb61; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX pizza_order_pizzas_order_id_8bc6fb61 ON public.pizza_order_pizzas USING btree (order_id);


--
-- Name: pizza_order_pizzas_pizzaorder_id_1f589bf2; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX pizza_order_pizzas_pizzaorder_id_1f589bf2 ON public.pizza_order_pizzas USING btree (pizzaorder_id);


--
-- Name: pizza_pizzaorder_pizza_id_e58c4610; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX pizza_pizzaorder_pizza_id_e58c4610 ON public.pizza_pizzaorder USING btree (pizza_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pizza_order pizza_order_customer_id_584131fd_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.pizza_order
    ADD CONSTRAINT pizza_order_customer_id_584131fd_fk_auth_user_id FOREIGN KEY (customer_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pizza_order_pizzas pizza_order_pizzas_order_id_8bc6fb61_fk_pizza_order_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.pizza_order_pizzas
    ADD CONSTRAINT pizza_order_pizzas_order_id_8bc6fb61_fk_pizza_order_id FOREIGN KEY (order_id) REFERENCES public.pizza_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pizza_order_pizzas pizza_order_pizzas_pizzaorder_id_1f589bf2_fk_pizza_piz; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.pizza_order_pizzas
    ADD CONSTRAINT pizza_order_pizzas_pizzaorder_id_1f589bf2_fk_pizza_piz FOREIGN KEY (pizzaorder_id) REFERENCES public.pizza_pizzaorder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pizza_pizzaorder pizza_pizzaorder_pizza_id_e58c4610_fk_pizza_pizza_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.pizza_pizzaorder
    ADD CONSTRAINT pizza_pizzaorder_pizza_id_e58c4610_fk_pizza_pizza_id FOREIGN KEY (pizza_id) REFERENCES public.pizza_pizza(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

