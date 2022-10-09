--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

-- Started on 2022-10-10 02:05:00

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
-- TOC entry 218 (class 1259 OID 66695)
-- Name: articles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.articles (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    article_text character varying(255) NOT NULL,
    img character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.articles OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 66694)
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_id_seq OWNER TO postgres;

--
-- TOC entry 3475 (class 0 OID 0)
-- Dependencies: 217
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- TOC entry 232 (class 1259 OID 66918)
-- Name: basket_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.basket_products (
    id integer NOT NULL,
    amount integer DEFAULT 1,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "basketId" integer,
    "productId" integer
);


ALTER TABLE public.basket_products OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 66917)
-- Name: basket_products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.basket_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.basket_products_id_seq OWNER TO postgres;

--
-- TOC entry 3476 (class 0 OID 0)
-- Dependencies: 231
-- Name: basket_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.basket_products_id_seq OWNED BY public.basket_products.id;


--
-- TOC entry 210 (class 1259 OID 66561)
-- Name: baskets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.baskets (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);


ALTER TABLE public.baskets OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 66560)
-- Name: baskets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.baskets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.baskets_id_seq OWNER TO postgres;

--
-- TOC entry 3477 (class 0 OID 0)
-- Dependencies: 209
-- Name: baskets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.baskets_id_seq OWNED BY public.baskets.id;


--
-- TOC entry 216 (class 1259 OID 66630)
-- Name: brand_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brand_categories (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "brandId" integer,
    "categoryId" integer
);


ALTER TABLE public.brand_categories OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 66629)
-- Name: brand_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.brand_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brand_categories_id_seq OWNER TO postgres;

--
-- TOC entry 3478 (class 0 OID 0)
-- Dependencies: 215
-- Name: brand_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.brand_categories_id_seq OWNED BY public.brand_categories.id;


--
-- TOC entry 212 (class 1259 OID 66573)
-- Name: brands; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brands (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.brands OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 66572)
-- Name: brands_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.brands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brands_id_seq OWNER TO postgres;

--
-- TOC entry 3479 (class 0 OID 0)
-- Dependencies: 211
-- Name: brands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.brands_id_seq OWNED BY public.brands.id;


--
-- TOC entry 214 (class 1259 OID 66582)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    img character varying(255)
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 66581)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO postgres;

--
-- TOC entry 3480 (class 0 OID 0)
-- Dependencies: 213
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- TOC entry 230 (class 1259 OID 66811)
-- Name: discounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.discounts (
    id integer NOT NULL,
    discount integer NOT NULL,
    "priceWithCard" numeric(10,2) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "productId" integer
);


ALTER TABLE public.discounts OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 66810)
-- Name: discounts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.discounts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discounts_id_seq OWNER TO postgres;

--
-- TOC entry 3481 (class 0 OID 0)
-- Dependencies: 229
-- Name: discounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.discounts_id_seq OWNED BY public.discounts.id;


--
-- TOC entry 226 (class 1259 OID 66770)
-- Name: favorite_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.favorite_products (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "favoriteId" integer,
    "productId" integer
);


ALTER TABLE public.favorite_products OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 66769)
-- Name: favorite_products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.favorite_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.favorite_products_id_seq OWNER TO postgres;

--
-- TOC entry 3482 (class 0 OID 0)
-- Dependencies: 225
-- Name: favorite_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.favorite_products_id_seq OWNED BY public.favorite_products.id;


--
-- TOC entry 224 (class 1259 OID 66758)
-- Name: favorites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.favorites (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);


ALTER TABLE public.favorites OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 66757)
-- Name: favorites_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.favorites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.favorites_id_seq OWNER TO postgres;

--
-- TOC entry 3483 (class 0 OID 0)
-- Dependencies: 223
-- Name: favorites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.favorites_id_seq OWNED BY public.favorites.id;


--
-- TOC entry 236 (class 1259 OID 91890)
-- Name: jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jobs (
    id integer NOT NULL,
    job_title character varying(255) NOT NULL,
    requirements character varying(255) NOT NULL,
    responsibilities character varying(255) NOT NULL,
    terms character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.jobs OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 91889)
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jobs_id_seq OWNER TO postgres;

--
-- TOC entry 3484 (class 0 OID 0)
-- Dependencies: 235
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- TOC entry 228 (class 1259 OID 66788)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    price numeric(12,2) NOT NULL,
    img character varying(255),
    "isDiscount" boolean DEFAULT false,
    weight character varying(255) NOT NULL,
    rating integer DEFAULT 0,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "brandId" integer,
    "categoryId" integer
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 66787)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO postgres;

--
-- TOC entry 3485 (class 0 OID 0)
-- Dependencies: 227
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- TOC entry 222 (class 1259 OID 66741)
-- Name: ratings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ratings (
    id integer NOT NULL,
    rate integer NOT NULL,
    comment character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer,
    "productId" integer
);


ALTER TABLE public.ratings OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 66740)
-- Name: ratings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ratings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ratings_id_seq OWNER TO postgres;

--
-- TOC entry 3486 (class 0 OID 0)
-- Dependencies: 221
-- Name: ratings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;


--
-- TOC entry 234 (class 1259 OID 66939)
-- Name: savings_cards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.savings_cards (
    id integer NOT NULL,
    "numberOfPoints" integer DEFAULT 0,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);


ALTER TABLE public.savings_cards OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 66938)
-- Name: savings_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.savings_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.savings_cards_id_seq OWNER TO postgres;

--
-- TOC entry 3487 (class 0 OID 0)
-- Dependencies: 233
-- Name: savings_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.savings_cards_id_seq OWNED BY public.savings_cards.id;


--
-- TOC entry 220 (class 1259 OID 66706)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    "phoneNumber" character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    surname character varying(255),
    password character varying(255) NOT NULL,
    birthday character varying(255),
    region character varying(255),
    city character varying(255),
    gender character varying(255),
    role character varying(255) DEFAULT 'USER'::character varying,
    "activationCode" integer,
    "isActivated" boolean DEFAULT false,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "haveSavingsCard" boolean DEFAULT false
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 66705)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3488 (class 0 OID 0)
-- Dependencies: 219
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 3233 (class 2604 OID 66698)
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- TOC entry 3245 (class 2604 OID 66921)
-- Name: basket_products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_products ALTER COLUMN id SET DEFAULT nextval('public.basket_products_id_seq'::regclass);


--
-- TOC entry 3229 (class 2604 OID 66564)
-- Name: baskets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets ALTER COLUMN id SET DEFAULT nextval('public.baskets_id_seq'::regclass);


--
-- TOC entry 3232 (class 2604 OID 66633)
-- Name: brand_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brand_categories ALTER COLUMN id SET DEFAULT nextval('public.brand_categories_id_seq'::regclass);


--
-- TOC entry 3230 (class 2604 OID 66576)
-- Name: brands id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands ALTER COLUMN id SET DEFAULT nextval('public.brands_id_seq'::regclass);


--
-- TOC entry 3231 (class 2604 OID 66585)
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- TOC entry 3244 (class 2604 OID 66814)
-- Name: discounts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discounts ALTER COLUMN id SET DEFAULT nextval('public.discounts_id_seq'::regclass);


--
-- TOC entry 3240 (class 2604 OID 66773)
-- Name: favorite_products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorite_products ALTER COLUMN id SET DEFAULT nextval('public.favorite_products_id_seq'::regclass);


--
-- TOC entry 3239 (class 2604 OID 66761)
-- Name: favorites id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites ALTER COLUMN id SET DEFAULT nextval('public.favorites_id_seq'::regclass);


--
-- TOC entry 3249 (class 2604 OID 91893)
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- TOC entry 3241 (class 2604 OID 66791)
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- TOC entry 3238 (class 2604 OID 66744)
-- Name: ratings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);


--
-- TOC entry 3247 (class 2604 OID 66942)
-- Name: savings_cards id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.savings_cards ALTER COLUMN id SET DEFAULT nextval('public.savings_cards_id_seq'::regclass);


--
-- TOC entry 3234 (class 2604 OID 66709)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3451 (class 0 OID 66695)
-- Dependencies: 218
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.articles (id, title, article_text, img, "createdAt", "updatedAt") VALUES (1, 'Режим использования масок и перчаток на территории магазинов', 'Подробная информация о режимах использования масок и перчаток на территории магазинов "ЛЕНТА". Информация обновляется каждый будний день.', 'articles/2e2b4521-771d-4906-adda-7ea649b927a1.jpg', '2022-08-18 18:56:27.177+03', '2022-08-18 18:56:27.177+03');
INSERT INTO public.articles (id, title, article_text, img, "createdAt", "updatedAt") VALUES (2, 'Весеннее настроение для каждой', '8 Марта – это не просто Международный женский день, это ещё день тюльпанов, приятных сюрпризов и праздничных тёплых пожеланий. ', 'articles/da3cbc8d-290d-479a-a206-964e5c4b3beb.jpg', '2022-08-18 18:57:08.87+03', '2022-08-18 18:57:08.87+03');
INSERT INTO public.articles (id, title, article_text, img, "createdAt", "updatedAt") VALUES (3, 'ЗОЖ или ФАСТФУД. А вы на чьей стороне? Голосуем!', 'Голосуйте за любимые категории, выбирайте категорию-победителя в мобильном приложении и получайте кешбэк 10% баллами в апреле!', 'articles/5e0bd96e-9f7b-4275-b7bf-b3d37dd0677b.jpg', '2022-08-18 18:57:55.92+03', '2022-08-18 18:57:55.92+03');


--
-- TOC entry 3465 (class 0 OID 66918)
-- Dependencies: 232
-- Data for Name: basket_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.basket_products (id, amount, "createdAt", "updatedAt", "basketId", "productId") VALUES (62, 3, '2022-09-18 10:45:42.429+03', '2022-09-18 10:45:45.614+03', 2, 9);


--
-- TOC entry 3443 (class 0 OID 66561)
-- Dependencies: 210
-- Data for Name: baskets; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.baskets (id, "createdAt", "updatedAt", "userId") VALUES (2, '2022-08-19 16:53:21.547+03', '2022-08-19 16:53:21.547+03', 1);
INSERT INTO public.baskets (id, "createdAt", "updatedAt", "userId") VALUES (3, '2022-08-19 16:53:21.547+03', '2022-08-19 16:53:21.547+03', 2);


--
-- TOC entry 3449 (class 0 OID 66630)
-- Dependencies: 216
-- Data for Name: brand_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3445 (class 0 OID 66573)
-- Dependencies: 212
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.brands (id, name, "createdAt", "updatedAt") VALUES (1, 'Слобода', '2022-08-18 10:58:21.196+03', '2022-08-18 10:58:21.196+03');
INSERT INTO public.brands (id, name, "createdAt", "updatedAt") VALUES (2, 'Coca-cola', '2022-08-18 10:58:27.843+03', '2022-08-18 10:58:27.843+03');
INSERT INTO public.brands (id, name, "createdAt", "updatedAt") VALUES (3, 'Raffaello', '2022-08-18 10:58:32.834+03', '2022-08-18 10:58:32.834+03');
INSERT INTO public.brands (id, name, "createdAt", "updatedAt") VALUES (4, 'Стародворье', '2022-08-18 10:58:42.917+03', '2022-08-18 10:58:42.917+03');
INSERT INTO public.brands (id, name, "createdAt", "updatedAt") VALUES (5, 'Парма', '2022-08-18 10:58:48.489+03', '2022-08-18 10:58:48.489+03');
INSERT INTO public.brands (id, name, "createdAt", "updatedAt") VALUES (6, 'President', '2022-08-18 10:58:53.707+03', '2022-08-18 10:58:53.707+03');
INSERT INTO public.brands (id, name, "createdAt", "updatedAt") VALUES (7, 'Hochland', '2022-08-18 10:58:59.573+03', '2022-08-18 10:58:59.573+03');
INSERT INTO public.brands (id, name, "createdAt", "updatedAt") VALUES (8, 'Sprite', '2022-08-18 14:27:18.336+03', '2022-08-18 14:27:18.336+03');
INSERT INTO public.brands (id, name, "createdAt", "updatedAt") VALUES (9, 'Лавина', '2022-10-10 01:00:54.495+03', '2022-10-10 01:00:54.495+03');
INSERT INTO public.brands (id, name, "createdAt", "updatedAt") VALUES (10, 'АРС', '2022-10-10 01:05:20.265+03', '2022-10-10 01:05:20.265+03');
INSERT INTO public.brands (id, name, "createdAt", "updatedAt") VALUES (11, 'Северяночка', '2022-10-10 01:06:33.094+03', '2022-10-10 01:06:33.094+03');
INSERT INTO public.brands (id, name, "createdAt", "updatedAt") VALUES (12, 'Мираторг', '2022-10-10 01:09:18.79+03', '2022-10-10 01:09:18.79+03');
INSERT INTO public.brands (id, name, "createdAt", "updatedAt") VALUES (13, 'Горячая штучка!', '2022-10-10 01:11:51.14+03', '2022-10-10 01:11:51.14+03');
INSERT INTO public.brands (id, name, "createdAt", "updatedAt") VALUES (14, 'Jacobs', '2022-10-10 01:14:04.328+03', '2022-10-10 01:14:04.328+03');
INSERT INTO public.brands (id, name, "createdAt", "updatedAt") VALUES (15, 'Curtis', '2022-10-10 01:15:41.079+03', '2022-10-10 01:15:41.079+03');
INSERT INTO public.brands (id, name, "createdAt", "updatedAt") VALUES (16, 'Makfa', '2022-10-10 01:18:12.727+03', '2022-10-10 01:18:12.727+03');
INSERT INTO public.brands (id, name, "createdAt", "updatedAt") VALUES (17, 'Увелка', '2022-10-10 01:19:44.62+03', '2022-10-10 01:19:44.62+03');
INSERT INTO public.brands (id, name, "createdAt", "updatedAt") VALUES (18, 'SumoWell', '2022-10-10 01:21:51.852+03', '2022-10-10 01:21:51.852+03');
INSERT INTO public.brands (id, name, "createdAt", "updatedAt") VALUES (19, 'Perfect fit', '2022-10-10 01:23:50.55+03', '2022-10-10 01:23:50.55+03');


--
-- TOC entry 3447 (class 0 OID 66582)
-- Dependencies: 214
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categories (id, name, "createdAt", "updatedAt", img) VALUES (7, 'Хлеб', '2022-09-02 08:53:48.797+03', '2022-09-02 09:01:25.496+03', 'categories/1bd47fb3-732c-472b-b6d9-d7be2aa176fc.jpg');
INSERT INTO public.categories (id, name, "createdAt", "updatedAt", img) VALUES (8, 'Масло', '2022-09-02 09:03:22.696+03', '2022-09-02 09:03:22.696+03', 'categories/f1edcd06-37d2-426f-8d59-ec24eb8f6418.jpg');
INSERT INTO public.categories (id, name, "createdAt", "updatedAt", img) VALUES (6, 'Молоко, сыр, яйцо', '2022-08-18 11:00:02.384+03', '2022-09-02 11:34:43.381+03', 'categories/713283eb-1ba5-43c8-a3c4-f0f3bf146ae4.jpg');
INSERT INTO public.categories (id, name, "createdAt", "updatedAt", img) VALUES (9, 'Фрукты и овощи', '2022-09-02 11:35:31.036+03', '2022-09-02 11:35:31.036+03', 'categories/9bfd36ed-7eed-4a4a-b5b8-6ecc588148ac.jpg');
INSERT INTO public.categories (id, name, "createdAt", "updatedAt", img) VALUES (10, 'Замороженные продукты', '2022-09-02 11:36:14.199+03', '2022-09-02 11:36:14.199+03', 'categories/1a6fc776-ed1c-4185-8310-152ca6eeaae4.jpg');
INSERT INTO public.categories (id, name, "createdAt", "updatedAt", img) VALUES (3, 'Напитки', '2022-08-18 10:59:40.383+03', '2022-08-18 10:59:40.383+03', 'categories/7c7bb4ca-af6a-44d1-9924-9080e5256506.jpg');
INSERT INTO public.categories (id, name, "createdAt", "updatedAt", img) VALUES (4, 'Кондитерские изделия', '2022-08-18 10:59:45.99+03', '2022-08-18 10:59:45.99+03', 'categories/f6c2ebed-71df-401e-b2d6-bd6b84b70f7b.jpg');
INSERT INTO public.categories (id, name, "createdAt", "updatedAt", img) VALUES (11, 'Чай, кофе', '2022-09-02 11:37:49.888+03', '2022-09-02 11:37:49.888+03', 'categories/92c2d125-25fb-4fba-a3f6-8958fb63f6fb.jpg');
INSERT INTO public.categories (id, name, "createdAt", "updatedAt", img) VALUES (12, 'Бакалея', '2022-09-02 11:38:29.907+03', '2022-09-02 11:38:29.907+03', 'categories/db28b0c8-cd06-4ec8-afa1-ef45e07d4cf3.jpg');
INSERT INTO public.categories (id, name, "createdAt", "updatedAt", img) VALUES (13, 'Здоровое питание', '2022-09-02 11:40:43.97+03', '2022-09-02 11:40:43.97+03', 'categories/d1754c8f-bc6c-4c34-8df5-3f001011adff.jpg');
INSERT INTO public.categories (id, name, "createdAt", "updatedAt", img) VALUES (14, 'Зоотовары', '2022-09-02 11:42:01.344+03', '2022-09-02 11:42:01.344+03', 'categories/49210e46-44ee-48c6-a751-0b388d9a0e06.jpg');
INSERT INTO public.categories (id, name, "createdAt", "updatedAt", img) VALUES (15, 'Детское питание', '2022-09-02 11:42:35.073+03', '2022-09-02 11:42:35.073+03', 'categories/e841c816-49c7-453e-bf8a-acfea55415f3.jpg');
INSERT INTO public.categories (id, name, "createdAt", "updatedAt", img) VALUES (5, 'Мясо, птица, колбаса', '2022-08-18 10:59:54.942+03', '2022-08-18 10:59:54.942+03', 'categories/51ac9ab7-59b3-4af9-a83d-e726bc8368f7.jpg');
INSERT INTO public.categories (id, name, "createdAt", "updatedAt", img) VALUES (2, 'Соусы', '2022-08-18 10:59:34.634+03', '2022-08-18 10:59:34.634+03', 'categories/30791e3d-21a4-4872-9074-223f797a987a.jpg');


--
-- TOC entry 3463 (class 0 OID 66811)
-- Dependencies: 230
-- Data for Name: discounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.discounts (id, discount, "priceWithCard", "createdAt", "updatedAt", "productId") VALUES (3, 25, 89.90, '2022-08-18 23:30:22.157+03', '2022-08-18 23:30:22.157+03', 8);
INSERT INTO public.discounts (id, discount, "priceWithCard", "createdAt", "updatedAt", "productId") VALUES (4, 40, 44.90, '2022-08-18 23:32:08.494+03', '2022-08-18 23:32:08.494+03', 9);
INSERT INTO public.discounts (id, discount, "priceWithCard", "createdAt", "updatedAt", "productId") VALUES (5, 55, 130.40, '2022-08-18 23:33:30.072+03', '2022-08-18 23:33:30.072+03', 10);
INSERT INTO public.discounts (id, discount, "priceWithCard", "createdAt", "updatedAt", "productId") VALUES (6, 40, 47.90, '2022-08-18 23:34:33.789+03', '2022-08-18 23:34:33.789+03', 11);


--
-- TOC entry 3459 (class 0 OID 66770)
-- Dependencies: 226
-- Data for Name: favorite_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.favorite_products (id, "createdAt", "updatedAt", "favoriteId", "productId") VALUES (75, '2022-09-08 10:03:18.639+03', '2022-09-08 10:03:18.639+03', 1, 9);
INSERT INTO public.favorite_products (id, "createdAt", "updatedAt", "favoriteId", "productId") VALUES (79, '2022-09-08 10:03:25.069+03', '2022-09-08 10:03:25.069+03', 1, 3);
INSERT INTO public.favorite_products (id, "createdAt", "updatedAt", "favoriteId", "productId") VALUES (80, '2022-09-08 10:03:29.76+03', '2022-09-08 10:03:29.76+03', 1, 4);
INSERT INTO public.favorite_products (id, "createdAt", "updatedAt", "favoriteId", "productId") VALUES (94, '2022-09-17 15:12:29.922+03', '2022-09-17 15:12:29.922+03', 1, 11);
INSERT INTO public.favorite_products (id, "createdAt", "updatedAt", "favoriteId", "productId") VALUES (96, '2022-09-18 10:35:43.853+03', '2022-09-18 10:35:43.853+03', 1, 8);
INSERT INTO public.favorite_products (id, "createdAt", "updatedAt", "favoriteId", "productId") VALUES (98, '2022-09-18 10:35:47.291+03', '2022-09-18 10:35:47.291+03', 1, 10);


--
-- TOC entry 3457 (class 0 OID 66758)
-- Dependencies: 224
-- Data for Name: favorites; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.favorites (id, "createdAt", "updatedAt", "userId") VALUES (1, '2022-08-19 16:53:21.562+03', '2022-08-19 16:53:21.562+03', 1);
INSERT INTO public.favorites (id, "createdAt", "updatedAt", "userId") VALUES (2, '2022-08-21 13:33:37.158+03', '2022-08-21 13:33:37.158+03', 2);


--
-- TOC entry 3469 (class 0 OID 91890)
-- Dependencies: 236
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.jobs (id, job_title, requirements, responsibilities, terms, "createdAt", "updatedAt") VALUES (2, 'Frontend Developer', 'ReactJs + Redux, JS/TS ES6+, HTML&CSS, Docker, Webpack, formik', 'Разработка новых компонентов, поддержка старого кода', 'IMac 2020, комфортное рабочее место', '2022-10-05 23:35:00.952+03', '2022-10-05 23:35:00.952+03');
INSERT INTO public.jobs (id, job_title, requirements, responsibilities, terms, "createdAt", "updatedAt") VALUES (3, 'Backend Developer', 'Nodejs&Expressjs, sql/nosql, Docker, Webpack', 'Разработка новых компонентов, поддержка старого кода', 'IMac 2020, комфортное рабочее место', '2022-10-05 23:36:05.201+03', '2022-10-05 23:36:05.201+03');
INSERT INTO public.jobs (id, job_title, requirements, responsibilities, terms, "createdAt", "updatedAt") VALUES (4, 'SMM специалист', 'Опыт работы 2+ года', 'Пиар наших услуг', 'IMac 2020, комфортное рабочее место', '2022-10-05 23:36:43.668+03', '2022-10-05 23:36:43.668+03');
INSERT INTO public.jobs (id, job_title, requirements, responsibilities, terms, "createdAt", "updatedAt") VALUES (5, 'SMM специалист2', 'Опыт работы 2+ года', 'Пиар наших услуг', 'IMac 2020, комфортное рабочее место', '2022-10-05 23:36:49.37+03', '2022-10-05 23:36:49.37+03');
INSERT INTO public.jobs (id, job_title, requirements, responsibilities, terms, "createdAt", "updatedAt") VALUES (6, 'SMM специалист23', 'Опыт работы 2+ года', 'Пиар наших услуг', 'IMac 2020, комфортное рабочее место', '2022-10-05 23:36:51.579+03', '2022-10-05 23:36:51.579+03');
INSERT INTO public.jobs (id, job_title, requirements, responsibilities, terms, "createdAt", "updatedAt") VALUES (7, 'SMM специалист235', 'Опыт работы 2+ года', 'Пиар наших услуг', 'IMac 2020, комфортное рабочее место', '2022-10-05 23:36:53.519+03', '2022-10-05 23:36:53.519+03');
INSERT INTO public.jobs (id, job_title, requirements, responsibilities, terms, "createdAt", "updatedAt") VALUES (8, 'SMM специалист2354', 'Опыт работы 2+ года', 'Пиар наших услуг', 'IMac 2020, комфортное рабочее место', '2022-10-05 23:36:55.314+03', '2022-10-05 23:36:55.314+03');
INSERT INTO public.jobs (id, job_title, requirements, responsibilities, terms, "createdAt", "updatedAt") VALUES (9, 'SMM специалист23546', 'Опыт работы 2+ года', 'Пиар наших услуг', 'IMac 2020, комфортное рабочее место', '2022-10-05 23:36:56.441+03', '2022-10-05 23:36:56.441+03');
INSERT INTO public.jobs (id, job_title, requirements, responsibilities, terms, "createdAt", "updatedAt") VALUES (10, 'SMM специалист235468', 'Опыт работы 2+ года', 'Пиар наших услуг', 'IMac 2020, комфортное рабочее место', '2022-10-05 23:36:57.776+03', '2022-10-05 23:36:57.776+03');
INSERT INTO public.jobs (id, job_title, requirements, responsibilities, terms, "createdAt", "updatedAt") VALUES (11, 'SMM специалист2354682', 'Опыт работы 2+ года', 'Пиар наших услуг', 'IMac 2020, комфортное рабочее место', '2022-10-05 23:36:59.859+03', '2022-10-05 23:36:59.859+03');


--
-- TOC entry 3461 (class 0 OID 66788)
-- Dependencies: 228
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.products (id, name, price, img, "isDiscount", weight, rating, "createdAt", "updatedAt", "brandId", "categoryId") VALUES (3, 'Майонез Слобода 67%', 124.99, 'products/16d234ca-48bf-4392-acb9-eaf7bf23c4a7.jpg', false, '700', 0, '2022-08-18 23:03:54.092+03', '2022-08-18 23:37:51.55+03', 1, 2);
INSERT INTO public.products (id, name, price, img, "isDiscount", weight, rating, "createdAt", "updatedAt", "brandId", "categoryId") VALUES (4, 'Колбаса докторская Стародворье 800г', 249.90, 'products/9a9c8d18-ca2a-44f8-98cd-0a2155a9cc2a.jpg', false, '800', 0, '2022-08-18 23:25:47.852+03', '2022-08-18 23:25:47.852+03', 4, 5);
INSERT INTO public.products (id, name, price, img, "isDiscount", weight, rating, "createdAt", "updatedAt", "brandId", "categoryId") VALUES (6, 'Сыр в асс. President 150г', 109.90, 'products/46a3c93d-7b2e-4192-b3ac-4f511dead3a7.jpg', false, '150', 0, '2022-08-18 23:27:44.483+03', '2022-08-18 23:27:44.483+03', 6, 6);
INSERT INTO public.products (id, name, price, img, "isDiscount", weight, rating, "createdAt", "updatedAt", "brandId", "categoryId") VALUES (11, 'Sprite в бут. 0,5л', 79.90, 'products/2b59c87e-4973-4832-a344-35d08c2cc086.jpg', true, '500', 0, '2022-08-18 23:34:33.783+03', '2022-08-18 23:34:33.791+03', 8, 3);
INSERT INTO public.products (id, name, price, img, "isDiscount", weight, rating, "createdAt", "updatedAt", "brandId", "categoryId") VALUES (9, 'Колбаса докторская Стародворье 800г Колбаса докторская Стародворье 800г', 249.90, 'products/4a6ec5f5-62b9-4623-adaa-2037ca982adf.jpg', true, '800', 0, '2022-08-18 23:32:08.486+03', '2022-09-10 14:16:31.454+03', 4, 5);
INSERT INTO public.products (id, name, price, img, "isDiscount", weight, rating, "createdAt", "updatedAt", "brandId", "categoryId") VALUES (5, 'Колбаса в асс. Парма 350г', 199.90, 'products/a7c641c0-15cc-49ee-8113-64d16e3b2180.jpg', false, '350', 0, '2022-08-18 23:26:30.866+03', '2022-09-17 16:42:43.234+03', 5, 5);
INSERT INTO public.products (id, name, price, img, "isDiscount", weight, rating, "createdAt", "updatedAt", "brandId", "categoryId") VALUES (7, 'Сыр в асс. Hochland 150г', 89.90, 'products/0a672e37-9c44-430c-9abe-051ce5172744.jpg', false, '150', 3, '2022-08-18 23:28:23.025+03', '2022-10-05 21:57:26.984+03', 7, 6);
INSERT INTO public.products (id, name, price, img, "isDiscount", weight, rating, "createdAt", "updatedAt", "brandId", "categoryId") VALUES (8, 'Масло подсолнечное Слобода 0,9л', 119.90, 'products/3bf267b7-6ad5-4750-878f-d195a3baa76b.jpg', true, '900', 1, '2022-08-18 23:30:22.15+03', '2022-10-10 00:35:14.612+03', 1, 8);
INSERT INTO public.products (id, name, price, img, "isDiscount", weight, rating, "createdAt", "updatedAt", "brandId", "categoryId") VALUES (10, 'Конфеты Raffaello 350г', 289.90, 'products/0670f4e3-1aec-4268-a155-b63b87c74828.jpg', true, '350', 3, '2022-08-18 23:33:30.065+03', '2022-10-10 00:41:32.638+03', 3, 4);
INSERT INTO public.products (id, name, price, img, "isDiscount", weight, rating, "createdAt", "updatedAt", "brandId", "categoryId") VALUES (12, 'Хлеб белый Лавина', 29.90, 'products/70793630-25b6-4c10-873d-35f168273dd4.jpg', false, '400', 0, '2022-10-10 01:03:46.817+03', '2022-10-10 01:03:46.817+03', 9, 7);
INSERT INTO public.products (id, name, price, img, "isDiscount", weight, rating, "createdAt", "updatedAt", "brandId", "categoryId") VALUES (13, 'Хлеб Бородинский АРС', 39.90, 'products/e83239ba-0d36-4d4c-bba2-55f5218843b2.jpg', false, '400', 0, '2022-10-10 01:05:48.135+03', '2022-10-10 01:05:48.135+03', 10, 7);
INSERT INTO public.products (id, name, price, img, "isDiscount", weight, rating, "createdAt", "updatedAt", "brandId", "categoryId") VALUES (14, 'Яблоки Северяночка', 84.90, 'products/18501ea2-36bf-47b9-9479-737ca73dc71d.jpg', false, '1000', 0, '2022-10-10 01:07:22.965+03', '2022-10-10 01:07:22.965+03', 11, 9);
INSERT INTO public.products (id, name, price, img, "isDiscount", weight, rating, "createdAt", "updatedAt", "brandId", "categoryId") VALUES (15, 'Мандарины Северяночка', 169.90, 'products/bf3e3792-7735-48b8-a382-5ae1bbf10c37.jpg', false, '1000', 0, '2022-10-10 01:08:01.091+03', '2022-10-10 01:08:01.091+03', 11, 9);
INSERT INTO public.products (id, name, price, img, "isDiscount", weight, rating, "createdAt", "updatedAt", "brandId", "categoryId") VALUES (16, 'Пельмени из ягнятины Мираторг 900г', 479.90, 'products/2e94e2b5-16bb-4074-bedb-bde388ab5dc2.jpg', false, '900', 0, '2022-10-10 01:10:53.139+03', '2022-10-10 01:10:53.139+03', 12, 10);
INSERT INTO public.products (id, name, price, img, "isDiscount", weight, rating, "createdAt", "updatedAt", "brandId", "categoryId") VALUES (17, 'Чебупицца Курочка по-итальянски Горячая штучка 250г', 149.90, 'products/7e0ef404-f285-4f9f-a47e-fa1a78e67fdf.jpg', false, '250', 0, '2022-10-10 01:12:53.16+03', '2022-10-10 01:12:53.16+03', 13, 10);
INSERT INTO public.products (id, name, price, img, "isDiscount", weight, rating, "createdAt", "updatedAt", "brandId", "categoryId") VALUES (18, 'Кофе Jacobs Monarch 240г', 249.90, 'products/89c9a328-8cc3-4373-9860-5894d7ab2439.jpg', false, '240', 0, '2022-10-10 01:15:08.99+03', '2022-10-10 01:15:08.99+03', 14, 11);
INSERT INTO public.products (id, name, price, img, "isDiscount", weight, rating, "createdAt", "updatedAt", "brandId", "categoryId") VALUES (19, 'Чай Curtis 20*1.7г', 89.90, 'products/0c265396-8230-467f-9e32-149870ec5081.jpg', false, '35', 0, '2022-10-10 01:17:14.923+03', '2022-10-10 01:17:14.923+03', 15, 11);
INSERT INTO public.products (id, name, price, img, "isDiscount", weight, rating, "createdAt", "updatedAt", "brandId", "categoryId") VALUES (20, 'Макароны Петушиные гребешки Makfa 400г', 69.90, 'products/d2ea9dfd-41b5-4157-ad72-05e9596bec33.jpg', false, '400', 0, '2022-10-10 01:19:10.284+03', '2022-10-10 01:19:10.284+03', 16, 12);
INSERT INTO public.products (id, name, price, img, "isDiscount", weight, rating, "createdAt", "updatedAt", "brandId", "categoryId") VALUES (21, 'Гречневая каша Увелка 400г', 69.90, 'products/c4ce865e-8940-4c14-ae0d-aad23ac25021.jpg', false, '400', 0, '2022-10-10 01:20:23.332+03', '2022-10-10 01:20:23.332+03', 17, 12);
INSERT INTO public.products (id, name, price, img, "isDiscount", weight, rating, "createdAt", "updatedAt", "brandId", "categoryId") VALUES (22, 'Курица чили по-корейски SumoWell', 369.90, 'products/f6d0eab3-72f1-477d-aea3-5fa3d9dd3c80.jpg', false, '300', 0, '2022-10-10 01:23:17.848+03', '2022-10-10 01:23:17.848+03', 18, 13);
INSERT INTO public.products (id, name, price, img, "isDiscount", weight, rating, "createdAt", "updatedAt", "brandId", "categoryId") VALUES (23, 'Корм для котов с курицей Perfect fit 600г', 139.90, 'products/2d5884f6-86a1-4c54-9805-a28274c9bd47.jpg', false, '600', 0, '2022-10-10 01:24:53.368+03', '2022-10-10 01:24:53.368+03', 19, 14);
INSERT INTO public.products (id, name, price, img, "isDiscount", weight, rating, "createdAt", "updatedAt", "brandId", "categoryId") VALUES (24, 'Миска из нержавеющей стали Северяночка 2.8л', 139.90, 'products/9335d7c6-03e0-4825-812d-c837aa8e0c8d.jpg', false, '150', 0, '2022-10-10 01:26:31.828+03', '2022-10-10 01:26:31.828+03', 11, 14);


--
-- TOC entry 3455 (class 0 OID 66741)
-- Dependencies: 222
-- Data for Name: ratings; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ratings (id, rate, comment, "createdAt", "updatedAt", "userId", "productId") VALUES (31, 3, 'sdsd', '2022-10-05 21:57:26.962+03', '2022-10-05 21:57:26.962+03', 1, 7);


--
-- TOC entry 3467 (class 0 OID 66939)
-- Dependencies: 234
-- Data for Name: savings_cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.savings_cards (id, "numberOfPoints", "createdAt", "updatedAt", "userId") VALUES (1, 500, '2022-08-29 09:11:55.796+03', '2022-08-29 09:11:55.796+03', 1);


--
-- TOC entry 3453 (class 0 OID 66706)
-- Dependencies: 220
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, "phoneNumber", name, surname, password, birthday, region, city, gender, role, "activationCode", "isActivated", "createdAt", "updatedAt", "haveSavingsCard") VALUES (2, '79002717022', 'Матвей', 'Оспищев', '$2b$05$kDsrl1.aPIQVNfcF4POGqezR07Ep8GwRNX2X9uU29HdqlRmh8/C7u', '30-09-2002', 'Краснодарский край', 'Армавир', 'male', 'USER', 6538, false, '2022-08-21 13:33:37.148+03', '2022-08-21 13:33:37.148+03', false);
INSERT INTO public.users (id, "phoneNumber", name, surname, password, birthday, region, city, gender, role, "activationCode", "isActivated", "createdAt", "updatedAt", "haveSavingsCard") VALUES (1, '79002717055', 'Матвей', 'Оспищев', '$2b$05$2IVamK9Cm5/EXNIc6fPF7uuBtTGFT2M.9FYddx8hqepQkjnfGeQda', '30-09-2002', 'Краснодарский край', 'Армавир', 'male', 'USER', 1002, false, '2022-08-19 16:53:21.547+03', '2022-08-19 16:53:21.547+03', true);


--
-- TOC entry 3489 (class 0 OID 0)
-- Dependencies: 217
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.articles_id_seq', 3, true);


--
-- TOC entry 3490 (class 0 OID 0)
-- Dependencies: 231
-- Name: basket_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.basket_products_id_seq', 63, true);


--
-- TOC entry 3491 (class 0 OID 0)
-- Dependencies: 209
-- Name: baskets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.baskets_id_seq', 3, true);


--
-- TOC entry 3492 (class 0 OID 0)
-- Dependencies: 215
-- Name: brand_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.brand_categories_id_seq', 1, false);


--
-- TOC entry 3493 (class 0 OID 0)
-- Dependencies: 211
-- Name: brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.brands_id_seq', 19, true);


--
-- TOC entry 3494 (class 0 OID 0)
-- Dependencies: 213
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 15, true);


--
-- TOC entry 3495 (class 0 OID 0)
-- Dependencies: 229
-- Name: discounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.discounts_id_seq', 6, true);


--
-- TOC entry 3496 (class 0 OID 0)
-- Dependencies: 225
-- Name: favorite_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.favorite_products_id_seq', 98, true);


--
-- TOC entry 3497 (class 0 OID 0)
-- Dependencies: 223
-- Name: favorites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.favorites_id_seq', 2, true);


--
-- TOC entry 3498 (class 0 OID 0)
-- Dependencies: 235
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jobs_id_seq', 11, true);


--
-- TOC entry 3499 (class 0 OID 0)
-- Dependencies: 227
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 24, true);


--
-- TOC entry 3500 (class 0 OID 0)
-- Dependencies: 221
-- Name: ratings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ratings_id_seq', 37, true);


--
-- TOC entry 3501 (class 0 OID 0)
-- Dependencies: 233
-- Name: savings_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.savings_cards_id_seq', 1, true);


--
-- TOC entry 3502 (class 0 OID 0)
-- Dependencies: 219
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- TOC entry 3265 (class 2606 OID 66702)
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- TOC entry 3267 (class 2606 OID 66704)
-- Name: articles articles_title_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_title_key UNIQUE (title);


--
-- TOC entry 3285 (class 2606 OID 66924)
-- Name: basket_products basket_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_products
    ADD CONSTRAINT basket_products_pkey PRIMARY KEY (id);


--
-- TOC entry 3251 (class 2606 OID 66566)
-- Name: baskets baskets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT baskets_pkey PRIMARY KEY (id);


--
-- TOC entry 3261 (class 2606 OID 66637)
-- Name: brand_categories brand_categories_brandId_categoryId_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brand_categories
    ADD CONSTRAINT "brand_categories_brandId_categoryId_key" UNIQUE ("brandId", "categoryId");


--
-- TOC entry 3263 (class 2606 OID 66635)
-- Name: brand_categories brand_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brand_categories
    ADD CONSTRAINT brand_categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3253 (class 2606 OID 66580)
-- Name: brands brands_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_name_key UNIQUE (name);


--
-- TOC entry 3255 (class 2606 OID 66578)
-- Name: brands brands_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);


--
-- TOC entry 3257 (class 2606 OID 66589)
-- Name: categories categories_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_name_key UNIQUE (name);


--
-- TOC entry 3259 (class 2606 OID 66587)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3283 (class 2606 OID 66816)
-- Name: discounts discounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discounts
    ADD CONSTRAINT discounts_pkey PRIMARY KEY (id);


--
-- TOC entry 3277 (class 2606 OID 66775)
-- Name: favorite_products favorite_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorite_products
    ADD CONSTRAINT favorite_products_pkey PRIMARY KEY (id);


--
-- TOC entry 3275 (class 2606 OID 66763)
-- Name: favorites favorites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites
    ADD CONSTRAINT favorites_pkey PRIMARY KEY (id);


--
-- TOC entry 3289 (class 2606 OID 91899)
-- Name: jobs jobs_job_title_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_job_title_key UNIQUE (job_title);


--
-- TOC entry 3291 (class 2606 OID 91897)
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 3279 (class 2606 OID 66799)
-- Name: products products_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_name_key UNIQUE (name);


--
-- TOC entry 3281 (class 2606 OID 66797)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 3273 (class 2606 OID 66746)
-- Name: ratings ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);


--
-- TOC entry 3287 (class 2606 OID 66945)
-- Name: savings_cards savings_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.savings_cards
    ADD CONSTRAINT savings_cards_pkey PRIMARY KEY (id);


--
-- TOC entry 3269 (class 2606 OID 66717)
-- Name: users users_phoneNumber_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT "users_phoneNumber_key" UNIQUE ("phoneNumber");


--
-- TOC entry 3271 (class 2606 OID 66715)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3300 (class 2606 OID 66925)
-- Name: basket_products basket_products_basketId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_products
    ADD CONSTRAINT "basket_products_basketId_fkey" FOREIGN KEY ("basketId") REFERENCES public.baskets(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3301 (class 2606 OID 66930)
-- Name: basket_products basket_products_productId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_products
    ADD CONSTRAINT "basket_products_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3292 (class 2606 OID 66638)
-- Name: brand_categories brand_categories_brandId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brand_categories
    ADD CONSTRAINT "brand_categories_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3293 (class 2606 OID 66643)
-- Name: brand_categories brand_categories_categoryId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brand_categories
    ADD CONSTRAINT "brand_categories_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3299 (class 2606 OID 66817)
-- Name: discounts discounts_productId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discounts
    ADD CONSTRAINT "discounts_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3296 (class 2606 OID 66776)
-- Name: favorite_products favorite_products_favoriteId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorite_products
    ADD CONSTRAINT "favorite_products_favoriteId_fkey" FOREIGN KEY ("favoriteId") REFERENCES public.favorites(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3295 (class 2606 OID 66764)
-- Name: favorites favorites_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites
    ADD CONSTRAINT "favorites_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3297 (class 2606 OID 66800)
-- Name: products products_brandId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3298 (class 2606 OID 66805)
-- Name: products products_categoryId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3294 (class 2606 OID 66747)
-- Name: ratings ratings_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT "ratings_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3302 (class 2606 OID 66946)
-- Name: savings_cards savings_cards_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.savings_cards
    ADD CONSTRAINT "savings_cards_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


-- Completed on 2022-10-10 02:05:00

--
-- PostgreSQL database dump complete
--

