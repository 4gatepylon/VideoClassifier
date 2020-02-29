--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: media; Type: TABLE; Schema: public; Owner: prismriver
--

CREATE TABLE public.media (
    id text NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    length bigint NOT NULL,
    title text NOT NULL,
    type text NOT NULL,
    video boolean NOT NULL
);


ALTER TABLE public.media OWNER TO prismriver;

--
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: prismriver
--

COPY public.media (id, created_at, updated_at, deleted_at, length, title, type, video) FROM stdin;
buc64u6Q_oA	2020-01-08 03:31:16.937194-05	2020-01-08 03:31:16.937194-05	\N	36000000	acquire the sire	youtube	t
WvupNifis2g	2020-01-08 13:56:38.455334-05	2020-01-08 13:56:38.455334-05	\N	272000000	YURiKA 「鏡面の波」ミュージックビデオ／TVアニメ『宝石の国』OPテーマ	youtube	f
W6dxEk_2Hdo	2020-01-08 13:58:21.555892-05	2020-01-08 13:58:21.555892-05	\N	120000000	Galactic Mermaid (The Fucking Bullshit Song) - Full Version	youtube	f
573wtWXxQ8g	2020-01-08 14:15:02.827074-05	2020-01-08 14:15:02.827074-05	\N	14000000	softandwarm.mp4	youtube	f
NcsECg6RtcM	2020-01-08 15:17:49.379574-05	2020-01-08 15:17:49.379574-05	\N	203000000	the show we put on	youtube	t
S8dmq5YIUoc	2020-01-08 17:13:29.574829-05	2020-01-08 17:13:29.574829-05	\N	193000000	Kizuna AI - AIAIAI (feat. 中田ヤスタカ)【Official Music Video】	youtube	f
L_6By9WbeRw	2020-01-09 15:11:29.210571-05	2020-01-09 15:11:29.210571-05	\N	316000000	Megalovania in 8/4 but it is mashed up with the original Megalovania at half speed	youtube	f
Ou_udndPAO4	2020-01-09 15:18:19.96029-05	2020-01-09 15:18:19.96029-05	\N	309000000	[Psytrance, Frenchcore] Laur - Sound Chimera	youtube	f
Z-VMmWoxQCQ	2020-01-09 16:15:23.026963-05	2020-01-09 16:15:23.026963-05	\N	123000000	Conga de los Alienígenas - SiIvaGunner: King for Another Day	youtube	f
0pPyM-Phf1E	2020-01-09 16:26:00.435943-05	2020-01-09 16:26:00.435943-05	\N	128000000	The Father Also Resurrects - SiIvaGunner: King for Another Day	youtube	f
u43VAge_h6U	2020-01-09 16:35:02.255043-05	2020-01-09 16:35:02.255043-05	\N	134000000	Icono Viviente - SiIvaGunner: King for Another Day	youtube	f
9TYbw6FWMPs	2019-08-20 00:34:01.149661-04	2019-08-20 00:34:01.149661-04	\N	170000000	THE FEARLESS FLYERS /// Flyers Direct	youtube	f
AWBUnr0F3Zo	2019-08-20 00:34:50.071823-04	2019-08-20 00:34:50.071823-04	\N	270000000	VULFPECK /// Cory Wong	youtube	f
t2pz6uNiheg	2019-08-20 00:35:00.455694-04	2019-08-20 00:35:00.455694-04	\N	233000000	VULFPECK /// Aunt Leslie	youtube	f
u8fWZ9FjIK4	2019-08-20 00:35:18.036872-04	2019-08-20 00:35:18.036872-04	\N	198000000	VULFPECK /// 1 for 1, DiMaggio	youtube	f
4dpvyZBKg6Q	2019-08-20 00:35:25.165201-04	2019-08-20 00:35:25.165201-04	\N	262000000	VULFPECK /// Rango II (feat. Blake Mills)	youtube	f
L_XJ_s5IsQc	2019-08-20 00:35:35.169393-04	2019-08-20 00:35:35.169393-04	\N	643000000	Snarky Puppy - Lingus (We Like It Here)	youtube	f
t3qYfe7Nsdc	2019-08-20 00:35:46.241854-04	2019-08-20 00:35:46.241854-04	\N	231000000	VULFPECK /// Adrienne & Adrianne	youtube	f
E44zg5qZA_o	2019-08-20 00:36:04.55295-04	2019-08-20 00:36:04.55295-04	\N	165000000	VULFPECK /// Poinciana	youtube	f
v-l2f0v8j2g	2019-08-20 00:36:40.768812-04	2019-08-20 00:36:40.768812-04	\N	275000000	High Hopes - Panic! At The Disco 和太鼓カバー by DRUM TAO feat. HIDE春	youtube	f
p5kc8hJ3GcA	2019-08-20 00:36:54.864825-04	2019-08-20 00:36:54.864825-04	\N	269000000	Goose House - Hikaru Nara [Lyrics][EnglishTranslation]	youtube	f
i1cskIan5Jw	2019-08-20 00:38:32.258171-04	2019-08-20 00:38:32.258171-04	\N	547000000	Snarky Puppy - Quarter Master (groundUP)	youtube	f
gQ99OMlI5cg	2019-08-20 00:38:38.900754-04	2019-08-20 00:38:38.900754-04	\N	590000000	Snarky Puppy - Binky (groundUP)	youtube	f
VoWRSM2_DF0	2019-08-20 08:53:36.412876-04	2019-08-20 08:53:36.412876-04	\N	117000000	👖🍎	youtube	f
WRJMkqjiRzQ	2019-08-20 12:17:13.342116-04	2019-08-20 12:17:13.342116-04	\N	204000000	Tedashii Dum Dum ft Lecrae	youtube	f
tjhIXYfk2Yg	2019-08-20 12:17:28.483021-04	2019-08-20 12:17:28.483021-04	\N	203000000	GAWVI - Fight For Me	youtube	f
uLS-WE4K8q0	2019-08-20 12:17:41.423605-04	2019-08-20 12:17:41.423605-04	\N	200000000	Lecrae & Andy Mineo - Coming In Hot	youtube	f
_lVYcT85kHU	2019-08-20 12:18:09.562342-04	2019-08-20 12:18:09.562342-04	\N	232000000	Trip Lee - Insomniac ft. Andy Mineo (Lyric Video)	youtube	f
Jv8IqJm6q7w	2019-08-20 12:19:41.163368-04	2019-08-20 12:19:41.163368-04	\N	276000000	Lecrae - I'll Find You ft. Tori Kelly (Official Music Video)	youtube	f
EQ8ViYIeH04	2019-08-20 12:20:25.349319-04	2019-08-20 12:20:25.349319-04	\N	179000000	Das Racist - Combination Pizza Hut And Taco Bell	youtube	f
b0gyQMJHQ78	2019-08-20 12:21:30.561088-04	2019-08-20 12:21:30.561088-04	\N	388000000	Tau the Song with 6.28318 Million Notes	youtube	f
z4cCYB9Ggq0	2019-08-20 12:26:41.572527-04	2019-08-20 12:26:41.572527-04	\N	269000000	A Million Dreams	youtube	f
LRP8d7hhpoQ	2019-08-20 12:28:38.929987-04	2019-08-20 12:28:38.929987-04	\N	305000000	[OFFICIAL VIDEO] Hallelujah - Pentatonix	youtube	f
Pr7wcHTzcTg	2019-08-20 12:30:16.982729-04	2019-08-20 12:30:16.982729-04	\N	173000000	Sister Act 2 - Oh Happy day	youtube	f
3MteSlpxCpo	2019-08-20 12:31:48.208059-04	2019-08-20 12:31:48.208059-04	\N	295000000	[Official Video] Daft Punk - Pentatonix	youtube	f
P95_pCbCPZw	2019-08-20 12:33:05.251899-04	2019-08-20 12:33:05.251899-04	\N	244000000	[Official Video] Cheerleader – Pentatonix (OMI Cover)	youtube	f
YHnUSZhhOxU	2019-11-30 17:19:35.713456-05	2019-11-30 17:19:35.713456-05	\N	19000000	cbt	youtube	t
QoCcDi8zH8M	2019-09-26 16:56:38.908437-04	2019-09-26 16:56:38.908437-04	\N	85000000	whomst.mp4	youtube	t
VfIsQr_XT20	2020-01-08 17:29:45.904843-05	2020-01-08 17:29:45.904843-05	\N	328000000	Kimi no shinwa_Aquarion Dainisho	youtube	f
JVAFyKXf6Nk	2020-01-08 17:30:37.297761-05	2020-01-08 17:30:37.297761-05	\N	179000000	AWAKEN MY POP/STARS (Pillar Men x K/DA Mashup)	youtube	f
alexmashup/spongebobs-perfect-training-video	2020-01-09 18:11:46.647304-05	2020-01-09 18:11:46.647304-05	\N	128324000	Spongebob's Perfect Training Video	soundcloud	f
eCoz060WXQw	2020-01-08 15:21:46.059947-05	2020-01-08 15:21:46.059947-05	\N	9000000	Quagmire turns into a fucking toilet	youtube	t
_SgWum9kHYk	2020-01-08 17:32:29.299327-05	2020-01-08 17:32:29.299327-05	\N	204000000	Duvet	youtube	f
okiwont/through-the-piss-and-pants	2020-01-09 19:36:01.718043-05	2020-01-09 19:36:01.718043-05	\N	9743000	Through The Shit And Cum	soundcloud	f
ryatt246/vs-britney	2020-01-09 19:36:26.360703-05	2020-01-09 19:36:26.360703-05	\N	147605000	Vs. Britney	soundcloud	f
pluffaduff/soulja-boy-getting-sued-by-nintendo-be-like	2020-01-09 19:37:04.619676-05	2020-01-09 19:37:04.619676-05	\N	238285000	soulja boy getting sued by nintendo be like	soundcloud	f
kmlkmljkl/havandy-havanorak	2020-01-09 19:37:36.504804-05	2020-01-09 19:37:36.504804-05	\N	155965000	Havandy Havanorak	soundcloud	f
cyberderp/bowsettes-castle	2020-01-09 19:38:29.676102-05	2020-01-09 19:38:29.676102-05	\N	124301000	Bowsette's Castle	soundcloud	f
always-sinning/nobodys-done-this-yet-right	2020-01-09 19:40:12.734503-05	2020-01-09 19:40:12.734503-05	\N	137939000	nobodys done this yet right	soundcloud	f
yifffcker/it-was-acceptable-in-2008	2020-01-09 19:41:53.9118-05	2020-01-09 19:41:53.9118-05	\N	205576000	it was acceptable in 2008	soundcloud	f
spicy236/un-owen-jelly-time	2020-01-09 19:42:46.978277-05	2020-01-09 19:42:46.978277-05	\N	123621000	un owen jelly time	soundcloud	f
yahia-mice/105_bpm_omegalul	2020-01-09 19:57:20.700631-05	2020-01-09 19:57:20.700631-05	\N	4415000	same bpm	soundcloud	f
user-13186923/a-ha-la-vida	2020-01-09 19:58:34.722138-05	2020-01-09 19:58:34.722138-05	\N	229480000	A - Ha La Vida	soundcloud	f
uKHHQSRVxPg	2020-01-09 20:02:50.972598-05	2020-01-09 20:02:50.972598-05	\N	218000000	PSYQUI - Still in my heart feat. ぷにぷに電機 // Lyrics [CC]	youtube	f
thesqrtminus3/everyone-in-the-gregg-gettin-tipsy	2020-01-09 20:03:29.090878-05	2020-01-09 20:03:29.090878-05	\N	221617000	Everyone In The Gregg Gettin Tipsy	soundcloud	f
lefaguette/cursedwav	2020-01-09 20:03:40.271382-05	2020-01-09 20:03:40.271382-05	\N	261719000	cursed.wav	soundcloud	f
43YWCZPKYy0	2020-01-09 20:03:59.88155-05	2020-01-09 20:03:59.88155-05	\N	259000000	soundcloud producers will make a beat out of anything	youtube	f
thicc_rooster/want-die	2020-01-09 20:05:32.352829-05	2020-01-09 20:05:32.352829-05	\N	179921000	big pee pee	soundcloud	f
lemmy-koopa-2/am-i-dead-yet	2020-01-09 20:10:18.489263-05	2020-01-09 20:10:18.489263-05	\N	200456000	Am I dead yet?	soundcloud	f
emEg0zGS7KY	2020-01-09 20:16:00.936615-05	2020-01-09 20:16:00.936615-05	\N	199000000	SDR2 OST: -1-08- Ms. Monomi's Practice Lesson	youtube	f
zqZt6VNnEIA	2019-08-20 13:21:03.143256-04	2019-08-20 13:21:03.143256-04	\N	201000000	Super Bass	youtube	f
74yb9E3WY1I	2019-08-20 14:09:40.055183-04	2019-08-20 14:09:40.055183-04	\N	198000000	Ed Sheeran - Beautiful People (feat. Khalid) [Official Lyric Video]	youtube	f
pRL2tvdY8T4	2019-08-20 14:11:49.891372-04	2019-08-20 14:11:49.891372-04	\N	203000000	Sam Smith - How Do You Sleep? (Lyrics)	youtube	f
reCSdoGbEAk	2019-08-20 14:12:14.462318-04	2019-08-20 14:12:14.462318-04	\N	186000000	Ariana Grande, Social House - boyfriend (Lyrics)	youtube	f
LdvvPtIfR8w	2019-08-20 14:12:44.515329-04	2019-08-20 14:12:44.515329-04	\N	164000000	Martin Garrix feat. Macklemore & Patrick Stump of Fall Out Boy - Summer Days (Lyric Video)	youtube	f
UmZQXGd2pso	2020-01-08 15:23:26.232141-05	2020-01-08 15:23:26.232141-05	\N	60000000	duck.gif	youtube	t
cxNLJl_pAuc	2020-01-08 15:51:42.646508-05	2020-01-08 15:51:42.646508-05	\N	123000000	Mr. Game and Watch vibin, Short Version (Albino)	youtube	t
j0Sp9g47728	2020-01-09 22:17:39.050346-05	2020-01-09 22:17:39.050346-05	\N	181000000	Squid Pride	youtube	f
NFdh5ByZhMU	2020-01-09 22:22:00.992471-05	2020-01-09 22:22:00.992471-05	\N	168000000	Electro's Funniest Moments! Jaboody Montage. Spiderman Vs Electro	youtube	f
e4mC3dmwqEY	2020-01-09 22:24:19.043075-05	2020-01-09 22:24:19.043075-05	\N	161000000	VULFPECK /// The Birdwatcher	youtube	f
3iLHz8sAfnE	2020-01-10 01:26:43.140072-05	2020-01-10 01:26:43.140072-05	\N	73000000	Lil Nas X - Old Town Road ( Cover By Chicken )	youtube	f
1ykcfvKjsto	2020-01-10 01:37:52.47895-05	2020-01-10 01:37:52.47895-05	\N	56000000	Za HAAArudo	youtube	f
33kAMeHVzBA	2020-01-10 12:54:47.363111-05	2020-01-10 12:54:47.363111-05	\N	68000000	Slavoj Zizek on King Crimson	youtube	f
nRTBM4UwnBs	2020-01-10 12:58:41.239772-05	2020-01-10 12:58:41.239772-05	\N	164000000	Nicki Minaj - Starships ("Pachelbel - Canon in D" Version)	youtube	f
ZW8AZgBaXzE	2020-01-10 13:02:30.303217-05	2020-01-10 13:02:30.303217-05	\N	68000000	Arthur Theme Song ft. Lil Jon	youtube	f
cPJUBQd-PNM	2019-08-28 17:37:24.888472-04	2019-08-28 17:37:24.888472-04	\N	265000000	"Revenge" - A Minecraft Parody of Usher's DJ Got Us Fallin' In Love (Music Video)	youtube	t
Ay_S8NjPEXk	2020-01-10 12:52:22.659428-05	2020-01-10 12:52:22.659428-05	\N	200000000	Pot of Greed in Yugioh	youtube	f
yzzW7KmAalg	2020-01-10 14:34:56.271404-05	2020-01-10 14:34:56.271404-05	\N	57000000	sans monkey	youtube	f
dX-EAfsK-qA	2020-01-10 14:35:22.240929-05	2020-01-10 14:35:22.240929-05	\N	67000000	old town bone	youtube	f
EHyT9V8rD5A	2019-08-29 14:34:40.29373-04	2019-08-29 14:34:40.29373-04	\N	186000000	Do The Mario (Gangsta Rap Edition) (Mario Bros Parody)	youtube	f
iDyg3djW5ZA	2019-08-29 16:19:09.781222-04	2019-08-29 16:19:09.781222-04	\N	240000000	Oatkast - Hey Ya!	youtube	f
MyAidNt1XRk	2019-08-29 21:46:54.539867-04	2019-08-29 21:46:54.539867-04	\N	199000000	Revenge but the lyrics are in alphabetical order	youtube	f
diamondbrickz/snow-hands	2020-01-10 15:14:39.003377-05	2020-01-10 15:14:39.003377-05	\N	105543000	Snow Hands	soundcloud	f
gazden-roolay/itried-so-hard-1	2020-01-10 15:15:32.664965-05	2020-01-10 15:15:32.664965-05	\N	171326000	iTried So Hard	soundcloud	f
alexmashup/gaskau	2020-01-10 15:21:02.707471-05	2020-01-10 15:21:02.707471-05	\N	36026000	Gaskau	soundcloud	f
pluffaduff/how-to-troll-your-favorite-guitar-hero-streamer-epic-style	2020-01-10 15:23:02.514421-05	2020-01-10 15:23:02.514421-05	\N	58701000	how to troll your favorite guitar hero streamer epic style 😎	soundcloud	f
tpose/t011	2020-01-10 15:38:06.604001-05	2020-01-10 15:38:06.604001-05	\N	181985000	׉	soundcloud	f
circlesarepointless2/the-most-cursed-africa-toto-mashup	2020-01-10 15:38:37.562778-05	2020-01-10 15:38:37.562778-05	\N	289150000	the most cursed africa toto mashup	soundcloud	f
stan-michals-601520399/combination-mode-sicko-mode-combination-pizza-hut-and-taco-bell	2020-01-10 15:42:00.895224-05	2020-01-10 15:42:00.895224-05	\N	153090000	COMBINATION MODE (Sicko Mode + Combination Pizza Hut and Taco Bell)	soundcloud	f
someone2639/gonna-cry	2020-01-10 15:42:41.158684-05	2020-01-10 15:42:41.158684-05	\N	17190000	How to piss off the entire EDM community again	soundcloud	f
ZridhMVX5s8	2020-01-10 15:48:18.436519-05	2020-01-10 15:48:18.436519-05	\N	134000000	Spongebob [Meme Mashup] (Grass Skirt Chase)	youtube	f
alexmashup/un-oven-was-moskau	2020-01-10 15:57:07.022283-05	2020-01-10 15:57:07.022283-05	\N	38847000	UN Oven Was Moskau?	soundcloud	f
alexmashup/smash-butterfly	2020-01-10 15:58:24.260035-05	2020-01-10 15:58:24.260035-05	\N	103088000	Smash Butterfly	soundcloud	f
alexmashup/i-recomposed-who-wants-to-be-a-millionaire-theme-as-a-touhou-soundtrack	2020-01-10 15:58:50.777214-05	2020-01-10 15:58:50.777214-05	\N	63796000	I recomposed Who Wants to Be a Millionaire theme as a touhou soundtrack	soundcloud	f
alexmashup/how-to-get-an-instant-cease-and-desist-letter	2020-01-10 15:59:32.731317-05	2020-01-10 15:59:32.731317-05	\N	35608000	How To Get An Instant Cease and Desist Letter	soundcloud	f
alexmashup/dame-tu-slamosita	2020-01-10 15:59:52.813279-05	2020-01-10 15:59:52.813279-05	\N	81927000	Dame Tu Slamosita	soundcloud	f
englishnarwhal/im-gonna-cum-in-your-ass	2020-01-10 16:03:49.669948-05	2020-01-10 16:03:49.669948-05	\N	250384000	Initial Meme - Ass Ass Ass	soundcloud	f
alexmashup/lettucemiru	2020-01-10 16:09:19.015554-05	2020-01-10 16:09:19.015554-05	\N	122760000	Lettucemiru	soundcloud	f
lavalamp-outhouse/same-bpm-joke	2020-01-10 16:18:16.258899-05	2020-01-10 16:18:16.258899-05	\N	224150000	same bpm joke	soundcloud	f
uR8Mrt1IpXg	2020-01-10 16:52:26.555721-05	2020-01-10 16:52:26.555721-05	\N	216000000	Red Velvet 레드벨벳 'Psycho' MV	youtube	f
sVZpHFXcFJw	2020-01-10 17:09:08.925315-05	2020-01-10 17:09:08.925315-05	\N	198000000	True Damage - GIANTS (ft. Becky G, Keke Palmer, SOYEON, DUCKWRTH, Thutmose) | League of Legends	youtube	f
ZbFgBgZMA00	2020-01-10 17:32:04.651173-05	2020-01-10 17:32:04.651173-05	\N	171000000	MEGALOVANIA (UG Mix) - Super Smash Bros. UItimate	youtube	f
grKOl66cY6k	2020-01-10 17:35:02.597068-05	2020-01-10 17:35:02.597068-05	\N	280000000	Cante Jondo	youtube	f
huvRY5K2B9I	2020-01-10 19:30:29.320417-05	2020-01-10 19:30:29.320417-05	\N	1756000000	ANTONIO CHACÓN EXTRAORDINARIO CANTAOR DE LO JONDO QUE NUNCA PASÓ POR EL ARO	youtube	f
f2zb6zg-W2s	2020-01-10 19:35:09.52996-05	2020-01-10 19:35:09.52996-05	\N	260000000	La La Land - Someone in the Crowd - Lyrics	youtube	f
_VH91mivTUw	2019-09-02 15:32:11.821862-04	2019-09-02 15:32:11.821862-04	\N	269000000	【東方ヴォーカルPV】悪戯センセーション【森羅万象公式】	youtube	f
azdznxtnFVc	2019-09-02 15:32:37.94542-04	2019-09-02 15:32:37.94542-04	\N	216000000	【東方ボーカル】 「運命線上のアリア」 【森羅万象】	youtube	f
dpzgVcRBKsQ	2019-09-02 15:40:08.595681-04	2019-09-02 15:40:08.595681-04	\N	449000000	Through The Fire And Flames (PC Release) - Guitar Hero III: Legends of Rock	youtube	f
WROcJK3ZHGc	2019-09-02 16:36:29.402908-04	2019-09-02 16:36:29.402908-04	\N	313000000	[HQ] Yousei Teikoku - Kokou no Sousei	youtube	f
j0N5XpHDfUM	2019-09-02 16:38:23.014652-04	2019-09-02 16:38:23.014652-04	\N	233000000	[FULL] Mahouka Koukou no Rettousei ED 2 『Mirror』 Romaji / English	youtube	f
3Mo1sEJN47c	2019-09-02 16:38:50.252537-04	2019-09-02 16:38:50.252537-04	\N	226000000	Undead Corporation - 紅染の鬼が哭く - Yoru Naku Usagi wa Yume wo Miru [192kpbs]	youtube	f
aeICRSQQrGY	2019-09-02 16:39:46.417086-04	2019-09-02 16:39:46.417086-04	\N	231000000	【Kano】Paranoia	youtube	f
2de2MHIzNbg	2019-09-02 16:44:09.273798-04	2019-09-02 16:44:09.273798-04	\N	340000000	【東方ボーカル】 「MyonMyonMyonMyonMyonMyon!」 【ShibayanRecords】【Subbed】	youtube	f
V5-hvyaSdzc	2019-09-02 17:06:13.849444-04	2019-09-02 17:06:13.849444-04	\N	221000000	Revenge but every 4 beats it turns into DJ Got Us Fallin' In Love	youtube	f
29YwKYcrdF8	2019-09-02 17:25:02.935428-04	2019-09-02 17:25:02.935428-04	\N	222000000	Oatmeallujah	youtube	f
Tbwx9mv9q34	2019-09-02 18:18:00.562722-04	2019-09-02 18:18:00.562722-04	\N	100000000	Weed la Weed	youtube	f
I4HmlBRWRjQ	2019-09-02 18:20:41.895119-04	2019-09-02 18:20:41.895119-04	\N	195000000	"LET IT GO" FROZEN UKULELE COVER (BEAUTIFUL)	youtube	f
fgBfdY_HN3A	2019-09-02 18:21:08.822112-04	2019-09-02 18:21:08.822112-04	\N	278000000	The Loophole	youtube	f
XVON0vP8k4s	2019-09-02 18:23:05.908144-04	2019-09-02 18:23:05.908144-04	\N	207000000	Passenger of Shit - Staple Tapeworms On My Penis	youtube	f
y8-LH_VUROk	2019-09-02 18:26:37.798408-04	2019-09-02 18:26:37.798408-04	\N	337000000	Tenacious D - Beelzeboss (The Final Showdown) HD	youtube	f
hvvjiE4AdUI	2019-09-02 18:26:54.522129-04	2019-09-02 18:26:54.522129-04	\N	264000000	TENACIOUS D - Kickapoo	youtube	f
iZ9Lt0LYiUI	2019-09-02 18:27:08.733575-04	2019-09-02 18:27:08.733575-04	\N	11000000	Lego Yoda Cock and Ball Torture ASMR	youtube	f
80DtQD5BQ_A	2019-09-02 18:27:19.137216-04	2019-09-02 18:27:19.137216-04	\N	203000000	Tenacious D: Master Exploder	youtube	f
pMXRWurZenY	2020-01-11 11:37:42.4578-05	2020-01-11 11:37:42.4578-05	\N	314000000	キラメキ居残り大戦争 （Vo:あやぽんず＊/あよ）/森羅万象 【Animated Music Video】	youtube	f
rxvGCdfkpp0	2020-01-11 11:50:03.386653-05	2020-01-11 11:50:03.386653-05	\N	264000000	[Touhou Vocal] [Yuuhei Satellite] The Capital of You in My Imagination (spanish & english subtitles)	youtube	f
OjkgCERXxbY	2020-01-11 11:56:27.215137-05	2020-01-11 11:56:27.215137-05	\N	85000000	Billie Eilish - bad guy ( Cover by Chicken )	youtube	f
YZpH65uGnww	2020-01-11 11:57:56.227871-05	2020-01-11 11:57:56.227871-05	\N	277000000	【東方】K2 SOUND『鳴き龍のアプリオリ』	youtube	f
KHhe8begOQk	2020-01-11 12:04:00.568725-05	2020-01-11 12:04:00.568725-05	\N	167000000	Undertale: Death by Glamour - Metal Cover || RichaadEB	youtube	f
0ffGuajCdwg	2020-01-11 12:07:22.035574-05	2020-01-11 12:07:22.035574-05	\N	318000000	Undertale - Death by Glamour (Mettaton EX) 【Intense Symphonic Metal Cover】	youtube	f
XdGtP-UJ8ZI	2020-01-11 12:10:14.747178-05	2020-01-11 12:10:14.747178-05	\N	395000000	Touhou 12 UFO - The Tiger-Patterned Vaiśravaṇa (Shou Toramaru) 【Intense Symphonic Metal Cover】	youtube	f
oT3mCybbhf0	2020-01-11 12:17:36.615369-05	2020-01-11 12:17:36.615369-05	\N	267000000	AVICII & RICK ASTLEY - Never Gonna Wake You Up (NilsOfficial Mashup)	youtube	f
URJ_qSXruW0	2020-01-11 12:27:07.154208-05	2020-01-11 12:27:07.154208-05	\N	1323000000	Space Station 13 Review | AHELP: Clown Grief Pls Ban He™	youtube	t
p26fJ-K-XPw	2020-01-11 12:41:16.541202-05	2020-01-11 12:41:16.541202-05	\N	231000000	【東方 Vocal／Rock】 偶像ハルマゲドン 「Yonder Voice」	youtube	f
j0vU8yxT3A4	2020-01-11 13:54:36.859089-05	2020-01-11 13:54:36.859089-05	\N	154000000	Kim Leoni - Emergency (Nightcore Mix) HD	youtube	f
_BVYctWjfnM	2020-01-11 13:56:24.574762-05	2020-01-11 13:56:24.574762-05	\N	296000000	Retrospective 53 Minutes - Legend of Aokigahara	youtube	f
NlaIYjQKCDc	2020-01-11 13:57:37.903354-05	2020-01-11 13:57:37.903354-05	\N	253000000	[東方Vocal/Rock] 紺碧studio - Change the world	youtube	f
eTsOi_BKBvM	2020-01-11 13:57:54.365381-05	2020-01-11 13:57:54.365381-05	\N	260000000	【東方Vocal／Pop】 雷鳴、鼓動のままに 「紺碧studio」	youtube	f
bZPpxHOA4tg	2020-01-11 14:00:05.013647-05	2020-01-11 14:00:05.013647-05	\N	257000000	【東方Vocal】 REVERSE LIMITED! - OTOMEKAN	youtube	f
Ee06kROMzuQ	2020-01-11 14:00:40.255051-05	2020-01-11 14:00:40.255051-05	\N	222000000	Magical Astronomy - Greenwich in the Sky	youtube	f
-G-FXuS7Vr4	2020-01-11 14:01:19.017326-05	2020-01-11 14:01:19.017326-05	\N	262000000	「東方 Vocal」 汝は白狼なりや？ 「森羅万象」	youtube	f
z_lfgINqKkY	2020-01-11 14:02:03.629402-05	2020-01-11 14:02:03.629402-05	\N	77000000	Stardew Valley OST - Music Box Song	youtube	f
ybVH4T0RI3I	2020-01-11 14:05:22.493638-05	2020-01-11 14:05:22.493638-05	\N	373000000	[Touhou][Piano Cover] ありがとう - Liz Triangle/Komeiji Records	youtube	f
theguys-fourth-archive/somebodys-watching-meme-fusion	2020-01-11 15:22:56.703672-05	2020-01-11 15:22:56.703672-05	\N	204661000	Somebody's Watching Me(me) ~  FUSION	soundcloud	f
shitpostsupply/cha-cha-slider	2020-01-11 15:27:38.833745-05	2020-01-11 15:27:38.833745-05	\N	219135000	Cha Cha Slider	soundcloud	f
lammirai/throughthedamesandcositas	2020-01-11 15:28:16.728653-05	2020-01-11 15:28:16.728653-05	\N	402845000	Through the Dames and Cositas	soundcloud	f
jasmina-miller-235629619/death-grips-goes-to-six-flags	2020-01-11 15:34:52.165796-05	2020-01-11 15:34:52.165796-05	\N	156670000	Death Grips Goes To Six Flags and Likes It	soundcloud	f
arthurmcbarthur/dame-tu-jellyfish	2020-01-11 15:48:55.74942-05	2020-01-11 15:48:55.74942-05	\N	147239000	Dame Tu Jellyfish	soundcloud	f
rigmarollin/this-is-treasure	2020-01-11 15:49:06.705804-05	2020-01-11 15:49:06.705804-05	\N	173808000	This Is Treasure	soundcloud	f
two-ty-mcexplosion/yeah-i-made-it-past-8-seconds-in-super-hexagon	2020-01-11 15:49:56.31439-05	2020-01-11 15:49:56.31439-05	\N	169236000	Yeah, I made it past 8 seconds in Super Hexagon	soundcloud	f
wef/crank-that-kart-64	2020-01-11 15:59:57.391579-05	2020-01-11 15:59:57.391579-05	\N	127437000	Crank That Kart 64	soundcloud	f
jillkatze/all-the-cum-things	2020-01-11 16:00:29.324285-05	2020-01-11 16:00:29.324285-05	\N	177048000	Blink 182 - All The Cum Things	soundcloud	f
seal_of_approval/despacito	2020-01-11 16:00:57.215965-05	2020-01-11 16:00:57.215965-05	\N	186427000	despacito	soundcloud	f
lammirai/500nauticalmiles	2020-01-11 16:01:14.681519-05	2020-01-11 16:01:14.681519-05	\N	149851000	500 Nautical Miles	soundcloud	f
bruh-de-la-boi/its-a-sin-that-this-mashup-works	2020-01-11 16:01:26.814754-05	2020-01-11 16:01:26.814754-05	\N	132400000	It's a sin that this mashup works.	soundcloud	f
vc6vs-l5dkc	2020-01-11 16:08:05.390317-05	2020-01-11 16:08:05.390317-05	\N	186000000	Panic! At The Disco: I Write Sins Not Tragedies [OFFICIAL VIDEO]	youtube	f
4RSUuu_FqHo	2020-01-11 16:12:08.389325-05	2020-01-11 16:12:08.389325-05	\N	127000000	Ocean Man Voice Crack	youtube	f
tkzY_VwNIek	2020-01-11 16:12:17.49696-05	2020-01-11 16:12:17.49696-05	\N	128000000	Ween - Ocean Man [Music Video]	youtube	t
alpha-shitlord/it-physically-hurt-me-to-make-this	2020-01-11 16:12:27.709496-05	2020-01-11 16:12:27.709496-05	\N	144730000	it physically hurt me to make this	soundcloud	f
ladmusic/five-nights-of-op	2020-01-11 16:13:47.474869-05	2020-01-11 16:13:47.474869-05	\N	162366000	Five Nights Of Op	soundcloud	f
bruh-de-la-boi/feel-bad-inc	2020-01-11 16:14:45.374734-05	2020-01-11 16:14:45.374734-05	\N	221720000	Feel Bad Inc.	soundcloud	f
thesqrtminus3/smash-mouth-america	2020-01-11 16:15:04.038005-05	2020-01-11 16:15:04.038005-05	\N	202049000	Smash Mouth - America	soundcloud	f
arthurmcbarthur/livin-la-despacito	2020-01-11 16:15:16.428075-05	2020-01-11 16:15:16.428075-05	\N	222191000	Livin La Despacito	soundcloud	f
dingowalley/some-spongebob-that-i-used-to-know	2020-01-11 16:16:16.171736-05	2020-01-11 16:16:16.171736-05	\N	227338000	Some Spongebob That I Used To Know	soundcloud	f
theguy-v3-because-why/villain-at-the-disco	2020-01-11 16:16:31.533069-05	2020-01-11 16:16:31.533069-05	\N	145540000	Villain! At The Disco	soundcloud	f
monogiraffe/enormous-pizza-a-secret-course	2020-01-11 16:17:16.79439-05	2020-01-11 16:17:16.79439-05	\N	164611000	Enormous Pizza (A Secret Course)	soundcloud	f
xzEoAF4O7-c	2019-09-04 16:05:16.787984-04	2019-09-04 16:05:16.787984-04	\N	271000000	【東方ボーカル】 「signal flare feat.あよ」 【森羅万象】 【Subbed】	youtube	f
grG3LUV1jzY	2019-09-04 16:08:31.418352-04	2019-09-04 16:08:31.418352-04	\N	279000000	【東方ボーカル】 「無意識レクイエム」 【森羅万象】	youtube	f
4eU1ZZiPsyU	2019-09-04 16:09:55.409461-04	2019-09-04 16:09:55.409461-04	\N	255000000	【東方ヴォーカルPV】あうんどばいみー【森羅万象公式】	youtube	f
hBzfpsEyqeU	2019-09-04 21:07:48.957422-04	2019-09-04 21:07:48.957422-04	\N	166000000	Wii Shopping Channel Remix - Nicky Flowers	youtube	f
rIA1KsTIe30	2019-09-04 23:51:22.732734-04	2019-09-04 23:51:22.732734-04	\N	31000000	Bill Nye the Science Guy but every Bill makes it bass boost	youtube	f
THH7P08zuhU	2019-09-04 23:52:09.478451-04	2019-09-04 23:52:09.478451-04	\N	30000000	Bill Nye the Science Guy Chinese Intro	youtube	f
_dgQzgNLmpA	2019-09-05 18:43:10.163609-04	2019-09-05 18:43:10.163609-04	\N	163000000	David Allan Coe - Devil went down to jamaica (the complete song)	youtube	f
7qLqbGHa0S4	2019-09-05 20:12:12.39047-04	2019-09-05 20:12:12.39047-04	\N	335000000	Demetori - ネクロファンタジア ～ Remix (necrofantasia)	youtube	f
4JkIs37a2JE	2019-09-05 20:13:59.111483-04	2019-09-05 20:13:59.111483-04	\N	236000000	Jamiroquai - Virtual Insanity (Official Video)	youtube	f
JcEv1qZKQL0	2019-09-05 20:14:20.172334-04	2019-09-05 20:14:20.172334-04	\N	230000000	ああああ茶漬け 「さよならコスモノート ＬＯＮＧ」	youtube	f
JzkkXFWqtZ8	2019-09-05 20:49:17.002612-04	2019-09-05 20:49:17.002612-04	\N	32000000	oops	youtube	f
0AegLCRZZvU	2019-09-05 22:40:18.80267-04	2019-09-05 22:40:18.80267-04	\N	57000000	just playing some pokémon blue	youtube	f
dQHPSD6GYxo	2019-09-05 22:44:11.970663-04	2019-09-05 22:44:11.970663-04	\N	124000000	Super Mario 3 Masturbation / Masturbatory Madness "a grand day out"	youtube	f
VSPuRXkUWoU	2019-09-05 22:44:32.715924-04	2019-09-05 22:44:32.715924-04	\N	47000000	how to create billie eilish's "bad guy"	youtube	f
jbs29QDuvfs	2019-09-05 22:48:18.360228-04	2019-09-05 22:48:18.360228-04	\N	241000000	【東方ボーカル】 幽閉サテライト&少女フラクタル - 懐かしき君の文字	youtube	f
a2RA0vsZXf8	2019-09-05 22:53:08.424724-04	2019-09-05 22:53:08.424724-04	\N	269000000	"Just A Dream" by Nelly - Sam Tsui & Christina Grimmie	youtube	f
XOI6QZwhuNI	2019-09-05 22:55:00.61208-04	2019-09-05 22:55:00.61208-04	\N	113000000	Green Day Sings the Wrong Song	youtube	f
7ErKTbCQIPI	2019-09-05 23:00:04.750566-04	2019-09-05 23:00:04.750566-04	\N	264000000	The Fray - How to Oatmeal	youtube	f
spicy236/inkling-vocal-test	2020-01-11 16:24:01.863099-05	2020-01-11 16:24:01.863099-05	\N	125450000	Inkling Vocal Test	soundcloud	f
110-percent/teen-drinking-is-very-bad	2020-01-11 16:24:10.251726-05	2020-01-11 16:24:10.251726-05	\N	171221000	Teen Drinking is Very Bad	soundcloud	f
user-905151916/the-battle-for-perry-the-platypuss-soul	2020-01-11 16:25:21.540512-05	2020-01-11 16:25:21.540512-05	\N	206072000	The Battle For Perry The Platypus's Soul	soundcloud	f
dj-gaspadorius/we-are-cruel-angels	2020-01-11 16:25:40.737566-05	2020-01-11 16:25:40.737566-05	\N	142380000	We Are Cruel Angels	soundcloud	f
renim_g/ill-make-a-shooting-star-out-of-you	2020-01-11 16:44:41.812254-05	2020-01-11 16:44:41.812254-05	\N	234366000	I'll make a Shooting Star out of you	soundcloud	f
reference2golf304/no-dont-touch-that	2020-01-11 16:46:04.925264-05	2020-01-11 16:46:04.925264-05	\N	145959000	Ｎｏ， Ｄｏｎ＇ｔ Ｔｏｕｃｈ Ｔｈａｔ	soundcloud	f
thomas-evoy/toxic-skeletons	2020-01-11 16:46:18.629037-05	2020-01-11 16:46:18.629037-05	\N	182350000	Toxic Skeletons	soundcloud	f
user-871947641/why-hasnt-this-been-done-already	2020-01-11 17:00:36.037785-05	2020-01-11 17:00:36.037785-05	\N	142798000	Why hasn't this been done already?	soundcloud	f
dogonit/mfw-1-bpm-apart	2020-01-11 17:00:48.26357-05	2020-01-11 17:00:48.26357-05	\N	220859000	mfw 1 bpm apart	soundcloud	f
JFCKPL5qMK0	2020-01-12 00:06:43.001489-05	2020-01-12 00:06:43.001489-05	\N	125000000	Kirby's Dream Land - Green Greens [Remix]	youtube	f
mMMRGJCFsQE	2020-01-12 00:06:53.602681-05	2020-01-12 00:06:53.602681-05	\N	233000000	Foxsky - Kirby Smash	youtube	f
BLx9YnddEmY	2020-01-12 13:14:53.395218-05	2020-01-12 13:14:53.395218-05	\N	284000000	Binary Star	youtube	f
ideaot/macklerena	2020-01-12 13:54:25.826059-05	2020-01-12 13:54:25.826059-05	\N	92533000	hey macklerena	soundcloud	f
sean-peden/crank-on-me	2020-01-12 13:54:45.715624-05	2020-01-12 13:54:45.715624-05	\N	232276000	Crank On Me	soundcloud	f
radioactium/does-anyone-remember-that-one-song-from-2007-that-everyone-hated	2020-01-12 13:57:49.05618-05	2020-01-12 13:57:49.05618-05	\N	159910000	does anyone remember that one song from 2007 that everyone hated	soundcloud	f
princessrosalina/mashup-album-straight-outta	2020-01-12 13:59:24.497055-05	2020-01-12 13:59:24.497055-05	\N	256362000	Mashup Album- Straight Outta the Recycle Bin	soundcloud	f
smug-memeing-doggo/tunakhigh	2020-01-12 13:59:39.44954-05	2020-01-12 13:59:39.44954-05	\N	210173000	Tunakman	soundcloud	f
DFCxiKXtKTI	2020-01-12 14:28:17.948069-05	2020-01-12 14:28:17.948069-05	\N	215000000	[Official Video] Can’t Sleep Love – Pentatonix	youtube	f
theguys-fourth-archive/never-timber-stream	2020-01-12 17:10:33.172777-05	2020-01-12 17:10:33.172777-05	\N	179190000	「NEVER TIMBER STREAM」	soundcloud	f
ulfY8WQE_HE	2020-01-12 17:15:20.59401-05	2020-01-12 17:15:20.59401-05	\N	228000000	レーゾンデートル - Eve MV	youtube	f
nxM-q1_tHYc	2020-01-12 17:19:09.101329-05	2020-01-12 17:19:09.101329-05	\N	581000000	POLKA FOR ANOTHER DAY - SiIvaGunner: King for Another Day	youtube	f
35YXCbyTOrw	2020-01-12 17:29:51.814485-05	2020-01-12 17:29:51.814485-05	\N	194000000	Touhou 4: LLS Stage 3 Theme - Bad Apple!!	youtube	f
HWkmyjulxzw	2020-01-12 17:38:35.097212-05	2020-01-12 17:38:35.097212-05	\N	237000000	[Touhou Vocal] [SOUND HOLIC] SIREN (spanish & english subtitles)	youtube	f
_oXpE-To3G0	2020-01-12 17:55:42.633014-05	2020-01-12 17:55:42.633014-05	\N	20000000	The Penis Song	youtube	f
alexmashup/snoop-gadget	2020-01-12 23:36:50.23903-05	2020-01-12 23:36:50.23903-05	\N	83311000	Snoop Gadget	soundcloud	f
musicalbasket/a-message-from-liberty-medical	2020-01-12 23:38:17.265107-05	2020-01-12 23:38:17.265107-05	\N	53085000	A Message From Liberty Medical	soundcloud	f
dabunky/im-just-really-surprised-i-havent-seen-it-yet	2020-01-12 23:38:40.932158-05	2020-01-12 23:38:40.932158-05	\N	83912000	I'm just really surprised I haven't seen it yet	soundcloud	f
matrixmariox/fuck	2020-01-12 23:39:01.132296-05	2020-01-12 23:39:01.132296-05	\N	226920000	fuck	soundcloud	f
kony1015/through-the-soulja-and-boy	2020-01-12 23:44:08.986893-05	2020-01-12 23:44:08.986893-05	\N	154528000	Through The Soulja And Boy	soundcloud	f
rosey0/the-bangafish-jam	2020-01-12 23:44:44.306455-05	2020-01-12 23:44:44.306455-05	\N	147788000	The Bangafish Jam	soundcloud	f
napemango2/babys-first-psy-meme	2020-01-13 13:37:09.486129-05	2020-01-13 13:37:09.486129-05	\N	264488000	I Got It From My Батя	soundcloud	f
5Z47MjSrem0	2020-01-13 17:31:56.832834-05	2020-01-13 17:31:56.832834-05	\N	257000000	Ocean halation - Love Live! vs. Yellowcard	youtube	f
lyIhcRkeomY	2020-01-13 18:37:03.742463-05	2020-01-13 18:37:03.742463-05	\N	47000000	replacing every sound in minecraft with 'Bruh sound effect #2'	youtube	f
dashups/hit-me-with-your-best-shots	2020-01-13 18:50:40.887528-05	2020-01-13 18:50:40.887528-05	\N	169210000	Hit Me With Your Best Shots	soundcloud	f
pdwubs/i-want-you-pac	2020-01-13 18:51:09.002722-05	2020-01-13 18:51:09.002722-05	\N	155311000	i want you pac	soundcloud	f
jed-k/kendrick-lamariokart	2020-01-13 18:51:23.556437-05	2020-01-13 18:51:23.556437-05	\N	163829000	Kendrick Lamariokart	soundcloud	f
OAozTwTzYOM	2020-01-13 19:00:09.798737-05	2020-01-13 19:00:09.798737-05	\N	358000000	parao - ruben blades - mundo	youtube	f
lemonlazer/apparently-this-works-really-well	2020-01-13 19:10:38.957377-05	2020-01-13 19:10:38.957377-05	\N	171691000	apparently this works really well	soundcloud	f
personalpong/you-used-to-crawl-me-on-my-cell-phone	2020-01-13 19:13:12.604095-05	2020-01-13 19:13:12.604095-05	\N	141883000	You Used To Crawl Me On My Cell Phone	soundcloud	f
lemonwars/kahoot-megamash	2020-01-13 19:13:54.325094-05	2020-01-13 19:13:54.325094-05	\N	234731000	Kahoot Megamash	soundcloud	f
6U9Ef2Mud1Y	2020-01-13 19:22:02.016143-05	2020-01-13 19:22:02.016143-05	\N	85000000	It's the nutshack except it's the simpsons	youtube	f
wolfman1405/bees182	2020-01-13 19:26:29.568904-05	2020-01-13 19:26:29.568904-05	\N	166467000	bees-182 - "fuck it"	soundcloud	f
geretsu/i-was-ordered-to-do-this	2020-01-13 19:26:48.410222-05	2020-01-13 19:26:48.410222-05	\N	143556000	i was ordered to do this	soundcloud	f
czechquors/sliding-stars-ft-daft-punk	2020-01-13 19:26:57.416073-05	2020-01-13 19:26:57.416073-05	\N	288157000	Sliding Stars ft. Daft Punk	soundcloud	f
dafuol/careless-sickness	2020-01-13 19:36:58.575218-05	2020-01-13 19:36:58.575218-05	\N	222035000	Careless sickness	soundcloud	f
cryptrik2/interiorfireflyalligator	2020-01-13 19:38:21.96515-05	2020-01-13 19:38:21.96515-05	\N	207012000	Interior Firefly Alligator	soundcloud	f
lemmy-koopa-2/dig-down-for-what	2020-01-13 19:43:14.153278-05	2020-01-13 19:43:14.153278-05	\N	171927000	Dig Down For What	soundcloud	f
super-srs-mashups/preparing-the-funk	2020-01-13 19:45:19.723976-05	2020-01-13 19:45:19.723976-05	\N	184807000	Uptown Patty	soundcloud	f
lugiloud/seven-grand-nation	2020-01-13 19:45:26.203404-05	2020-01-13 19:45:26.203404-05	\N	260149999	Seven Grand Nation	soundcloud	f
sega772/does-that-make-me-crazy	2020-01-13 19:55:32.881316-05	2020-01-13 19:55:32.881316-05	\N	134438000	Does That Make Me Crazy?	soundcloud	f
user-18538954/uh-oh-stinky	2020-01-13 20:02:22.052634-05	2020-01-13 20:02:22.052634-05	\N	121350000	Uh Oh (Stinky)	soundcloud	f
flame-wolf-2569982/mining-minecraft-parody-of	2020-01-13 20:02:34.385935-05	2020-01-13 20:02:34.385935-05	\N	209442000	Im Mining - minecraft rap song	soundcloud	f
sp00ky_sc4ry_sk3l3t0n/mariah-carey-all-i-want-for	2020-01-13 20:07:46.759334-05	2020-01-13 20:07:46.759334-05	\N	241028000	Mariah Carey - All I Want For Christmas Is You (MINECRAFT PARODY) Ft. Grandayy  Galaxy Goats.mp3	soundcloud	f
nickadoo/kermit-sings-in-the-end-parody-cover	2020-01-13 20:08:29.682104-05	2020-01-13 20:08:29.682104-05	\N	219030000	Kermit sings 'in the end' [PARODY COVER]	soundcloud	f
memes-never-die/www-rrr-nmm-bbb-www	2020-01-13 20:12:29.208853-05	2020-01-13 20:12:29.208853-05	\N	147527000	Www Rrr Nmm Bbb Www	soundcloud	f
galaxy_hoody/im-so-fresh-you-can-suck-my-nuts	2020-01-13 20:17:34.59779-05	2020-01-13 20:17:34.59779-05	\N	239511000	Im So Fresh You Can Suck My Nuts	soundcloud	f
smug-memeing-doggo/one-week-but-whenever-he-says-a-unit-of-time-except-for-two-days-the-instrumental-changes	2020-01-13 20:18:17.261426-05	2020-01-13 20:18:17.261426-05	\N	172501000	one week but whenever he says a unit of time (except for two days) the instrumental changes	soundcloud	f
xLetZ-36TYs	2020-01-14 01:31:46.990022-05	2020-01-14 01:31:46.990022-05	\N	7201000000	Lofi hip hop mix - Beats to Relax/Study to [2019]	youtube	t
3kqHyprQCR8	2019-09-07 20:14:15.952492-04	2019-09-07 20:14:15.952492-04	\N	295000000	Dire Dire Despito - Super Despacito 64	youtube	f
bMCkrXaXFCM	2019-09-07 20:14:55.681575-04	2019-09-07 20:14:55.681575-04	\N	217000000	Despacitouhou	youtube	f
nWhFr3pm0Pk	2019-09-07 20:15:31.822585-04	2019-09-07 20:15:31.822585-04	\N	26000000	Sicko Mode or Mo Bamba	youtube	f
Isysqu2kXrQ	2019-09-07 20:21:27.371605-04	2019-09-07 20:21:27.371605-04	\N	186000000	Despacito 2 ( Unofficial Undertale 2 Release )	youtube	f
0c0AvIeSfS0	2019-09-07 20:25:58.792623-04	2019-09-07 20:25:58.792623-04	\N	280000000	【東方Orchestral／Symphonic】 Dream of Arcadia 「Melodic Taste」	youtube	f
gXHS_dtRB4Q	2019-09-07 20:27:34.078318-04	2019-09-07 20:27:34.078318-04	\N	231000000	【東方Orchestral】 Kid's Festival ~ Innocent Treasures 「Melodic Taste」	youtube	f
DviID8Ni7Ns	2019-09-07 20:39:16.49107-04	2019-09-07 20:39:16.49107-04	\N	206000000	Men I Trust - I hope to be around	youtube	f
-Pi5TuFhHqg	2019-09-07 21:02:11.098882-04	2019-09-07 21:02:11.098882-04	\N	176000000	Gimme your gimme your gimme your gimme your	youtube	f
CjRESpTxCM4	2019-09-08 16:20:31.451147-04	2019-09-08 16:20:31.451147-04	\N	185000000	hoes mad but every time dex says hoes mad it gets bass boosted	youtube	f
oAMK3VJ7YrQ	2019-09-08 17:12:14.977628-04	2019-09-08 17:12:14.977628-04	\N	55000000	Seinfeld Theme SKRILLEX REMIX	youtube	f
yEndQBmpqus	2019-09-08 17:27:56.362862-04	2019-09-08 17:27:56.362862-04	\N	320000000	【東方Vocal／Rock Ballad】 ラピスラズリの夜に 「Shinra-Bansho」 【Subbed】	youtube	f
jXYN_M2RDLQ	2019-09-08 21:30:49.855632-04	2019-09-08 21:30:49.855632-04	\N	275000000	JoJo Part 1: Phantom Blood - Opening Full『Sono Chi no Sadame』by Hiroaki TOMMY Tominaga	youtube	f
W3GrSMYbkBE	2019-09-08 22:21:47.68694-04	2019-09-08 22:21:47.68694-04	\N	124000000	Despacito 2 (Parody Video)	youtube	f
_Hps37YfCls	2019-09-08 22:34:11.552218-04	2019-09-08 22:34:11.552218-04	\N	76000000	Squidward needs some Beefaroni	youtube	f
LwC9LzGRXGE	2019-09-09 14:50:40.544744-04	2019-09-09 14:50:40.544744-04	\N	175000000	Namapann - Desire Drive(Touhou 13 - Ten Desires)	youtube	f
MwSkC85TDgY	2020-01-14 02:31:24.089243-05	2020-01-14 02:31:24.089243-05	\N	242000000	[Electro] - Pegboard Nerds - Disconnected [Monstercat Release]	youtube	f
pGvdvT_XWWI	2020-01-14 02:31:53.571824-05	2020-01-14 02:31:53.571824-05	\N	262000000	[Glitch Hop / 110BPM] - Tut Tut Child - Dance To It [Monstercat EP Release]	youtube	f
cUd0UYmmS5I	2020-01-14 02:54:54.848785-05	2020-01-14 02:54:54.848785-05	\N	27000000	chinko	youtube	f
kmlkmljkl/party-without-me	2020-01-14 15:16:26.46776-05	2020-01-14 15:16:26.46776-05	\N	135535000	Party Without Me	soundcloud	f
thelaxone/problem_set_03pdf	2020-01-14 15:16:44.440879-05	2020-01-14 15:16:44.440879-05	\N	157977000	problem_set_03.pdf	soundcloud	f
alexmashup/weediam-tell-overture	2020-01-14 15:17:07.782883-05	2020-01-14 15:17:07.782883-05	\N	186845000	Weediam Tell Overture	soundcloud	f
llama-lamp/ice-ice-polkka	2020-01-14 15:23:55.934985-05	2020-01-14 15:23:55.934985-05	\N	151340000	Ice Ice Polkka	soundcloud	f
skim94/careless-run-away	2020-01-14 15:24:20.05418-05	2020-01-14 15:24:20.05418-05	\N	136189000	Careless Run Away	soundcloud	f
the-death-of-comedy/hotel-califireandflames	2020-01-14 15:24:28.520642-05	2020-01-14 15:24:28.520642-05	\N	220598000	hotel califireandflames	soundcloud	f
doughknot-lump/lavender-shake	2020-01-14 15:32:12.480765-05	2020-01-14 15:32:12.480765-05	\N	235306000	Lavender Shake	soundcloud	f
lavalamp-lavatory/the-ultimate-lifeform	2020-01-14 15:32:24.575139-05	2020-01-14 15:32:24.575139-05	\N	149041000	The Ultimate Lifeform	soundcloud	f
-RY-g0B_xvg	2020-01-14 15:34:50.706328-05	2020-01-14 15:34:50.706328-05	\N	130000000	We Are Number One but it's co-performed by Epic Sax Guy	youtube	f
radioactium/being-athletic-in-the-90s	2020-01-14 15:38:05.133733-05	2020-01-14 15:38:05.133733-05	\N	133967999	Being Athletic In The 90s	soundcloud	f
super-srs-mashups/mr-blueside	2020-01-14 15:47:30.107185-05	2020-01-14 15:47:30.107185-05	\N	132896999	Mr. Blueside	soundcloud	f
glob911/a-cruel-axels-thesis	2020-01-14 15:47:49.953451-05	2020-01-14 15:47:49.953451-05	\N	172868000	A Cruel Axels Thesis	soundcloud	f
dogonalt/i-should-be-arrested-for-this	2020-01-14 15:51:22.969185-05	2020-01-14 15:51:22.969185-05	\N	167772000	I should be arrested for this	soundcloud	f
thesqrtminus2/doin-it-flies	2020-01-14 15:51:54.14378-05	2020-01-14 15:51:54.14378-05	\N	224072000	Doin' It Flies	soundcloud	f
monogiraffe/some-mouths	2020-01-14 15:53:46.243627-05	2020-01-14 15:53:46.243627-05	\N	273475000	Some Mouths	soundcloud	f
A1E6inabYnw	2020-01-14 16:30:59.302649-05	2020-01-14 16:30:59.302649-05	\N	180000000	Cascada - Why You Had To Leave (Nightcore Mix)	youtube	f
vdVnnMOTe3Q	2020-01-14 17:47:58.797433-05	2020-01-14 17:47:58.797433-05	\N	192000000	Rats Birthday Mixtape	youtube	f
Ni5gDtogseI	2020-01-14 17:50:33.045885-05	2020-01-14 17:50:33.045885-05	\N	204000000	Jerma: All Star_	youtube	f
ScDIkNcqZjE	2020-01-14 18:32:09.377633-05	2020-01-14 18:32:09.377633-05	\N	254000000	[Official Video] Papaoutai – Pentatonix ft. Lindsey Stirling (Stromae Cover)	youtube	f
AKZd1zMxMlg	2020-01-14 23:32:07.649577-05	2020-01-14 23:32:07.649577-05	\N	172000000	OISHII - ONIGIRI FREEWAY	youtube	f
A8xoAzECbXc	2020-01-15 11:26:57.175317-05	2020-01-15 11:26:57.175317-05	\N	217000000	Mambo No. 5 But it's Megalovania	youtube	f
VzZK_lt-hXI	2020-01-15 13:19:02.693456-05	2020-01-15 13:19:02.693456-05	\N	196000000	[Progressive House] - Puppet - Scribble (feat. The Eden Project) [Monstercat Release]	youtube	f
K5G1FmU-ldg	2020-01-15 17:19:31.173246-05	2020-01-15 17:19:31.173246-05	\N	338000000	Haddaway - What is Love + Lyrics	youtube	f
fTSA709zNzY	2020-01-15 17:23:11.193528-05	2020-01-15 17:23:11.193528-05	\N	169000000	SUPER NINTENDO WORLD™ JAPAN: Galantis ft. Charli XCX - WE ARE BORN TO PLAY (Music Video)	youtube	f
trenedey/lil-pulp-fiction	2020-01-15 19:14:54.475726-05	2020-01-15 19:14:54.475726-05	\N	111605000	Lil Pulp Fiction (TODD)	soundcloud	f
ideaot/untitled	2020-01-15 19:15:28.012075-05	2020-01-15 19:15:28.012075-05	\N	105518000	Untitled	soundcloud	f
yes-we-cant/branye	2020-01-15 19:17:09.094646-05	2020-01-15 19:17:09.094646-05	\N	36991000	wh	soundcloud	f
dogsonmeth/night-of-gangnam	2020-01-15 19:17:43.645705-05	2020-01-15 19:17:43.645705-05	\N	181462000	NIGHT OF GANGNAM	soundcloud	f
kraiqyttyj/mhh819mhr635	2020-01-15 19:18:13.323968-05	2020-01-15 19:18:13.323968-05	\N	171352000	ᖍ(ツ)ᖌ	soundcloud	f
princessrosalina/corycore-collection	2020-01-15 19:20:27.782206-05	2020-01-15 19:20:27.782206-05	\N	443339000	Corycore Collection	soundcloud	f
czechquors/doit	2020-01-15 19:25:40.602824-05	2020-01-15 19:25:40.602824-05	\N	251451000	Do	soundcloud	f
kizuuunami/post-till-youre-dead	2020-01-15 19:26:01.493896-05	2020-01-15 19:26:01.493896-05	\N	167720000	POST TIL YOURE DEAD	soundcloud	f
jackhoeting/lavender-punk	2020-01-15 19:38:49.263974-05	2020-01-15 19:38:49.263974-05	\N	151053000	Lavender Punk	soundcloud	f
radioactium/did-someone-say-matching-bpm	2020-01-15 19:39:14.497555-05	2020-01-15 19:39:14.497555-05	\N	189221000	Did Someone Say Matching Bpm	soundcloud	f
towairii/funny-mashup	2020-01-15 19:39:21.533967-05	2020-01-15 19:39:21.533967-05	\N	83572000	funny mashup	soundcloud	f
smug-memeing-doggo/pain-in-audio-form	2020-01-15 20:02:44.9196-05	2020-01-15 20:02:44.9196-05	\N	141203000	pain in audio form	soundcloud	f
jimmyrch/la-cucaracha-jimmy-romero-remix-2015	2020-01-15 20:11:58.658378-05	2020-01-15 20:11:58.658378-05	\N	241993000	La Cucaracha ( Jimmy Romero Remix 2015 ) ( Electro Pop )	soundcloud	f
djchriz1/la-cucaracha-csl-remix-jadiel	2020-01-15 20:12:07.565507-05	2020-01-15 20:12:07.565507-05	\N	181855000	La cucaracha (CSL Remix) - Jadiel	soundcloud	f
Ok9I6RCA4Y0	2019-09-12 18:44:43.747466-04	2019-09-12 18:44:43.747466-04	\N	126000000	【pop'n music peace】 祭ノ痕、君ヲ憶フ。 / BEMANI Sound Team "猫叉Master"	youtube	f
AWO_nVJSTww	2019-09-12 18:54:02.206584-04	2019-09-12 18:54:02.206584-04	\N	126000000	【jubeat saucer fulfill】 Scars of FAUNA / 猫叉Master	youtube	f
CWnYIb2lqpo	2019-09-12 19:45:52.974687-04	2019-09-12 19:45:52.974687-04	\N	228000000	Another Day of Sun - La La Land (Original Motion Picture Soundtrack)	youtube	f
e757WWZabeI	2019-09-12 23:59:52.181668-04	2019-09-12 23:59:52.181668-04	\N	90000000	K.K. Slider - Bloody Stream	youtube	f
Lk7t7m8uXgg	2019-09-13 17:16:44.404456-04	2019-09-13 17:16:44.404456-04	\N	273000000	【東方ボーカル】 「DESTRUCTION A to Z」 【SOUND HOLIC】	youtube	f
LyuB6PWUPz8	2019-09-13 17:17:25.336608-04	2019-09-13 17:17:25.336608-04	\N	287000000	【東方Vocal／Eurobeat】 WANNA BE CRAZY PRINCESS 「SOUND HOLIC」	youtube	f
4O3xPxwaj7k	2019-09-13 20:45:18.488832-04	2019-09-13 20:45:18.488832-04	\N	286000000	【東方ボーカル】 「狂響のフォーチュネットポルカ」 【森羅万象】 【Subbed】	youtube	f
Qu_OzBsgRcI	2019-09-13 20:45:39.391264-04	2019-09-13 20:45:39.391264-04	\N	236000000	【東方Vocal／Electro Pop】 Real or Fake 「ShinRa-Bansho」[JP Subs]	youtube	f
TPjAsus_bZo	2019-09-13 20:45:58.347734-04	2019-09-13 20:45:58.347734-04	\N	294000000	【東方ヴォーカルPV】無間嫉妬劇場『666』【森羅万象公式】	youtube	f
X3iG7JFlpvs	2019-09-14 13:15:15.868156-04	2019-09-14 13:15:15.868156-04	\N	280000000	Endless Tears feat CLIFF EDGE - Love is a beautiful Pain中村舞子自制日文字幕	youtube	f
3Cl_kAngXhI	2019-09-14 15:57:36.586508-04	2019-09-14 15:57:36.586508-04	\N	263000000	黃美婷 Meiting《 住在天狼星的那個人 》Lyric Video	youtube	f
jyEBnwDpQZk	2019-09-14 15:57:47.704574-04	2019-09-14 15:57:47.704574-04	\N	281000000	黃美婷 Meiting【淡水的淡水魚 The Freshwater Fish of Tamsui】完整試聽版	youtube	f
wbEl2a2MPQU	2019-09-14 15:57:54.698076-04	2019-09-14 15:57:54.698076-04	\N	264000000	黃美婷 Meiting【壞人】Official Music Video	youtube	f
juVRCPXUsEQ	2019-09-14 17:03:41.385626-04	2019-09-14 17:03:41.385626-04	\N	80000000	The Tower	youtube	f
LNYWdBokAmQ	2019-09-14 17:04:32.439462-04	2019-09-14 17:04:32.439462-04	\N	355000000	01 Rise of Iron (Destiny: Rise of Iron Original Soundtrack)	youtube	f
trVBMwpUa_I	2019-09-14 18:14:38.884846-04	2019-09-14 18:14:38.884846-04	\N	249000000	Honors - Valleys	youtube	f
jcNIO2mliuE	2019-09-14 18:14:51.987095-04	2019-09-14 18:14:51.987095-04	\N	199000000	New Slow	youtube	f
iDTaiRoerIw	2019-09-14 18:20:15.562596-04	2019-09-14 18:20:15.562596-04	\N	182000000	You and Me	youtube	f
9Ke4480MicU	2019-09-14 18:25:20.249266-04	2019-09-14 18:25:20.249266-04	\N	183000000	Julia Michaels - Issues	youtube	f
FifGMifUfW8	2019-09-14 19:56:55.277677-04	2019-09-14 19:56:55.277677-04	\N	437000000	Monk Maz Koshia (The Champions' Ballad) - The Legend of Zelda: Breath of the Wild Soundtrack	youtube	f
cOT_OxGEv0c	2019-09-15 20:15:11.787764-04	2019-09-15 20:15:11.787764-04	\N	280000000	The End - Minecraft	youtube	f
eze-gane/la-cucaracha-remix	2020-01-15 20:12:16.80771-05	2020-01-15 20:12:16.80771-05	\N	30278000	La Cucaracha Remix	soundcloud	f
el-conejo-pro/la-cucaracha-dj-cleber-mix-remix	2020-01-15 20:12:26.104522-05	2020-01-15 20:12:26.104522-05	\N	258325000	La Cucaracha Dj Cleber Mix (Remix)	soundcloud	f
6ISEzLP4tsA	2020-01-15 20:12:46.082375-05	2020-01-15 20:12:46.082375-05	\N	184000000	La Cucaracha	youtube	f
nyQjhPUgZuU	2020-01-15 20:13:23.949092-05	2020-01-15 20:13:23.949092-05	\N	276000000	PITBULL and LADY GAGA sing "LA CUCARACHA"	youtube	f
Kl66idSRkUg	2020-01-15 20:13:35.873898-05	2020-01-15 20:13:35.873898-05	\N	227000000	La Cucaracha (Party Remix) | Zumba | Dance Fitness | DBRK Crew	youtube	f
wLsU6EjvQ9M	2020-01-15 20:13:43.444129-05	2020-01-15 20:13:43.444129-05	\N	234000000	La Cucaracha   Party Remix	youtube	f
Z-_h4Y_Zvvk	2020-01-15 20:13:45.589834-05	2020-01-15 20:13:45.589834-05	\N	258000000	La Cucaracha Dj Cleber Mix (Remix)	youtube	f
JCrnRLV5slc	2020-01-15 20:22:58.641299-05	2020-01-15 20:22:58.641299-05	\N	44000000	I love you and I miss you	youtube	f
smug-memeing-doggo/i-was-really-bored-today	2020-01-15 20:45:52.412057-05	2020-01-15 20:45:52.412057-05	\N	82397000	I was really bored today	soundcloud	f
krDxhnaKD7Q	2020-01-15 20:54:45.637658-05	2020-01-15 20:54:45.637658-05	\N	93000000	The Lick	youtube	f
fwNGR792Ifk	2020-01-15 21:14:03.127813-05	2020-01-15 21:14:03.127813-05	\N	291000000	Toto - Africa (Vocals 1 Step Out of Key & Off Beat)	youtube	f
JRMOMjCoR58	2020-01-15 21:20:43.374571-05	2020-01-15 21:20:43.374571-05	\N	3604000000	Pharrell Williams - Happy (1AM)	youtube	f
1yHbAhFnfrA	2020-01-15 21:26:15.963173-05	2020-01-15 21:26:15.963173-05	\N	72000000	Funny Egyptian orchestra fail | Putin visits Egypt | Russian national anthem fail	youtube	f
fastfouriertransform/bruhian	2020-01-15 22:10:54.536521-05	2020-01-15 22:10:54.536521-05	\N	66141999	Bruhian	soundcloud	f
fastfouriertransform/astro	2020-01-15 22:12:05.493441-05	2020-01-15 22:12:05.493441-05	\N	83331000	astro	soundcloud	f
Vwo1sTdZi0g	2020-01-15 22:55:09.824031-05	2020-01-15 22:55:09.824031-05	\N	303000000	Il vento d'orifto	youtube	f
PEAuoJRVgE8	2020-01-15 22:59:39.608048-05	2020-01-15 22:59:39.608048-05	\N	220000000	Kero Kero Bonito - When the Fires Come	youtube	f
HGKQNetK9pk	2020-01-16 16:04:56.810029-05	2020-01-16 16:04:56.810029-05	\N	145000000	every single time hank hill threatens to kick someone's ass	youtube	f
JhbwsFqNxks	2020-01-16 16:09:49.042716-05	2020-01-16 16:09:49.042716-05	\N	79000000	RUDY!	youtube	f
Zmd43wV2Ko4	2020-01-16 16:16:00.089215-05	2020-01-16 16:16:00.089215-05	\N	138000000	Terraria Soundtrack; 01- Overworld Day	youtube	f
uKxWP56VStM	2020-01-16 16:36:19.340032-05	2020-01-16 16:36:19.340032-05	\N	406000000	Jeremy Zucker - all the kids are depressed	youtube	f
12vh55_1ul8	2020-01-16 16:45:08.793463-05	2020-01-16 16:45:08.793463-05	\N	232000000	BASSHUNTER - DOTA	youtube	f
XAokZ3qZoes	2020-01-16 16:46:10.756087-05	2020-01-16 16:46:10.756087-05	\N	155000000	DJ Taj - Caillou Anthem (feat. DJ Flex)	youtube	f
kAlUs6fsTQA	2020-01-16 16:46:28.666088-05	2020-01-16 16:46:28.666088-05	\N	145000000	CAILLOU THEME SONG REMIX [PROD. BY ATTIC STEIN] ( BASS BOOSTED )	youtube	f
RVjv2SUoQmU	2020-01-16 17:32:39.408004-05	2020-01-16 17:32:39.408004-05	\N	304000000	スピカ	youtube	f
dmQAlkaRTfw	2020-01-16 17:32:41.266856-05	2020-01-16 17:32:41.266856-05	\N	276000000	Black Is The Color Of My True Love's Hair - Avi Kaplan & Peter Hollens (HD LYRICS VIDEO)	youtube	f
mo990dvtrf4	2020-01-16 17:42:19.033944-05	2020-01-16 17:42:19.033944-05	\N	221000000	[I Guess I] Miss You	youtube	f
aliensexist3/flamingo-but-its-megalovania	2020-01-16 18:13:57.213342-05	2020-01-16 18:13:57.213342-05	\N	32601999	Flamingo but it's Megalovania	soundcloud	f
kill-caustic/get-spooky	2020-01-16 18:50:36.63045-05	2020-01-16 18:50:36.63045-05	\N	171482000	Get Spooky	soundcloud	f
matrixmariox/slide-it-off	2020-01-16 18:58:07.928648-05	2020-01-16 18:58:07.928648-05	\N	164350000	Slide It Off	soundcloud	f
radioactium/experimental-memeing	2020-01-16 19:00:52.764576-05	2020-01-16 19:00:52.764576-05	\N	208189000	experimental memeing	soundcloud	f
dabunky/that-hip-new-meme-those-boys-are-talking-about-today	2020-01-16 19:04:53.35574-05	2020-01-16 19:04:53.35574-05	\N	175950000	That Hip New Meme Those Boys Are Talking About Today	soundcloud	f
sphallolalia/tm06	2020-01-16 19:08:49.808495-05	2020-01-16 19:08:49.808495-05	\N	184283000	TM06	soundcloud	f
thesqrtminus1/bassline-fuck-bees	2020-01-16 19:14:16.231245-05	2020-01-16 19:14:16.231245-05	\N	253620000	Bassline Fuck Bees	soundcloud	f
OYa5aQb3YGE	2020-01-16 19:23:12.124249-05	2020-01-16 19:23:12.124249-05	\N	86000000	Dragonzball P (Dragonball Z Parody) - Oney Cartoons	youtube	f
7pSmhZFbCy0	2020-01-16 19:28:21.999162-05	2020-01-16 19:28:21.999162-05	\N	197000000	Dragonzball PeePee (Dragonball Z Parody Animation) - Oney Cartoons	youtube	f
ritzcookies/welcome-to-the-soulja-parade	2020-01-16 19:39:14.595987-05	2020-01-16 19:39:14.595987-05	\N	321780000	Welcome To The Soulja Parade	soundcloud	f
untitledd/shrek-1-vs-shrek-2	2020-01-16 19:44:04.759179-05	2020-01-16 19:44:04.759179-05	\N	157715000	Shrek 1 vs. Shrek 2	soundcloud	f
qaWr8dcQ55c	2020-01-16 19:46:25.057801-05	2020-01-16 19:46:25.057801-05	\N	231000000	Umeri - Paranoia	youtube	f
MlW7T0SUH0E	2020-01-16 19:47:34.114153-05	2020-01-16 19:47:34.114153-05	\N	168000000	El Chombo - Chacarron (Official Video)	youtube	f
chimeric/just-add-some-chacarron	2020-01-16 19:54:17.231815-05	2020-01-16 19:54:17.231815-05	\N	38246000	Just add some chacarron	soundcloud	f
-XgNFLo5WOI	2020-01-16 22:38:29.384989-05	2020-01-16 22:38:29.384989-05	\N	202000000	el sonidito (ruidito) hechizeros band	youtube	f
S4Gc34IQpYw	2020-01-16 22:44:35.960579-05	2020-01-16 22:44:35.960579-05	\N	112000000	[HQ] Call of Duty Black Ops - Zombies Theme - Piano tutorial ( Synthesia )	youtube	f
a1qaWZ-UjXw	2020-01-16 22:45:26.401099-05	2020-01-16 22:45:26.401099-05	\N	360000000	[HQ 1080p] Call of Duty Black Ops Zombie Menu Song - Damned + Download link	youtube	f
WQYN2P3E06s	2020-01-17 21:42:21.855138-05	2020-01-17 21:42:21.855138-05	\N	239000000	Christopher Tin - Sogno di Volare ("The Dream of Flight") (Civilization VI Main Theme)	youtube	f
IJiHDmyhE1A	2020-01-17 21:45:00.035316-05	2020-01-17 21:45:00.035316-05	\N	215000000	Christopher Tin - Baba Yetu (Official Music Video)	youtube	f
3gbZUbuSrw8	2020-01-17 21:46:01.826562-05	2020-01-17 21:46:01.826562-05	\N	320000000	Civilization V: Main Theme Song	youtube	f
QJ_YUJ4vXvA	2020-01-17 21:52:17.078678-05	2020-01-17 21:52:17.078678-05	\N	217000000	Civilization V: Brave New World OST - Intro Music	youtube	f
AFcFCKShYN0	2020-01-18 12:09:23.87073-05	2020-01-18 12:09:23.87073-05	\N	206000000	Tchami & Ibranovski - Omega	youtube	f
jU8q9E6Zhx8	2020-01-18 12:09:50.357648-05	2020-01-18 12:09:50.357648-05	\N	234000000	Tchami - Promesses (Pep & Rash Bootleg)	youtube	f
y2kim7aDxhg	2020-01-18 12:10:11.783014-05	2020-01-18 12:10:11.783014-05	\N	174000000	Pep & Rash - Underground	youtube	f
bNVoGCrfAe0	2020-01-18 12:10:49.311242-05	2020-01-18 12:10:49.311242-05	\N	208000000	Our Psych - Misae	youtube	f
DE4vKTzTrRE	2020-01-18 12:11:06.41862-05	2020-01-18 12:11:06.41862-05	\N	184000000	Japanese Type Beat - ''Sakura''	youtube	f
4itRDAjN1q0	2020-01-18 12:13:35.209355-05	2020-01-18 12:13:35.209355-05	\N	227000000	Japanese Type Beat - ''Kanji''	youtube	f
lpWruHm3VBQ	2020-01-18 12:13:42.917138-05	2020-01-18 12:13:42.917138-05	\N	262000000	Kingdom Hearts Type Beat - ''Sora''	youtube	f
29nrdX__igI	2020-01-18 12:13:59.024421-05	2020-01-18 12:13:59.024421-05	\N	203000000	Chinese Type Beat - ''Shangxin''	youtube	f
P8tPY4wfBH8	2020-01-18 12:14:05.093776-05	2020-01-18 12:14:05.093776-05	\N	253000000	Final Fantasy Type Beat - ''Cloud''	youtube	f
O0zj0BzFPn8	2020-01-18 12:14:10.700137-05	2020-01-18 12:14:10.700137-05	\N	222000000	Brazilian Type Beat - ''Visao''	youtube	f
VSZ4HwlUSXU	2020-01-18 12:14:32.812297-05	2020-01-18 12:14:32.812297-05	\N	289000000	Quavo x Swae Lee Type Beat - ''Sachi''	youtube	f
vLXS0EGwCZg	2020-01-18 12:14:58.766562-05	2020-01-18 12:14:58.766562-05	\N	249000000	Haywyre - Smooth Criminal [Remix]	youtube	f
gqELqRCnW6g	2019-09-16 21:14:52.613165-04	2019-09-16 21:14:52.613165-04	\N	243000000	♪ Screw the Nether (Moves Like Jagger Parody)	youtube	f
czTksCF6X8Y	2019-09-16 21:41:10.574743-04	2019-09-16 21:41:10.574743-04	\N	88000000	Spider-Man 2: The Game Pizza Theme	youtube	f
Of7UXWV-9NE	2019-09-16 22:29:48.826486-04	2019-09-16 22:29:48.826486-04	\N	190000000	Crab Rave but if you know what my channel is, you'd know what's gonna happen	youtube	f
hyZf_Re6p7Y	2019-09-16 22:33:17.183169-04	2019-09-16 22:33:17.183169-04	\N	91000000	Sans default dance - Driftveil City & Megalovania	youtube	f
IZJnKK1NbiA	2019-09-16 23:12:53.866449-04	2019-09-16 23:12:53.866449-04	\N	248000000	Wii Shop Channel - Super Smash Bros. UItimate	youtube	f
mszCJSB02_8	2019-09-16 23:50:27.09024-04	2019-09-16 23:50:27.09024-04	\N	328000000	Showdown - Pendulum [HQ]	youtube	f
Y8JEMFlJfWM	2019-09-17 19:26:36.427548-04	2019-09-17 19:26:36.427548-04	\N	164000000	Every Old Town Road remix played at once	youtube	f
GjjZacZSWT4	2019-09-17 19:34:50.765058-04	2019-09-17 19:34:50.765058-04	\N	21000000	i learnt 3D animation to make this 1 video	youtube	f
9cQYj_tFNgA	2019-09-17 19:38:49.92182-04	2019-09-17 19:38:49.92182-04	\N	219000000	Revenge (Creeper, Aw Man) Minecraft Parody in 20+ VOICES	youtube	f
Rf9PClQKOmg	2019-09-17 19:41:51.195397-04	2019-09-17 19:41:51.195397-04	\N	239000000	It's a Cold and It's a Broken Waluigi Sorenova	youtube	f
Wu52jEojafA	2019-09-17 20:00:13.123162-04	2019-09-17 20:00:13.123162-04	\N	96000000	Desiigner - PK Fire	youtube	f
dAaD20RXEu0	2019-09-17 20:00:29.133672-04	2019-09-17 20:00:29.133672-04	\N	129000000	PK Fire Mixtape - Ness feat  Shulk and Captain Falcon	youtube	f
qsusaHuYvZU	2019-09-17 20:00:46.500801-04	2019-09-17 20:00:46.500801-04	\N	134000000	Watch Me PK Fire	youtube	f
yFSWTgAYxNo	2019-09-17 20:23:52.923316-04	2019-09-17 20:23:52.923316-04	\N	140000000	gas gas gas but every other beat is missing [CC]	youtube	f
l7eAkYo0d3w	2019-09-17 20:38:47.129779-04	2019-09-17 20:38:47.129779-04	\N	47000000	PK Bling	youtube	f
J2fRCQoxf3w	2019-09-17 20:47:25.788868-04	2019-09-17 20:47:25.788868-04	\N	133000000	[YTP] Bruno's Uptown Rectal Cleansing Sing-along PSA	youtube	f
RbI_bU00koU	2019-09-17 20:52:57.225817-04	2019-09-17 20:52:57.225817-04	\N	763000000	(ASMR) Welcome to the Cum Zone	youtube	f
aRq0HbUkXec	2019-09-18 17:34:20.368595-04	2019-09-18 17:34:20.368595-04	\N	39000000	MEGALOVANIA but it's just beat 1	youtube	f
Pl3-MdBAa9Y	2019-09-18 20:53:24.147687-04	2019-09-18 20:53:24.147687-04	\N	232000000	ShockOne - Bleed Black (feat. Cruz Patterson) (Official Audio)	youtube	f
DcZ2CSjU7OU	2019-09-18 21:32:00.143005-04	2019-09-18 21:32:00.143005-04	\N	118000000	DELTARUNE - THE WORLD REVOLVING (Repaint Mix)	youtube	f
_lK4cX5xGiQ	2019-09-18 22:05:41.272331-04	2019-09-18 22:05:41.272331-04	\N	293000000	Tenacious D - Tribute (Video)	youtube	f
O1vAXwizf04	2019-09-20 17:45:33.886853-04	2019-09-20 17:45:33.886853-04	\N	600000000	discord ping noise for 10 mins	youtube	f
efKjFsRe0p4	2019-09-20 18:45:50.024809-04	2019-09-20 18:45:50.024809-04	\N	276000000	【東方】SOUND HOLIC『WORLD DOMINATION』	youtube	f
IzmEH1RqpRY	2019-09-20 20:03:06.132931-04	2019-09-20 20:03:06.132931-04	\N	112000000	Derek comes with kitchen gun	youtube	f
neAMkgYta9M	2020-01-18 12:15:18.922938-05	2020-01-18 12:15:18.922938-05	\N	243000000	[Electronic] - Haywyre - Sculpted [Monstercat FREE Release]	youtube	f
HM_sTnIut60	2020-01-18 12:17:13.681334-05	2020-01-18 12:17:13.681334-05	\N	236000000	[Glitch Hop or 110BPM] - Haywyre - Doppelgänger [Monstercat LP Release]	youtube	f
c1hPCKKJDLQ	2020-01-18 12:17:18.249681-05	2020-01-18 12:17:18.249681-05	\N	302000000	[Electronic] - Haywyre - Everchanging [Monstercat Release]	youtube	f
prp6VvryTX4	2020-01-18 12:39:35.61098-05	2020-01-18 12:39:35.61098-05	\N	243000000	[Glitch Hop / 110BPM] - Haywyre - Synergy [Monstercat Release]	youtube	f
xYK8eXmJPUw	2020-01-18 12:41:38.808476-05	2020-01-18 12:41:38.808476-05	\N	260000000	Protostar - Echoes Of The Past [Monstercat Release]	youtube	f
RhzJGZ5lzgM	2020-01-18 12:41:44.196698-05	2020-01-18 12:41:44.196698-05	\N	285000000	[Glitch Hop] - Protostar & Draper - Chrysalis [Monstercat Release]	youtube	f
jV7jmUfGiK4	2020-01-18 12:41:48.501908-05	2020-01-18 12:41:48.501908-05	\N	260000000	[Glitch Hop] - Volant - Full Circle [Monstercat Release]	youtube	f
exFVjpFRvq4	2020-01-18 12:41:54.782417-05	2020-01-18 12:41:54.782417-05	\N	274000000	[Glitch Hop] - Protostar - Genesis [Monstercat Release]	youtube	f
jwvXM1jnUUM	2020-01-18 12:42:08.384022-05	2020-01-18 12:42:08.384022-05	\N	238000000	[Glitch Hop or 110BPM] - Falcon Funk - Pounce [Monstercat EP Release]	youtube	f
iamtchami/oliver-myb-tchami-remix/s-4jDmx?in=fastfouriertransform/sets/p1	2020-01-18 12:45:20.10916-05	2020-01-18 12:45:20.10916-05	\N	299156000	Oliver - MYB [Tchami Remix]	soundcloud	f
dreyvibez/ongoing-sleep-wiz-khalifa-20syl/s-4jDmx?in=fastfouriertransform/sets/p1	2020-01-18 12:45:21.782544-05	2020-01-18 12:45:21.782544-05	\N	220755000	Drey Vibez - Ongoing Sleep (Wiz Khalifa & 20syl)	soundcloud	f
pixl-music/esketit/s-4jDmx?in=fastfouriertransform/sets/p1	2020-01-18 12:45:22.089707-05	2020-01-18 12:45:22.089707-05	\N	207822000	LIL PUMP - ESKETIT (PIXL REMIX) FREE DOWNLOAD	soundcloud	f
YHxycdSF_uU	2020-01-18 12:49:29.564569-05	2020-01-18 12:49:29.564569-05	\N	241000000	Laura Wright - My Bonnie Lies Over The Ocean	youtube	f
IRD7WylAfkw	2020-01-18 12:56:28.141319-05	2020-01-18 12:56:28.141319-05	\N	153000000	【Chill】aKu - The Final Blow	youtube	f
NoSKBTZfI84	2020-01-18 12:56:36.466997-05	2020-01-18 12:56:36.466997-05	\N	179000000	Free Rap Instrumental - Get Lost	youtube	f
Psl3r4eKsp0	2020-01-18 12:56:46.799707-05	2020-01-18 12:56:46.799707-05	\N	205000000	"Samurai" 90s OLD SCHOOL BOOM BAP BEAT HIP HOP INSTRUMENTAL	youtube	f
ItuOvnrIPc8	2020-01-18 12:57:00.883969-05	2020-01-18 12:57:00.883969-05	\N	163000000	Lowkey - Yakuza	youtube	f
6g2-_72W4zs	2020-01-18 12:57:20.592942-05	2020-01-18 12:57:20.592942-05	\N	152000000	I'm a sheikh | Arabic | Ethnic | Trap beat | Instrumental	youtube	f
4Y0_w59QgsY	2020-01-18 12:57:33.751131-05	2020-01-18 12:57:33.751131-05	\N	180000000	[FREE] KEITH APE FT $UICIDEBOYS - "DEMONIC APE" TYPE BEAT PROD SANTOS SANTANA	youtube	f
U6y2ZgmXVxw	2020-01-17 16:38:20.279193-05	2020-01-17 16:38:20.279193-05	\N	199000000	high hopes but beats are swapped [CC]	youtube	f
5pF7cXo1qC0	2020-01-17 16:49:22.292179-05	2020-01-17 16:49:22.292179-05	\N	117000000	all i want for christmas is you but every other beat is missing [CC]	youtube	f
oGFXbLyK0e0	2020-01-17 18:27:15.867647-05	2020-01-17 18:27:15.867647-05	\N	36000000	Pollo Pollo Cocodrilo	youtube	t
_o70Km26r-c	2020-01-17 18:30:40.41404-05	2020-01-17 18:30:40.41404-05	\N	195000000	Pollo Cocodrilo full video uncut (reupload)	youtube	f
kn4BH1Ga4ss	2020-01-18 12:42:00.250526-05	2020-01-18 12:42:00.250526-05	\N	287000000	[Glitch Hop] - Draper - Inertia [Monstercat Release]	youtube	f
MuAGGZNfUkU	2020-01-17 19:47:32.386228-05	2020-01-17 19:47:32.386228-05	\N	285000000	Hans Zimmer - Time	youtube	f
s2_YDtKmsVA	2020-01-17 20:05:15.352038-05	2020-01-17 20:05:15.352038-05	\N	210000000	MAX - Gibberish (feat. Hoodie Allen) [Official Music Video - YTMAs]	youtube	f
V-XZcgDkO9o	2020-01-17 21:27:43.0856-05	2020-01-17 21:27:43.0856-05	\N	219000000	toad sings let it go	youtube	f
V_8E0QXzebc	2020-01-18 12:42:08.202952-05	2020-01-18 12:42:08.202952-05	\N	256000000	[Glitch Hop / 110BPM] - Haywyre - Back and Forth [Monstercat Release]	youtube	f
haywyre/mr-bill-cheya-haywyre-remix?in=fastfouriertransform/sets/p1	2020-01-18 12:45:21.338253-05	2020-01-18 12:45:21.338253-05	\N	262762999	Mr Bill - Cheyah (Haywyre Remix)	soundcloud	f
grillabeats/numb-1/s-4jDmx?in=fastfouriertransform/sets/p1	2020-01-18 12:45:21.969008-05	2020-01-18 12:45:21.969008-05	\N	287163000	Numb	soundcloud	f
grillabeats/gxng/s-4jDmx?in=fastfouriertransform/sets/p1	2020-01-18 12:45:22.445072-05	2020-01-18 12:45:22.445072-05	\N	207536000	GXNG	soundcloud	f
XfjWqRDFH2s	2020-01-18 12:57:58.487238-05	2020-01-18 12:57:58.487238-05	\N	212000000	Japanese Type Beat - ''Hosu''	youtube	f
u0d2SVoKD-8	2020-01-18 12:58:15.821518-05	2020-01-18 12:58:15.821518-05	\N	189000000	Roy Greco, Arpex & THB - Raindrops	youtube	f
4b1t6ZbUgdU	2020-01-18 12:58:42.934873-05	2020-01-18 12:58:42.934873-05	\N	236000000	Florian Picasso - Final Call (Mesto & Justin Mylo Remix)	youtube	f
FABmGWoScDk	2020-01-18 12:58:59.111045-05	2020-01-18 12:58:59.111045-05	\N	187000000	Tokyo Machine - OKAY [Monstercat Release]	youtube	f
xpqEeFk7gos	2020-01-18 13:32:44.261412-05	2020-01-18 13:32:44.261412-05	\N	278000000	[OFFICIAL VIDEO] Waving Through A Window - Pentatonix	youtube	f
E-L-jFdASyk	2020-01-18 14:44:01.107732-05	2020-01-18 14:44:01.107732-05	\N	21000000	A MAN HAS FALLEN INTO THE RIVER IN LEGO CITY	youtube	f
056FrH9wByc	2020-01-18 18:49:15.959749-05	2020-01-18 18:49:15.959749-05	\N	226000000	MIT Muses - Shake it Out (Florence and the Machine)	youtube	f
hcQKoWnCI8g	2020-01-18 18:49:45.965108-05	2020-01-18 18:49:45.965108-05	\N	222000000	MIT Muses - You Know My Name (Chris Cornell)	youtube	f
kReUY-cQvfg	2020-01-18 20:08:06.58144-05	2020-01-18 20:08:06.58144-05	\N	104000000	Bring Me To Life - Otamatone Cover	youtube	f
3774VI3cT5M	2019-09-24 23:17:46.956714-04	2019-09-24 23:17:46.956714-04	\N	329000000	Satisfied	youtube	f
u7_3xn3E-is	2019-09-25 00:02:50.070413-04	2019-09-25 00:02:50.070413-04	\N	223000000	FTISLAND - 未体験Future	youtube	f
Z-tTmSY4m4M	2020-01-18 12:57:44.023265-05	2020-01-18 12:57:44.023265-05	\N	247000000	Nujabes - Counting Stars	youtube	f
hJtIuvy21sY	2020-01-18 12:57:51.941835-05	2020-01-18 12:57:51.941835-05	\N	225000000	Nujabes - Another Reflection	youtube	f
HedRgN8qif8	2020-01-18 12:58:11.847942-05	2020-01-18 12:58:11.847942-05	\N	275000000	Savant - Elephant	youtube	f
q9teK21xSS4	2020-01-18 12:58:25.750683-05	2020-01-18 12:58:25.750683-05	\N	224000000	Dastic - Go Home	youtube	f
cbwMTSv1Cl8	2020-01-18 13:02:26.816807-05	2020-01-18 13:02:26.816807-05	\N	45000000	BRAIN POWHAA	youtube	f
tzyd1PBhE58	2020-01-18 13:17:53.408781-05	2020-01-18 13:17:53.408781-05	\N	164000000	EARFQUAKE x Boys Who Cry	youtube	f
ye5BuYf8q4o	2020-01-18 14:11:38.660481-05	2020-01-18 14:11:38.660481-05	\N	300000000	Lynyrd Skynyrd - Sweet Home Alabama	youtube	f
rTfa-9aCTYg	2020-01-18 14:21:42.500606-05	2020-01-18 14:21:42.500606-05	\N	188000000	ＳＵＮＤＡＹ ＳＣＨＯＯＬ	youtube	f
WklHOJwfjrw	2020-01-18 14:44:46.668508-05	2020-01-18 14:44:46.668508-05	\N	472000000	We are Number One but every time they say 'hey' a Lego City advert plays in it's entirity	youtube	f
1rwAvUvvQzQ	2020-01-18 17:58:15.219271-05	2020-01-18 17:58:15.219271-05	\N	579000000	[Official] Celeste Original Soundtrack - 03 - Resurrections	youtube	f
X_GlMUx5XXQ	2020-01-18 18:44:52.050187-05	2020-01-18 18:44:52.050187-05	\N	225000000	Big-Ass Rock, The Full Monty	youtube	f
Omlo9hwracY	2020-01-18 19:22:33.839935-05	2020-01-18 19:22:33.839935-05	\N	105000000	Holy Tony  - #SpongebobChaseFreestyle	youtube	f
-40fLtf9Hio	2020-01-18 20:56:58.352803-05	2020-01-18 20:56:58.352803-05	\N	340000000	VINXIS - Sidetracked Day (DnB)	youtube	f
D1PvIWdJ8xo	2020-01-18 21:11:54.007407-05	2020-01-18 21:11:54.007407-05	\N	222000000	[MV] IU(아이유) _ Blueming(블루밍)	youtube	f
L-winTOqpcA	2020-01-18 22:01:49.932703-05	2020-01-18 22:01:49.932703-05	\N	187000000	Main Heroine	youtube	f
1PUsih-V9P4	2020-01-18 22:11:02.516914-05	2020-01-18 22:11:02.516914-05	\N	501000000	Imperial Circus Dead Decadence - 黄泉より聴こゆ、皇国の燈と焔の少女。	youtube	f
raNGeq3_DtM	2020-01-18 22:18:21.555926-05	2020-01-18 22:18:21.555926-05	\N	290000000	Foreigner - 'I Want To Know What Love Is' [Official Music Video]	youtube	f
iBpYu20e8dM	2020-01-19 09:59:54.402126-05	2020-01-19 09:59:54.402126-05	\N	176000000	Nightcore - Em Poses A 100	youtube	f
IEuPDaA-Bys	2020-01-19 10:25:10.426144-05	2020-01-19 10:25:10.426144-05	\N	177000000	Nightcore - Listen To Your Heart	youtube	f
SNMVhl2VW28	2020-01-19 10:25:58.240994-05	2020-01-19 10:25:58.240994-05	\N	177000000	Nightcore - Here Comes The Rain Again	youtube	f
gVopIFyt5eU	2020-01-19 10:26:33.516699-05	2020-01-19 10:26:33.516699-05	\N	181000000	Nightcore - Always & Forever	youtube	f
fU3jfk-O7L0	2020-01-19 11:23:39.126673-05	2020-01-19 11:23:39.126673-05	\N	129000000	SPICETALE	youtube	f
XejVB_fba04	2020-01-19 12:52:07.525846-05	2020-01-19 12:52:07.525846-05	\N	220000000	Jonas Brothers - What A Man Gotta Do (Official Video)	youtube	f
SX_ViT4Ra7k	2020-01-19 13:12:16.679112-05	2020-01-19 13:12:16.679112-05	\N	274000000	米津玄師  MV「Lemon」	youtube	f
AtWBqB0_aTA	2020-01-19 16:40:14.059094-05	2020-01-19 16:40:14.059094-05	\N	138000000	Red Roses Too.gifv	youtube	f
omNhsOZVqHY	2019-09-29 13:54:44.686058-04	2019-09-29 13:54:44.686058-04	\N	313000000	【東方ボーカル】 「ハイペリオン」 【幽閉サテライト】	youtube	f
GxYo-xFTeAo	2019-09-29 14:09:32.675848-04	2019-09-29 14:09:32.675848-04	\N	178000000	【東方Orchestral／Symphonic】 さくらさくら　～ Japanize Dream... 「Melodic Taste」	youtube	f
zD0S1O-9SQI	2019-09-29 14:18:39.94936-04	2019-09-29 14:18:39.94936-04	\N	277000000	【東方Orchestral／Symphonic】 無何有の郷　～ Deep Mountain 「Melodic Taste」	youtube	f
ERbRjDFPFbw	2019-09-29 14:19:10.409514-04	2019-09-29 14:19:10.409514-04	\N	310000000	【東方ボーカル】 幽閉サテライト - 胸の中で誰かが	youtube	f
XcsiJ9PZ330	2019-09-29 21:18:54.89119-04	2019-09-29 21:18:54.89119-04	\N	218000000	"Megalovania" - An Undertale Arrangement of CaptainSparklez & TryHardNinja's Revenge	youtube	f
x0hYKGotu4I	2019-09-29 20:58:52.425842-04	2019-09-29 20:58:52.425842-04	\N	56000000	Country Roads but it's Country Toad	youtube	f
yxkvr83GWmQ	2019-10-11 15:50:28.296394-04	2019-10-11 15:50:28.296394-04	\N	43000000	wario dies in a car crash while listening to ed sheeran .mp3	youtube	f
-7__Iu-nB-4	2019-10-11 19:39:56.762019-04	2019-10-11 19:39:56.762019-04	\N	170000000	How to learn Tuvan throat singing. About sygyt style	youtube	f
lOfZLb33uCg	2019-10-11 19:43:17.008045-04	2019-10-11 19:43:17.008045-04	\N	204000000	"Weird" Al Yankovic - Amish Paradise (Official Parody of "Gangsta's Paradise")	youtube	f
0C2MCHP0A3Y	2019-10-11 19:43:53.11134-04	2019-10-11 19:43:53.11134-04	\N	482000000	avengers endgame but it's a meme	youtube	f
XJgmRYCweBc	2019-10-11 19:44:22.969134-04	2019-10-11 19:44:22.969134-04	\N	274000000	Mikhail Tal beats Kasparov in 17 Moves - 1 Month before his Death	youtube	f
3ejAMB3g_b8	2019-10-11 20:19:40.13411-04	2019-10-11 20:19:40.13411-04	\N	210000000	Finger Eleven - Paralyzer lyrics	youtube	f
Wan2REH1x9g	2019-10-11 21:06:43.837377-04	2019-10-11 21:06:43.837377-04	\N	194000000	POP/STARS 𝐯𝐬 MEGALOVANIA	youtube	f
qSJCSR4MuhU	2019-10-11 21:37:29.11366-04	2019-10-11 21:37:29.11366-04	\N	221000000	The Maccabeats - Candlelight - Hanukkah	youtube	f
oc0M1o8tuPo	2019-10-11 21:42:16.469624-04	2019-10-11 21:42:16.469624-04	\N	753000000	Indeterminate: the hidden power of 0 divided by 0	youtube	f
w-I6XTVZXww	2019-10-11 23:30:05.340505-04	2019-10-11 23:30:05.340505-04	\N	470000000	ASTOUNDING: 1 + 2 + 3 + 4 + 5 + ... = -1/12	youtube	f
_03wQecDt4U	2019-10-12 12:51:41.671006-04	2019-10-12 12:51:41.671006-04	\N	202000000	5 Seconds of Summer ‒ Teeth (Lyrics)	youtube	f
b1dFSWLJ9wY	2019-10-12 12:52:30.378813-04	2019-10-12 12:52:30.378813-04	\N	178000000	5 Seconds of Summer - Easier (Official Video)	youtube	f
iMBufjdTgJ4	2019-10-12 12:52:59.347169-04	2019-10-12 12:52:59.347169-04	\N	149000000	5 Seconds Of Summer - Lie To Me (Lyrics)	youtube	f
B3a4pqa4SQ0	2019-10-12 12:54:02.627488-04	2019-10-12 12:54:02.627488-04	\N	202000000	She Looks So Perfect	youtube	f
ABuexNuzUro	2019-10-12 12:54:15.567532-04	2019-10-12 12:54:15.567532-04	\N	218000000	TheFatRat & JJD - Prelude (VIP Edit)	youtube	f
XtlzvsV0P7M	2019-10-12 14:33:49.603265-04	2019-10-12 14:33:49.603265-04	\N	89000000	Fireflies but ALMOST every lyric is replaced with "You Would Not Believe Your Eyes"	youtube	f
OFDKTZo0IHM	2019-10-12 14:46:27.346077-04	2019-10-12 14:46:27.346077-04	\N	25000000	Main Theme - Bill Clinton	youtube	f
1Bix44C1EzY	2019-10-12 14:48:43.425743-04	2019-10-12 14:48:43.425743-04	\N	25000000	Congratulations!!!!	youtube	f
9DbXmreD_go	2019-10-12 14:53:18.470066-04	2019-10-12 14:53:18.470066-04	\N	144000000	Sex - Steve Harvey	youtube	f
Ov_7xPEjfKQ	2019-10-18 14:45:33.555921-04	2019-10-18 14:45:33.555921-04	\N	313000000	【東方ボーカル】 「愛憎EGOIST」 【C-CLAYS】	youtube	f
6q29ozuPa4c	2019-10-18 14:49:12.904962-04	2019-10-18 14:49:12.904962-04	\N	274000000	【藤原妹紅イメージ曲】 蘇る綺麗な真実 「幽閉サテライト」	youtube	f
yPLFxw33WPY	2019-10-18 14:50:41.095587-04	2019-10-18 14:50:41.095587-04	\N	210000000	【東方ボーカル】 無謀さえ美しく、華さえ灰になる 「幽閉サテライト」 【Subbed】	youtube	f
r4uJR_Sx6dM	2019-10-18 14:51:50.594103-04	2019-10-18 14:51:50.594103-04	\N	304000000	【東方ボーカル】幽閉少女アクティブNEETs - 胸の中で誰かが (Vocal Version)	youtube	f
d63GbD_3ugg	2019-10-18 14:52:36.404086-04	2019-10-18 14:52:36.404086-04	\N	256000000	【東方ボーカル】 幽閉サテライト - 宵の華	youtube	f
75DVZcFXa0w	2019-10-18 14:52:52.330573-04	2019-10-18 14:52:52.330573-04	\N	378000000	【東方ボーカル】 【凋叶棕】 絶対的一方通行　～Unreachable Message	youtube	f
5MFLJhrG1sc	2019-10-18 14:59:26.972702-04	2019-10-18 14:59:26.972702-04	\N	274000000	【東方ボーカル】 Amateras Records - Confront Justice	youtube	f
ryM4uMBclfM	2019-10-18 15:00:19.254173-04	2019-10-18 15:00:19.254173-04	\N	279000000	【東方ボーカル】 SOUND HOLIC - モラトリアム人形	youtube	f
zhGz0O8GGUk	2019-10-18 15:09:13.078112-04	2019-10-18 15:09:13.078112-04	\N	288000000	【東方Vocal／Hard Trance】 Endless Hell 「Shoujo Fractal」	youtube	f
YAmxDIKDEuM	2019-10-18 15:16:06.970356-04	2019-10-18 15:16:06.970356-04	\N	440000000	Through The Judgement and The Sins	youtube	f
sEteMtrbRcg	2019-10-18 15:33:39.266009-04	2019-10-18 15:33:39.266009-04	\N	99000000	Doof Bad Guy Cover v2	youtube	f
7p5tWONPBp0	2019-10-18 15:38:36.205043-04	2019-10-18 15:38:36.205043-04	\N	230000000	Hige Driver join. SELEN - 打打打打打打打打打打 [Dadadadadadadadadada]	youtube	f
DYzxMAyrEEM	2019-10-18 15:39:04.441426-04	2019-10-18 15:39:04.441426-04	\N	276000000	[Progressive House] - Project 46 - Reasons (feat. Andrew Allen) [Monstercat Release]	youtube	f
c2FB1_ohlek	2019-10-18 15:54:00.321126-04	2019-10-18 15:54:00.321126-04	\N	291000000	B.o.B ft. Hayley Williams - Airplanes (Feint Remix) HD	youtube	f
PbWzda2L8wA	2019-10-18 19:32:14.160182-04	2019-10-18 19:32:14.160182-04	\N	249000000	【東方ボーカル】 TatshMusicCircle - 蛍火	youtube	f
A_3wLp1nKkk	2019-10-18 19:32:44.166452-04	2019-10-18 19:32:44.166452-04	\N	26000000	Spookfrica	youtube	f
iUAYeN3Rp2E	2019-10-18 21:24:27.4979-04	2019-10-18 21:24:27.4979-04	\N	300000000	Chicago - 25 Or 6 To 4 (HD)	youtube	f
gxEPV4kolz0	2019-10-18 21:24:38.147764-04	2019-10-18 21:24:38.147764-04	\N	342000000	Billy Joel - Piano Man (Official Video)	youtube	f
t4QK8RxCAwo	2019-10-18 21:36:26.48772-04	2019-10-18 21:36:26.48772-04	\N	214000000	Boston - More Than a Feeling	youtube	f
edwk-8KJ1Js	2019-10-18 21:37:28.494453-04	2019-10-18 21:37:28.494453-04	\N	305000000	Boston - Peace of Mind (Official Audio)	youtube	f
GaH25Sghoqc	2019-10-18 21:37:54.38447-04	2019-10-18 21:37:54.38447-04	\N	275000000	Reelin' In The Years	youtube	f
SoduRTF9J-o	2019-10-18 21:38:13.334174-04	2019-10-18 21:38:13.334174-04	\N	255000000	Already Gone (Eagles 2013 Remaster)	youtube	f
Kwc77Jdhdz0	2019-10-18 23:13:39.175112-04	2019-10-18 23:13:39.175112-04	\N	17000000	Giorno's Theme but Party Rock is in the house tonight	youtube	f
N28OUyR96o0	2019-10-18 23:18:48.776879-04	2019-10-18 23:18:48.776879-04	\N	14000000	change da world my final message. Goodbye	youtube	f
AISjlp7mwvc	2019-10-18 23:27:20.353883-04	2019-10-18 23:27:20.353883-04	\N	243000000	Dubba Jonny - VIP Dubstep Tutorial - FULL LENGTH	youtube	f
NBJSO4cB4Rw	2019-10-18 23:29:31.458102-04	2019-10-18 23:29:31.458102-04	\N	240000000	Dubba Jonny - Not Another UKF Dubstep Tutorial (HQ - HD - FULL VERSION)	youtube	f
2aEBlLMyN_0	2019-10-18 23:38:24.695696-04	2019-10-18 23:38:24.695696-04	\N	316000000	Knife Party - LRAD	youtube	f
LSw7K4RpTHo	2019-10-18 23:48:10.140874-04	2019-10-18 23:48:10.140874-04	\N	291000000	[Trap] - Slippy - Restless (feat. Anna Yvette) [Monstercat EP Release]	youtube	f
evNPqHf8iUI	2019-10-18 23:48:19.386003-04	2019-10-18 23:48:19.386003-04	\N	318000000	[Trap] - Slips & Slurs - Vicimus [Restless / Vicimus EP]	youtube	f
Ey5GItze-BY	2019-11-03 13:09:55.289005-05	2019-11-03 13:09:55.289005-05	\N	71000000	All Star but it's a Bach chorale following the conventions of the Common Practice Period	youtube	f
KSUvZDtteJQ	2019-11-03 14:17:25.458659-05	2019-11-03 14:17:25.458659-05	\N	230000000	Lord Huron - The Night We Met (Six Sisters Acapella Cover)	youtube	f
UfO7Om-WvsU	2019-11-03 14:24:12.553729-05	2019-11-03 14:24:12.553729-05	\N	231000000	ABSRDST - Imaginary Friend	youtube	f
3-rfBsWmo0M	2019-11-03 22:20:32.546615-05	2019-11-03 22:20:32.546615-05	\N	137000000	えぐ	youtube	f
wo7jVduGj64	2019-11-04 12:22:03.507469-05	2019-11-04 12:22:03.507469-05	\N	269000000	Xeuphoria - Sky City	youtube	f
goeOUTRy2es	2019-11-04 13:10:27.35416-05	2019-11-04 13:10:27.35416-05	\N	631000000	Franz Liszt - Hungarian Rhapsody No.2 (Orchestra version)	youtube	f
IsKfdrWqW08	2019-11-04 16:20:28.517891-05	2019-11-04 16:20:28.517891-05	\N	314000000	Sweet Fat Bottomed Alabama (Queen + Lynyrd Skynyrd) Mashup	youtube	f
gx7ASpZEOms	2019-11-04 22:18:16.294913-05	2019-11-04 22:18:16.294913-05	\N	328000000	Mr Despacito	youtube	f
agp5RmNvs70	2019-11-04 22:22:03.942002-05	2019-11-04 22:22:03.942002-05	\N	108000000	Hit or Miss ft Despacito FULL SONG Remix (Official song)	youtube	f
6I21Nl6UQkY	2019-11-04 22:27:42.53435-05	2019-11-04 22:27:42.53435-05	\N	94000000	Boku no Pico OP: Koi wo Shiyou yo feat. Hatsune Miku [ dj-Jo Remix ]	youtube	f
Ct6BUPvE2sM	2019-11-04 22:31:55.193187-05	2019-11-04 22:31:55.193187-05	\N	154000000	PIKOTARO - PPAP (Pen Pineapple Apple Pen) (Long Version) [Official Video]	youtube	f
LoH1wPjtz6c	2019-11-04 22:32:13.241661-05	2019-11-04 22:32:13.241661-05	\N	263000000	NANI THE FUCK!!	youtube	f
nw_zs4T34VU	2019-11-04 22:42:09.910508-05	2019-11-04 22:42:09.910508-05	\N	87000000	BEANOS THEME SONG (EARRAPE)	youtube	f
0BUXyxS6wvs	2019-11-05 13:29:17.080032-05	2019-11-05 13:29:17.080032-05	\N	149000000	THANOSCOPTER - ENDGAME	youtube	f
6enN8Bjtubs	2019-11-05 19:17:46.842066-05	2019-11-05 19:17:46.842066-05	\N	204000000	[Official Audio] OOHYO 우효 / Papercut (Kor.)	youtube	f
S1AS0AiyzlE	2019-11-05 19:19:33.325231-05	2019-11-05 19:19:33.325231-05	\N	271000000	Maggie Rogers - Fallingwater (Audio)	youtube	f
WP3Pnag40AI	2019-11-05 19:41:30.242914-05	2019-11-05 19:41:30.242914-05	\N	211000000	LION	youtube	f
69Mbo-BJHAM	2019-11-05 19:41:40.542902-05	2019-11-05 19:41:40.542902-05	\N	240000000	The fifth season (다섯 번째 계절) (SSFWL)	youtube	f
yOkd326NYbk	2019-11-05 19:42:07.376274-05	2019-11-05 19:42:07.376274-05	\N	227000000	Oh My Girl - 04. 게릴라 Guerilla	youtube	f
DDysT5nWfNc	2019-11-05 19:42:47.319075-05	2019-11-05 19:42:47.319075-05	\N	208000000	[audio] 레드벨벳(Red Velvet) - Butterflies	youtube	f
pLuQ0MGLBXU	2019-11-05 20:07:41.126712-05	2019-11-05 20:07:41.126712-05	\N	186000000	Mura Masa - What If I Go? (Official Video)	youtube	f
BnC-cpUCdns	2019-11-08 22:09:19.601066-05	2019-11-08 22:09:19.601066-05	\N	248000000	Nichijou - Zzz	youtube	f
tLyRpGKWXRs	2019-11-08 22:19:44.245814-05	2019-11-08 22:19:44.245814-05	\N	59000000	giorno's theme but only the best part is in	youtube	f
9W6GNUXc9pU	2019-11-08 23:07:00.678-05	2019-11-08 23:07:00.678-05	\N	253000000	Fake It	youtube	f
Sf9vLUXZcC0	2019-11-09 02:02:11.165679-05	2019-11-09 02:02:11.165679-05	\N	372000000	Bikini Bottom Day	youtube	f
PGCFaZIeB3k	2019-11-09 14:58:16.141196-05	2019-11-09 14:58:16.141196-05	\N	199000000	Monsta X - WHO DO U LOVE? ft. French Montana	youtube	f
KuKVAK4I5r4	2019-11-10 00:50:40.00284-05	2019-11-10 00:50:40.00284-05	\N	169000000	Over The Rainbow	youtube	f
yntkIygfMJc	2019-11-10 00:58:09.092826-05	2019-11-10 00:58:09.092826-05	\N	199000000	Kokoro ga Sakebidasu OST ~ Anata no Namae Yobu yo	youtube	f
BT9EJNoXzYA	2019-11-10 00:58:30.049376-05	2019-11-10 00:58:30.049376-05	\N	157000000	Kokoro ga Sakebitagatterunda - Watashi no koe [Thai Sub]	youtube	f
BzwIMs78H8E	2019-11-10 01:25:00.618576-05	2019-11-10 01:25:00.618576-05	\N	166000000	6 AM - Dame Tu Cosita: The Game	youtube	f
fB8TyLTD7EE	2019-11-10 12:28:21.332186-05	2019-11-10 12:28:21.332186-05	\N	210000000	RISE (ft. The Glitch Mob, Mako, and The Word Alive) | Worlds 2018 - League of Legends	youtube	f
QpD7k6H8gc4	2019-11-10 13:20:51.226331-05	2019-11-10 13:20:51.226331-05	\N	296000000	Backstreet Boys - Everybody (Metal Cover)	youtube	f
aaLiLRVeaZA	2019-11-10 20:24:05.166518-05	2019-11-10 20:24:05.166518-05	\N	406000000	Metal Gear Solid Explained	youtube	f
avguXyJlM3Q	2019-11-16 19:08:10.13138-05	2019-11-16 19:08:10.13138-05	\N	168000000	I'm Sorry Bin Laden (Ms. Jackson Parody!) by Ned - Bubba the Love Sponge	youtube	f
Jr9Kaa1sycs	2019-11-16 19:09:27.571971-05	2019-11-16 19:09:27.571971-05	\N	164000000	Finest Girl (Bin Laden Song) - Uncensored Version	youtube	f
ypoupqeJc_4	2019-11-26 20:30:55.84196-05	2019-11-26 20:30:55.84196-05	\N	199000000	Blow My Speakers Up - SiIvaGunner: King for Another Day	youtube	f
d1lpqpBZX6E	2019-11-26 21:01:08.769116-05	2019-11-26 21:01:08.769116-05	\N	128000000	Ain't got rhythm but he actually doesn't have rhythm	youtube	f
gvFHvotIO_4	2019-11-26 21:35:07.723946-05	2019-11-26 21:35:07.723946-05	\N	177000000	Hotel Luigi - Booty Quest	youtube	f
AInvP6dn7qw	2019-11-26 21:43:45.89295-05	2019-11-26 21:43:45.89295-05	\N	205000000	Crazy Noisy Last Surprise (JoJo X Persona)	youtube	f
96UfxFoFUfM	2019-11-26 21:45:31.23417-05	2019-11-26 21:45:31.23417-05	\N	109000000	Giorno's theme but its a Touhou song	youtube	f
Sj9A-5VmDTE	2019-11-26 22:52:01.546784-05	2019-11-26 22:52:01.546784-05	\N	211000000	Nightcore - Be With You	youtube	f
tmvaUG31kX4	2019-11-26 23:17:03.376239-05	2019-11-26 23:17:03.376239-05	\N	214000000	Nightcore - Where Is The Love	youtube	f
Iv2Sd8phvAg	2019-11-26 23:17:56.8542-05	2019-11-26 23:17:56.8542-05	\N	167000000	Nightcore - Together We Are One	youtube	f
dFd3jSsCEMc	2019-11-26 23:20:17.544586-05	2019-11-26 23:20:17.544586-05	\N	251000000	Miku Rios - Nunca Me faltes	youtube	f
a15nUK87Tzo	2019-11-27 13:13:22.600249-05	2019-11-27 13:13:22.600249-05	\N	89000000	Every time Pitbull says Mr. Worldwide	youtube	f
XnQteXDFMY0	2019-11-27 14:33:13.416919-05	2019-11-27 14:33:13.416919-05	\N	334000000	鹿乃 - Stella-rium (Asterisk MAKINA Remix)	youtube	f
YRzDYzcw4Zc	2019-11-27 18:08:41.307278-05	2019-11-27 18:08:41.307278-05	\N	72000000	Shrek's Bizarre Adventure: Crazy Swampy Bizarre Star	youtube	f
PDeTO26fRVQ	2019-11-27 20:22:17.706235-05	2019-11-27 20:22:17.706235-05	\N	246000000	blackbear - idfc (Lyrics)	youtube	f
vp29Mx4uHVk	2019-12-04 13:43:06.918268-05	2019-12-04 13:43:06.918268-05	\N	217000000	Slider (Meow Mix) - Super Mario 64	youtube	f
p4lN7el3v2E	2019-12-04 13:44:09.170857-05	2019-12-04 13:44:09.170857-05	\N	305000000	Slider (PAL Version) - Super Mario 64	youtube	f
ZdRMKGbYEdo	2019-12-04 13:44:45.433394-05	2019-12-04 13:44:45.433394-05	\N	163000000	Slider (Beautiful Mix) - Super Mario Galaxy 2	youtube	f
3hDrIStazPw	2019-12-04 16:52:04.669995-05	2019-12-04 16:52:04.669995-05	\N	291000000	【東方ボーカル】 「Lunatic Kaleidoscope」 【GET IN THE RING】	youtube	f
pgul67PqOkg	2019-12-04 16:58:34.500303-05	2019-12-04 16:58:34.500303-05	\N	209000000	Friends Halation - The Rembrandts vs. Love Live!	youtube	f
Y5QGxgdoZE8	2019-12-04 18:20:55.215175-05	2019-12-04 18:20:55.215175-05	\N	239000000	【東方ボーカル】 「居るは居ないこの世界＜はこ＞。」 【SYNC.ART'S】	youtube	f
A1jZxkI9Dd4	2019-12-04 18:51:55.108276-05	2019-12-04 18:51:55.108276-05	\N	267000000	【SOUND HOLIC】『エアーマンが倒せない＜SOUND HOLIC Ver.＞』(feat.花たん)	youtube	f
tjJYxCxzVe4	2019-12-04 21:01:47.428852-05	2019-12-04 21:01:47.428852-05	\N	248000000	Music from Warbringers: Jaina	youtube	f
tzwXFGssmzo	2019-12-04 22:19:09.887478-05	2019-12-04 22:19:09.887478-05	\N	182000000	Foster the People - Pumped Up Kicks But It's the Drake and Josh Theme Song	youtube	f
MeXQBHLIPcw	2019-12-04 22:39:32.152434-05	2019-12-04 22:39:32.152434-05	\N	231000000	"Weird Al" Yankovic - I'll Sue Ya	youtube	f
29ghO9fbWfQ	2019-12-04 22:46:19.277282-05	2019-12-04 22:46:19.277282-05	\N	190000000	Technolepiep - SiIvaGunner: King for Another Day	youtube	f
L4kxomUj4t8	2019-12-05 01:08:15.412376-05	2019-12-05 01:08:15.412376-05	\N	263000000	You'll Cowards Don't Even Smoke Crack	youtube	f
LkZw9Ay81us	2019-12-05 18:58:57.762413-05	2019-12-05 18:58:57.762413-05	\N	69000000	Sugar - SiIvaGunner: King for Another Day	youtube	f
0ujxiMbucmQ	2019-12-05 19:05:30.719435-05	2019-12-05 19:05:30.719435-05	\N	233000000	HYPER ULTRA -CLIMAX- TRIAL - SiIvaGunner: King for Another Day	youtube	f
-cBwCfeyO5U	2019-12-05 19:10:04.856896-05	2019-12-05 19:10:04.856896-05	\N	210000000	Gas Pedal	youtube	f
OxLUP-XMqRM	2019-12-05 19:10:50.498448-05	2019-12-05 19:10:50.498448-05	\N	201000000	Calc Pedal (Gas Pedal Parody)	youtube	f
kFZKgf5WG0g	2019-12-05 23:44:51.949302-05	2019-12-05 23:44:51.949302-05	\N	269000000	Ken Ashcorp - Absolute Territory	youtube	f
OGXD61SapUM	2019-12-05 23:45:28.878642-05	2019-12-05 23:45:28.878642-05	\N	197000000	The Wanted - Chasing The Sun (Official Lyric Video)	youtube	f
mfPCFQfOnLg	2019-12-08 16:47:19.073447-05	2019-12-08 16:47:19.073447-05	\N	504000000	Are Hippos OP?	youtube	f
gWNWtbPEWw0	2019-12-08 20:56:27.145632-05	2019-12-08 20:56:27.145632-05	\N	17000000	Party Flamingo Anthem	youtube	f
9Xq5wQWbaFA	2019-12-08 20:56:34.725314-05	2019-12-08 20:56:34.725314-05	\N	26000000	Everywhere You Crawl	youtube	f
EQME1ga5B5k	2019-12-09 15:19:04.012966-05	2019-12-09 15:19:04.012966-05	\N	140000000	Rival Battle: Metal Sonic (Original ver.) "Stardust Speedway" - Sonic Generations	youtube	f
SpTv8dbq6mE	2019-12-10 01:10:47.689068-05	2019-12-10 01:10:47.689068-05	\N	321000000	Through the Fire and Snow Halation (Dragonforce Mashup)	youtube	f
4Q-QKhVDVJU	2019-12-10 01:20:34.028222-05	2019-12-10 01:20:34.028222-05	\N	28000000	Nunca_me_borres.dll	youtube	f
VkcgqdvJm-U	2019-12-10 01:24:09.987758-05	2019-12-10 01:24:09.987758-05	\N	147000000	Doctore Beatz - Marcianito 100% real no fake [ELECTRO REMIX]	youtube	f
EUntkrr-euU	2019-12-10 01:25:31.621968-05	2019-12-10 01:25:31.621968-05	\N	93000000	This Is Me/FubukiShirakami.The Greatest Showman	youtube	f
giS0BrfXUmM	2019-12-10 01:33:23.807115-05	2019-12-10 01:33:23.807115-05	\N	58000000	Top 10 Numbers from One through Ten!	youtube	f
Mhqn61HrLxM	2019-12-10 01:40:38.242143-05	2019-12-10 01:40:38.242143-05	\N	186000000	YUC'e - macaron moon	youtube	f
-2uWmdqh1nQ	2019-12-10 14:45:06.378472-05	2019-12-10 14:45:06.378472-05	\N	295000000	MegaSLOWvania (Undertale Megalovania Vaporwave)	youtube	f
U_aZ-s4N8bA	2019-12-10 14:45:44.889821-05	2019-12-10 14:45:44.889821-05	\N	1140000000	Undertale Megalovania - Slowed Down 800%	youtube	f
QspuCt1FM9M	2019-12-10 15:13:04.006821-05	2019-12-10 15:13:04.006821-05	\N	590000000	Justin Bieber 800% Slower	youtube	f
BVnMLsFnWpo	2019-12-10 16:55:38.499075-05	2019-12-10 16:55:38.499075-05	\N	205000000	SexyBack x Home Depot (Full Version)	youtube	f
skujMEjEYNc	2019-12-10 16:59:36.91907-05	2019-12-10 16:59:36.91907-05	\N	166000000	Livin' Off the Wall - SiIvaGunner: King for Another Day	youtube	f
MBveyfmUsyc	2019-12-10 19:02:05.764645-05	2019-12-10 19:02:05.764645-05	\N	166000000	Stage 2: Subway - New Ghostbusters 2	youtube	f
3m5qxZm_JqM	2019-12-10 19:15:31.087736-05	2019-12-10 19:15:31.087736-05	\N	128000000	Clarke and Dawe - The Front Fell Off	youtube	f
PVx6Mgit99I	2019-12-10 23:03:17.483324-05	2019-12-10 23:03:17.483324-05	\N	108000000	UH OH STINKY (but it's progressive house)	youtube	f
Nz0b4STz1lo	2019-12-11 01:49:48.099251-05	2019-12-11 01:49:48.099251-05	\N	456000000	Gustav Holst - The Planets - Jupiter, the Bringer of Jollity	youtube	f
TlJdaY0LjqE	2019-12-11 13:34:07.17722-05	2019-12-11 13:34:07.17722-05	\N	343000000	[Touhou Vocal] [RD-Sounds] Unprivileged Access (spanish & english subtitles)	youtube	f
1_D7kiOR9fA	2019-12-11 13:41:19.170651-05	2019-12-11 13:41:19.170651-05	\N	440000000	【東方Vocal／Traditional Rock】 「心綺楼」 「凋叶棕」 【ENG Subs】	youtube	f
Y76w22wmfY8	2019-12-11 14:14:46.296948-05	2019-12-11 14:14:46.296948-05	\N	110000000	Piece-Place Diablerie! - SiIvaGunner: King for Another Day	youtube	f
rrVht-WsDWY	2019-12-11 14:14:59.67143-05	2019-12-11 14:14:59.67143-05	\N	207000000	Stadium Rave A - SiIvagunner: King for Another Day	youtube	f
rfE7ZzDVysQ	2019-12-11 14:15:12.641162-05	2019-12-11 14:15:12.641162-05	\N	146000000	El Sonidito - SiIvaGunner: King for Another Day	youtube	f
js03KIM99mw	2019-12-11 14:16:07.891567-05	2019-12-11 14:16:07.891567-05	\N	146000000	I ❤ Mom - SiIvagunner: King for Another Day	youtube	f
e8rbAjn4W0E	2019-12-11 16:59:57.864227-05	2019-12-11 16:59:57.864227-05	\N	144000000	Lost Swamp (Combat) - Cadence of Hyrule: Crypt of the NecroDancer feat. The Legend of Zelda	youtube	f
7dQ1xiy-4hY	2019-08-20 00:11:55.495437-04	2019-08-20 00:11:55.495437-04	\N	197000000	LA Devotee	youtube	f
tfrJt2EPL58	2019-12-15 20:52:07.293744-05	2019-12-15 20:52:07.293744-05	\N	222000000	Harry Connick Jr. - Sleigh Ride (Audio)	youtube	f
QJ5DOWPGxwg	2019-12-15 20:52:37.278188-05	2019-12-15 20:52:37.278188-05	\N	207000000	Michael Bublé - It's Beginning To Look A Lot Like Christmas [Official HD Audio]	youtube	f
pvA7-EjaSPI	2019-12-15 20:52:56.910947-05	2019-12-15 20:52:56.910947-05	\N	207000000	Have Yourself A Merry Little Christmas (Remastered)	youtube	f
dL71eMc1blw	2019-12-15 20:53:19.685832-05	2019-12-15 20:53:19.685832-05	\N	175000000	Bing Crosby  - I'll Be Home For Christmas	youtube	f
_fh133ZO1AE	2019-12-15 20:53:35.449913-05	2019-12-15 20:53:35.449913-05	\N	305000000	Vince Guaraldi Trio - O Tannenbaum	youtube	f
WXERRcpXRiA	2019-12-15 20:53:54.699384-05	2019-12-15 20:53:54.699384-05	\N	115000000	I Wish You A Merry Christmas (Remastered 2006)	youtube	f
67MJh6baeM8	2019-12-15 20:54:15.138455-05	2019-12-15 20:54:15.138455-05	\N	157000000	Jackson 5 - Frosty The Snowman	youtube	f
fEHzYjuf5NA	2019-12-15 20:55:53.368435-05	2019-12-15 20:55:53.368435-05	\N	217000000	Deck The Halls - Mannheim Steamroller	youtube	f
ah-U9ECRZog	2019-12-15 20:57:49.65944-05	2019-12-15 20:57:49.65944-05	\N	155000000	Mariah Carey - Christmas (Baby Please Come Home) [audio] (Digital Video)	youtube	f
FhTnDaEmA5k	2019-12-15 20:58:12.161756-05	2019-12-15 20:58:12.161756-05	\N	166000000	Do You Hear What I Hear? (Remastered 2006)	youtube	f
ZRfLl5OEDy8	2019-12-15 20:58:35.767923-05	2019-12-15 20:58:35.767923-05	\N	180000000	Nat King Cole - O Holy Night	youtube	f
_O84uC5xZlU	2019-12-15 20:59:19.693272-05	2019-12-15 20:59:19.693272-05	\N	173000000	Paul Young - What Christmas Means To Me	youtube	f
3Avycrez66o	2019-12-15 20:59:41.467515-05	2019-12-15 20:59:41.467515-05	\N	258000000	Believe	youtube	f
KsCwiW3aFmQ	2019-12-15 23:15:48.799554-05	2019-12-15 23:15:48.799554-05	\N	5000000	Super Mario 64 ~ Thank you so much a-for-to playing my game! (Earrape)	youtube	f
I-oY8ZZ78LY	2019-12-16 14:30:30.498182-05	2019-12-16 14:30:30.498182-05	\N	84000000	sad kiwi hours	youtube	f
3rw36-ea1TQ	2019-12-16 14:30:44.057257-05	2019-12-16 14:30:44.057257-05	\N	172000000	Bon Voyage, Amigo - MOTHER 3	youtube	f
ty4wBfdNJrM	2019-12-16 14:35:54.189121-05	2019-12-16 14:35:54.189121-05	\N	216000000	Cirno’s Musical Playground - SiIvaGunner: King for Another Day	youtube	f
RklG6SprjMk	2019-12-16 14:38:19.916946-05	2019-12-16 14:38:19.916946-05	\N	217000000	The Turntable Turnabout - SiIvaGunner: King for Another Day	youtube	f
AscL48KP0Mg	2019-12-16 16:00:40.466533-05	2019-12-16 16:00:40.466533-05	\N	507000000	【東方ボーカル】 「MyonMyonMyonMyonMyon!」 【ShibayanRecords】【Subbed】	youtube	f
O6NvsM49N6w	2019-12-16 18:34:11.049445-05	2019-12-16 18:34:11.049445-05	\N	189000000	Nightcore - How To Be A Heartbreaker	youtube	f
WkLO8llyN64	2019-12-16 18:34:45.739271-05	2019-12-16 18:34:45.739271-05	\N	236000000	Nightstep - Shatter Me	youtube	f
HFZxZICjq68	2019-12-16 18:37:23.178121-05	2019-12-16 18:37:23.178121-05	\N	804000000	Avenged Sevenfold - Exist [Nightcore]	youtube	f
TiVIFMbwxOc	2019-12-16 18:49:17.274218-05	2019-12-16 18:49:17.274218-05	\N	221000000	Nightcore - God Is A Girl	youtube	f
DYS_qFWx7-M	2019-12-16 18:49:34.69762-05	2019-12-16 18:49:34.69762-05	\N	186000000	Meg & Dia - Monster (Nightcore Dubstep Remix)	youtube	f
kyNlImR4krs	2019-12-16 18:50:16.216417-05	2019-12-16 18:50:16.216417-05	\N	177000000	Angel of Darkness	youtube	f
-I0Pp-SMWdM	2019-12-16 18:50:34.419474-05	2019-12-16 18:50:34.419474-05	\N	185000000	Nightcore - Cocaine~	youtube	f
8ahN0f0r9JQ	2019-12-16 18:55:49.355557-05	2019-12-16 18:55:49.355557-05	\N	198000000	Get Scared Sarcasm Lyric Video Official	youtube	f
Ue3O7Y5rVcc	2019-12-16 20:12:17.620264-05	2019-12-16 20:12:17.620264-05	\N	369000000	Mr. Monokuma's Swing Lesson - SiIvaGunner: King for Another Day	youtube	f
Q9OiHXai7T4	2019-12-16 20:34:38.276069-05	2019-12-16 20:34:38.276069-05	\N	196000000	Nightcore - Revenge (Minecraft) - (Lyrics)	youtube	f
k_ZlggAJlJA	2019-12-16 20:54:25.088154-05	2019-12-16 20:54:25.088154-05	\N	150000000	Deemo - M2U & Nicode - Myosotis 中文字幕	youtube	f
2IA7QExh-NQ	2019-08-20 00:12:55.237255-04	2019-08-20 00:12:55.237255-04	\N	297000000	Ain't It Fun	youtube	f
UAlIq7BKNxg	2019-12-18 18:29:57.922398-05	2019-12-18 18:29:57.922398-05	\N	254000000	Mine All Day (Minecraft Music Video)	youtube	f
vOBKxUT9Da4	2019-12-18 18:33:34.476014-05	2019-12-18 18:33:34.476014-05	\N	341000000	Tenacious D "Beelzeboss" with lyrics	youtube	f
mXjNATmIruI	2019-12-18 18:47:00.41749-05	2019-12-18 18:47:00.41749-05	\N	192000000	Tenacious D Classico	youtube	f
0dMIjN18uMI	2019-12-19 23:12:29.17054-05	2019-12-19 23:12:29.17054-05	\N	194000000	USSR National Anthem: Be glorious, our free Swampland!	youtube	f
NAbC-4RNDtg	2019-12-19 23:17:49.244834-05	2019-12-19 23:17:49.244834-05	\N	85000000	Here comes Pacman Remix	youtube	f
nt9c0UeYhFc	2019-12-19 23:19:33.88673-05	2019-12-19 23:19:33.88673-05	\N	307000000	Repeat Stuff	youtube	f
iuF6CpML3IQ	2019-12-19 23:39:21.545384-05	2019-12-19 23:39:21.545384-05	\N	267000000	words, words, words.	youtube	f
5VoscbQA3lM	2019-12-19 23:39:56.939203-05	2019-12-19 23:39:56.939203-05	\N	191000000	Ironic- Bo Burnham [Lyrics]	youtube	f
w3nFWbRSYn8	2019-12-19 23:47:41.456157-05	2019-12-19 23:47:41.456157-05	\N	176000000	Bo Burnham- Kill Yourself lyric video	youtube	f
FAoCaAnsHPE	2019-12-19 23:51:43.200117-05	2019-12-19 23:51:43.200117-05	\N	212000000	[MV] Primary(프라이머리) _ ~42 (feat. SAM KIM, eSNa)(~42 (feat. 샘김 (SAM KIM), 에스나 (eSNa)))	youtube	f
KRB-iHGHSqk	2019-12-19 23:52:33.982898-05	2019-12-19 23:52:33.982898-05	\N	160000000	Shut The Fuck Up	youtube	f
hCX48lU-Q2o	2019-12-20 00:02:57.909379-05	2019-12-20 00:02:57.909379-05	\N	67000000	tuvan trap	youtube	f
UhRXn2NRiWI	2019-12-20 00:21:11.054853-05	2019-12-20 00:21:11.054853-05	\N	143000000	JUST DO IT!!! ft. Shia LaBeouf - Songify This	youtube	f
dKKvzPVNnR8	2019-12-20 00:21:23.752211-05	2019-12-20 00:21:23.752211-05	\N	285000000	Shia LaBeouf (CitoBeats Remix) - Rob Cantor	youtube	f
hAEQvlaZgKY	2019-12-20 00:21:41.934762-05	2019-12-20 00:21:41.934762-05	\N	111000000	Daft Labeouf - Harder, Better, Faster, Do it	youtube	f
ubYKC-GSN5A	2019-12-20 00:22:02.956858-05	2019-12-20 00:22:02.956858-05	\N	92000000	SHIA LABEOUF JUST DO IT- REMIX - WTFBrahh	youtube	f
wxB5lBauG9E	2019-12-21 16:19:44.859095-05	2019-12-21 16:19:44.859095-05	\N	199000000	SIRUP - Pool (Official Music Video)	youtube	f
xlDLd8MBkeE	2019-12-21 18:55:02.652095-05	2019-12-21 18:55:02.652095-05	\N	258000000	Lil' Wayne - A Milli (K Theory Remix)	youtube	f
zSzaplTFagQ	2019-12-21 18:55:34.385758-05	2019-12-21 18:55:34.385758-05	\N	308000000	All Eyez On Me	youtube	f
hI8A14Qcv68	2019-12-21 18:55:53.52882-05	2019-12-21 18:55:53.52882-05	\N	296000000	Nas - N.Y. State of Mind (Official Audio)	youtube	f
5qm8PH4xAss	2019-12-21 18:56:32.036171-05	2019-12-21 18:56:32.036171-05	\N	250000000	50 Cent - In Da Club (Int'l Version) [Official Video]	youtube	f
B5YNiCfWC3A	2019-12-21 18:56:54.445167-05	2019-12-21 18:56:54.445167-05	\N	231000000	Kendrick Lamar - Swimming Pools (Drank)	youtube	f
NLZRYQMLDW4	2019-12-21 18:57:02.36417-05	2019-12-21 18:57:02.36417-05	\N	286000000	Kendrick Lamar - DNA.	youtube	f
nbGmcSx8FNw	2019-12-22 21:32:15.166955-05	2019-12-22 21:32:15.166955-05	\N	212000000	Melanie Martinez - Pity Party (Audio)	youtube	f
6QIw1BQIvT4	2019-12-25 19:07:17.065222-05	2019-12-25 19:07:17.065222-05	\N	273000000	SHE'S A BAD MAMA JAMA / Carl Carlton	youtube	f
Y_kqDO0-RtI	2019-12-26 22:14:51.811654-05	2019-12-26 22:14:51.811654-05	\N	90000000	Thick Niggas and Anime Tiddies	youtube	f
bequiet	2019-08-19 23:57:48.896125-04	2019-08-19 23:57:48.896125-04	\N	3710000000	Please Be Quiet!	internal	f
YYob4uDjEKI	2019-08-19 23:57:54.216086-04	2019-08-19 23:57:54.216086-04	\N	235000000	Thomas the Tank Engine Theme Jazz Arrangement	youtube	f
GKzsktuqwyU	2019-08-19 23:57:54.514328-04	2019-08-19 23:57:54.514328-04	\N	246000000	Knife Party - Centipede	youtube	f
GJDNkVDGM_s	2019-08-19 23:57:59.093952-04	2019-08-19 23:57:59.093952-04	\N	54000000	there is no need to be upset	youtube	f
HguKyrS8oWM	2019-08-19 23:58:21.095216-04	2019-08-19 23:58:21.095216-04	\N	175000000	Childish Flamingo	youtube	f
XeBX7eKcM0A	2019-08-19 23:59:19.473762-04	2019-08-19 23:59:19.473762-04	\N	213000000	Bonfires Not Tragedies	youtube	f
Ga3I5DTIA-E	2019-08-20 00:00:09.941298-04	2019-08-20 00:00:09.941298-04	\N	136000000	Tom Jones - Whats New Pussycat - Lyrics	youtube	f
kWvbJsB0OBc	2019-08-20 00:00:37.981097-04	2019-08-20 00:00:37.981097-04	\N	118000000	Tom Jones -  "It's Not Unusual" (With Lyrics)	youtube	f
SHvhps47Lmc	2019-08-20 00:00:41.336075-04	2019-08-20 00:00:41.336075-04	\N	180000000	A Hat in Time OST [Seal the Deal] - Peace and Tranquility	youtube	f
kR0gOEyK6Tg	2019-08-20 00:02:08.56564-04	2019-08-20 00:02:08.56564-04	\N	223000000	Neil Cicierega - Crocodile Chop	youtube	f
vRDnnog0xG8	2019-08-20 00:02:53.059104-04	2019-08-20 00:02:53.059104-04	\N	298000000	19. Neil Cicierega - Piss	youtube	f
7jBViVCW8gk	2019-08-20 00:06:09.471338-04	2019-08-20 00:06:09.471338-04	\N	248000000	Drake-Childs Play (Lyrics)	youtube	f
kQ9EHL7ZM8Y	2019-08-20 00:06:37.883283-04	2019-08-20 00:06:37.883283-04	\N	166000000	[Mashup] Thomas the Tank Engine x Childish Gambino - Thomas the Bonfire	youtube	f
rPtAclahszs	2019-08-20 00:09:31.780973-04	2019-08-20 00:09:31.780973-04	\N	182000000	Sign	youtube	f
r8oVVx2QwZ0	2019-08-20 00:09:51.741764-04	2019-08-20 00:09:51.741764-04	\N	185000000	Vicodin	youtube	f
LjX9QGvqOpo	2019-08-20 00:09:55.962547-04	2019-08-20 00:09:55.962547-04	\N	189000000	Say Amen (Saturday Night)	youtube	f
nb6ou_k4OzM	2019-08-20 00:10:05.778715-04	2019-08-20 00:10:05.778715-04	\N	179000000	Dominic Fike "3 Nights" (Official Audio)	youtube	f
3hul2ugk2zw	2019-08-20 00:10:21.17632-04	2019-08-20 00:10:21.17632-04	\N	219000000	Dancing's Not a Crime	youtube	f
12PK_4YjKw4	2019-08-20 00:10:24.630382-04	2019-08-20 00:10:24.630382-04	\N	231000000	Sara Bareilles - Fire (Audio)	youtube	f
zRhNnEkX93M	2019-08-20 00:10:30.693601-04	2019-08-20 00:10:30.693601-04	\N	214000000	C'mon	youtube	f
7I34zOUZCXM	2019-08-20 00:10:41.659964-04	2019-08-20 00:10:41.659964-04	\N	213000000	Don't Threaten Me With a Good Time	youtube	f
bIyl9bCp6W4	2019-08-20 00:11:06.95112-04	2019-08-20 00:11:06.95112-04	\N	260000000	Cosmo Sheldrake - Come Along	youtube	f
sJRuvLwuF_4	2019-08-20 00:11:23.769204-04	2019-08-20 00:11:23.769204-04	\N	342000000	This Land	youtube	f
AgFnmc9A8yo	2019-08-20 00:11:46.231478-04	2019-08-20 00:11:46.231478-04	\N	236000000	Nails, Hair, Hips, Heels	youtube	f
txzDfAOeKPU	2019-08-20 00:13:09.78603-04	2019-08-20 00:13:09.78603-04	\N	179000000	BELAGANAS - WATCH	youtube	f
krPWs0FGsts	2019-08-20 00:13:46.8841-04	2019-08-20 00:13:46.8841-04	\N	212000000	Reese's Pieces	youtube	f
Vik1dtQ0eHc	2019-08-20 00:13:48.652239-04	2019-08-20 00:13:48.652239-04	\N	258000000	Can't Hold Us (feat. Ray Dalton)	youtube	f
BJSlPqAXeOs	2019-08-20 00:14:14.096758-04	2019-08-20 00:14:14.096758-04	\N	207000000	Roman Lewis - "Ways" (Official Video)	youtube	f
nzoInBonzq8	2019-08-20 00:14:14.115975-04	2019-08-20 00:14:14.115975-04	\N	223000000	Young and Menace	youtube	f
LXiEwDnFzrk	2019-08-20 00:14:24.988127-04	2019-08-20 00:14:24.988127-04	\N	357000000	Clint Eastwood - Gorillaz Lyrics	youtube	f
PN-zHSvDc1g	2019-08-20 00:14:26.612649-04	2019-08-20 00:14:26.612649-04	\N	191000000	Sucker is a new and original song which doesn't plagiarize at all	youtube	f
Ys-yxpNRGwg	2019-08-20 00:15:12.792808-04	2019-08-20 00:15:12.792808-04	\N	217000000	Fall Out Boy - Wilson (Expensive Mistakes) [Lyrics w/Studio version audio]	youtube	f
V5M2WZiAy6k	2019-08-20 00:15:21.066995-04	2019-08-20 00:15:21.066995-04	\N	190000000	Imagine Dragons - Natural (Lyrics)	youtube	f
GJuAbqAHfKI	2019-08-20 00:15:27.557966-04	2019-08-20 00:15:27.557966-04	\N	180000000	Winnetka Bowling League - Kombucha (BRKLYN Remix)	youtube	f
Xr1rwzTc4pQ	2019-08-20 00:15:53.633421-04	2019-08-20 00:15:53.633421-04	\N	227000000	The Ballad of Mona Lisa	youtube	f
PHvkVL55jmQ	2019-08-20 00:16:02.212876-04	2019-08-20 00:16:02.212876-04	\N	223000000	grandson: Is This What You Wanted [Official Audio]	youtube	f
XaCrQL_8eMY	2019-08-20 00:16:30.029991-04	2019-08-20 00:16:30.029991-04	\N	201000000	Lizzo - Juice (Official Video)	youtube	f
WmEmsWsTKQk	2019-08-20 00:17:03.037498-04	2019-08-20 00:17:03.037498-04	\N	174000000	Truth Hurts - Lizzo (lyrics)	youtube	f
P00HMxdsVZI	2019-08-20 00:17:16.107091-04	2019-08-20 00:17:16.107091-04	\N	182000000	Lizzo - Truth Hurts (Official Video)	youtube	f
fZ1OGXxb6PM	2019-08-20 00:18:08.42644-04	2019-08-20 00:18:08.42644-04	\N	181000000	Gryffin - Winnebago (Audio) ft. Quinn XCII, Daniel Wilson	youtube	f
IfQTcD8U520	2019-08-20 00:18:20.740215-04	2019-08-20 00:18:20.740215-04	\N	236000000	Flux Pavilion & Matthew Koma - Emotional	youtube	f
2TGK7kzHoLc	2019-08-20 00:18:40.325598-04	2019-08-20 00:18:40.325598-04	\N	160000000	Thutmose - Run Wild (feat. NoMBe)	youtube	f
bWcASV2sey0	2019-08-20 00:18:47.08566-04	2019-08-20 00:18:47.08566-04	\N	286000000	Bonnie Tyler - Holding Out For A Hero (Video)	youtube	f
LS2ifrLAadU	2019-08-20 00:18:49.718826-04	2019-08-20 00:18:49.718826-04	\N	213000000	Zedd, Alessia Cara - Stay (Lyrics) 🎤	youtube	f
8bzX1kt56Q4	2019-08-20 00:19:02.263565-04	2019-08-20 00:19:02.263565-04	\N	222000000	THE MIDDLE x STAY | Mashup of Zedd & Grey/Alessia Cara/Maren Morris	youtube	f
-IB9mYUkbMM	2019-08-20 00:19:15.808359-04	2019-08-20 00:19:15.808359-04	\N	148000000	Jon Bellion - Crop Circles (Official Audio)	youtube	f
75uOETx2uYA	2019-08-20 00:19:42.269326-04	2019-08-20 00:19:42.269326-04	\N	218000000	Brooklyn '95	youtube	f
xQzS3JnZQZM	2019-08-20 00:19:55.834375-04	2019-08-20 00:19:55.834375-04	\N	185000000	Zedd, Grey - The Middle (Lyrics) ft. Maren Morris	youtube	f
oU_5VqK17VU	2019-08-20 00:20:08.001625-04	2019-08-20 00:20:08.001625-04	\N	208000000	Neverlander - Gummy	youtube	f
FV-HPOHu8mY	2019-08-20 00:22:43.499879-04	2019-08-20 00:22:43.499879-04	\N	170000000	Jimmy Eat World - The Middle - Lyrics	youtube	f
mOskZGns-Wg	2019-08-20 00:23:13.627939-04	2019-08-20 00:23:13.627939-04	\N	277000000	Sarazanmai ED - Stand by me / the peggies [Full]	youtube	f
79DijItQXMM	2019-08-20 00:26:32.551457-04	2019-08-20 00:26:32.551457-04	\N	169000000	Dwayne Johnson - You're Welcome (From "Moana")	youtube	f
j3v7yqET7Ak	2019-08-20 00:26:59.238248-04	2019-08-20 00:26:59.238248-04	\N	201000000	Famous Dex - Hoes Mad (Lyrics)	youtube	f
4-TbQnONe_w	2019-08-20 00:28:01.975499-04	2019-08-20 00:28:01.975499-04	\N	194000000	Billie Eilish - bad guy (Lyrics)	youtube	f
F_mhWxOjxp4	2019-08-20 00:29:11.078636-04	2019-08-20 00:29:11.078636-04	\N	203000000	Alan Silvestri - Portals (From "Avengers: Endgame"/Audio Only)	youtube	f
2MtOpB5LlUA	2019-08-20 00:30:22.85822-04	2019-08-20 00:30:22.85822-04	\N	292000000	JoJo's Bizarre Adventure:Golden Wind OST: ~Giorno's Theme~ "Il vento d'oro" (Main Theme)	youtube	f
NFjE5A4UAJI	2019-08-20 00:30:41.92204-04	2019-08-20 00:30:41.92204-04	\N	308000000	JoJo's Bizarre Adventure: Stardust Crusaders OST - Stardust Crusaders	youtube	f
DM593QXk8lA	2019-08-20 00:31:06.211024-04	2019-08-20 00:31:06.211024-04	\N	379000000	Jodeci -  Freek 'N You	youtube	f
le0BLAEO93g	2019-08-20 00:31:22.843035-04	2019-08-20 00:31:22.843035-04	\N	213000000	VULFPECK /// Dean Town	youtube	f
F7nCDrf90V8	2019-08-20 00:31:37.448472-04	2019-08-20 00:31:37.448472-04	\N	238000000	VULFPECK /// Disco Ulysses (Instrumental)	youtube	f
dhNfddJRulQ	2019-08-20 00:31:47.395813-04	2019-08-20 00:31:47.395813-04	\N	135000000	VULFPECK /// Funky Duck	youtube	f
z1g2FuYMF8U	2019-08-20 00:32:20.577417-04	2019-08-20 00:32:20.577417-04	\N	257000000	[PV FULL] UVERworld   Touch off	youtube	f
jRHQPG1xd9o	2019-08-20 00:32:43.109149-04	2019-08-20 00:32:43.109149-04	\N	222000000	VULFPECK /// 1612	youtube	f
mw2fh8qfDiA	2019-08-20 00:32:50.176027-04	2019-08-20 00:32:50.176027-04	\N	195000000	Neil Cicierega - Wallspin	youtube	f
yG96RttfZtM	2019-08-20 00:33:02.772754-04	2019-08-20 00:33:02.772754-04	\N	195000000	VULFPECK /// Back Pocket (Music Video)	youtube	f
WS3AgyjIf8Q	2019-08-20 00:33:20.840014-04	2019-08-20 00:33:20.840014-04	\N	198000000	VULFPECK /// Lonely Town (feat. Theo Katzman)	youtube	f
WrdsotPDrRg	2019-08-20 00:33:24.958006-04	2019-08-20 00:33:24.958006-04	\N	204000000	VULFPECK /// Darwin Derby (feat. Theo Katzman & Antwaun Stanley)	youtube	f
VSBxCgj3Vck	2019-08-20 00:33:43.860012-04	2019-08-20 00:33:43.860012-04	\N	225000000	VULFPECK /// For Survival (feat. Mike Viola)	youtube	f
Ga3BfloQ2EM	2019-08-20 14:20:48.889867-04	2019-08-20 14:20:48.889867-04	\N	175000000	The Greatest Show	youtube	f
fEHpq-BxFm4	2019-08-20 00:37:49.664251-04	2019-08-20 00:37:49.664251-04	\N	285000000	Snarky Puppy - Bad Kids to the Back (Official Video)	youtube	f
kDXnPfA_5pY	2019-08-20 00:38:08.624761-04	2019-08-20 00:38:08.624761-04	\N	428000000	Snarky Puppy - Sleeper (We Like It Here)	youtube	f
M5A_nh8Mt4w	2019-08-20 00:38:25.562478-04	2019-08-20 00:38:25.562478-04	\N	91000000	BLACKPINK - ‘뚜두뚜두 (DDU-DU DDU-DU)’ Acapella Cover	youtube	f
MBAJP-3ebDA	2019-08-20 00:38:43.681867-04	2019-08-20 00:38:43.681867-04	\N	924000000	Snarky Puppy, Metropole Orkest - Sintra - Flight - Atchafalaya	youtube	f
_t2BlI9A_e0	2019-08-20 00:56:08.532312-04	2019-08-20 00:56:08.532312-04	\N	198000000	Gryffin - Winnebago (Vincent Remix/Audio) ft. Quinn XCII, Daniel Wilson	youtube	f
EpYHp-W51H4	2019-08-20 12:22:32.17479-04	2019-08-20 12:22:32.17479-04	\N	823000000	VULFPECK /// It Gets Funkier but every time it gets funkier, it gets funkier	youtube	f
3WKN0XF8-3Q	2019-08-20 12:23:32.573971-04	2019-08-20 12:23:32.573971-04	\N	437000000	The Prince of Egypt - 01 - Deliver US	youtube	f
MX9VvwnctTA	2019-08-20 12:23:41.885814-04	2019-08-20 12:23:41.885814-04	\N	233000000	The Prince of Egypt - 03 - Following Tzipporah and All I Ever Wanted	youtube	f
bHU7oPA-l1E	2019-08-20 12:23:53.432233-04	2019-08-20 12:23:53.432233-04	\N	224000000	The Prince of Egypt - 05 - Through Heavens Eyes	youtube	f
fILLl9UsWKA	2019-08-20 12:24:11.829243-04	2019-08-20 12:24:11.829243-04	\N	173000000	The Prince of Egypt - 07 - Playing With The Big Boys	youtube	f
9_x7ouimp0c	2019-08-20 12:25:58.71248-04	2019-08-20 12:25:58.71248-04	\N	204000000	The Prince of Egypt - 08 and 09 - Rally and The Plagues	youtube	f
lCteJY1-Zkk	2019-08-20 12:26:31.896529-04	2019-08-20 12:26:31.896529-04	\N	297000000	The Prince of Egypt - 12 - When You Believe	youtube	f
OglS3Q0Zxik	2019-08-20 12:34:10.40732-04	2019-08-20 12:34:10.40732-04	\N	249000000	[Official Video] Can't Hold Us - Pentatonix (Macklemore & Ryan Lewis cover)	youtube	f
GgnHiz8B-aQ	2019-08-20 12:35:09.461807-04	2019-08-20 12:35:09.461807-04	\N	243000000	[OFFICIAL VIDEO] No Tears Left To Cry - Citizen Queen	youtube	f
TVcLIfSC4OE	2019-08-20 12:36:55.818482-04	2019-08-20 12:36:55.818482-04	\N	203000000	Mulan | I'll Make A Man Out Of You | Disney Sing-Along	youtube	f
62qtrR2eCu4	2019-08-20 12:37:54.252288-04	2019-08-20 12:37:54.252288-04	\N	143000000	Hercules: Go The Distance | Sing-Along | Disney	youtube	f
VeAmAr42stA	2019-08-20 12:38:56.39332-04	2019-08-20 12:38:56.39332-04	\N	111000000	A Goofy Movie: Stand Out | Sing-Along | Disney	youtube	f
ai8mhPpOUWA	2019-08-20 12:39:33.731385-04	2019-08-20 12:39:33.731385-04	\N	210000000	Taron Egerton - I'm Still Standing	youtube	f
fRcwNvVC0eQ	2019-08-20 12:40:52.757315-04	2019-08-20 12:40:52.757315-04	\N	218000000	Let it go from the Disney film Frozen with lyrics	youtube	f
R3BPJstxExk	2019-08-20 12:42:24.342211-04	2019-08-20 12:42:24.342211-04	\N	154000000	VULFPECK /// The Speedwalker	youtube	f
MlnDf3e3PQ0	2019-08-20 12:43:38.93203-04	2019-08-20 12:43:38.93203-04	\N	264000000	Spongebob singing Goofy Goober Rock	youtube	f
Dyx4v1QFzhQ	2019-08-20 12:44:19.448854-04	2019-08-20 12:44:19.448854-04	\N	229000000	Reel 2 Real - I Like To Move It HQ [1994]	youtube	f
q8w1d01Y2vY	2019-08-20 12:45:05.598765-04	2019-08-20 12:45:05.598765-04	\N	240000000	Michael Jackson - Smooth Criminal (Single Version) HD	youtube	f
Zi_XLOBDo_Y	2019-08-20 12:45:52.789623-04	2019-08-20 12:45:52.789623-04	\N	296000000	Michael Jackson - Billie Jean (Official Music Video)	youtube	f
s3Q80mk7bxE	2019-08-20 12:46:13.839944-04	2019-08-20 12:46:13.839944-04	\N	179000000	I Want You Back - The Jackson 5	youtube	f
ho7796-au8U	2019-08-20 12:46:30.271894-04	2019-08-20 12:46:30.271894-04	\N	211000000	The Jackson 5 - ABC	youtube	f
nqxVMLVe62U	2019-08-20 12:47:31.797463-04	2019-08-20 12:47:31.797463-04	\N	213000000	The Jacksons - Blame It On the Boogie (Official Video)	youtube	f
Gs069dndIYk	2019-08-20 12:48:04.936159-04	2019-08-20 12:48:04.936159-04	\N	215000000	Earth, Wind & Fire - September (Official Music Video)	youtube	f
9ojM0N_EhMU	2019-08-20 12:48:28.817908-04	2019-08-20 12:48:28.817908-04	\N	191000000	Goofy Movie-EYe to EYe	youtube	f
9jAtB_UBWh0	2019-08-20 12:55:46.391143-04	2019-08-20 12:55:46.391143-04	\N	315000000	"When You Believe" cover by One Voice Children's Choir	youtube	f
jpJ8CbrWX_Y	2019-08-20 13:01:57.235745-04	2019-08-20 13:01:57.235745-04	\N	174000000	Panic! At The Disco - The Greatest Show (from The Greatest Showman: Reimagined) [Official Audio]	youtube	f
r8_oSz9X2pE	2019-08-20 13:07:03.597624-04	2019-08-20 13:07:03.597624-04	\N	224000000	Bruno Mars ft. Cardi B - Finesse (Lyrics)	youtube	f
Bcg5rN-jlaw	2019-08-20 13:07:57.682038-04	2019-08-20 13:07:57.682038-04	\N	163000000	The Prince of Egypt - The Plagues (with lyrics)	youtube	f
dNFp4YMiyGM	2019-08-20 13:08:51.544138-04	2019-08-20 13:08:51.544138-04	\N	176000000	LSD - No New Friends (Lyrics) ft. Sia, Diplo, Labrinth	youtube	f
doelku0dqoI	2019-08-20 13:09:53.594607-04	2019-08-20 13:09:53.594607-04	\N	118000000	LSD - Welcome to the Wonderful World of (Official Audio) ft. Sia, Diplo, Labrinth	youtube	f
F-7aA6_9n5U	2019-08-20 13:10:02.168975-04	2019-08-20 13:10:02.168975-04	\N	188000000	LSD - Angel in Your Eyes (Official Audio) ft. Sia, Diplo, Labrinth	youtube	f
HhoATZ1Imtw	2019-08-20 13:10:11.104203-04	2019-08-20 13:10:11.104203-04	\N	223000000	LSD - Genius ft. Sia, Diplo, Labrinth	youtube	f
kg1BljLu9YY	2019-08-20 13:10:42.162888-04	2019-08-20 13:10:42.162888-04	\N	196000000	LSD - Thunderclouds (Official Video) ft. Sia, Diplo, Labrinth	youtube	f
I1-mcn1Hgh8	2019-08-20 13:11:02.240106-04	2019-08-20 13:11:02.240106-04	\N	191000000	LSD - Mountains (Official Lyric Video) ft. Sia, Diplo, Labrinth	youtube	f
jGVTlBu6vJM	2019-08-20 13:11:55.321348-04	2019-08-20 13:11:55.321348-04	\N	197000000	LSD - Heaven Can Wait (Official Lyric Video) ft. Sia, Diplo, Labrinth	youtube	f
AkdBZEGbAsE	2019-08-20 13:12:36.428308-04	2019-08-20 13:12:36.428308-04	\N	211000000	LSD - It's Time (Official Audio) ft. Sia, Diplo, Labrinth	youtube	f
NbVZPu_JM6I	2019-08-20 13:13:21.9411-04	2019-08-20 13:13:21.9411-04	\N	177000000	Sonic - Green Hill Zone Acapella	youtube	f
ndiD8V7zpAs	2019-08-20 13:13:43.863452-04	2019-08-20 13:13:43.863452-04	\N	200000000	Super Mario World - Overworld Theme Acapella	youtube	f
VjxskJTcrTw	2019-08-20 13:14:29.277152-04	2019-08-20 13:14:29.277152-04	\N	144000000	Sonic 2 - Emerald Hill Zone Acapella	youtube	f
-WcHPFUwd6U	2019-08-20 13:15:17.778123-04	2019-08-20 13:15:17.778123-04	\N	165000000	Tarzan -Son Of Man (Phil Collins)	youtube	f
JIVaUcE4kAM	2019-08-20 13:15:26.822179-04	2019-08-20 13:15:26.822179-04	\N	258000000	Tarzan Soundtrack - You'll be in my heart by Phil Collins	youtube	f
-rxOVpetZTY	2019-08-20 13:16:01.081781-04	2019-08-20 13:16:01.081781-04	\N	188000000	Trashin' The Camp - Tarzan	youtube	f
ZFL0REtkocY	2019-08-20 13:17:28.377881-04	2019-08-20 13:17:28.377881-04	\N	187000000	Tarzan - Two Worlds One Family (1080p)	youtube	f
zc3MnoSS5Hw	2019-08-20 13:17:53.387382-04	2019-08-20 13:17:53.387382-04	\N	214000000	Tarzan - Strangers Like Me	youtube	f
cPAbx5kgCJo	2019-08-20 13:18:20.856457-04	2019-08-20 13:18:20.856457-04	\N	156000000	Auli'i Cravalho - How Far I'll Go	youtube	f
v0kjCEZ0-3g	2019-08-20 13:21:29.803367-04	2019-08-20 13:21:29.803367-04	\N	211000000	Starships	youtube	f
mdStVYPLkTQ	2019-08-20 13:21:50.947297-04	2019-08-20 13:21:50.947297-04	\N	324000000	Zanies and Fools	youtube	f
Ah0Ys50CqO8	2019-08-20 13:26:04.555529-04	2019-08-20 13:26:04.555529-04	\N	181000000	Billie Eilish - you should see me in a crown (Vertical Video)	youtube	f
hmH3ejHT6oo	2019-08-20 13:29:02.973012-04	2019-08-20 13:29:02.973012-04	\N	194000000	Make Me Feel	youtube	f
OdWbybmHnwc	2019-08-20 13:30:34.834266-04	2019-08-20 13:30:34.834266-04	\N	253000000	Hey Ya Flat Zone 2	youtube	f
0tdyU_gW6WE	2019-08-20 13:31:19.869635-04	2019-08-20 13:31:19.869635-04	\N	247000000	Bustin	youtube	f
XCiDuy4mrWU	2019-08-20 13:31:58.49538-04	2019-08-20 13:31:58.49538-04	\N	285000000	Initial D - Running in The 90s	youtube	f
JucvYrdSIcM	2019-08-20 13:33:21.358435-04	2019-08-20 13:33:21.358435-04	\N	207000000	That's What I Like	youtube	f
tYvFa2ARD24	2019-08-20 13:33:32.149104-04	2019-08-20 13:33:32.149104-04	\N	270000000	Uptown Funk	youtube	f
Bbcvjt_c6gM	2019-08-20 13:34:02.903254-04	2019-08-20 13:34:02.903254-04	\N	253000000	iSpy (feat. Lil Yachty)	youtube	f
c5l4CGQozWY	2019-08-20 13:34:23.047617-04	2019-08-20 13:34:23.047617-04	\N	214000000	Work from Home	youtube	f
zdCLmz-zEYM	2019-08-20 13:35:14.122372-04	2019-08-20 13:35:14.122372-04	\N	201000000	Please Me	youtube	f
vxUBYHz_q1I	2019-08-20 13:35:22.685348-04	2019-08-20 13:35:22.685348-04	\N	211000000	Attention	youtube	f
eNP1VguPhDQ	2019-08-20 14:08:45.551907-04	2019-08-20 14:08:45.551907-04	\N	228000000	Miley Cyrus - Slide Away (Lyrics)	youtube	f
8KbUubuELPs	2019-08-20 14:09:10.936364-04	2019-08-20 14:09:10.936364-04	\N	173000000	Alec Benjamin - Jesus In LA (Lyrics)	youtube	f
tss1_C6s8Hg	2019-08-20 14:21:49.97222-04	2019-08-20 14:21:49.97222-04	\N	218000000	Sunday Morning	youtube	f
0AFifrBn0Ps	2019-08-20 14:22:13.601015-04	2019-08-20 14:22:13.601015-04	\N	258000000	Run to You	youtube	f
cmpt_3gY8DI	2019-08-20 14:22:36.728618-04	2019-08-20 14:22:36.728618-04	\N	226000000	You Know My Name	youtube	f
6mYFXjICb_U	2019-08-20 14:22:56.363863-04	2019-08-20 14:22:56.363863-04	\N	278000000	American Boy	youtube	f
W2Sjf1m_lJA	2019-08-20 14:23:21.007926-04	2019-08-20 14:23:21.007926-04	\N	230000000	Someone to Stay	youtube	f
fuwA3InvDzY	2019-08-20 14:23:34.78411-04	2019-08-20 14:23:34.78411-04	\N	234000000	Killing Me Softly	youtube	f
_aKuVAtYgv4	2019-08-20 14:50:19.355679-04	2019-08-20 14:50:19.355679-04	\N	552000000	EXTREME MEME MUSIC MEGAMASHUP	youtube	f
ndiNMhM9f7I	2019-08-20 14:50:31.740746-04	2019-08-20 14:50:31.740746-04	\N	564000000	EXTREME MEME MUSIC MEGAMASHUP 2	youtube	f
SaJz1cEiNVA	2019-08-20 14:50:42.488548-04	2019-08-20 14:50:42.488548-04	\N	711000000	EXTREME MEME MUSIC MEGAMASHUP 3	youtube	f
yPDNA-5Sqqc	2019-08-20 15:50:23.568917-04	2019-08-20 15:50:23.568917-04	\N	210000000	Perm	youtube	f
M4T_k33CI1M	2019-08-20 15:50:59.394738-04	2019-08-20 15:50:59.394738-04	\N	219000000	Cake By The Ocean	youtube	f
7ysFgElQtjI	2019-08-20 15:52:08.662767-04	2019-08-20 15:52:08.662767-04	\N	157000000	Lil Nas X - Old Town Road (feat. Billy Ray Cyrus) [Remix]	youtube	f
eq1FIvUHtt0	2019-08-20 15:55:41.197968-04	2019-08-20 15:55:41.197968-04	\N	149000000	Obama Mixtape: 1999 - Songify the News Special Edition	youtube	f
OCH6nQYflwY	2019-08-20 16:00:25.836222-04	2019-08-20 16:00:25.836222-04	\N	73000000	Green Greens - Kirby's Dream Land	youtube	f
L7yIR6CilPA	2019-08-20 16:00:57.638352-04	2019-08-20 16:00:57.638352-04	\N	145000000	Green Greens - Drum & Bass	youtube	f
E9s1ltPGQOo	2019-08-20 16:03:02.839933-04	2019-08-20 16:03:02.839933-04	\N	631000000	Mii Channel Music	youtube	f
8avMLHvLwRQ	2019-08-20 16:03:27.49425-04	2019-08-20 16:03:27.49425-04	\N	559000000	Wii Shop Channel Music	youtube	f
xTElIdBy3vY	2019-08-20 16:14:18.126965-04	2019-08-20 16:14:18.126965-04	\N	1641261632	10 Hours Of Wii Music	youtube	f
V7TYJzCwEC4	2019-08-21 19:54:56.382914-04	2019-08-21 19:54:56.382914-04	\N	468000000	Pendulum - Genesis / Salt in The Wounds	youtube	f
9lNZ_Rnr7Jc	2019-08-21 21:41:40.772475-04	2019-08-21 21:41:40.772475-04	\N	324000000	Bad Apple!! - Full Version w/video [Lyrics in Romaji, Translation in English]	youtube	f
fDiuOna-zT8	2019-08-22 18:40:12.283358-04	2019-08-22 18:40:12.283358-04	\N	208000000	MOMOLAND(모모랜드) - BAAM (Color Coded Lyrics Eng/Rom/Han)	youtube	f
KCQ3i5MMUJQ	2019-08-22 18:40:40.324293-04	2019-08-22 18:40:40.324293-04	\N	194000000	GFRIEND (여자친구) - NAVILLERA (너 그리고 나) [HAN|ROM|ENG Color Coded Lyrics]	youtube	f
JQGRg8XBnB4	2019-08-22 18:41:05.417333-04	2019-08-22 18:41:05.417333-04	\N	210000000	[MV] MOMOLAND (모모랜드) _ BBoom BBoom (뿜뿜)	youtube	f
WZwr2a_lFWY	2019-08-22 18:41:33.818353-04	2019-08-22 18:41:33.818353-04	\N	220000000	IZ*ONE (아이즈원) - 라비앙로즈 (La Vie en Rose) MV	youtube	f
GOB38_2ZCx4	2019-08-22 18:42:11.442115-04	2019-08-22 18:42:11.442115-04	\N	205000000	G-Friend - Glass Bead (Color Coded Han|Rom|Eng Lyrics)	youtube	f
b73BI9eUkjM	2019-08-22 18:44:05.741315-04	2019-08-22 18:44:05.741315-04	\N	177000000	JENNIE - 'SOLO' M/V	youtube	f
qzSpqKWkICE	2019-08-22 18:44:47.65897-04	2019-08-22 18:44:47.65897-04	\N	221000000	G-Friend (여자친구) - Me Gustas Tu (오늘부터 우리는) (Color Coded Han|Rom|Eng Lyrics) | by YankaT	youtube	f
AJtDXIazrMo	2019-08-22 20:01:20.272659-04	2019-08-22 20:01:20.272659-04	\N	249000000	Ellie Goulding - Love Me Like You Do (Official Video)	youtube	f
LDGZAprNGWo	2019-08-22 20:07:53.31606-04	2019-08-22 20:07:53.31606-04	\N	156000000	Splashing Around	youtube	f
j3rwKl267gE	2019-08-22 20:49:00.209972-04	2019-08-22 20:49:00.209972-04	\N	216000000	VULFPECK /// Game Winner	youtube	f
Et4Ns2ADrmw	2019-08-22 20:59:22.935925-04	2019-08-22 20:59:22.935925-04	\N	213000000	Alison Wonderland - Cold (Official Video)	youtube	f
-3GBJZzPkYQ	2019-08-22 21:44:09.652343-04	2019-08-22 21:44:09.652343-04	\N	187000000	I Write Sins Not Tragadies- Panic! At The Disco	youtube	f
jO2_3pVd5k0	2019-08-22 21:45:36.57292-04	2019-08-22 21:45:36.57292-04	\N	216000000	Panic! At The Disco: This Is Gospel (Piano Version)	youtube	f
GRz4FY0ZcwI	2019-08-22 21:48:24.652849-04	2019-08-22 21:48:24.652849-04	\N	219000000	Five for Fighting - Superman (It's Not Easy) [Official Video]	youtube	f
o6Ew0dctUzE	2019-08-22 22:11:25.419477-04	2019-08-22 22:11:25.419477-04	\N	203000000	Why Don't We - Unbelievable (Lyrics)	youtube	f
6eMBGyBScpw	2019-08-23 19:30:06.233672-04	2019-08-23 19:30:06.233672-04	\N	180000000	Jana Kramer - Said No One Ever (Official)	youtube	f
E-IDfoZuQLM	2019-08-23 19:38:51.663839-04	2019-08-23 19:38:51.663839-04	\N	160000000	Dr. No Theme Song - James Bond	youtube	f
6lRuXckWC_8	2019-08-23 19:39:13.671201-04	2019-08-23 19:39:13.671201-04	\N	149000000	From Russia with Love Theme Song - James Bond	youtube	f
6D1nK7q2i8I	2019-08-23 19:39:33.765088-04	2019-08-23 19:39:33.765088-04	\N	169000000	Goldfinger Theme Song - James Bond	youtube	f
ZwbEuzJCnqI	2019-08-23 19:39:56.578715-04	2019-08-23 19:39:56.578715-04	\N	172000000	Diamonds Are Forever Theme Song - James Bond	youtube	f
lNcZrn5dqZw	2019-08-23 19:40:24.457571-04	2019-08-23 19:40:24.457571-04	\N	171000000	The World Is Not Enough Theme Song - James Bond	youtube	f
e7aGAIWe3uE	2019-08-23 20:02:13.34036-04	2019-08-23 20:02:13.34036-04	\N	195000000	live and let die- paul mccartney	youtube	f
pBkHHoOIIn8	2019-08-23 22:27:28.094555-04	2019-08-23 22:27:28.094555-04	\N	170000000	Portugal. The Man - "Feel It Still" (Official Video)	youtube	f
igDAd6eytL8	2019-08-23 22:28:11.88845-04	2019-08-23 22:28:11.88845-04	\N	272000000	Tones And I - Dance Monkey (Lyrics)	youtube	f
DyDfgMOUjCI	2019-08-23 22:29:06.118239-04	2019-08-23 22:29:06.118239-04	\N	206000000	Billie Eilish - bad guy	youtube	f
fKopy74weus	2019-08-23 22:30:07.699292-04	2019-08-23 22:30:07.699292-04	\N	204000000	Imagine Dragons - Thunder	youtube	f
I6KF0PwjSjM	2019-08-23 22:33:52.517495-04	2019-08-23 22:33:52.517495-04	\N	177000000	Alison Wonderland - High ft. Trippie Redd	youtube	f
GJlGYmPAV3Q	2019-08-23 22:34:17.830421-04	2019-08-23 22:34:17.830421-04	\N	190000000	Alison Wonderland - Church (Official Video)	youtube	f
_EUK9DrGhsU	2019-08-23 22:34:40.755774-04	2019-08-23 22:34:40.755774-04	\N	201000000	Alison Wonderland - Happy Place	youtube	f
LQj--Kjn0z8	2019-08-24 11:57:14.367811-04	2019-08-24 11:57:14.367811-04	\N	206000000	Smash Mouth - Walkin' On The Sun (Official Music Video)	youtube	f
dv13gl0a-FA	2019-08-24 23:16:57.206464-04	2019-08-24 23:16:57.206464-04	\N	264000000	Initial D - Deja Vu	youtube	f
GDpmVUEjagg	2019-08-25 13:00:25.371504-04	2019-08-25 13:00:25.371504-04	\N	224000000	Daft Punk - Harder, Better, Faster, Stronger	youtube	f
O4irXQhgMqg	2019-08-25 19:44:38.157287-04	2019-08-25 19:44:38.157287-04	\N	226000000	The Rolling Stones - Paint It, Black (Official Lyric Video)	youtube	f
b7Sy4KbEZFY	2019-08-25 20:17:14.641927-04	2019-08-25 20:17:14.641927-04	\N	157000000	Lil Sans X - Megalovania	youtube	f
DxYyHHR0Q1c	2019-08-25 21:12:56.093185-04	2019-08-25 21:12:56.093185-04	\N	184000000	Panic! At The Disco: Hallelujah [OFFICIAL VIDEO]	youtube	f
0lIsya8oKYY	2019-08-25 21:34:24.291315-04	2019-08-25 21:34:24.291315-04	\N	265000000	AKMU/Akdong Musician (악동뮤지션) Will Last Forever Lyrics [Colour Coded|HAN/ROM/ENG]	youtube	f
_ae5Ap77b7k	2019-08-25 21:35:23.928427-04	2019-08-25 21:35:23.928427-04	\N	157000000	Lil Nas X - Old Town Road (Lyrics) Ft. Billy Ray Cyrus	youtube	f
aOl4oeHZnBk	2019-08-25 21:37:16.616298-04	2019-08-25 21:37:16.616298-04	\N	245000000	You Sexy Thing (I Believe in Miracles) by Hot Chocolate	youtube	f
qD54sROmeIM	2019-08-25 22:24:37.166111-04	2019-08-25 22:24:37.166111-04	\N	223000000	Cuphead OST - Floral Fury [Music]	youtube	f
GMdgU7I8s7A	2019-08-25 22:24:46.775249-04	2019-08-25 22:24:46.775249-04	\N	184000000	Sabrina Carpenter - Sue Me (Lyrics)	youtube	f
47IaGQJFeno	2019-08-25 22:37:24.007986-04	2019-08-25 22:37:24.007986-04	\N	315000000	Elder Kettle	youtube	f
jvOY2RvuvGs	2019-08-25 22:49:08.192195-04	2019-08-25 22:49:08.192195-04	\N	196000000	Inkwell Isle One	youtube	f
ToR93aj9U7w	2019-08-25 22:50:11.478195-04	2019-08-25 22:50:11.478195-04	\N	242000000	Botanic Panic	youtube	f
dhYOPzcsbGM	2019-08-25 22:51:08.596297-04	2019-08-25 22:51:08.596297-04	\N	217000000	Alan Walker, Sabrina Carpenter & Farruko  - On My Way	youtube	f
nkM-JrYqBu4	2019-08-25 22:51:09.985308-04	2019-08-25 22:51:09.985308-04	\N	304000000	Pendulum - Watercolour	youtube	f
f9DLhlboCSU	2019-08-25 22:52:33.539183-04	2019-08-25 22:52:33.539183-04	\N	97000000	Die House	youtube	f
gsOLiRkG7Nc	2019-08-25 22:53:14.07912-04	2019-08-25 22:53:14.07912-04	\N	312000000	Elder Kettle (Piano)	youtube	f
-6OGt3jOUxA	2019-08-25 22:53:43.135702-04	2019-08-25 22:53:43.135702-04	\N	208000000	Threatenin' Zeppelin	youtube	f
jxepAtcXZKc	2019-08-26 00:00:54.028935-04	2019-08-26 00:00:54.028935-04	\N	174000000	Treetop Trouble	youtube	f
gVgJ6LiyPlM	2019-08-26 00:01:18.532003-04	2019-08-26 00:01:18.532003-04	\N	266000000	Ruse of an Ooze	youtube	f
RRCiA55yZe0	2019-08-26 00:01:39.913555-04	2019-08-26 00:01:39.913555-04	\N	235000000	Clip Joint Calamity	youtube	f
S1VHnzHAJ94	2019-08-26 00:02:10.801521-04	2019-08-26 00:02:10.801521-04	\N	167000000	Forest Follies	youtube	f
uxBsL4_xF1M	2019-08-26 00:02:27.826823-04	2019-08-26 00:02:27.826823-04	\N	222000000	Sugarland Shimmy	youtube	f
lC2LN2XjXn0	2019-08-26 00:02:48.997712-04	2019-08-26 00:02:48.997712-04	\N	244000000	Aviary Action	youtube	f
n9o-mcnry10	2019-08-26 00:03:31.976834-04	2019-08-26 00:03:31.976834-04	\N	200000000	Salsa Tequila - Anders Nilsen	youtube	f
tMpED13pLNg	2019-08-26 14:31:27.44596-04	2019-08-26 14:31:27.44596-04	\N	254000000	Imogen Heap- Hide and Seek With Lyrics (Original Whatcha Say)	youtube	f
YeYPLhCFrP0	2019-08-26 14:32:12.989096-04	2019-08-26 14:32:12.989096-04	\N	276000000	You Can Call Me Al	youtube	f
3JWTaaS7LdU	2019-08-26 14:32:59.529597-04	2019-08-26 14:32:59.529597-04	\N	275000000	Whitney Houston - I Will Always Love You (Official Music Video)	youtube	f
Fegs-XVKgnM	2019-08-26 14:37:06.793411-04	2019-08-26 14:37:06.793411-04	\N	210000000	X Gon Give It To Ya Maybe - Carly Rae Jepsen vs. DMX (Mashup)	youtube	f
-dkN_84EGj0	2019-08-26 14:37:52.20625-04	2019-08-26 14:37:52.20625-04	\N	242000000	"Rolling In The Black"- ADELE vs AC/DC (Roland NewAge ~ remix♪mashup)	youtube	f
7jZv16GAea8	2019-08-26 14:38:08.764694-04	2019-08-26 14:38:08.764694-04	\N	267000000	Livin' La Vida (Coldplay vs. Bon Jovi) Mashup	youtube	f
hT5eJwgAtvY	2019-08-26 14:38:23.653134-04	2019-08-26 14:38:23.653134-04	\N	240000000	Sweet Dreams are Made of Seven Nation Army	youtube	f
wkx8Mw6uMdM	2019-08-26 14:39:35.426572-04	2019-08-26 14:39:35.426572-04	\N	162000000	DMX vs. Pokemon - Ash Gon' Give It to Ya	youtube	f
qojd5IaWDZM	2019-08-26 14:39:59.270138-04	2019-08-26 14:39:59.270138-04	\N	197000000	Shrek Gon' Give it to Ya (Smash Mouth + DMX Mashup)	youtube	f
5Q6lgzzfPS4	2019-08-26 14:40:33.713323-04	2019-08-26 14:40:33.713323-04	\N	168000000	bakemonogatari x DMX - Renai Gonna Give It To Ya	youtube	f
QLd7lYUoaFc	2019-08-26 14:41:16.045816-04	2019-08-26 14:41:16.045816-04	\N	208000000	Feel Good in Black and Yellow - Wiz Khalifa vs. Gorillaz (Mashup)	youtube	f
PltarkK7mr0	2019-08-26 14:41:32.025388-04	2019-08-26 14:41:32.025388-04	\N	209000000	Stressed Me Out - twenty one pilots vs. Shaggy feat. Rikrok (Mashup)	youtube	f
COl_e4o9VrM	2019-08-26 14:41:45.644751-04	2019-08-26 14:41:45.644751-04	\N	176000000	Warriors on Holiday - Imagine Dragons vs. Green Day (Mashup)	youtube	f
ydPYNo8o-lI	2019-08-26 14:42:45.862462-04	2019-08-26 14:42:45.862462-04	\N	251000000	Imagine Dragons, Khalid - Thunder / Young Dumb & Broke (Medley/Audio)	youtube	f
BWC9OS45HAM	2019-08-26 14:43:53.809256-04	2019-08-26 14:43:53.809256-04	\N	180000000	Bazzi - Beautiful feat. Camila (Official Audio)	youtube	f
ENhR9FHf_0c	2019-08-26 14:49:05.004392-04	2019-08-26 14:49:05.004392-04	\N	230000000	One-Pitbull Man	youtube	f
KXe5DbzHdXM	2019-08-26 15:07:31.7793-04	2019-08-26 15:07:31.7793-04	\N	212000000	BLACK/YELLOW/POP/STARS - K/DA vs. Wiz Khalifa	youtube	f
4p3fX2RXtUI	2019-08-26 15:08:16.090561-04	2019-08-26 15:08:16.090561-04	\N	179000000	The True Secrets of the PPAP - Kill Me Baby vs. PIKOTARO	youtube	f
bAsTRx8fweU	2019-08-26 15:12:04.254965-04	2019-08-26 15:12:04.254965-04	\N	119000000	CENATORRRRRY! - Giga-P vs. John Cena and Tha Trademarc	youtube	f
yVcAyEMM4Cc	2019-08-26 15:14:07.675681-04	2019-08-26 15:14:07.675681-04	\N	149000000	Neil Cicierega - Floor Corn	youtube	f
JP4V-0Ovu08	2019-08-26 15:15:03.148171-04	2019-08-26 15:15:03.148171-04	\N	366000000	Blue Salami & The Prosciutto Pals: I've Fallen And I Can't Get Up (Song W/O Guitar Hero Sound FX)	youtube	f
p-o_bMkzOW0	2019-08-26 15:39:01.067235-04	2019-08-26 15:39:01.067235-04	\N	205000000	LUVORATORRRRRY! ver れをる feat.nqrse	youtube	f
4sq2lPNxi7M	2019-08-26 15:39:21.608956-04	2019-08-26 15:39:21.608956-04	\N	227000000	【Rin＊Luka】drop pop candy【オリジナル】	youtube	f
9eyyhtOrKPI	2019-08-26 15:44:54.718289-04	2019-08-26 15:44:54.718289-04	\N	227000000	[MV] REOL - drop pop candy	youtube	f
JES55S-l5RM	2019-08-26 15:54:20.770537-04	2019-08-26 15:54:20.770537-04	\N	199000000	〔れをる〕 一心不乱 〔feat ill.bell,nqrse〕	youtube	f
2auo4lkBvZ4	2019-08-26 16:01:25.98353-04	2019-08-26 16:01:25.98353-04	\N	201000000	〔オリジナル〕 ギガンティックO.T.N ver れをる	youtube	f
h6DNdop6pD8	2019-08-26 18:14:08.317366-04	2019-08-26 18:14:08.317366-04	\N	57000000	i turned a bad copypasta into a bad rap	youtube	f
P3aGk_Gwqjw	2019-08-26 18:16:00.822703-04	2019-08-26 18:16:00.822703-04	\N	256000000	The Lone Slim Shady - Caravan Palace vs. Eminem (Mashup)	youtube	f
70M90PGJ_ms	2019-08-26 18:16:46.026116-04	2019-08-26 18:16:46.026116-04	\N	31000000	Mr. Sandman, Man Me A Sand	youtube	f
MXDVbhC77qI	2019-08-26 18:16:53.860202-04	2019-08-26 18:16:53.860202-04	\N	240000000	Chicken Attack - SONG VOYAGE - Japan	youtube	f
ejUcnpwNDLs	2019-08-26 18:17:09.039167-04	2019-08-26 18:17:09.039167-04	\N	88000000	Netorare, /a/ True Love Song	youtube	f
x6LovY_DdEE	2019-08-26 18:18:08.808357-04	2019-08-26 18:18:08.808357-04	\N	23000000	pls rember.mp4	youtube	f
IkZi1jmCTDg	2019-08-26 18:19:13.762953-04	2019-08-26 18:19:13.762953-04	\N	222000000	Fuck Bees Inc	youtube	f
8F3QkvBJpF4	2019-08-26 18:19:51.501054-04	2019-08-26 18:19:51.501054-04	\N	215000000	Eurythmics - Sweet Dreams (Are Made Of Bees)	youtube	f
fjyc9XTtC2Q	2019-08-26 18:43:38.644596-04	2019-08-26 18:43:38.644596-04	\N	284000000	[JPz Central] It's Not Like I Like You!! (feat. Emirichu, Static-P & Amree)	youtube	f
FfBwsG8ubFw	2019-08-26 21:45:20.811894-04	2019-08-26 21:45:20.811894-04	\N	183000000	Hues Corporation - Rock the Boat	youtube	f
YvmDgxjbQzw	2019-08-26 22:01:33.388389-04	2019-08-26 22:01:33.388389-04	\N	155000000	Wii Sports Resort (Remix)	youtube	f
lbOhsKNC4rs	2019-08-28 16:02:46.38739-04	2019-08-28 16:02:46.38739-04	\N	227000000	What if Billie Eilish made Revenge?	youtube	f
j0lN0w5HVT8	2019-08-28 16:05:03.10267-04	2019-08-28 16:05:03.10267-04	\N	158000000	Welcome To The Cum Zone [Official Music Video]	youtube	f
iWpCdUQLWwU	2019-08-28 16:08:10.951109-04	2019-08-28 16:08:10.951109-04	\N	158000000	Heir To The Cum Throne [Official Music Video]	youtube	f
DLBlHJ4qMC8	2019-08-28 16:13:43.824645-04	2019-08-28 16:13:43.824645-04	\N	194000000	Billie Eilish - Megalovania (with Justin Bieber) [HQ Audio]	youtube	f
4u2nNWgnXxA	2019-08-28 16:24:35.160407-04	2019-08-28 16:24:35.160407-04	\N	318000000	Party Rock Apple!! - LMFAO vs. Alstroemeria Records	youtube	f
hBUjbio6rSo	2019-08-28 16:32:53.158013-04	2019-08-28 16:32:53.158013-04	\N	234000000	β:for the BUP	youtube	f
PRJSwp9qfN0	2019-08-28 16:58:50.665036-04	2019-08-28 16:58:50.665036-04	\N	266000000	LMFAO - The Party Revolving	youtube	f
DUxCILPC10U	2019-08-28 17:02:04.586359-04	2019-08-28 17:02:04.586359-04	\N	198000000	Big Time Rush - Big Time Rush (Original Studio Recording)	youtube	f
KW9N1pOwcSE	2019-08-28 17:04:16.039357-04	2019-08-28 17:04:16.039357-04	\N	410000000	かめりあ - Exit This Earth's Atomosphere (かめりあ's ''PLANETARY//200STEP'' Remix)	youtube	f
DUCQJgBcXLs	2019-08-28 17:05:19.400181-04	2019-08-28 17:05:19.400181-04	\N	135000000	2oatmEal	youtube	f
ihl4iHN2Ni4	2019-08-28 17:23:23.348126-04	2019-08-28 17:23:23.348126-04	\N	198000000	Big Time Rush Theme Song	youtube	f
RKAZd4fs5Mo	2019-08-28 17:39:31.887676-04	2019-08-28 17:39:31.887676-04	\N	179000000	AC/VC by neil cicierega reupload	youtube	f
yc3Jo65Lct4	2019-08-28 17:40:17.668657-04	2019-08-28 17:40:17.668657-04	\N	203000000	Neil Cicierega - Who	youtube	f
dhqyMblMjGg	2019-08-28 17:47:32.68811-04	2019-08-28 17:47:32.68811-04	\N	236000000	All I Want For Christmas Is You X Crank That Soulja Boy - Mariah Carey Soulja Boy	youtube	f
SdcGu3qW8QU	2019-08-29 13:23:18.24751-04	2019-08-29 13:23:18.24751-04	\N	245000000	Creeper, Aw Man (Music Video)	youtube	f
xZzWiFjsbM0	2019-08-29 13:34:00.72755-04	2019-08-29 13:34:00.72755-04	\N	260000000	Enter the Gungeon - Enter the Gungeon - OST	youtube	f
9xnYxWa2So8	2019-08-29 13:39:56.924804-04	2019-08-29 13:39:56.924804-04	\N	242000000	Knuckles Gets It Started In Here (Triple-Q's Retarded Re-Edit)	youtube	f
_GxK5bafAok	2019-08-29 13:44:32.129473-04	2019-08-29 13:44:32.129473-04	\N	91000000	Gotta Thrift Fast	youtube	f
ICAfBw4cxEI	2019-08-29 13:44:53.095755-04	2019-08-29 13:44:53.095755-04	\N	229000000	Owl City - Megalovania	youtube	f
I22JGM8hfrs	2019-08-29 13:50:16.667973-04	2019-08-29 13:50:16.667973-04	\N	174000000	Oatmeal Eater	youtube	f
bDxVrBralCY	2019-08-29 13:51:17.888536-04	2019-08-29 13:51:17.888536-04	\N	179000000	Crazy MegaloGummi Axel Harder, Better,  We Are Nae Nae Number Seven Grand Frog F	youtube	f
tLPZmPaHme0	2019-08-29 14:02:21.092807-04	2019-08-29 14:02:21.092807-04	\N	164000000	The Creep (feat. Nicki Minaj & John Waters)	youtube	f
570tFRoRR0A	2019-08-29 14:03:00.221263-04	2019-08-29 14:03:00.221263-04	\N	209000000	Pink - Raise your Glass (lyrics)	youtube	f
V0PbiHBjidk	2019-08-29 14:36:57.327297-04	2019-08-29 14:36:57.327297-04	\N	745000000	Despacito Fusion Collab	youtube	f
ycd6Xchkq-4	2019-08-29 16:30:25.348622-04	2019-08-29 16:30:25.348622-04	\N	331000000	Dicko Mode (feat. Kusorare)	youtube	f
zqIzIkJbvq8	2019-08-29 16:36:59.819933-04	2019-08-29 16:36:59.819933-04	\N	194000000	Blackbear & TMG - Short Kings Anthem (OFFICIAL VIDEO)	youtube	f
xBRhIsJZ2eU	2019-08-29 21:38:32.730112-04	2019-08-29 21:38:32.730112-04	\N	161000000	How to Play (Melee) - Super Smash Bros. UItimate	youtube	f
KEZXadySteY	2019-08-29 22:02:03.505251-04	2019-08-29 22:02:03.505251-04	\N	176000000	Through the Fire and Flamingos	youtube	f
hC9adq3wfv8	2019-08-29 22:12:36.27129-04	2019-08-29 22:12:36.27129-04	\N	161000000	1 2 Kirby is a Menace to Society	youtube	f
xFeJU2fIKlY	2019-08-29 22:16:32.736339-04	2019-08-29 22:16:32.736339-04	\N	233000000	Pickle Rock Anthem	youtube	f
0cvZZVvhjSU	2019-08-29 22:49:44.152283-04	2019-08-29 22:49:44.152283-04	\N	232000000	Knife Party - No Saint	youtube	f
ugbOrWsCVuM	2019-08-29 22:51:34.849706-04	2019-08-29 22:51:34.849706-04	\N	197000000	Knife Party - Lost Souls	youtube	f
9S0okQsJlDs	2019-08-29 22:52:34.218441-04	2019-08-29 22:52:34.218441-04	\N	238000000	Knife Party - Death & Desire feat. Harrison	youtube	f
nidiKRpU70w	2019-08-29 22:53:23.681735-04	2019-08-29 22:53:23.681735-04	\N	257000000	Knife Party - Ghost Train	youtube	f
QgNdBAlncDA	2019-08-30 18:45:09.614371-04	2019-08-30 18:45:09.614371-04	\N	293000000	Gangplank Galleon Remix - Super Smash Bros. Ultimate [buy the game]	youtube	f
fCmvXCgZr74	2019-08-30 21:13:35.275609-04	2019-08-30 21:13:35.275609-04	\N	33000000	apple bottom jeans, boots with the	youtube	f
rNYaw4EJpZo	2019-08-30 21:15:16.037799-04	2019-08-30 21:15:16.037799-04	\N	167000000	Plastic Bag by Katy Perry	youtube	f
8yxE9LriSJE	2019-08-31 12:37:20.749856-04	2019-08-31 12:37:20.749856-04	\N	87000000	Beanos Theme Song [LYRICS]	youtube	f
G_GQQlehGxE	2019-08-31 12:40:36.782667-04	2019-08-31 12:40:36.782667-04	\N	184000000	Neil Cicierega - Daft Mouth	youtube	f
rjRV0G6qWgw	2019-08-31 12:48:52.825535-04	2019-08-31 12:48:52.825535-04	\N	213000000	ReDoin	youtube	f
1WAlkyxz2mU	2019-08-31 12:49:13.363181-04	2019-08-31 12:49:13.363181-04	\N	165000000	The Boys Are Back in Town (to kill you)	youtube	f
mIBTg7q9oNc	2019-08-31 18:18:02.419582-04	2019-08-31 18:18:02.419582-04	\N	163000000	Ring of Fire Johnny Cash	youtube	f
loSuMqwQA38	2019-08-31 18:20:58.941894-04	2019-08-31 18:20:58.941894-04	\N	172000000	Lil Nas X & Billy Ray Cyrus feat. Young Thug & Mason Ramsey - Old Town Road (Remix) [Lyric Video]	youtube	f
RxOBOhRECoo	2019-08-31 18:21:16.775871-04	2019-08-31 18:21:16.775871-04	\N	273000000	Elvis Presley - Suspicious Minds (Audio)	youtube	f
rB7XFQgJHBI	2019-08-31 20:40:50.656818-04	2019-08-31 20:40:50.656818-04	\N	351000000	タイニーリトル・アジアンタム	youtube	f
tiYGKbSQlGo	2019-09-01 10:46:52.057661-04	2019-09-01 10:46:52.057661-04	\N	284000000	Worth - Anthony Brown	youtube	f
6Pm8ika_xCY	2019-09-01 10:48:20.177994-04	2019-09-01 10:48:20.177994-04	\N	340000000	Everyday Jesus	youtube	f
Yc1ORKAxmo8	2019-09-01 10:50:51.488701-04	2019-09-01 10:50:51.488701-04	\N	339000000	Worth by anthony brown lyrics video	youtube	f
wR659nEq3w4	2019-09-01 16:15:33.949934-04	2019-09-01 16:15:33.949934-04	\N	276000000	Virt - Staring at my spaceship (DX Edition)	youtube	f
3ad4NsEy1tg	2019-09-01 16:21:02.988895-04	2019-09-01 16:21:02.988895-04	\N	234000000	ポルカドットスティングレイ「テレキャスター･ストライプ」MV	youtube	f
D199Zpv6d6M	2019-09-01 16:21:16.475423-04	2019-09-01 16:21:16.475423-04	\N	263000000	ポルカドットスティングレイ「ヒミツ」MV	youtube	f
VZa-AcOB7YE	2019-09-01 16:24:07.181143-04	2019-09-01 16:24:07.181143-04	\N	305000000	Stevie Wonder - Do I Do (The Definitive Collection, October, 2002)	youtube	f
dory2tga9WU	2019-09-01 16:26:41.423602-04	2019-09-01 16:26:41.423602-04	\N	318000000	【東方Vocal／Electronic】 Retrospective of Oblivion 「Yuuhei Satellite」	youtube	f
sEhQTjgoTdU	2019-09-01 16:41:57.48866-04	2019-09-01 16:41:57.48866-04	\N	589000000	Spain	youtube	f
JwWMpspzcg8	2019-09-01 16:53:54.30348-04	2019-09-01 16:53:54.30348-04	\N	563000000	【東方ボーカル】 「Fall In The Dark」 【ShibayanRecords】【Subbed】	youtube	f
IHNzOHi8sJs	2019-09-01 16:54:27.837714-04	2019-09-01 16:54:27.837714-04	\N	215000000	BLACKPINK - ‘뚜두뚜두 (DDU-DU DDU-DU)’ M/V	youtube	f
ET6nKllfGf8	2019-09-01 16:55:15.834327-04	2019-09-01 16:55:15.834327-04	\N	226000000	Reol - Ten to One [Jijitsujo]	youtube	f
7ybhLXebppU	2019-09-01 16:55:35.787426-04	2019-09-01 16:55:35.787426-04	\N	221000000	少女終末旅行 / Shoujo Shuumatsu Ryokou Ending FULL - More One Night	youtube	f
B7xai5u_tnk	2019-09-01 17:09:00.253083-04	2019-09-01 17:09:00.253083-04	\N	291000000	TheFatRat - Monody (feat. Laura Brehm)	youtube	f
QqccaHauSKQ	2019-09-01 19:28:40.655045-04	2019-09-01 19:28:40.655045-04	\N	209000000	Vicetone - Nevada (feat. Cozi Zuehlsdorff) [Monstercat Official Music Video]	youtube	f
RBmoQSHfO2U	2019-09-01 20:00:34.725815-04	2019-09-01 20:00:34.725815-04	\N	212000000	Neil Cicierega - Annoyed Grunt	youtube	f
S5Gm-6b9wE4	2019-09-01 20:19:18.951696-04	2019-09-01 20:19:18.951696-04	\N	305000000	Scatman's World Fusion Collab	youtube	f
RFyCPicGbXM	2019-09-01 20:28:28.202903-04	2019-09-01 20:28:28.202903-04	\N	184000000	Neil Cicierega - Tiger	youtube	f
0D_p8pcidJk	2019-09-01 20:44:08.111117-04	2019-09-01 20:44:08.111117-04	\N	218000000	Drake's Town (Lavender Town Theme x Drake - God's Plan)	youtube	f
hbe-uN6qECg	2019-09-01 20:53:25.776267-04	2019-09-01 20:53:25.776267-04	\N	224000000	Through the Fire Flies and Flames	youtube	f
cnahaQKURiU	2019-09-02 00:04:25.080905-04	2019-09-02 00:04:25.080905-04	\N	107000000	'Drunk' by Mr.B The Gentleman Rhymer	youtube	f
KJoG7qTl7lE	2019-09-02 12:39:31.151811-04	2019-09-02 12:39:31.151811-04	\N	29000000	Slider (Irrelevant Mix) - Super Mario 64	youtube	f
ESScWj_9eTo	2019-09-02 12:40:12.580057-04	2019-09-02 12:40:12.580057-04	\N	182000000	Slider Fusion Collab	youtube	f
kxcj8dtgxIU	2019-09-02 12:44:55.776329-04	2019-09-02 12:44:55.776329-04	\N	31000000	cum zone	youtube	f
U9FzgsF2T-s	2019-09-02 12:52:27.657806-04	2019-09-02 12:52:27.657806-04	\N	174000000	007 : James Bond : Theme	youtube	f
xnki6mdkczY	2019-09-02 12:52:35.936609-04	2019-09-02 12:52:35.936609-04	\N	264000000	Gangsta's Paradise Cover [Epic Orchestra]	youtube	f
WJ645-hgFz4	2019-09-02 13:07:28.666881-04	2019-09-02 13:07:28.666881-04	\N	60000000	despacito - party cock anthem	youtube	f
K8iB877oXjM	2019-09-02 13:08:59.159873-04	2019-09-02 13:08:59.159873-04	\N	163000000	JONGHYUN (종현) – Moon [Han|Rom|Eng lyrics]	youtube	f
2A6hP4Z0izk	2019-09-02 13:15:18.858713-04	2019-09-02 13:15:18.858713-04	\N	32000000	American Miku!	youtube	f
g-sgw9bPV4A	2019-09-02 13:20:29.136334-04	2019-09-02 13:20:29.136334-04	\N	80000000	Kazoo Kid - Trap Remix	youtube	f
9QTJNiX2uig	2019-09-02 13:20:45.809075-04	2019-09-02 13:20:45.809075-04	\N	179000000	Eminem - Love The Way You Lie About Spaghetti	youtube	f
55AalrbALAk	2019-09-02 13:21:39.020513-04	2019-09-02 13:21:39.020513-04	\N	287000000	​Camellia (Feat. Nanahira) - Can I Friend You On Bassbook ? Lol [Bassline Yatteru ? LOL]	youtube	f
kmcpiM3SSOA	2019-09-02 13:27:03.019594-04	2019-09-02 13:27:03.019594-04	\N	20000000	Bernie sanders gonna cry? Gonna shit your pants maybe?	youtube	f
-Yll9tC5It4	2019-09-02 13:29:34.301267-04	2019-09-02 13:29:34.301267-04	\N	150000000	M.A.A.D. Slider	youtube	f
ZebIbvRoP1w	2019-09-02 13:40:22.506007-04	2019-09-02 13:40:22.506007-04	\N	168000000	Bonfire Slide -ChildishGambinoxSuperMario64 (Thx for1̶0̶0̶ 99 subs!)	youtube	f
DrCLBuf0Yec	2019-09-02 13:41:47.393824-04	2019-09-02 13:41:47.393824-04	\N	78000000	Slider - Super Mario 64	youtube	f
gh5hyBy7hks	2019-09-02 13:49:32.309997-04	2019-09-02 13:49:32.309997-04	\N	218000000	Basics in Despacito [Blue]- The Living Tombstone	youtube	f
95MfBnTE5so	2019-09-02 13:53:47.451506-04	2019-09-02 13:53:47.451506-04	\N	167000000	Despacito Valley - The Legend of Zelda: Ocarina of Fonsi	youtube	f
yDpACm-WDeA	2019-09-02 13:55:16.516248-04	2019-09-02 13:55:16.516248-04	\N	176000000	Gerudo Valley (Combat) - Cadence of Hyrule: Crypt of the NecroDancer feat. The Legend of Zelda	youtube	f
5LGl70VGvmg	2019-09-02 14:01:03.150675-04	2019-09-02 14:01:03.150675-04	\N	210000000	LOUIS JORDAN - IS YOU IS OR IS YOU AIN'T MY BABY	youtube	f
65YO9d3TCx0	2019-09-02 15:30:12.906756-04	2019-09-02 15:30:12.906756-04	\N	233000000	【東方ボーカル】 「ドリームワールド feat. あよ」 【森羅万象】	youtube	f
_wz-Y8DA3qs	2019-09-02 15:31:42.689894-04	2019-09-02 15:31:42.689894-04	\N	294000000	【東方Vocal】 凋叶棕 (vo.ランコ) - 嘘と慟哭	youtube	f
VJG5zjslsXo	2019-09-02 15:31:53.903521-04	2019-09-02 15:31:53.903521-04	\N	245000000	【東方Vocal／Jazz】 SA・TO・RI 「Swing Of The Dead」	youtube	f
JaBmR8tC1oU	2019-09-02 16:37:38.205057-04	2019-09-02 16:37:38.205057-04	\N	196000000	【MV】[A]ddiction / GigaReol×EVO+	youtube	f
BD9txms1ZpY	2019-09-02 16:38:01.095932-04	2019-09-02 16:38:01.095932-04	\N	234000000	[Luz] Doku Ringo to Cinderella vostfr+romaji	youtube	f
cOxHwZuLcIU	2019-09-02 18:16:47.830775-04	2019-09-02 18:16:47.830775-04	\N	145000000	Mr. Sandman, but the opening clapping is uncomfortably meaty and plays throughout the whole song	youtube	f
WeYsTmIzjkw	2019-09-02 18:17:27.063101-04	2019-09-02 18:17:27.063101-04	\N	199000000	Afroman - Because I Got High (Official Video)	youtube	f
3q7oJuyy5Ac	2019-09-02 18:17:56.58217-04	2019-09-02 18:17:56.58217-04	\N	193000000	mii channel but all the pauses are uncomfortably long	youtube	f
_LjN3UclYzU	2019-09-02 18:19:10.926557-04	2019-09-02 18:19:10.926557-04	\N	97000000	The Missile Knows Where it is (Remix)	youtube	f
oaFEkmjnSGE	2019-09-02 18:20:08.401063-04	2019-09-02 18:20:08.401063-04	\N	140000000	Pepper Coyote - Blast Radius	youtube	f
HeFhAK-MDs4	2019-09-02 18:25:26.690044-04	2019-09-02 18:25:26.690044-04	\N	89000000	PINK GUY - HENTAI	youtube	f
6ltAVRyeqHk	2019-09-02 18:27:45.423526-04	2019-09-02 18:27:45.423526-04	\N	189000000	PINK GUY - NICKELODEON GIRLS	youtube	f
S7rM1zmCj1M	2019-09-02 18:28:12.893828-04	2019-09-02 18:28:12.893828-04	\N	214000000	CBT: The Full Experience [Reupload]	youtube	f
yrCxJ1kPQQo	2019-09-02 18:29:07.308971-04	2019-09-02 18:29:07.308971-04	\N	161000000	Show Me Your Genitals (1080p!)	youtube	f
YgGzAKP_HuM	2019-09-02 18:29:37.807151-04	2019-09-02 18:29:37.807151-04	\N	239000000	RASPUTIN - Vladimir Putin - Love The Way You Move (Funk Overload) @slocband	youtube	f
VLnWf1sQkjY	2019-09-02 18:29:58.658536-04	2019-09-02 18:29:58.658536-04	\N	152000000	The Lonely Island - Jizz In My Pants (Official Video)	youtube	f
sbmd_erqE1s	2019-09-02 18:30:01.876152-04	2019-09-02 18:30:01.876152-04	\N	198000000	Show Me Your Genitals 2  E=MC Vagina	youtube	f
S5nzKw-XIxw	2019-09-02 18:35:06.902723-04	2019-09-02 18:35:06.902723-04	\N	232000000	Maple Prison Bitch	youtube	f
5qgHKbqeFyY	2019-09-02 18:38:57.362455-04	2019-09-02 18:38:57.362455-04	\N	29000000	THX INTRO - BASS BOOST	youtube	f
1P4EP5TI574	2019-09-02 18:48:25.859324-04	2019-09-02 18:48:25.859324-04	\N	177000000	ASSGORE (Fingerfückung)	youtube	f
pSCJBGxRmH8	2019-09-02 18:59:53.538529-04	2019-09-02 18:59:53.538529-04	\N	1323000000	Renard -  Because Maybe! pt. 2	youtube	f
xUfxnDAAxHI	2019-09-02 19:03:44.645824-04	2019-09-02 19:03:44.645824-04	\N	60000000	Dragon Tales Opening Theme	youtube	f
Cj2eUpt3MVE	2019-09-02 20:49:18.389509-04	2019-09-02 20:49:18.389509-04	\N	194000000	Shawn Wasabi - OTTER POP (ft. Hollis) (Original Song)	youtube	f
qAeybdD5UoQ	2019-09-02 20:49:29.018594-04	2019-09-02 20:49:29.018594-04	\N	170000000	Shawn Wasabi - Marble Soda (Original Song)	youtube	f
_Uw6oJecPBA	2019-09-02 20:50:00.771484-04	2019-09-02 20:50:00.771484-04	\N	234000000	Shawn Wasabi - SQUEEZ® (ft. raychel jay)	youtube	f
7PYe57MwxPI	2019-09-02 20:50:23.437891-04	2019-09-02 20:50:23.437891-04	\N	243000000	dark cat - BUBBLE TEA (feat. juu & cinders)	youtube	f
JE1Gvzxfm1E	2019-09-02 20:50:59.320282-04	2019-09-02 20:50:59.320282-04	\N	122000000	Shawn Wasabi - BURNT RICE (Original Song)	youtube	f
X455RszhdpQ	2019-09-02 20:51:31.647287-04	2019-09-02 20:51:31.647287-04	\N	178000000	Spicy Boyfriend	youtube	f
unx9er0sG6o	2019-09-02 20:51:50.829218-04	2019-09-02 20:51:50.829218-04	\N	292000000	Shawn Wasabi - Mac n' Cheese (live mashup)	youtube	f
6ZcaXikDUqU	2019-09-02 20:52:15.647073-04	2019-09-02 20:52:15.647073-04	\N	140000000	Shawn Wasabi - i lost all my eggs (original song) *new button pad!*	youtube	f
N8nGig78lNs	2019-09-02 20:53:10.138625-04	2019-09-02 20:53:10.138625-04	\N	249000000	Snail's House - Hot Milk	youtube	f
7xFe0vkUJXU	2019-09-02 20:54:14.765846-04	2019-09-02 20:54:14.765846-04	\N	188000000	dark cat - CRAZY MILK	youtube	f
3nlSDxvt6JU	2019-09-02 20:55:04.908642-04	2019-09-02 20:55:04.908642-04	\N	240000000	Snail's House - Pixel Galaxy (Official MV)	youtube	f
y69QZxO4G2s	2019-09-02 20:55:39.088374-04	2019-09-02 20:55:39.088374-04	\N	195000000	dark cat - Hot Chocolate	youtube	f
MbR5EHHSfx4	2019-09-02 20:59:21.299127-04	2019-09-02 20:59:21.299127-04	\N	227000000	Stromae   Papaoutai Lyrics HQ	youtube	f
OFz1kYYesqU	2019-09-02 20:59:52.076986-04	2019-09-02 20:59:52.076986-04	\N	180000000	Veronica	youtube	f
skjwbyJ6Kjg	2019-09-02 21:00:36.567132-04	2019-09-02 21:00:36.567132-04	\N	167000000	Benjamin Booker - Violent Shiver (AUDIO)	youtube	f
CX45pYvxDiA	2019-09-02 21:03:01.899486-04	2019-09-02 21:03:01.899486-04	\N	143000000	Mr. Sandman - The Chordettes	youtube	f
b-Npx69OOp8	2019-09-02 21:04:26.453343-04	2019-09-02 21:04:26.453343-04	\N	206000000	Cuphead Remix- Floral Fury-The Living Tombstone	youtube	f
UJIHwC5Derk	2019-09-02 21:28:52.611332-04	2019-09-02 21:28:52.611332-04	\N	182000000	Shawn Wasabi - MANGO LOVE (ft. Satica) [Official Audio]	youtube	f
D2XSSuvKJeM	2019-09-02 21:54:00.236402-04	2019-09-02 21:54:00.236402-04	\N	181000000	Vianney - Veronica (Skydancers remix)(Clip Officiel)	youtube	f
103bx_Waacc	2019-09-02 21:56:06.967668-04	2019-09-02 21:56:06.967668-04	\N	190000000	Namika - Je ne parle pas français (Official Video)	youtube	f
UL2CShAL7NU	2019-09-02 22:02:40.802889-04	2019-09-02 22:02:40.802889-04	\N	131000000	KRUSTY KRAB (Trap Remix) SPONGEBOB [2018]	youtube	f
wDgQdr8ZkTw	2019-09-02 22:05:43.481553-04	2019-09-02 22:05:43.481553-04	\N	313000000	Undertale - Megalovania	youtube	f
ApXoWvfEYVU	2019-09-02 22:13:21.063075-04	2019-09-02 22:13:21.063075-04	\N	162000000	Post Malone, Swae Lee - Sunflower (Spider-Man: Into the Spider-Verse)	youtube	f
LHCob76kigA	2019-09-02 22:14:08.834749-04	2019-09-02 22:14:08.834749-04	\N	239000000	Lukas Graham - 7 Years [OFFICIAL MUSIC VIDEO]	youtube	f
0fHCiuAgekE	2019-09-02 22:15:10.739997-04	2019-09-02 22:15:10.739997-04	\N	209000000	7 Years / Panda / Don't Let Me Down (MASHUP) - David Gordon Music	youtube	f
_wI0_CmJL7M	2019-09-02 22:15:33.860862-04	2019-09-02 22:15:33.860862-04	\N	250000000	Closer x Sorry x 679 Mashup	youtube	f
PjBS454UAic	2019-09-02 22:17:04.51075-04	2019-09-02 22:17:04.51075-04	\N	215000000	havanananananananananananananananananananananananananananananananananananananananananananananananana	youtube	f
pRpeEdMmmQ0	2019-09-02 22:17:35.590057-04	2019-09-02 22:17:35.590057-04	\N	211000000	Shakira - Waka Waka (This Time for Africa) (The Official 2010 FIFA World Cup™ Song)	youtube	f
CevxZvSJLk8	2019-09-02 22:18:00.901859-04	2019-09-02 22:18:00.901859-04	\N	269000000	Katy Perry - Roar (Official)	youtube	f
kt0g4dWxEBo	2019-09-02 22:18:38.006025-04	2019-09-02 22:18:38.006025-04	\N	192000000	Rihanna, Kanye West, Paul McCartney - FourFiveSeconds	youtube	f
m4ANwuPbxXo	2019-09-02 22:29:34.105021-04	2019-09-02 22:29:34.105021-04	\N	313000000	Paul McCartney & Wings - Band On The Run [Rehearsal] [High Quality]	youtube	f
ptOl1B5yQuI	2019-09-03 15:07:16.5182-04	2019-09-03 15:07:16.5182-04	\N	247000000	【東方ボーカル】 「常世想兼神 feat.めらみぽっぷ」 【UNDEAD CORPORATION】	youtube	f
JDCB3_k-RBY	2019-09-03 15:12:38.181556-04	2019-09-03 15:12:38.181556-04	\N	80000000	Hypnospace Outlaw - Granny Cream's Hot Butter Ice Cream	youtube	f
RZhGITHIbns	2019-09-03 15:12:54.344248-04	2019-09-03 15:12:54.344248-04	\N	272000000	JoJo Part 2: Battle Tendency - Opening Full『BLOODY STREAM』by Coda	youtube	f
0EX6L6jCaLw	2019-09-03 15:15:19.532457-04	2019-09-03 15:15:19.532457-04	\N	216000000	JoJo Part 4: Diamond is Unbreakable - Opening Full『Crazy Noisy Bizarre Town』by THE DU	youtube	f
wCKNpguXvIE	2019-09-03 15:18:15.331001-04	2019-09-03 15:18:15.331001-04	\N	241000000	"Great Days" (Units Version) Full Song + BITES THE DUST	youtube	f
EWMPVn1kgIQ	2019-09-04 13:36:06.183168-04	2019-09-04 13:36:06.183168-04	\N	165000000	Enormous Penis	youtube	f
x3y9LtFZnCs	2019-09-04 13:38:11.527715-04	2019-09-04 13:38:11.527715-04	\N	258000000	The Devil Went Down to Georgia	youtube	f
U06jlgpMtQs	2019-09-04 13:43:45.287617-04	2019-09-04 13:43:45.287617-04	\N	225000000	National Anthem of USSR	youtube	f
AlJ8z86e8A8	2019-09-04 13:47:09.304979-04	2019-09-04 13:47:09.304979-04	\N	146000000	DJ Stalin  - National Techno Anthem of The Union of Soviet Communist Republic	youtube	f
OwNkS4AtKNE	2019-09-04 16:03:48.852898-04	2019-09-04 16:03:48.852898-04	\N	233000000	【東方ボーカル】 「〇✕△□」 【森羅万象】【Subbed】	youtube	f
0LbiJNoLoS0	2019-09-04 16:04:16.087614-04	2019-09-04 16:04:16.087614-04	\N	233000000	【東方ボーカル】 「ドラマティック膝栗毛」 【森羅万象】	youtube	f
LFclGymtrKQ	2019-09-04 16:04:27.737692-04	2019-09-04 16:04:27.737692-04	\N	251000000	【東方ボーカル】 「さかさまレジスタンス」 【森羅万象】	youtube	f
8QR2sSzNW-k	2019-09-04 16:04:54.904442-04	2019-09-04 16:04:54.904442-04	\N	326000000	【東方ボーカル】 「シャングリラ」 【森羅万象】	youtube	f
7nI_S2h2mxI	2019-09-04 16:05:03.219881-04	2019-09-04 16:05:03.219881-04	\N	267000000	【東方ボーカル】 「ノーレッジパラノイア」 【森羅万象】	youtube	f
d7QmD140S-8	2019-09-04 16:08:04.981997-04	2019-09-04 16:08:04.981997-04	\N	240000000	02. ランコ - 髑髏	youtube	f
kSjVejxBI-g	2019-09-04 16:08:11.949799-04	2019-09-04 16:08:11.949799-04	\N	249000000	【東方Vocal／Jazz】 邪な炎 「BUTAOTOME」	youtube	f
eNSRlrYDvFE	2019-09-04 20:52:06.621428-04	2019-09-04 20:52:06.621428-04	\N	339000000	ああ…翡翠茶漬け… - Stardust Prism	youtube	f
n5AaUie9Rrg	2019-09-04 23:50:17.890971-04	2019-09-04 23:50:17.890971-04	\N	31000000	BRUH NYE THE SCIENCE GUY	youtube	f
eLC7eK2CIrU	2019-09-04 23:55:54.993794-04	2019-09-04 23:55:54.993794-04	\N	74000000	JOHNNY TEST IS BACK!!!!	youtube	f
7AMW171X3YY	2019-09-05 18:37:52.006315-04	2019-09-05 18:37:52.006315-04	\N	285000000	Camellia - Superluminal Absolutely EXTRA-TONE-ordinary -Bumpy Ride-	youtube	f
SnaRPu2UEDE	2019-09-05 18:38:02.89395-04	2019-09-05 18:38:02.89395-04	\N	35000000	Peter tries rice cakes...	youtube	f
lmGEEgSy_fM	2019-09-05 18:38:08.699366-04	2019-09-05 18:38:08.699366-04	\N	94000000	Chika Dance / Eurobeat Remix (Short Version)	youtube	f
ngiQiVLNyUg	2019-09-05 18:38:44.996015-04	2019-09-05 18:38:44.996015-04	\N	227000000	[Cytus OST] naotyu- feat.miyu - Les Parfums de L'Amour (full version)	youtube	f
Kdp03O1FgJw	2019-09-05 18:39:15.695321-04	2019-09-05 18:39:15.695321-04	\N	364000000	ポルカドットスティングレイ「有頂天」MV	youtube	f
B3JHH14xEoQ	2019-09-05 18:39:23.010877-04	2019-09-05 18:39:23.010877-04	\N	420000000	[DnB] - Muzzy - Endgame [Monstercat Release]	youtube	f
A8pOVirjGF0	2019-09-05 18:39:30.339689-04	2019-09-05 18:39:30.339689-04	\N	343000000	RIOT - Overkill [Monstercat Release]	youtube	f
_s3WZVWkT5Q	2019-09-05 18:41:14.393884-04	2019-09-05 18:41:14.393884-04	\N	138000000	Megalovania 2 - Undertale 2	youtube	f
fJP1duVKn7Q	2019-09-05 18:56:11.553375-04	2019-09-05 18:56:11.553375-04	\N	230000000	Despacito II	youtube	f
ojf18wT_Xtk	2019-09-05 20:17:53.171797-04	2019-09-05 20:17:53.171797-04	\N	342000000	♫ Pink Floyd - On The Turning Away [Lyrics]	youtube	f
9srveL4cb64	2019-09-05 22:48:23.350929-04	2019-09-05 22:48:23.350929-04	\N	222000000	Skeet Skeet Canyon	youtube	f
NDjDgvXlfVw	2019-09-05 23:03:28.559381-04	2019-09-05 23:03:28.559381-04	\N	50000000	Low Tetris beatbox	youtube	f
bYb4kRC1FFM	2019-09-05 23:05:07.704483-04	2019-09-05 23:05:07.704483-04	\N	258000000	Boulevard of Broken Phineas	youtube	f
i-6YBNrMa6U	2019-09-05 23:12:39.475815-04	2019-09-05 23:12:39.475815-04	\N	20000000	Squisherz	youtube	f
AnBIsflydmc	2019-09-05 23:18:10.281029-04	2019-09-05 23:18:10.281029-04	\N	210000000	Invader Zim Situations	youtube	f
_hAC2oO4Njs	2019-09-05 23:23:40.737369-04	2019-09-05 23:23:40.737369-04	\N	184000000	Toby Keith - Red Solo Cup (lyrics on screen)	youtube	f
i98bKRYIZd8	2019-09-05 23:27:44.239239-04	2019-09-05 23:27:44.239239-04	\N	172000000	Cotton Eye Joe Gregorian Chant Nightcore Hardcore Dubstep Remix	youtube	f
qQvIAs-nPSo	2019-09-05 23:29:41.67169-04	2019-09-05 23:29:41.67169-04	\N	129000000	What's New Pussycat?	youtube	f
RjlvdcBAKdg	2019-09-06 00:01:04.298878-04	2019-09-06 00:01:04.298878-04	\N	313000000	Band On The Run (Remastered 2010)	youtube	f
6sIjSNTS7Fs	2019-09-06 00:25:44.500633-04	2019-09-06 00:25:44.500633-04	\N	238000000	Stevie Wonder - Sir Duke	youtube	f
bozH0O_cVhY	2019-09-06 00:26:05.470464-04	2019-09-06 00:26:05.470464-04	\N	247000000	Stevie Wonder - Lately	youtube	f
KYdDUXyFocY	2019-09-06 13:50:14.436592-04	2019-09-06 13:50:14.436592-04	\N	1048000000	Game Theory: UNDERTALE - Sans's SECRET Identity!	youtube	f
0Dpw0VvH4m0	2019-09-06 14:06:36.818465-04	2019-09-06 14:06:36.818465-04	\N	132000000	1, 2 Oatmeal	youtube	f
LEEnJQCOXZw	2019-09-06 15:35:10.153451-04	2019-09-06 15:35:10.153451-04	\N	216000000	Caravan Palace - Moonshine (Official audio)	youtube	f
LX5ntwkUa48	2019-09-06 15:36:00.906432-04	2019-09-06 15:36:00.906432-04	\N	187000000	Caravan Palace - Plume (Official Video)	youtube	f
GEENb-BmmJ0	2019-09-06 15:36:47.95604-04	2019-09-06 15:36:47.95604-04	\N	225000000	Caravan Palace - Leena (Official Audio)	youtube	f
cGMWL8cOeAU	2019-09-06 20:23:55.239291-04	2019-09-06 20:23:55.239291-04	\N	236000000	Transistor Original Soundtrack - In Circles	youtube	f
41tIUr_ex3g	2019-09-06 20:24:07.59879-04	2019-09-06 20:24:07.59879-04	\N	224000000	Transistor Original Soundtrack - The Spine	youtube	f
f9O2Rjn1azc	2019-09-06 20:24:16.462555-04	2019-09-06 20:24:16.462555-04	\N	180000000	Transistor Original Soundtrack - We All Become	youtube	f
vFrjMq4aL-g	2019-09-06 20:24:49.324768-04	2019-09-06 20:24:49.324768-04	\N	271000000	Transistor Original Soundtrack - Paper Boats	youtube	f
zGTkAVsrfg8	2019-09-06 20:25:25.423119-04	2019-09-06 20:25:25.423119-04	\N	250000000	Transistor - Bonus Track: She Shines	youtube	f
WROI5WYBU_A	2019-09-06 20:25:45.345318-04	2019-09-06 20:25:45.345318-04	\N	205000000	Transistor Original Soundtrack - Signals	youtube	f
YIALlhlyqO4	2019-09-06 20:52:55.645784-04	2019-09-06 20:52:55.645784-04	\N	199000000	Doja Cat, Tyga - Juicy (Official Video)	youtube	f
YyMpGpYD0Wo	2019-09-07 13:06:24.022819-04	2019-09-07 13:06:24.022819-04	\N	4000000	seinfeld.wav	youtube	f
zR4GkZcPF_o	2019-09-07 13:25:06.303704-04	2019-09-07 13:25:06.303704-04	\N	51000000	Despito (cursed eurobeat mix) - INITIAL Despacito	youtube	f
Fl5ljaNNu7I	2019-09-07 13:25:48.232973-04	2019-09-07 13:25:48.232973-04	\N	2000000	So Long King Bowser (Sound Effect)	youtube	f
9wfQ2KnCMJY	2019-09-07 13:26:09.1682-04	2019-09-07 13:26:09.1682-04	\N	30000000	Cyberchase intro	youtube	f
qNVreeCoBZ8	2019-09-07 13:28:01.616505-04	2019-09-07 13:28:01.616505-04	\N	194000000	CYBERCHASE THEME SONG REMIX [PROD. BY ATTIC STEIN]	youtube	f
6YDwBktDthA	2019-09-07 18:21:04.591171-04	2019-09-07 18:21:04.591171-04	\N	181000000	John Mayer - Carry Me Away (Official Lyric Video)	youtube	f
wXhTHyIgQ_U	2019-09-07 18:21:26.469867-04	2019-09-07 18:21:26.469867-04	\N	226000000	Post Malone - Circles	youtube	f
PC0nSbgwAqw	2019-09-07 18:21:51.50111-04	2019-09-07 18:21:51.50111-04	\N	195000000	Kelsea Ballerini - homecoming queen? (Official Music Video)	youtube	f
cTvj0k3ligI	2019-09-07 18:22:12.743947-04	2019-09-07 18:22:12.743947-04	\N	230000000	Take What You Want	youtube	f
ow1QqW0jzTo	2019-09-07 18:22:31.465178-04	2019-09-07 18:22:31.465178-04	\N	191000000	Shawn Mendes, Camila Cabello - Señorita (Lyrics)	youtube	f
bN8vY8qkgVs	2019-09-07 18:22:51.613164-04	2019-09-07 18:22:51.613164-04	\N	207000000	Blanco Brown - The Git Up (Official Audio)	youtube	f
SmbmeOgWsqE	2019-09-07 18:23:01.452848-04	2019-09-07 18:23:01.452848-04	\N	166000000	Lizzo - Good As Hell (Official Video)	youtube	f
Dkk9gvTmCXY	2019-09-07 18:23:24.15731-04	2019-09-07 18:23:24.15731-04	\N	210000000	Taylor Swift - You Need To Calm Down	youtube	f
w2Ov5jzm3j8	2019-09-07 18:23:39.147107-04	2019-09-07 18:23:39.147107-04	\N	309000000	Lil Nas X - Old Town Road (Official Movie) ft. Billy Ray Cyrus	youtube	f
Fp_P_e1cPOE	2019-09-07 18:47:26.331522-04	2019-09-07 18:47:26.331522-04	\N	226000000	Camila Cabello - Shameless	youtube	f
N_qFfQ3xHCw	2019-09-07 18:48:21.594594-04	2019-09-07 18:48:21.594594-04	\N	146000000	OneRepublic - Wanted	youtube	f
6-OvO8ZuW98	2019-09-07 18:49:07.32439-04	2019-09-07 18:49:07.32439-04	\N	209000000	Camila Cabello - Liar (Audio)	youtube	f
zABLecsR5UE	2019-09-07 18:49:24.328262-04	2019-09-07 18:49:24.328262-04	\N	187000000	Lewis Capaldi - Someone You Loved (Official Video)	youtube	f
si7Xzb5VjiA	2019-09-07 18:49:47.942341-04	2019-09-07 18:49:47.942341-04	\N	184000000	Post Malone - Hollywood's Bleeding (Lyrics)	youtube	f
Fr9PRD3zazQ	2019-09-07 18:50:24.454858-04	2019-09-07 18:50:24.454858-04	\N	224000000	Let It Be Me	youtube	f
iYJoahPxhR8	2019-09-07 18:50:38.936261-04	2019-09-07 18:50:38.936261-04	\N	245000000	Die For Me	youtube	f
29a6o5vRKVM	2019-09-07 18:51:38.551283-04	2019-09-07 18:51:38.551283-04	\N	204000000	Marshmello & Kane Brown - One Thing Right (Official Music Video)	youtube	f
-BjZmE2gtdo	2019-09-07 18:52:03.096573-04	2019-09-07 18:52:03.096573-04	\N	238000000	Taylor Swift - Lover	youtube	f
963h3JWsTnY	2019-09-07 18:59:32.409751-04	2019-09-07 18:59:32.409751-04	\N	195000000	*NSYNC - It's Gonna Be Me	youtube	f
7vhA4KWXil0	2019-09-07 18:59:47.967575-04	2019-09-07 18:59:47.967575-04	\N	125000000	You've Got a Friend in Me	youtube	f
gg6mDY2HWdQ	2019-09-07 19:00:53.809078-04	2019-09-07 19:00:53.809078-04	\N	294000000	Somebody's Watching Me	youtube	f
72r32bceDzg	2019-09-07 19:01:23.469397-04	2019-09-07 19:01:23.469397-04	\N	245000000	ABBA Take a Chance On Me	youtube	f
Dh2Lky730q0	2019-09-07 19:55:06.914058-04	2019-09-07 19:55:06.914058-04	\N	163000000	Mona Lisa - [AUDIO ONLY]	youtube	f
wycjnCCgUes	2019-09-07 19:56:27.621128-04	2019-09-07 19:56:27.621128-04	\N	200000000	Tame Impala - Feels Like We Only Go Backwards	youtube	f
GI6CfKcMhjY	2019-09-07 19:57:51.740147-04	2019-09-07 19:57:51.740147-04	\N	197000000	Jack Sparrow (feat. Michael Bolton)	youtube	f
lQlIhraqL7o	2019-09-07 20:05:24.210058-04	2019-09-07 20:05:24.210058-04	\N	175000000	I Just Had Sex (feat. Akon)	youtube	f
wcp2nVyJjLM	2019-09-07 20:13:41.227849-04	2019-09-07 20:13:41.227849-04	\N	131000000	Sans Undertale does the Megalovania Chicken Dance	youtube	f
dQCp0TYygMk	2019-09-07 20:15:30.825068-04	2019-09-07 20:15:30.825068-04	\N	238000000	The Pierrot of the Star-Spangled Banner - Touhou 15: Legacy of Lunatic Kingdom	youtube	f
eNRSSWFRF4U	2019-09-07 20:26:48.943421-04	2019-09-07 20:26:48.943421-04	\N	280000000	【東方Orchestral／Traditional】 Blue Sea of 53 Minutes 「Melodic Taste」	youtube	f
zdlxra0dPdo	2019-09-07 20:27:16.679655-04	2019-09-07 20:27:16.679655-04	\N	219000000	【東方Orchestral】 Magical Girl Crusade 「Melodic Taste」	youtube	f
binHBsjfsPE	2019-09-07 20:27:34.521914-04	2019-09-07 20:27:34.521914-04	\N	25000000	Nightcore - Cyberchase	youtube	f
Z2Nvn29npw8	2019-09-07 20:34:26.897422-04	2019-09-07 20:34:26.897422-04	\N	239000000	Wake Me Up When The Creepers Are Gone	youtube	f
yXP1E4lqb7U	2019-09-07 20:57:42.528901-04	2019-09-07 20:57:42.528901-04	\N	148000000	The Boys Are Back In Town	youtube	f
hQo1HIcSVtg	2019-09-07 20:59:16.181485-04	2019-09-07 20:59:16.181485-04	\N	264000000	Boys Are Back In Town Thin Lizzy	youtube	f
0AwA5A1wE0o	2019-09-08 17:40:48.776181-04	2019-09-08 17:40:48.776181-04	\N	201000000	Boyfriend	youtube	f
djV11Xbc914	2019-09-08 21:11:52.203737-04	2019-09-08 21:11:52.203737-04	\N	227000000	a-ha - Take On Me (Official Music Video)	youtube	f
PNjJT-_ivdI	2019-09-08 22:36:15.886728-04	2019-09-08 22:36:15.886728-04	\N	172000000	Steamed Hams but it's Squidward and Mr. Krabs	youtube	f
sCRYqc4P95M	2019-09-08 22:36:48.002824-04	2019-09-08 22:36:48.002824-04	\N	61000000	Sponge Boi Me Bob	youtube	f
yPkR3T6Mi3A	2019-09-08 22:39:39.362555-04	2019-09-08 22:39:39.362555-04	\N	68000000	Canned Coochie	youtube	f
BJMAEFM_IoQ	2019-09-08 22:43:05.449998-04	2019-09-08 22:43:05.449998-04	\N	44000000	Hughception	youtube	f
0aW62jeSvu8	2019-09-09 14:20:31.036269-04	2019-09-09 14:20:31.036269-04	\N	129000000	【Touhou TETLAPOT x IOSYS】Cirno's Perfect Math Class: The ⑨ Anniversary Edition 【東方】English Subs	youtube	f
8ili8fQdC8o	2019-09-09 14:23:34.412801-04	2019-09-09 14:23:34.412801-04	\N	270000000	【東方Vocal (Pop)】 あ～るの～と「R-note」 - 氷結娘 -Refined Mix-	youtube	f
8Y1g2iscl6s	2019-09-09 14:25:04.456979-04	2019-09-09 14:25:04.456979-04	\N	243000000	Yuuhei Satellite - Tomboyish Girl in Love	youtube	f
JIZ12EQ2SFg	2019-09-09 14:25:16.68221-04	2019-09-09 14:25:16.68221-04	\N	183000000	EoSD Stage 2 Boss - Cirno's Theme - Beloved Tomboyish Girl	youtube	f
N51S1PXAv2c	2019-09-09 14:30:53.180147-04	2019-09-09 14:30:53.180147-04	\N	324000000	【東方Cinematic／Orchestral】 Beloved Tomboyish Daughter 「CarrotWine.」	youtube	f
yWpho_8WZjQ	2019-09-09 14:32:22.490472-04	2019-09-09 14:32:22.490472-04	\N	241000000	【東方ニコカラ】恋ニ落チルノ ／ CrazyBeats	youtube	f
HtJTcnyGZ04	2019-09-16 16:27:25.708349-04	2019-09-16 16:27:25.708349-04	\N	265000000	백예린 of 15& - 가끔 (by 크러쉬)	youtube	f
s_5YRnTBjjk	2019-09-09 14:33:27.535946-04	2019-09-09 14:33:27.535946-04	\N	258000000	【東方ニコカラ】秘密のソルベ ／ 少女フラクタル【名華祭12新曲】	youtube	f
UOYBAIMLBlQ	2019-09-09 14:34:12.020339-04	2019-09-09 14:34:12.020339-04	\N	270000000	[東方Vocal/Jpop] チルノは覚醒サマーデイズ！	youtube	f
OGVEin657s0	2019-09-09 14:40:33.523069-04	2019-09-09 14:40:33.523069-04	\N	280000000	【東方Vocal】　Little Lady　【おてんば恋娘】	youtube	f
RIW4XxehvxA	2019-09-09 14:41:31.3246-04	2019-09-09 14:41:31.3246-04	\N	245000000	おてんば恋娘【東方Vocalアレンジ曲】Prismatic【CielArc】	youtube	f
O6hYzZTjCQc	2019-09-09 14:41:50.693466-04	2019-09-09 14:41:50.693466-04	\N	94000000	おてんば恋娘/東方紅魔郷 ～ the Embodiment of Scarlet Devil.【オルゴール】	youtube	f
wJfvHM9WgnQ	2019-09-09 14:42:49.939104-04	2019-09-09 14:42:49.939104-04	\N	205000000	【東方Vocal／Future Bass】 icicle,icicle 「Spacelectro」	youtube	f
38AU5UXe_wI	2019-09-09 14:43:06.09415-04	2019-09-09 14:43:06.09415-04	\N	327000000	Demetori - Adventure of the Lovestruck Tomboy	youtube	f
9wJomSyM6_Y	2019-09-09 14:43:54.472174-04	2019-09-09 14:43:54.472174-04	\N	354000000	【Heart of Glass】チルノヴォーカルアレンジ	youtube	f
y742UcS_T14	2019-09-09 14:46:16.705205-04	2019-09-09 14:46:16.705205-04	\N	266000000	【東方Vocal／Digital Rock】 Silver Force 「C-CLAYS」	youtube	f
7JRJEnAIahY	2019-09-09 15:26:32.238432-04	2019-09-09 15:26:32.238432-04	\N	399000000	Demetori - Desire Drive ~ Desire Dream	youtube	f
astISOttCQ0	2019-09-09 15:53:21.819573-04	2019-09-09 15:53:21.819573-04	\N	163000000	The Gummy Bear Song - Long English Version	youtube	f
pfkBYHFZAt8	2019-09-09 15:55:17.122897-04	2019-09-09 15:55:17.122897-04	\N	356000000	絶対にチョコミントを食べるアオイチャン	youtube	f
yXZvDNr-6kU	2019-09-09 15:55:30.402773-04	2019-09-09 15:55:30.402773-04	\N	292000000	Plastic Love (Jazz Reharmonized) / 竹内まりや (Mariya Takeuchi)	youtube	f
PhQ1X2KwMY0	2019-09-09 15:55:54.278685-04	2019-09-09 15:55:54.278685-04	\N	283000000	Akira Jimbo - Set Them Free (Full Version)	youtube	f
B4BwMRrufRo	2019-09-09 15:56:02.815051-04	2019-09-09 15:56:02.815051-04	\N	295000000	ああ…翡翠茶漬け… - Dream Makers - 13 Dream Makers	youtube	f
VUZj0aYTkw0	2019-09-09 15:56:10.524734-04	2019-09-09 15:56:10.524734-04	\N	205000000	ああああ - Dream Makers - 12 rainbow (smile again)	youtube	f
YOsgooWD6c8	2019-09-09 15:56:21.38699-04	2019-09-09 15:56:21.38699-04	\N	340000000	ああああ＋翡乃イスカ - Dream Makers - 08 Keep smiling.	youtube	f
YlxRyvO2Yek	2019-09-09 16:14:19.379636-04	2019-09-09 16:14:19.379636-04	\N	198000000	Old Town Road (Touhou Style)	youtube	f
rwaDUXoKmtI	2019-09-09 16:22:46.50966-04	2019-09-09 16:22:46.50966-04	\N	25000000	Dangan Ronpa! - Danganronpa: Trigger Happy Havoc	youtube	f
dgeLtFO3J0s	2019-09-09 16:23:47.924593-04	2019-09-09 16:23:47.924593-04	\N	261000000	New Game - Just Shapes & Beats	youtube	f
HgNj9v5ClGQ	2019-09-09 16:55:33.005682-04	2019-09-09 16:55:33.005682-04	\N	450000000	【Shibayan Records】 オズネイ・ハマンはもういらない	youtube	f
V8zdNe_l3M8	2019-09-09 17:14:53.674182-04	2019-09-09 17:14:53.674182-04	\N	266000000	If I Had A Million Dollars - Bare Naked Ladies (High Quality)	youtube	f
Bl2_E9Adbec	2019-09-09 17:23:56.045672-04	2019-09-09 17:23:56.045672-04	\N	260000000	【東方Vocal／Eurobeat】 Super Dimensional Atlantis 「SOUND HOLIC」	youtube	f
kHZ8z-Ezqg8	2019-09-09 19:58:51.491886-04	2019-09-09 19:58:51.491886-04	\N	268000000	【東方Future Bass】 Cast the spell on me 「IOSYS」	youtube	f
6uGV8Q5DJus	2019-09-09 20:11:03.813097-04	2019-09-09 20:11:03.813097-04	\N	292000000	Camellia Feat. Nanahira ● Tsukitourou	youtube	f
XUhVCoTsBaM	2019-09-09 21:31:04.248959-04	2019-09-09 21:31:04.248959-04	\N	202000000	Jojo's Bizarre Adventure- Awaken(Pillar Men Theme)	youtube	f
UP8ZPlOOZGs	2019-09-09 21:31:29.763164-04	2019-09-09 21:31:29.763164-04	\N	315000000	DJ Noriken - #The_Relentless_(Modified)	youtube	f
lvPRs_HC7Wg	2019-09-09 21:32:16.986628-04	2019-09-09 21:32:16.986628-04	\N	309000000	[Official] ANTI THE∞HOLiC / cosMo＠暴走P feat.  鏡音リン・巡音ルカ	youtube	f
l5aZJBLAu1E	2019-09-09 21:32:51.883512-04	2019-09-09 21:32:51.883512-04	\N	294000000	The Weather Girls - It's Raining Men (Video)	youtube	f
vJk4K9ASKIY	2019-09-09 21:33:41.079352-04	2019-09-09 21:33:41.079352-04	\N	125000000	M2U - A Bella!	youtube	f
s9HvEXUORfE	2019-09-09 21:33:56.893235-04	2019-09-09 21:33:56.893235-04	\N	230000000	lapix - Future Raver feat.numb'n'dub	youtube	f
7WkmaeYFcgg	2019-09-09 21:34:19.075437-04	2019-09-09 21:34:19.075437-04	\N	420000000	Phantom Tendency: Stardust is Golden (Jonathan/Joseph/Jotaro/Josuke/Giorno theme mixup)	youtube	f
_oah4-2MH5s	2019-09-10 14:12:07.440578-04	2019-09-10 14:12:07.440578-04	\N	225000000	Broccoli	youtube	f
nbY_aP-alkw	2019-09-10 21:32:50.844301-04	2019-09-10 21:32:50.844301-04	\N	244000000	Hakuna Matata | The Lion King 1994	youtube	f
71kR6v9-o0c	2019-09-11 21:50:26.805667-04	2019-09-11 21:50:26.805667-04	\N	299000000	【UTAU RELEASE PV 】 Watching You Die (君が死ぬのを眺めているよ)【JUBEL】	youtube	f
opKMBHu1CK4	2019-09-11 21:52:38.031456-04	2019-09-11 21:52:38.031456-04	\N	290000000	Camellia ft. Hatsune Miku - I Will Witness Your End [English Subtitles]	youtube	f
_862yvcxI4w	2019-09-12 18:36:30.642506-04	2019-09-12 18:36:30.642506-04	\N	267000000	Good-bye Chalon	youtube	f
7NEeGfdLdsk	2019-09-12 18:42:51.129154-04	2019-09-12 18:42:51.129154-04	\N	249000000	猫叉Master - 千年ノ理	youtube	f
0rfb6LuMAz0	2019-09-12 18:43:04.52013-04	2019-09-12 18:43:04.52013-04	\N	129000000	猫叉Master+ - Proof of the existence	youtube	f
CVrnIwalDg0	2019-09-12 18:43:12.318459-04	2019-09-12 18:43:12.318459-04	\N	125000000	猫叉Master - イザナミノナゲキ	youtube	f
WB0KH2DPpHc	2019-09-12 18:43:27.560809-04	2019-09-12 18:43:27.560809-04	\N	127000000	猫叉Master - scar in the earth	youtube	f
PMFoT9nfa9M	2019-09-12 18:44:23.58572-04	2019-09-12 18:44:23.58572-04	\N	89000000	猫叉Master feat.Mayumi Morinaga - Sleepless days	youtube	f
h-P4V04lnX0	2019-09-15 14:19:08.894964-04	2019-09-15 14:19:08.894964-04	\N	269000000	『Lyrics AMV』Shoujo Shuumatsu Ryoukou ED 2 / Insert - Amadare no Uta／Chito & Yuuri	youtube	f
hQ5wTb4OrVE	2019-09-15 15:09:40.30578-04	2019-09-15 15:09:40.30578-04	\N	350000000	【東方妖々夢】 無幻想浪漫綺行(is the limit.) （A Romantic, Beautiful Journey Through Illusions）「凋叶棕」【Subbed】	youtube	f
lVwstM4vZC8	2019-09-15 15:09:57.464957-04	2019-09-15 15:09:57.464957-04	\N	330000000	Alice's Theme - Doll Judgment	youtube	f
Waexn86uksk	2019-09-15 19:17:38.291565-04	2019-09-15 19:17:38.291565-04	\N	10000000	PictoChat - Super Smash Bros. UItimate	youtube	f
byv-AeNWECw	2019-09-15 19:18:46.01356-04	2019-09-15 19:18:46.01356-04	\N	167000000	Maybe It's The Way You're Megalovania'd	youtube	f
s7xqYhTfYk0	2019-09-15 19:27:03.600983-04	2019-09-15 19:27:03.600983-04	\N	199000000	Trailer Theme - Animal Crossing: New Horizons	youtube	f
bxU138Yev4E	2019-09-15 19:27:40.634817-04	2019-09-15 19:27:40.634817-04	\N	277000000	Bomb Rush Blush - Super Smash Bros. UItimate	youtube	f
MvlYPbfZvLc	2019-09-15 19:36:26.944578-04	2019-09-15 19:36:26.944578-04	\N	215000000	KK Slider - I Want It That Way (Backstreet Boys)	youtube	f
B-_3NlNt_z4	2019-09-15 19:39:11.841416-04	2019-09-15 19:39:11.841416-04	\N	167000000	Undertale[AU] | Justmonika | Cover | A Monika Megalovania	youtube	f
E-MaslEgG9o	2019-09-15 19:46:34.26899-04	2019-09-15 19:46:34.26899-04	\N	155000000	Furretalovania - Accumula Town but Megalovania Slowly Takes Control of the Piece	youtube	f
VRuK35MHgko	2019-09-15 19:49:05.303903-04	2019-09-15 19:49:05.303903-04	\N	203000000	Minealovania - Minecraft songs but megalovania keeps forcing its way into the piece	youtube	f
m6IgprLFbfY	2019-09-15 20:21:22.765621-04	2019-09-15 20:21:22.765621-04	\N	220000000	Wii Shop Channel (Beta Mix) - Super Smash Bros. UItimate	youtube	f
BGQmmDEDYiI	2019-09-15 20:28:49.509164-04	2019-09-15 20:28:49.509164-04	\N	254000000	Jim's Big Ego - Stress	youtube	f
mOo8bVzN9M8	2019-09-16 16:24:44.990972-04	2019-09-16 16:24:44.990972-04	\N	253000000	[MV] 10cm _ Phonecert (폰서트)	youtube	f
evCAQCXscdM	2019-09-16 16:24:53.610644-04	2019-09-16 16:24:53.610644-04	\N	239000000	Perhaps Love (사랑인가요) (Prod.By 박근태) Eric Nam, CHEEZE – Your BGM Vol. 1	youtube	f
EHTagN5HJKQ	2019-09-16 16:25:07.832683-04	2019-09-16 16:25:07.832683-04	\N	219000000	CHEEZE (치즈) - Madeleine Love	youtube	f
OhYhfnyAvUY	2019-09-16 16:25:17.276576-04	2019-09-16 16:25:17.276576-04	\N	256000000	[K-Indie] 치즈(CHEEZE) - Romance	youtube	f
0JR0ApUALOQ	2019-10-23 20:45:23.059975-04	2019-10-23 20:45:23.059975-04	\N	322000000	Right Hand Man	youtube	f
AhccsEK8S_Y	2019-09-13 00:19:16.346647-04	2019-09-13 00:19:16.346647-04	\N	168000000	Hopeless Romantic [NSF, 2a03 + N163]	youtube	f
JcRydoHUhE4	2019-09-13 00:19:34.049061-04	2019-09-13 00:19:34.049061-04	\N	242000000	Lovesickness [NSF, 2a03]	youtube	f
6fqPP6lCX0Q	2019-09-13 12:44:08.533176-04	2019-09-13 12:44:08.533176-04	\N	356000000	【OSTER project】Violet Rose【Music Video】	youtube	f
SQFmQYv15Gc	2019-09-13 12:47:08.633823-04	2019-09-13 12:47:08.633823-04	\N	194000000	pianoxforte - OSTER project	youtube	f
7hqTxVowKsc	2019-09-13 12:47:23.36788-04	2019-09-13 12:47:23.36788-04	\N	320000000	【OSTER project】ラブラドライト feat.常盤ゆう【Music Video】	youtube	f
Pfnyqc021mY	2019-09-13 17:15:22.360676-04	2019-09-13 17:15:22.360676-04	\N	211000000	【東方Vocal／Eurobeat】 Psychedelic Onizakura Alliance 「SOUND HOLIC」	youtube	f
3qcwEnwDdzE	2019-09-13 20:37:02.389275-04	2019-09-13 20:37:02.389275-04	\N	254000000	Nanahira - Heeartbeeat Oveerheeat!!!!	youtube	f
W_EfDSnToKY	2019-09-13 20:40:58.769497-04	2019-09-13 20:40:58.769497-04	\N	276000000	Confetto - IoT(※Internet of Things)の女神☆モノノン☆	youtube	f
0q5vYr-SWlY	2019-09-14 02:49:23.698681-04	2019-09-14 02:49:23.698681-04	\N	218000000	"sweet dreams but i put kahoot music over it" but I fixed the tempo	youtube	f
yO6mRJraWqQ	2019-09-14 02:54:10.301582-04	2019-09-14 02:54:10.301582-04	\N	222000000	sweet dreams with the kahoot theme and fixed tempo and Joker's gun but I added the Tainted Love clap	youtube	f
V1X-gz58RLw	2019-09-14 02:59:01.622452-04	2019-09-14 02:59:01.622452-04	\N	222000000	sweet dreams with the kahoot theme & Jokers gun & tainted love clap but I added the crab rave shaker	youtube	f
9X7I3bW49S8	2019-09-14 12:41:09.810607-04	2019-09-14 12:41:09.810607-04	\N	380000000	MEGALOVANIA (Camellia Remix)	youtube	f
WhQvgHM_Nd4	2019-09-14 13:21:02.458299-04	2019-09-14 13:21:02.458299-04	\N	235000000	Nichijou OP【PV】Hyadain no Kakakata☆Kataomoi-C 【ヒャダイン】[Subs español]	youtube	f
hfS9KQlKQlQ	2019-09-14 17:01:36.613224-04	2019-09-14 17:01:36.613224-04	\N	136000000	Excerpt from the Hope	youtube	f
BqlV7oQhVmw	2019-09-14 18:29:44.47887-04	2019-09-14 18:29:44.47887-04	\N	174000000	Conan Gray - The King (Lyrics)	youtube	f
RhU9MZ98jxo	2019-09-14 18:30:07.671805-04	2019-09-14 18:30:07.671805-04	\N	229000000	The Chainsmokers - Paris (Lyric Video)	youtube	f
2EeMQaIKEvA	2019-09-14 18:30:30.882403-04	2019-09-14 18:30:30.882403-04	\N	180000000	Alle Farben - H.O.L.Y Lyric	youtube	f
h5jz8xdpR0M	2019-09-14 18:33:47.148434-04	2019-09-14 18:33:47.148434-04	\N	216000000	Bishop Briggs - River (Official Music Video)	youtube	f
Q7VK0WwAoXQ	2019-09-14 18:34:05.083442-04	2019-09-14 18:34:05.083442-04	\N	191000000	Charlie Puth - River [Official Audio]	youtube	f
GgvMSSiZMi8	2019-09-14 18:53:15.983912-04	2019-09-14 18:53:15.983912-04	\N	217000000	Cosmic Sans (feat. Tom Misch)	youtube	f
YXTzMOmmEfE	2019-09-14 18:53:27.387277-04	2019-09-14 18:53:27.387277-04	\N	258000000	Hayley Kiyoko - Curious [Official Video]	youtube	f
6yqKAblvqnc	2019-09-14 20:48:39.281348-04	2019-09-14 20:48:39.281348-04	\N	314000000	sicko mode but every other 4 beats it switches to dicko mode and back	youtube	f
gAk7BLMQ3Qk	2019-09-14 21:26:33.629295-04	2019-09-14 21:26:33.629295-04	\N	157000000	Under the Gun- The Killers	youtube	f
mOYZaiDZ7BM	2019-09-15 00:18:23.563409-04	2019-09-15 00:18:23.563409-04	\N	194000000	Rednex - Cotton Eye Joe (Official Music Video) [HD] - RednexMusic com	youtube	f
WjT07JEuB9w	2019-09-15 01:13:46.828552-04	2019-09-15 01:13:46.828552-04	\N	483000000	【東方Vocal／Nu-Disco】 物見鴉の鬼渡し 「twinkle＊twinkle」	youtube	f
Dzdg-0vldW4	2019-09-15 14:28:29.315166-04	2019-09-15 14:28:29.315166-04	\N	600000000	10 minutes of silence	youtube	f
-DwN8eqUArQ	2019-09-15 15:20:35.850013-04	2019-09-15 15:20:35.850013-04	\N	452000000	Touhou 東方14 DDC OST #6: Kobito of the Shining Needle~Little Princess (Shinmyoumaru Sukuna's Theme)	youtube	f
xi_ZC_Hyhmo	2019-09-15 15:21:09.873141-04	2019-09-15 15:21:09.873141-04	\N	217000000	Youmu's Theme - Hiroari Shoots a Strange Bird ~ Till When?	youtube	f
sPTOQd9E6gE	2019-09-15 15:22:26.435462-04	2019-09-15 15:22:26.435462-04	\N	162000000	Aya's Theme - The Youkai Mountain ~ Mysterious Mountain	youtube	f
-F3_Cj-fMWw	2019-09-15 15:22:53.45857-04	2019-09-15 15:22:53.45857-04	\N	401000000	MoF Stage 4 - Fall of Fall ~ Autumnal Waterfall	youtube	f
Xy_-7OXophY	2019-09-15 15:28:10.114492-04	2019-09-15 15:28:10.114492-04	\N	346000000	SA Stage 6 Boss - Utsuho Reiuji's Theme - Solar Sect of Mystic Wisdom ~ Nuclear Fusion	youtube	f
Eidb9_gFLss	2019-09-15 19:22:01.71748-04	2019-09-15 19:22:01.71748-04	\N	60000000	How to recreate Sans voice in a minute!	youtube	f
pVHKp6ffURY	2019-09-15 19:57:11.601489-04	2019-09-15 19:57:11.601489-04	\N	214000000	Scatman (Ski Ba Bop Ba Dop Bop)	youtube	f
SS9gGnFQ-Ig	2019-09-15 20:05:24.386184-04	2019-09-15 20:05:24.386184-04	\N	301000000	City Escape (Classic) - Sonic Generations [OST]	youtube	f
9Z_13rVVaGM	2019-09-15 20:33:55.878493-04	2019-09-15 20:33:55.878493-04	\N	204000000	The World Sliding (Deltarune x Super Mario 64)	youtube	f
-S74ftNeRh4	2019-09-15 20:41:22.154407-04	2019-09-15 20:41:22.154407-04	\N	179000000	I Found A Way	youtube	f
EL9zk70NauA	2019-09-15 20:42:19.366755-04	2019-09-15 20:42:19.366755-04	\N	240000000	SANSBUSTERS	youtube	f
5Gr2YQXsGwA	2019-09-15 23:35:49.189718-04	2019-09-15 23:35:49.189718-04	\N	225000000	Scatmambo	youtube	f
ouR4nn1G9r4	2019-09-16 16:47:03.762064-04	2019-09-16 16:47:03.762064-04	\N	204000000	[MV] HIGH4, IU(하이포, 아이유) _ Not Spring, Love, or Cherry Blossoms(봄,사랑,벚꽃 말고)	youtube	f
NwxUejW0NUo	2019-09-16 16:47:16.267261-04	2019-09-16 16:47:16.267261-04	\N	217000000	IU - Palette (Feat. G-DRAGON) Color CodedLyrics [Han|Rom|Eng lyrics]	youtube	f
mrAIqeULUL0	2019-09-16 16:47:43.698576-04	2019-09-16 16:47:43.698576-04	\N	272000000	[MV] BOL4(볼빨간사춘기) _ Workaholic(워커홀릭)	youtube	f
7Q3eLs38328	2019-09-16 16:55:38.602957-04	2019-09-16 16:55:38.602957-04	\N	221000000	Bolbbalgan4 (볼빨간 사춘기) – To My Youth (나의 사춘기에게) (Lyrics HAN/ROM/ENG)	youtube	f
1GAW2cUHtKM	2019-09-16 16:55:51.220826-04	2019-09-16 16:55:51.220826-04	\N	223000000	BOLBBALGAN4 – HARD TO LOVE [Han|Rom|Eng lyrics]	youtube	f
jHkxauiiEWs	2019-09-16 16:55:56.664601-04	2019-09-16 16:55:56.664601-04	\N	181000000	Bolbbalgan4(볼빨간사춘기) _ Some(썸 탈꺼야) LYRICS (HAN/ROM/ENG)	youtube	f
WfYgbFBFe1E	2019-09-16 16:56:08.00987-04	2019-09-16 16:56:08.00987-04	\N	230000000	[MV] 수지(Suzy), 백현(BAEKHYUN) - Dream	youtube	f
oKalxTZwoyY	2019-09-16 16:56:19.93896-04	2019-09-16 16:56:19.93896-04	\N	170000000	볼빨간사춘기 (Bolbbalgan4) - You(=I) [AUDIO]	youtube	f
H6L99uIh4h4	2019-09-16 16:56:31.621403-04	2019-09-16 16:56:31.621403-04	\N	206000000	Bolbbalgan4 - Galaxy (우주를 줄게) Lyrics	youtube	f
8Lx2bYmEpQg	2019-09-16 19:22:54.981363-04	2019-09-16 19:22:54.981363-04	\N	31000000	Verbalase Megalovania Beatbox	youtube	f
c8FPeFgVu2s	2019-09-16 19:35:27.954804-04	2019-09-16 19:35:27.954804-04	\N	244000000	Danganronpa Main Theme (synthwave retro 80's remix)	youtube	f
zhIScvlFn2w	2019-09-16 19:35:35.435076-04	2019-09-16 19:35:35.435076-04	\N	174000000	Soda City Funk	youtube	f
hFPVFro4kEc	2019-09-16 19:37:02.516771-04	2019-09-16 19:37:02.516771-04	\N	232000000	DANCE WITH THE DEAD - From Hell (Loved to Death Album)	youtube	f
lX44CAz-JhU	2019-09-16 19:37:22.632062-04	2019-09-16 19:37:22.632062-04	\N	191000000	SIAMÉS "The Wolf" [Official Animated Music Video]	youtube	f
KQhYqC6h9vI	2019-09-16 19:40:50.518346-04	2019-09-16 19:40:50.518346-04	\N	229000000	GRRRLS	youtube	f
MCiDs3uoGk0	2019-09-16 19:41:07.465541-04	2019-09-16 19:41:07.465541-04	\N	196000000	Blame It On The Kids	youtube	f
DQpDcDCgO9k	2019-09-16 20:06:53.864358-04	2019-09-16 20:06:53.864358-04	\N	264000000	Reel Big Fish - I Know You Too Well To Like You Anymore  (ANIMATED MUSIC VIDEO)	youtube	f
jbaHxV0OVGc	2019-09-16 20:11:09.350184-04	2019-09-16 20:11:09.350184-04	\N	197000000	Baila El Chiki-Gasolina - Daddy Yankee vs. Pitbull vs. Rodolfo Chikilicuatre	youtube	f
gZiss7k74iI	2019-09-16 20:37:09.855316-04	2019-09-16 20:37:09.855316-04	\N	227000000	See You Again (Beta Mix) - Forza Horizon 2 Presents Fast & Furious	youtube	f
vakzvI-soqE	2019-09-16 20:41:18.879976-04	2019-09-16 20:41:18.879976-04	\N	22000000	Mario Golf! - Mario Golf	youtube	f
32Hp1LW08Yc	2019-09-16 20:54:30.557459-04	2019-09-16 20:54:30.557459-04	\N	94000000	MARIO SCREAMING	youtube	f
YpsOBjW4OIo	2019-09-16 20:56:52.108095-04	2019-09-16 20:56:52.108095-04	\N	1567000000	Super Smash Bros. Ultimate Everyone is Screaming	youtube	f
v28HJ6U_-xk	2019-09-16 20:59:06.704673-04	2019-09-16 20:59:06.704673-04	\N	10000000	Emote: Dance Moves (Nintendo Switch Version) - Fortnite	youtube	f
SFO0LK4h-v8	2019-09-16 21:14:28.810146-04	2019-09-16 21:14:28.810146-04	\N	189000000	"I Just Found Diamonds" - A Minecraft Parody of The Lonely Island's I Just Had Sex	youtube	f
QPntjTPWgKE	2019-09-16 21:46:43.520537-04	2019-09-16 21:46:43.520537-04	\N	288000000	iDOLM@STER vs. DMX - WHERE THE IDOLS AT	youtube	f
1LVcLr70dXY	2019-09-20 19:27:28.915077-04	2019-09-20 19:27:28.915077-04	\N	314000000	【東方】 SOUND HOLIC 『GUERRILLA GAME』	youtube	f
nf2zqnUcNLI	2019-09-20 19:28:19.207168-04	2019-09-20 19:28:19.207168-04	\N	241000000	【東方】 SOUND HOLIC 『DOUBLE WINGS』	youtube	f
-Z511umYjBE	2019-09-20 19:52:09.321888-04	2019-09-20 19:52:09.321888-04	\N	300000000	Main Theme - Banjo-Kazooie - Super Smash Bros. Ultimate	youtube	f
X1M69l7ZGlw	2019-09-20 20:03:16.829739-04	2019-09-20 20:03:16.829739-04	\N	92000000	Platinum Spice	youtube	f
IpXQYRc0LOg	2019-09-20 20:03:41.996206-04	2019-09-20 20:03:41.996206-04	\N	96000000	How Do You Octagon！？	youtube	f
muJ5EeEAee0	2019-09-20 20:09:18.172457-04	2019-09-20 20:09:18.172457-04	\N	128000000	Spongebob's Perfect Training Video	youtube	f
JhH1waXoHy8	2019-09-20 20:17:44.971524-04	2019-09-20 20:17:44.971524-04	\N	54000000	ＥＬＥＣＴＲＩＣ ＢＯＤＹＢＵＩＬＤＥＲ ＦＲＯＭ ＴＨＥ ＵＮＤＥＲＧＲＯＵＮＤ	youtube	f
pHXDMe6QV-U	2019-09-20 20:22:29.233868-04	2019-09-20 20:22:29.233868-04	\N	196000000	Sunstroke Project & Olia Tira - Run Away (Moldova) Live 2010 Eurovision Song Contest	youtube	f
n4qIQ_1cDew	2019-09-20 20:40:55.857948-04	2019-09-20 20:40:55.857948-04	\N	283000000	【東方ヴォーカルPV】全力ハッピーライフ【森羅万象公式】	youtube	f
wKgbDk2hXI8	2019-09-20 21:41:29.812371-04	2019-09-20 21:41:29.812371-04	\N	255000000	[Future Bass] PSYQUI ft. Such ー Your voice so...	youtube	f
5-uWlFq380M	2019-09-21 13:53:01.690778-04	2019-09-21 13:53:01.690778-04	\N	180000000	Sanctuary	youtube	f
Wv0P8kHrJNI	2019-09-21 15:01:42.678631-04	2019-09-21 15:01:42.678631-04	\N	349000000	Selector spread Wixoss - World's End, Girl's Rondo (Asterisk DnB)	youtube	f
Ri-MFbKJTlU	2019-09-21 15:01:49.965641-04	2019-09-21 15:01:49.965641-04	\N	294000000	Wakeshima Kanon - Tsukinami	youtube	f
gYOEyzBFYa4	2019-09-21 18:49:05.636307-04	2019-09-21 18:49:05.636307-04	\N	244000000	Wii Shop Bling	youtube	f
RWaYZe5V84E	2019-09-22 18:44:15.428018-04	2019-09-22 18:44:15.428018-04	\N	106000000	Girls Just Wanna Fuck Bees	youtube	f
4iZZsEQGv8s	2019-09-23 16:45:32.783457-04	2019-09-23 16:45:32.783457-04	\N	270000000	Sicko Mode + Megalovania Mashup (Sickolovania)	youtube	f
mgHxmAsINDk	2019-09-23 23:10:23.786948-04	2019-09-23 23:10:23.786948-04	\N	435000000	Beethoven - 7th Symphony - 2nd movement	youtube	f
VNy8FKDvfM8	2019-09-24 19:06:05.695074-04	2019-09-24 19:06:05.695074-04	\N	230000000	Nightcore - Party Rock Anthem	youtube	f
kyUtGNIFx5c	2019-09-24 19:10:31.622283-04	2019-09-24 19:10:31.622283-04	\N	146000000	The Quick Brown Fox - The Big Black	youtube	f
ZTlLG9sW-qs	2019-09-16 21:52:36.993079-04	2019-09-16 21:52:36.993079-04	\N	106000000	Scoutmaster Lazlo	youtube	f
A3oL7v7PLac	2019-09-16 22:14:39.460784-04	2019-09-16 22:14:39.460784-04	\N	89000000	Scary Movie (5/12) Movie CLIP - Wazzup! (2000) HD	youtube	f
Y5tjtUFL0j4	2019-09-16 22:40:29.77107-04	2019-09-16 22:40:29.77107-04	\N	166000000	just a regular crab rave, nothing to see here folks	youtube	f
NUlAg01KsUo	2019-09-17 19:27:58.953186-04	2019-09-17 19:27:58.953186-04	\N	186000000	Oatmeal Mode	youtube	f
SRbhLtjOiRc	2019-09-17 20:31:41.589254-04	2019-09-17 20:31:41.589254-04	\N	317000000	Initial D - Night Of Fire	youtube	f
tuKySGmuksI	2019-09-17 20:32:32.137629-04	2019-09-17 20:32:32.137629-04	\N	242000000	Hotblade - Manifold Love	youtube	f
hkFrqtjL730	2019-09-17 21:27:15.96214-04	2019-09-17 21:27:15.96214-04	\N	233000000	BACKSTREET BOYS - Everybody (Backstreets Back) - Keytar-Fusion-Djentcore cover	youtube	f
FA5irMZy0oY	2019-09-17 21:45:17.66384-04	2019-09-17 21:45:17.66384-04	\N	152000000	MEGALOVANIA (NEW Remix) - Super Smash Bros. Ultimate	youtube	f
LivNRg8Qsho	2019-09-17 21:52:17.755731-04	2019-09-17 21:52:17.755731-04	\N	274000000	Samurai Jack (Remix Maniacs Trap Remix)	youtube	f
MwxgUVrj5m4	2019-09-18 19:31:00.401164-04	2019-09-18 19:31:00.401164-04	\N	301000000	PSYQUI - ヒステリックナイトガール feat. Such (android52 Edit)	youtube	f
zztk2FhzEjE	2019-09-18 19:31:10.401026-04	2019-09-18 19:31:10.401026-04	\N	296000000	【Vocal】 【TAMAONSEN】トーホータノシ feat. 抹	youtube	f
KWeA5dUR3u4	2019-09-18 19:31:31.700642-04	2019-09-18 19:31:31.700642-04	\N	195000000	【東方Vocal／Jazz Rock】 リトルプリンセス「SOUND HOLIC」	youtube	f
GDnLHd2Ei3Y	2019-09-18 19:32:36.617527-04	2019-09-18 19:32:36.617527-04	\N	202000000	椎名林檎 – 人生は夢だらけ	youtube	f
y_QFXl1KCf4	2019-09-18 20:52:26.506866-04	2019-09-18 20:52:26.506866-04	\N	302000000	ShockOne - RUN (feat. The Bloody Beetroots)	youtube	f
nkEFUfpyPDU	2019-09-18 20:52:53.748818-04	2019-09-18 20:52:53.748818-04	\N	324000000	ShockOne - Til Dawn [Monstercat Release]	youtube	f
CakxYmEQT30	2019-09-18 21:15:34.813459-04	2019-09-18 21:15:34.813459-04	\N	333000000	PSYQUI - エンドロール (ft. mikanzil) / Endroll	youtube	f
jUw4Qh9uFK8	2019-09-18 22:15:31.938095-04	2019-09-18 22:15:31.938095-04	\N	141000000	Spring Break Anthem (Music Video Only Version)	youtube	f
lZc3kicMShM	2019-09-18 22:15:41.264527-04	2019-09-18 22:15:41.264527-04	\N	134000000	Spring Break Anthem	youtube	f
uSdiBypdYIc	2019-09-18 22:35:12.198532-04	2019-09-18 22:35:12.198532-04	\N	47000000	Squidfinity War	youtube	f
2oEVo8kCwbI	2019-09-18 22:38:49.953112-04	2019-09-18 22:38:49.953112-04	\N	221000000	To Beef or Not to Beef	youtube	f
Xa8OnCPnAxg	2019-09-20 01:34:04.229369-04	2019-09-20 01:34:04.229369-04	\N	187000000	hoes mad but every time dex says hoes mad it gets even more bass boosted	youtube	f
bwuQAlTovU0	2019-09-20 19:30:18.113836-04	2019-09-20 19:30:18.113836-04	\N	263000000	【東方】 SOUND HOLIC 『UNDERWORLD GATE』	youtube	f
5fgcOnFOZhc	2019-09-20 19:30:29.633602-04	2019-09-20 19:30:29.633602-04	\N	228000000	【東方】 SOUND HOLIC 『SOUL REVERSER』	youtube	f
2uFPEcySxx8	2019-09-20 19:57:56.102233-04	2019-09-20 19:57:56.102233-04	\N	86000000	Treasure Bodywash Cove	youtube	f
XxFGzrCqZ7I	2019-09-20 19:58:35.250249-04	2019-09-20 19:58:35.250249-04	\N	263000000	Treasure Trove Cove | Super Smash Bros. Ultimate	youtube	f
yaYxqDEP7L8	2019-09-20 20:00:57.473381-04	2019-09-20 20:00:57.473381-04	\N	81000000	Run Run NotTheBees	youtube	f
rRctiUI8pmE	2019-09-20 20:01:27.055126-04	2019-09-20 20:01:27.055126-04	\N	114000000	GAY♂POWER	youtube	f
cFhJHmsbVEs	2019-09-20 20:02:36.070667-04	2019-09-20 20:02:36.070667-04	\N	98000000	SenbonWeedu	youtube	f
ZsUoefdaoo0	2019-09-20 20:08:24.243403-04	2019-09-20 20:08:24.243403-04	\N	153000000	Patty Power	youtube	f
ShtIRODxvmc	2019-09-20 20:16:38.613248-04	2019-09-20 20:16:38.613248-04	\N	45000000	Terry's Athletic Bodywash	youtube	f
6Ajhzlq42f0	2019-09-20 20:16:55.017978-04	2019-09-20 20:16:55.017978-04	\N	59000000	Super Spice Bros 2	youtube	f
wY3kl5CRSkc	2019-09-20 20:17:23.961362-04	2019-09-20 20:17:23.961362-04	\N	85000000	ナイト・オブ・【SAX】	youtube	f
t2XINGhxa-8	2019-09-20 20:20:16.958863-04	2019-09-20 20:20:16.958863-04	\N	52000000	【IWF2017】Aniki's Homosexual Adventure	youtube	f
UGeNoml0OHc	2019-09-20 20:23:46.835992-04	2019-09-20 20:23:46.835992-04	\N	235000000	Haywyre - Insight (Live Performance) [Monstercat Release]	youtube	f
QMls91A7JDo	2019-09-21 14:13:32.527009-04	2019-09-21 14:13:32.527009-04	\N	234000000	Earth, Wind & Fire - September (Greatest Hits Version) (HQ Audio)	youtube	f
god7hAPv8f0	2019-09-21 14:38:40.190815-04	2019-09-21 14:38:40.190815-04	\N	293000000	Earth, Wind & Fire - Boogie Wonderland (Official Music Video)	youtube	f
RA435GzStLg	2019-09-21 14:56:14.901633-04	2019-09-21 14:56:14.901633-04	\N	71000000	KK Slider - I Love It (Lil Pump & Kanye West)	youtube	f
CG7YHFT4hjw	2019-09-21 16:45:21.683644-04	2019-09-21 16:45:21.683644-04	\N	88000000	9/21/18	youtube	f
_hpU6UEq8hA	2019-09-21 16:46:43.215999-04	2019-09-21 16:46:43.215999-04	\N	83000000	9/21/19	youtube	f
7mSZn9UKXTk	2019-09-21 18:42:23.429575-04	2019-09-21 18:42:23.429575-04	\N	183000000	Crazy Noisy Bizarre Town (Unused Game Version) - JoJo's Bizarre Adventure: Eyes of Heaven	youtube	f
qQufybjvUWA	2019-09-22 19:03:35.822587-04	2019-09-22 19:03:35.822587-04	\N	151000000	same bpm (Baby I'm Megalovania) [Mashup]	youtube	f
NeGA0nVukZw	2019-09-22 19:07:22.54852-04	2019-09-22 19:07:22.54852-04	\N	42000000	[YTPMV] - MoRTY - Pickle Rick Power [v2]	youtube	f
2BGjszOOX-w	2019-09-22 19:13:11.000779-04	2019-09-22 19:13:11.000779-04	\N	265000000	Blank Space - Caramellagirls	youtube	f
0r0BwDE7Qts	2019-09-22 19:32:28.421342-04	2019-09-22 19:32:28.421342-04	\N	213000000	Linkin Park / Queen - Such A Numb Time	youtube	f
ffNRmZbmsKg	2019-09-22 19:33:01.101268-04	2019-09-22 19:33:01.101268-04	\N	221000000	Cruel Angels Give Love a Bad Thesis	youtube	f
Vy1JwiXHwI4	2019-09-22 22:24:15.258961-04	2019-09-22 22:24:15.258961-04	\N	246000000	AJR - Karma (Official Audio)	youtube	f
1_VUciwF5a0	2019-09-23 14:30:13.010306-04	2019-09-23 14:30:13.010306-04	\N	249000000	Bartier Lavender (Pokemon R/B/Y x Cardi B Mashup) // I am Jemboy	youtube	f
01SuxKsCjr8	2019-09-23 14:31:54.339599-04	2019-09-23 14:31:54.339599-04	\N	248000000	Pokémon: Let's Go, Snoop! & Let's Go, Dre! (Mashup) // I am Jemboy	youtube	f
zP7ucmE4jc0	2019-09-23 17:00:20.690686-04	2019-09-23 17:00:20.690686-04	\N	159000000	Short Kings Anthem	youtube	f
Qt9ci2Zksbg	2019-09-23 23:27:29.916184-04	2019-09-23 23:27:29.916184-04	\N	245000000	Infected Mushroom - Who Is There [HQ Audio]	youtube	f
dyPHwO_5Y28	2019-09-24 19:08:56.320648-04	2019-09-24 19:08:56.320648-04	\N	154000000	1, 2 RockeFeller Street	youtube	f
7ag86Eu0Qt0	2019-09-24 19:17:42.203037-04	2019-09-24 19:17:42.203037-04	\N	654000000	Demetori - Crimson Belvedere ~ Eastern Dream [2]	youtube	f
-QmgkTjWjQE	2019-09-24 19:19:41.415924-04	2019-09-24 19:19:41.415924-04	\N	308000000	Gran Turismo 4 Soundtrack - James Brown - Call Me Super Bad Parts 1, 2 & 3 (Gran Turismo 4 Pop Rox)	youtube	f
_A3Oed_RNkI	2019-09-24 19:21:26.215157-04	2019-09-24 19:21:26.215157-04	\N	231000000	Gran Turismo 4 Soundtrack - Earth & Wind & Fire - Getaway (Gran Turismo 4 Pop Rox Remix)	youtube	f
KopwYd28r28	2019-09-24 19:21:54.267504-04	2019-09-24 19:21:54.267504-04	\N	185000000	Gran Turismo 4 Soundtrack - Yello - Oh Yeah	youtube	f
z13qnzUQwuI	2019-09-24 19:34:47.375836-04	2019-09-24 19:34:47.375836-04	\N	240000000	Gunther - Ding Dong Song Gunther Video (You Touch My Tralala)	youtube	f
AH8uNvP9iOE	2019-09-24 20:36:05.893931-04	2019-09-24 20:36:05.893931-04	\N	366000000	The Superb Mario Medley (feat. Labo Piano)	youtube	f
3JzN5x6U-OY	2019-09-24 21:08:58.727304-04	2019-09-24 21:08:58.727304-04	\N	463000000	Through The Tables And Memes	youtube	f
C04azkb2WN4	2019-09-24 21:14:44.691637-04	2019-09-24 21:14:44.691637-04	\N	238000000	A Lovely Night- La La Land Lyrics	youtube	f
EK_LN3XEcnw	2019-09-24 21:22:26.517757-04	2019-09-24 21:22:26.517757-04	\N	221000000	Lou Bega - Mambo No. 5 (A Little Bit of...) (Official Video)	youtube	f
kVGPfMNrKrk	2019-09-24 21:44:18.858554-04	2019-09-24 21:44:18.858554-04	\N	206000000	The Mambo Revolving - mambo no. 5	youtube	f
JLstJH23p7k	2019-09-24 22:04:15.398955-04	2019-09-24 22:04:15.398955-04	\N	443000000	21st Century Schizoid Man	youtube	f
Hxx8IWIvKg0	2019-09-24 22:43:37.802824-04	2019-09-24 22:43:37.802824-04	\N	459000000	Billy Joel - Scenes from an Italian Restaurant (Official Audio)	youtube	f
JsntlJZ9h1U	2019-09-24 23:01:34.577338-04	2019-09-24 23:01:34.577338-04	\N	210000000	Daryl Hall & John Oates - Private Eyes (Official Music Video)	youtube	f
YOuhYuZLNYw	2019-09-24 23:01:43.187642-04	2019-09-24 23:01:43.187642-04	\N	263000000	Kiss On My List (Remastered)	youtube	f
-62YbRZqxjs	2019-09-24 23:06:01.12257-04	2019-09-24 23:06:01.12257-04	\N	260000000	Someone In The Crowd	youtube	f
TKpJjdKcjeo	2019-09-24 23:17:20.395797-04	2019-09-24 23:17:20.395797-04	\N	184000000	Dear Theodosia	youtube	f
l_fAFrpwZ-E	2019-09-25 00:08:33.600237-04	2019-09-25 00:08:33.600237-04	\N	226000000	Awaken (Pillar Men Theme) from Jojo's Bizarre Adventure - Piano Tutorial	youtube	f
UjqjMZV5WLA	2019-09-25 00:31:59.730796-04	2019-09-25 00:31:59.730796-04	\N	90000000	Bloody stream but the song doesn't start	youtube	f
feA64wXhbjo	2019-09-25 00:36:19.014564-04	2019-09-25 00:36:19.014564-04	\N	232000000	Bag Raiders - Shooting Stars (Official Video)	youtube	f
O2_cBFr1lCM	2019-09-25 00:53:01.759675-04	2019-09-25 00:53:01.759675-04	\N	231000000	Coda - Bloody Stream (HQ Audio)	youtube	f
q2wtxFMhcrY	2019-09-25 18:47:24.208619-04	2019-09-25 18:47:24.208619-04	\N	189000000	Window Shop - KNOWER	youtube	f
ZMI1iU7VgyI	2019-09-25 18:47:32.196473-04	2019-09-25 18:47:32.196473-04	\N	266000000	Thinking (live sesh) - Louis Cole	youtube	f
SRmhjkqfCmM	2019-09-25 18:47:39.498344-04	2019-09-25 18:47:39.498344-04	\N	284000000	PSYQUI - don't you want me ft. Such	youtube	f
JUGHD_YWOe4	2019-09-25 18:48:25.190677-04	2019-09-25 18:48:25.190677-04	\N	246000000	Kikuo - Cotton Candy	youtube	f
NExVVCRtjoM	2019-09-25 19:01:57.105847-04	2019-09-25 19:01:57.105847-04	\N	272000000	KikuoHana - ヒビダラケの眼	youtube	f
BOZRIFrBs34	2019-09-25 19:15:13.871524-04	2019-09-25 19:15:13.871524-04	\N	116000000	PSYQUI - Bye or not (feat. mikanzil) ♪	youtube	f
QslJYDX3o8s	2019-09-25 19:18:08.812636-04	2019-09-25 19:18:08.812636-04	\N	211000000	Red Velvet 레드벨벳 '러시안 룰렛 (Russian Roulette)' MV	youtube	f
Da3JfD4CDnY	2019-09-25 19:26:14.567777-04	2019-09-25 19:26:14.567777-04	\N	90000000	eureka seven op1	youtube	f
DuQ4WSF6MkQ	2019-09-25 19:27:11.266852-04	2019-09-25 19:27:11.266852-04	\N	437000000	In the Court of the Crimson King (Abridged)	youtube	f
C4XUOmGlPm4	2019-09-25 20:12:10.311331-04	2019-09-25 20:12:10.311331-04	\N	278000000	Nobara	youtube	f
M6zdLTfH-As	2019-09-25 20:13:17.070834-04	2019-09-25 20:13:17.070834-04	\N	229000000	Heart Of Glass	youtube	f
n2Ux_MX7qsQ	2019-09-25 20:13:51.857162-04	2019-09-25 20:13:51.857162-04	\N	190000000	Runaway	youtube	f
xzonQoON9eo	2019-09-25 20:14:57.26433-04	2019-09-25 20:14:57.26433-04	\N	184000000	Sigrid - Don't Kill My Vibe (Official Video)	youtube	f
RZMOvrWj_cE	2019-09-25 20:21:18.546379-04	2019-09-25 20:21:18.546379-04	\N	191000000	View	youtube	f
2ips2mM7Zqw	2019-09-25 20:40:55.583565-04	2019-09-25 20:40:55.583565-04	\N	230000000	BIGBANG - 뱅뱅뱅 (BANG BANG BANG) M/V	youtube	f
EFTV3IIjeNw	2019-09-25 20:45:17.827097-04	2019-09-25 20:45:17.827097-04	\N	222000000	[MV] Reol - サイサキ / Saisaki Music Video	youtube	f
f4_3dWqu6kM	2019-09-25 20:48:44.902244-04	2019-09-25 20:48:44.902244-04	\N	203000000	F(x)- All Mine {Audio}	youtube	f
I5_BQAtwHws	2019-09-25 20:53:08.384947-04	2019-09-25 20:53:08.384947-04	\N	198000000	[MV] Dreamcatcher(드림캐쳐)_YOU AND I	youtube	f
nbcCG7PkI18	2019-09-25 21:00:04.933021-04	2019-09-25 21:00:04.933021-04	\N	199000000	WALK THE MOON - Shut Up and Dance (Audio)	youtube	f
___h2czNhe0	2019-09-25 21:09:57.427978-04	2019-09-25 21:09:57.427978-04	\N	213000000	TT	youtube	f
FndmvPkI1Ms	2019-09-25 21:44:50.146355-04	2019-09-25 21:44:50.146355-04	\N	203000000	Kendji Girac - Andalouse (Clip Officiel)	youtube	f
oiKj0Z_Xnjc	2019-09-25 21:45:22.487568-04	2019-09-25 21:45:22.487568-04	\N	233000000	Stromae - Papaoutai (Clip Officiel)	youtube	f
bpOSxM0rNPM	2019-09-25 23:04:32.438479-04	2019-09-25 23:04:32.438479-04	\N	266000000	Arctic Monkeys - Do I Wanna Know? (Official Video)	youtube	f
wzyVRQwfHvM	2019-09-25 23:35:06.747541-04	2019-09-25 23:35:06.747541-04	\N	194000000	Sucker Punch	youtube	f
IYQpp_DwaDo	2019-09-26 17:31:46.098273-04	2019-09-26 17:31:46.098273-04	\N	210000000	Al-Nasheed Sawarim Djihad	youtube	f
6To0fvX_wFA	2019-09-26 18:41:11.306913-04	2019-09-26 18:41:11.306913-04	\N	161000000	Signed, Sealed, Delivered (I'm Yours)	youtube	f
9t_951CEP1Q	2019-09-26 18:54:42.99907-04	2019-09-26 18:54:42.99907-04	\N	126000000	VRChat Main Theme - Music Video	youtube	f
mSSws_6GXso	2019-09-26 19:07:12.846899-04	2019-09-26 19:07:12.846899-04	\N	188000000	Panic! At The Disco - Death of a Bachelor (HQ Audio)	youtube	f
_XqIFsBUk0k	2019-09-26 19:08:21.861973-04	2019-09-26 19:08:21.861973-04	\N	162000000	Thanos - Despacito 2 (French Release)	youtube	f
fAxjH9Tgi3Y	2019-09-26 19:45:43.562595-04	2019-09-26 19:45:43.562595-04	\N	216000000	Nightcore - One In A Million	youtube	f
rvrZJ5C_Nwg	2019-09-26 20:28:43.676229-04	2019-09-26 20:28:43.676229-04	\N	360000000	Kirin J Callinan - Big Enough (Official Video) ft. Alex Cameron, Molly Lewis, Jimmy Barnes	youtube	f
V1bFr2SWP1I	2019-09-26 22:31:43.39325-04	2019-09-26 22:31:43.39325-04	\N	227000000	OFFICIAL Somewhere over the Rainbow - Israel "IZ" Kamakawiwoʻole	youtube	f
Cc8GjZ1hib8	2019-09-26 23:19:54.188512-04	2019-09-26 23:19:54.188512-04	\N	192000000	Abu Yaseer - Saleel al Sawarim (ISIS Song) Allahu Akbar Trap Remix (Prod. SGMedia)	youtube	f
rGfAyOFUdEY	2019-09-26 23:20:32.541704-04	2019-09-26 23:20:32.541704-04	\N	285000000	JoJo's Bizarre Adventure: Golden Wind OP - Fighting Gold / Coda [Full]	youtube	f
KOXz3-Kgdas	2019-09-27 00:54:43.489666-04	2019-09-27 00:54:43.489666-04	\N	165000000	Robbielovania [The Number One Megalovania Mix]	youtube	f
br517ctCUCE	2019-09-27 00:55:11.720071-04	2019-09-27 00:55:11.720071-04	\N	166000000	We Are Number One Remix but by The Living Tombstone (Lazytown)	youtube	f
EdiZcF8PS4A	2019-09-27 00:55:39.94586-04	2019-09-27 00:55:39.94586-04	\N	130000000	"BAD GUY" but it's made from "WE ARE NUMBER ONE"	youtube	f
W3mWZxCmEzk	2019-09-27 00:56:18.047742-04	2019-09-27 00:56:18.047742-04	\N	206000000	We are number one but it's a Waluigi parody	youtube	f
y0LeVwGOuqU	2019-09-27 00:57:14.619773-04	2019-09-27 00:57:14.619773-04	\N	172000000	[Mashup] We Are Number One Except It's a Mashup with 「Great Days」	youtube	f
S1CdPxXEzoo	2019-09-27 00:57:26.637322-04	2019-09-27 00:57:26.637322-04	\N	143000000	We Are Number One but it's woahed by Crash Bandicoot	youtube	f
2praGeMqn5Y	2019-09-27 00:58:02.195616-04	2019-09-27 00:58:02.195616-04	\N	319000000	Goodbye Robbie	youtube	f
jLKOBJR5vHs	2019-09-27 11:12:01.666226-04	2019-09-27 11:12:01.666226-04	\N	162000000	Teenagers	youtube	f
km5OXaB2Uu0	2019-09-27 11:12:27.002924-04	2019-09-27 11:12:27.002924-04	\N	206000000	Na Na Na (Na Na Na Na Na Na Na Na Na)	youtube	f
PnugraD0wOQ	2019-09-27 11:17:56.942321-04	2019-09-27 11:17:56.942321-04	\N	224000000	The Cab - Temporary Bliss (Lyrics)	youtube	f
PqzsbyHQXLc	2019-09-27 11:18:20.948985-04	2019-09-27 11:18:20.948985-04	\N	174000000	Good Charlotte - The Anthem (Lyrics)	youtube	f
7x6PEmTNCw8	2019-09-27 11:19:06.298175-04	2019-09-27 11:19:06.298175-04	\N	542000000	You Have Won The Victory/The Anthem - Full Gospel Baptist Church - Lyrics	youtube	f
zm-rb8k1HkU	2019-09-27 11:20:49.036842-04	2019-09-27 11:20:49.036842-04	\N	167000000	Benjamin Booker - Violent Shiver	youtube	f
yKg_3kyIhHc	2019-09-27 11:21:21.496232-04	2019-09-27 11:21:21.496232-04	\N	282000000	VULFPECK /// It Gets Funkier	youtube	f
C430AWTvMPs	2019-09-27 11:21:39.553346-04	2019-09-27 11:21:39.553346-04	\N	327000000	VULFPECK /// It Gets Funkier II	youtube	f
S3nl7IqZayg	2019-09-27 11:22:27.713813-04	2019-09-27 11:22:27.713813-04	\N	218000000	VULFPECK /// It Gets Funkier III	youtube	f
Nq5LMGtBmis	2019-09-27 11:23:09.627282-04	2019-09-27 11:23:09.627282-04	\N	200000000	VULFPECK /// It Gets Funkier IV (feat. Louis Cole)	youtube	f
8twpQTna_9w	2019-09-27 11:27:06.739345-04	2019-09-27 11:27:06.739345-04	\N	207000000	Bleachers - I Wanna Get Better (Official Audio)	youtube	f
tmeJsETS-Yk	2019-09-27 11:28:07.947979-04	2019-09-27 11:28:07.947979-04	\N	512000000	Chonks	youtube	f
4oXgCJf4hf8	2019-09-27 12:29:13.44795-04	2019-09-27 12:29:13.44795-04	\N	181000000	Marshmello - Silence (Lyrics) ft. Khalid	youtube	f
3ymwOvzhwHs	2019-09-27 18:43:57.123477-04	2019-09-27 18:43:57.123477-04	\N	220000000	TWICE "Feel Special" M/V	youtube	f
M8pCAmh5zkQ	2019-09-27 19:42:27.16373-04	2019-09-27 19:42:27.16373-04	\N	156000000	We Are Extraterrestrial - Robbie Rotten vs Katy Perry (Mashup)	youtube	f
s_LdrF_FeHs	2019-09-27 20:58:52.396172-04	2019-09-27 20:58:52.396172-04	\N	206000000	Nightcore - I Fell In Love With The Devil - (Lyrics)	youtube	f
LEFE9UBYSjU	2019-09-27 21:34:45.74206-04	2019-09-27 21:34:45.74206-04	\N	167000000	Nightcore - Who Says || Lyrics	youtube	f
2W9PXkU0DnE	2019-09-28 13:19:54.442852-04	2019-09-28 13:19:54.442852-04	\N	156000000	Type A (Western Release) - Tetris	youtube	f
2gutd8_WlpE	2019-09-28 16:11:11.686035-04	2019-09-28 16:11:11.686035-04	\N	213000000	[MV] OOHYO(우효) _ Papercut (Kor.)	youtube	f
TKD03uPVD-Q	2019-09-24 23:53:25.136275-04	2019-09-24 23:53:25.136275-04	\N	174000000	BIGBANG - BAE BAE M/V	youtube	f
H7hiF7fXhLg	2019-09-25 00:19:41.820764-04	2019-09-25 00:19:41.820764-04	\N	260000000	Bloody Slam - Quad City DJs vs Coda	youtube	f
CJu6Fh1FSEo	2019-09-25 18:19:40.967223-04	2019-09-25 18:19:40.967223-04	\N	206000000	RITA ORA - Poison (Lyric Video)	youtube	f
cGJ_IyFwieY	2019-09-25 18:20:09.646975-04	2019-09-25 18:20:09.646975-04	\N	217000000	Queen   Another One Bites The Dust Lyrics	youtube	f
1eekOcpx_iQ	2019-09-25 20:08:19.382347-04	2019-09-25 20:08:19.382347-04	\N	201000000	NCT 127 'Highway to Heaven' NEO CITY Tour Film ver.	youtube	f
LIl3fElYRRA	2019-09-25 20:18:34.003717-04	2019-09-25 20:18:34.003717-04	\N	135000000	We Good	youtube	f
ox20XQPX1k8	2019-09-25 20:43:50.39961-04	2019-09-25 20:43:50.39961-04	\N	166000000	Nightcore - Heimenkyo - (lyrics)	youtube	f
HUHC9tYz8ik	2019-09-25 20:44:30.620522-04	2019-09-25 20:44:30.620522-04	\N	212000000	Billie Eilish - bury a friend	youtube	f
Hy0W7AqDC_c	2019-09-25 20:50:02.061517-04	2019-09-25 20:50:02.061517-04	\N	219000000	BIGBANG - Lies(거짓말) Color Coded Lyrics [Han/Rom/Eng]	youtube	f
op8Gs32c5eY	2019-09-25 20:58:04.960349-04	2019-09-25 20:58:04.960349-04	\N	246000000	エヴァンゲリオン×吉幾三　残酷な農夫のテーゼ【IKZO】	youtube	f
n3Go8ub9a1k	2019-09-25 21:04:21.670992-04	2019-09-25 21:04:21.670992-04	\N	218000000	Время и Стекло - Имя 505	youtube	f
wKyMIrBClYw	2019-09-25 21:06:57.217892-04	2019-09-25 21:06:57.217892-04	\N	279000000	DEAN - instagram	youtube	f
y8em1w3KIFA	2019-09-25 21:23:55.993557-04	2019-09-25 21:23:55.993557-04	\N	212000000	서태지 와 아이들 (SeoTaiji and Boys)- 난 알아요 (I Know)	youtube	f
62I7bOBfvw8	2019-09-25 21:38:55.180206-04	2019-09-25 21:38:55.180206-04	\N	225000000	너는 왜 -- 철이와 미애	youtube	f
kpQsfHfOrcY	2019-09-25 21:58:52.276368-04	2019-09-25 21:58:52.276368-04	\N	272000000	Connect	youtube	f
n048j2U1Bok	2019-09-25 23:42:48.282882-04	2019-09-25 23:42:48.282882-04	\N	229000000	Jonas Brothers - Sucker (HQ Audio)	youtube	f
Tiv2vG25GD0	2019-09-26 00:28:14.318333-04	2019-09-26 00:28:14.318333-04	\N	8000000	All day listening to...	youtube	f
tLmfSvy4rmo	2019-09-26 12:43:36.737881-04	2019-09-26 12:43:36.737881-04	\N	290000000	Sweet Dreams   Eurythmics lyrics	youtube	f
EzF-9pP5Dqk	2019-09-26 17:14:08.74061-04	2019-09-26 17:14:08.74061-04	\N	88000000	Accumula Town - Pokémon Black & White	youtube	f
Qkau7qFxTmU	2019-09-26 17:26:57.665726-04	2019-09-26 17:26:57.665726-04	\N	156000000	Splashing around bass boosted	youtube	f
kH1ZxoEkv84	2019-09-26 18:45:51.687981-04	2019-09-26 18:45:51.687981-04	\N	178000000	THE FEARLESS FLYERS /// Signed, Sealed, Delivered (feat. Blake Mills & Sandra Crouch)	youtube	f
rAi8YcCuVnk	2019-09-26 18:46:16.697562-04	2019-09-26 18:46:16.697562-04	\N	145000000	THE FEARLESS FLYERS /// Under the Sea / Flyers Drive	youtube	f
u85u2ymDl8M	2019-09-26 19:01:41.981368-04	2019-09-26 19:01:41.981368-04	\N	132000000	Every Bazinga from The Big Bang Theory (seasons 1 to 4)	youtube	f
PiAc-1XaIqg	2019-09-26 19:16:03.334394-04	2019-09-26 19:16:03.334394-04	\N	156000000	Nightcore - I Need A Doctor	youtube	f
90SGLQywYwY	2019-09-26 19:16:32.722833-04	2019-09-26 19:16:32.722833-04	\N	144000000	Nightcore - Dangerous	youtube	f
hjGZLnja1o8	2019-09-26 19:17:45.554875-04	2019-09-26 19:17:45.554875-04	\N	147000000	Nightcore - Rockefeller Street	youtube	f
iAumFOBbalE	2019-09-26 19:18:22.577203-04	2019-09-26 19:18:22.577203-04	\N	184000000	「Nightcore」→ Stamp On The Ground	youtube	f
d9MRwzheNQs	2019-09-26 19:22:38.012595-04	2019-09-26 19:22:38.012595-04	\N	183000000	Nightcore - Come Clean	youtube	f
5J0T7XmAG_g	2019-09-26 19:23:16.66331-04	2019-09-26 19:23:16.66331-04	\N	160000000	Nightcore - Boy Like You (Lyrics)	youtube	f
HRew2Vzx0fQ	2019-09-26 19:29:31.56983-04	2019-09-26 19:29:31.56983-04	\N	188000000	Nightcore - Surrender	youtube	f
1_TdnPG5-0o	2019-09-26 19:33:35.911752-04	2019-09-26 19:33:35.911752-04	\N	158000000	Nightcore - 21st Century Digital Girl	youtube	f
63DzIQX8K2k	2019-09-26 19:56:07.168094-04	2019-09-26 19:56:07.168094-04	\N	69000000	Matt Watson- "I'm in Love with My Dad" rap song (SuperMega)	youtube	f
wTr0P1Grc2g	2019-09-26 20:00:28.330028-04	2019-09-26 20:00:28.330028-04	\N	94000000	Mambo No. 1,2	youtube	f
Ei8thjT0Owk	2019-09-27 11:19:53.284438-04	2019-09-27 11:19:53.284438-04	\N	273000000	No Doubt - Sunday Morning	youtube	f
sns1d6o_tfs	2019-09-27 11:24:05.575397-04	2019-09-27 11:24:05.575397-04	\N	189000000	Snail's House – Ma Chouchoute	youtube	f
ombnvJecZaY	2019-09-27 11:24:58.560651-04	2019-09-27 11:24:58.560651-04	\N	184000000	Fitz And The Tantrums - Fool (Lyric video)	youtube	f
KuliCkN2oic	2019-09-27 11:26:33.08122-04	2019-09-27 11:26:33.08122-04	\N	209000000	Panic! At The Disco - House of Memories (Official Audio)	youtube	f
IjJNCgYNHzc	2019-09-27 11:29:16.258769-04	2019-09-27 11:29:16.258769-04	\N	185000000	Fitz and The Tantrums - 123456 (Lyrics)	youtube	f
fuhHU_BZXSk	2019-09-27 12:31:26.091636-04	2019-09-27 12:31:26.091636-04	\N	417000000	Snarky Puppy - What About Me? (We Like It Here)	youtube	f
t2rsaZGh1YA	2019-09-27 12:31:52.871462-04	2019-09-27 12:31:52.871462-04	\N	204000000	KYLE - Sex and Super Smash Bros (Prod. By Deaf Heff)	youtube	f
PMQ2nCD88hc	2019-09-27 12:32:14.738226-04	2019-09-27 12:32:14.738226-04	\N	181000000	Chance the Rapper - My Own Thing (feat. Joey Purp) (Audio)	youtube	f
raMBIdswOp0	2019-09-27 13:25:58.590222-04	2019-09-27 13:25:58.590222-04	\N	400000000	Israel & New Breed - Te Amo Ft. T - Bone	youtube	f
FtUz2tsONCo	2019-09-27 13:26:24.403207-04	2019-09-27 13:26:24.403207-04	\N	287000000	REZ POWER - ISRAEL & NEW BREED (JESUS AT THE CENTER [LIVE] DISC 1)	youtube	f
68KRj9pnWUs	2019-09-27 13:27:02.669319-04	2019-09-27 13:27:02.669319-04	\N	334000000	MORE THAN ENOUGH - ISRAEL & NEW BREED (JESUS AT THE CENTER [LIVE] DISC 1)	youtube	f
hXAw-svVDkk	2019-09-27 13:27:32.399239-04	2019-09-27 13:27:32.399239-04	\N	617000000	Overflow - Israel & New Breed (with Lyrics) New 2012 Worship Song	youtube	f
0yEBX8ABoKU	2019-09-27 19:33:40.521011-04	2019-09-27 19:33:40.521011-04	\N	300000000	SMASHO MODE 2 (Ft. D.J. DryBowser)	youtube	f
h7J5R19A8mU	2019-09-27 19:50:44.218576-04	2019-09-27 19:50:44.218576-04	\N	200000000	♪ Nightcore - Carousel / We Are Number One (Switching Vocals)	youtube	f
YIC1aK6CleE	2019-09-27 20:02:23.095327-04	2019-09-27 20:02:23.095327-04	\N	260000000	Sabrepulse - Close To Me (HD)	youtube	f
pS-xF2PDKPs	2019-09-28 13:28:48.694558-04	2019-09-28 13:28:48.694558-04	\N	115000000	Old Town Road but everything is a horse	youtube	f
pQ91nArSjOg	2019-09-28 16:35:16.326093-04	2019-09-28 16:35:16.326093-04	\N	283000000	The Clash At Demonhead - Brie Larson Full Version (320kbps)	youtube	f
RLd9PcZW5PQ	2019-09-28 16:50:34.575895-04	2019-09-28 16:50:34.575895-04	\N	212000000	Sheku Kanneh-Mason - Leonard Cohen: Hallelujah, arr. Tom Hodge	youtube	f
mJX_JhBQFEw	2019-09-28 16:50:44.53433-04	2019-09-28 16:50:44.53433-04	\N	252000000	CREEPER? AW MAN.. (REMIX)	youtube	f
kJQP7kiw5Fk	2019-09-28 17:10:07.664443-04	2019-09-28 17:10:07.664443-04	\N	282000000	Luis Fonsi - Despacito ft. Daddy Yankee	youtube	f
Z9e7K6Hx_rY	2019-09-28 19:19:28.805948-04	2019-09-28 19:19:28.805948-04	\N	258000000	Rex Orange County - Sunflower	youtube	f
OqBuXQLR4Y8	2019-09-28 19:20:12.439869-04	2019-09-28 19:20:12.439869-04	\N	263000000	REX ORANGE COUNTY - BEST FRIEND	youtube	f
V0X-SWiDr1g	2019-09-28 19:26:37.471454-04	2019-09-28 19:26:37.471454-04	\N	252000000	REX ORANGE COUNTY - SUNFLOWER	youtube	f
7iYjIlbkoV8	2019-09-28 19:34:40.105212-04	2019-09-28 19:34:40.105212-04	\N	313000000	Maika Loubté - Mountaintop  (Official Video)	youtube	f
4jWLioW7Zx0	2019-09-28 19:39:28.605314-04	2019-09-28 19:39:28.605314-04	\N	231000000	水曜日のカンパネラ『アラジン』	youtube	f
bNuCNZK-r5A	2019-09-28 20:17:09.276796-04	2019-09-28 20:17:09.276796-04	\N	205000000	Sigrid - Plot Twist (Official Video)	youtube	f
aPvtiLTe8-w	2019-09-28 20:17:43.445626-04	2019-09-28 20:17:43.445626-04	\N	234000000	Sigrid - Strangers (Official Audio)	youtube	f
rY-FJvRqK0E	2019-09-28 22:25:59.018082-04	2019-09-28 22:25:59.018082-04	\N	197000000	Kero Kero Bonito - Flamingo	youtube	f
KQ5-MCcg_QQ	2019-09-28 23:22:40.316404-04	2019-09-28 23:22:40.316404-04	\N	246000000	lapix feat. Numb'n'dub - BRAND NEW DAY	youtube	f
306-S-6pYsg	2019-09-29 13:42:41.957588-04	2019-09-29 13:42:41.957588-04	\N	294000000	【東方Orchestral／Symphonic】 The Venerable Ancient Battlefield 「Melodic Taste」	youtube	f
OhX75KDRRYg	2019-09-29 13:42:42.748876-04	2019-09-29 13:42:42.748876-04	\N	313000000	Darkest - Thunderbolt Fantasy	youtube	f
BVFnYsAMHXY	2019-09-29 13:43:59.069905-04	2019-09-29 13:43:59.069905-04	\N	176000000	【東方Symphonic Rock】 Youkai Mountain 「Melodic Taste」	youtube	f
jCrWHBmZNuE	2019-09-29 13:44:14.164184-04	2019-09-29 13:44:14.164184-04	\N	225000000	T.M.Revolution - Raimei	youtube	f
EQWJFp1AhCk	2019-09-29 13:45:04.145142-04	2019-09-29 13:45:04.145142-04	\N	234000000	His/Story	youtube	f
WjiPhfMuQ-k	2019-09-29 13:45:27.026947-04	2019-09-29 13:45:27.026947-04	\N	224000000	Roll the Dice	youtube	f
6xEp0VvX-qE	2019-09-29 21:43:00.165293-04	2019-09-29 21:43:00.165293-04	\N	201000000	Pachelbel Canon Vs Scatman John - Canon D in Scatman's World (DJ Sulaiman Tunggu Sahur Mashup)	youtube	f
E3SLE19QLEs	2019-09-30 19:11:54.502643-04	2019-09-30 19:11:54.502643-04	\N	240000000	Jojo Opening 7 Great Days Full Theme	youtube	f
g_uV2x85RZM	2019-09-30 22:10:02.817858-04	2019-09-30 22:10:02.817858-04	\N	127000000	BUTTERFLY - DanceDanceRevolution	youtube	f
zOIbEmNGFIQ	2019-09-30 22:13:43.983558-04	2019-09-30 22:13:43.983558-04	\N	165000000	Spongebob ft. Jason Derulo - Ripped Pants x Whatcha Say (Mashup)	youtube	f
0t7eLJsq3zE	2019-09-30 22:13:59.602439-04	2019-09-30 22:13:59.602439-04	\N	222000000	Jason DeRulo vs. IYAZ - Whatcha Replay	youtube	f
SQoA_wjmE9w	2019-09-30 22:21:29.555343-04	2019-09-30 22:21:29.555343-04	\N	195000000	groboclone - Sandroll	youtube	f
IMwImTbn_HE	2019-10-01 00:44:26.628357-04	2019-10-01 00:44:26.628357-04	\N	228000000	Owl city - Fireflies	youtube	f
knve93kwtHg	2019-10-01 01:24:51.234112-04	2019-10-01 01:24:51.234112-04	\N	60000000	Busta Rhymes Goes To The Wii Shop Channel	youtube	f
7E-RTI-H2oI	2019-10-01 01:25:03.491925-04	2019-10-01 01:25:03.491925-04	\N	575000000	Vivaldi - Concerto for Two Violins in A Minor RV522	youtube	f
XuFC6ud1cAQ	2019-10-01 15:13:59.461202-04	2019-10-01 15:13:59.461202-04	\N	215000000	MEN AT WORK - Who Can It Be Now?	youtube	f
XfR9iY5y94s	2019-10-01 15:14:07.703628-04	2019-10-01 15:14:07.703628-04	\N	222000000	Men At Work - Down Under (Official Video)	youtube	f
ud1JXqGWPvU	2019-10-01 15:23:27.724848-04	2019-10-01 15:23:27.724848-04	\N	63000000	Boneless Pizza	youtube	f
32eaZsPRpTY	2019-10-01 17:23:16.822459-04	2019-10-01 17:23:16.822459-04	\N	308000000	Sicko Mode but Drake's verse is Dicko Mode and the song is mashed up with Lavender Town	youtube	f
X49Sk-QkAXA	2019-10-01 20:05:47.949477-04	2019-10-01 20:05:47.949477-04	\N	113000000	WHAT HAVE I CREATED....AGAIN	youtube	f
tziV2ajPURE	2019-10-01 20:06:46.501389-04	2019-10-01 20:06:46.501389-04	\N	41000000	Gravity Falls + Combination Pizza Hut and Taco Bell (Das Racist) Remix	youtube	f
CeADaAg0f_w	2019-10-01 21:16:20.203957-04	2019-10-01 21:16:20.203957-04	\N	288000000	Y.M.C.A.	youtube	f
x-ioZed6aSk	2019-10-01 22:18:17.333194-04	2019-10-01 22:18:17.333194-04	\N	105000000	We are number one but it's octagon	youtube	f
Ys2p_bXOaAc	2019-10-01 22:30:55.389154-04	2019-10-01 22:30:55.389154-04	\N	269000000	【東方Vocal／Trance】 WHITE TRAVELER 「SOUND HOLIC」	youtube	f
7jo9UMdWxrA	2019-10-01 22:34:05.503434-04	2019-10-01 22:34:05.503434-04	\N	281000000	【A-One】デザイア【東方ボーカルEurobeat】	youtube	f
EC-zdHuns9Y	2019-10-01 22:34:28.033483-04	2019-10-01 22:34:28.033483-04	\N	307000000	【東方ボーカル】Sakura Dreams【SOUND HOLIC】	youtube	f
g1p5eNOsl7I	2019-10-01 22:39:35.315408-04	2019-10-01 22:39:35.315408-04	\N	259000000	Snow halation - Love Live!	youtube	f
xU_w9A_dL04	2019-10-01 22:42:04.974304-04	2019-10-01 22:42:04.974304-04	\N	247000000	Main Theme (Anniversary Edition) - Wii Shop Channel	youtube	f
BtV_nQKhkdY	2019-10-01 22:58:25.515312-04	2019-10-01 22:58:25.515312-04	\N	232000000	"Weird Al" Yankovic - Bedrock Anthem	youtube	f
AgFeZr5ptV8	2019-10-03 00:06:49.01748-04	2019-10-03 00:06:49.01748-04	\N	243000000	Taylor Swift - 22	youtube	f
n4_-YldDHJU	2019-10-03 00:52:55.561747-04	2019-10-03 00:52:55.561747-04	\N	251000000	Porter Robinson - 100% In The Bitch	youtube	f
QN_8-Ulgcoc	2019-10-03 00:54:39.52111-04	2019-10-03 00:54:39.52111-04	\N	299000000	Porter Robinson - Unison (Knife Party Remix)	youtube	f
jDMGv3hNMes	2019-10-03 01:14:02.70532-04	2019-10-03 01:14:02.70532-04	\N	267000000	Super Ponybeat — Discord [The Original!] by Eurobeat Brony	youtube	f
Qskm9MTz2V4	2019-10-03 16:04:14.955043-04	2019-10-03 16:04:14.955043-04	\N	177000000	RUSH E	youtube	f
FzVISJlZDC4	2019-10-03 16:04:28.571391-04	2019-10-03 16:04:28.571391-04	\N	183000000	RUSH 🅰	youtube	f
c7_iQgmMswA	2019-10-03 18:57:15.569392-04	2019-10-03 18:57:15.569392-04	\N	102000000	Lil Nas X - Panini [but cursed]	youtube	f
ODPPV_GTpXA	2019-10-03 19:06:40.972677-04	2019-10-03 19:06:40.972677-04	\N	193000000	Yung Bae - I Can Tell	youtube	f
jpJwPpxv4_A	2019-10-03 19:06:55.212488-04	2019-10-03 19:06:55.212488-04	\N	211000000	AJR + Jon Bellion - Weak/Morning In America (Mixed Mashup)	youtube	f
l3sYPbARuHM	2019-10-03 20:07:11.440243-04	2019-10-03 20:07:11.440243-04	\N	199000000	⌠AViVA⌡ - DROWN (OFFICIAL AUDIO)	youtube	f
ouQNQ_kgwfg	2019-10-04 00:22:04.165666-04	2019-10-04 00:22:04.165666-04	\N	211000000	Why you Gotta Be so Tsun(Magic X DDLC)	youtube	f
ReWUdlPpDCM	2019-10-04 01:54:47.907333-04	2019-10-04 01:54:47.907333-04	\N	185000000	YNW Melly Booty on my mind (MURDER IN MY MIND PARODY)	youtube	f
72_zXigcOrA	2019-10-04 16:53:46.82582-04	2019-10-04 16:53:46.82582-04	\N	137000000	THE FEARLESS FLYERS /// Ace of Aces	youtube	f
YJgvrQXlRaw	2019-10-04 18:40:20.840555-04	2019-10-04 18:40:20.840555-04	\N	208000000	THE WORLD REVOLVING (OST Version) - Deltarune	youtube	f
DwvA3gIw5Js	2019-10-04 18:45:01.798135-04	2019-10-04 18:45:01.798135-04	\N	186000000	[7.5K] Crazy Noisy Bizarre Slam - Barkley's Bizarre Adventure: Hoop is Undunkable OP	youtube	f
6e9dzDe6_t0	2019-10-04 18:57:45.639265-04	2019-10-04 18:57:45.639265-04	\N	97000000	September on recorder	youtube	f
Oxd6pXSYkzE	2019-10-04 19:14:27.110267-04	2019-10-04 19:14:27.110267-04	\N	223000000	Angel With a Shotgun	youtube	f
WSDn1y1THPY	2019-10-05 00:42:37.786286-04	2019-10-05 00:42:37.786286-04	\N	93000000	【Sans Undertale MMD】Chikatto Chika Chikattsu	youtube	f
GvtaG-n_Olo	2019-10-05 01:11:00.915122-04	2019-10-05 01:11:00.915122-04	\N	264000000	Sono Chi No Sadame but the singer got kicked in the nuts	youtube	f
A306Y7a4NRo	2019-10-05 15:33:50.990856-04	2019-10-05 15:33:50.990856-04	\N	215000000	O-Zone ma ya hi (Dragostea Din Tei)	youtube	f
JUh_5bRzOMU	2019-10-06 15:45:13.468046-04	2019-10-06 15:45:13.468046-04	\N	328000000	【東方ボーカル】 「有頂天子」 【SOUND HOLIC】	youtube	f
SkYAImqzCUI	2019-10-06 15:47:19.113391-04	2019-10-06 15:47:19.113391-04	\N	246000000	Fallen Kingdom but every 4 beats it turns into Viva La Vida	youtube	f
-tvs8a_hOQo	2019-10-06 16:02:43.016328-04	2019-10-06 16:02:43.016328-04	\N	141000000	We Are Number One - LazyTown: The Video Game	youtube	f
mSHUIEDBbl4	2019-10-06 20:41:31.881334-04	2019-10-06 20:41:31.881334-04	\N	131000000	Neil Cicierega - 300MB	youtube	f
QmQ9GkzptLQ	2019-10-06 21:47:47.437597-04	2019-10-06 21:47:47.437597-04	\N	227000000	Harder Better Faster Oatmeal	youtube	f
HgzGwKwLmgM	2019-10-06 22:12:05.550066-04	2019-10-06 22:12:05.550066-04	\N	217000000	Queen - Don't Stop Me Now (Official Video)	youtube	f
IXruhE_62_4	2019-10-07 15:38:49.995255-04	2019-10-07 15:38:49.995255-04	\N	175000000	Neil Cicierega - The Starting Line (Unofficial Music Video)	youtube	f
2kqRA-1A6kw	2019-10-07 15:46:30.319018-04	2019-10-07 15:46:30.319018-04	\N	208000000	Shut up and Dance with Me in The Style of Never Gonna Give You Up	youtube	f
LHtrGq1uubU	2019-10-07 19:40:37.559897-04	2019-10-07 19:40:37.559897-04	\N	120000000	SWAN K feat. Asuka M - LOVE B.B.B	youtube	f
RW7Vs6e88QE	2019-09-29 21:25:46.346535-04	2019-09-29 21:25:46.346535-04	\N	217000000	Last Revenge	youtube	f
8pGwSrk6GMo	2019-09-29 21:29:05.28381-04	2019-09-29 21:29:05.28381-04	\N	203000000	Oat Stop Me Now	youtube	f
GLi1tlCOwzM	2019-09-30 20:06:43.052201-04	2019-09-30 20:06:43.052201-04	\N	65000000	Linkin Park - In the End But It's the Danny Phantom Intro	youtube	f
as9Lm8VdIoA	2019-09-30 23:27:22.257989-04	2019-09-30 23:27:22.257989-04	\N	88000000	There is no need to be Remixed	youtube	f
njos57IJf-0	2019-09-30 23:47:20.228352-04	2019-09-30 23:47:20.228352-04	\N	167000000	Steve Jobs vs Bill Gates. Epic Rap Battles of History	youtube	f
NUpKaG9qtWo	2019-10-01 01:22:45.897964-04	2019-10-01 01:22:45.897964-04	\N	291000000	Madagascar 2 - Moto Moto - Big and Chunky  [HQ]	youtube	f
lXMskKTw3Bc	2019-10-01 02:01:41.75809-04	2019-10-01 02:01:41.75809-04	\N	88000000	Never Gonna Hit Those Notes	youtube	f
VPLCk-FTVvw	2019-10-01 14:04:53.59075-04	2019-10-01 14:04:53.59075-04	\N	530000000	Jacob Collier - Moon River	youtube	f
mPZn4x3uOac	2019-10-01 14:05:03.486729-04	2019-10-01 14:05:03.486729-04	\N	370000000	In The Bleak Midwinter - Jacob Collier	youtube	f
4v3zyPEy-Po	2019-10-01 14:05:50.968087-04	2019-10-01 14:05:50.968087-04	\N	426000000	Hideaway – Jacob Collier	youtube	f
zua831utwMM	2019-10-01 14:16:47.892472-04	2019-10-01 14:16:47.892472-04	\N	191000000	Flintstones - Jacob Collier	youtube	f
K28H04Y2IdE	2019-10-01 14:17:07.430359-04	2019-10-01 14:17:07.430359-04	\N	273000000	Fascinating Rhythm - Jacob Collier	youtube	f
IlFD298wTOM	2019-10-01 14:17:27.067845-04	2019-10-01 14:17:27.067845-04	\N	406000000	Jacob Collier - With The Love In My Heart	youtube	f
xGWaSgaCcYc	2019-10-01 17:11:18.118523-04	2019-10-01 17:11:18.118523-04	\N	153000000	GODS PLAN (gay version)	youtube	f
7WdSCeYOMx4	2019-10-01 19:20:24.905671-04	2019-10-01 19:20:24.905671-04	\N	291000000	Demetori - The Capital City of Flowers in the Sky ~ Bridge of The Lotus	youtube	f
2QWuY6ZhCcY	2019-10-01 21:07:19.326655-04	2019-10-01 21:07:19.326655-04	\N	222000000	F.I.V.E N.I.G.H.T.S	youtube	f
DsoCe7C4Kmk	2019-10-01 21:16:44.188828-04	2019-10-01 21:16:44.188828-04	\N	277000000	Neil Cicierega - T.I.M.E.	youtube	f
igH3lbZ81Ao	2019-10-01 21:26:22.374398-04	2019-10-01 21:26:22.374398-04	\N	29000000	Talk Dirty to Sans Undertale	youtube	f
kp45NUaDpZU	2019-10-01 21:29:24.667936-04	2019-10-01 21:29:24.667936-04	\N	27000000	Kahoot - Megalovania Remix [Meme Mashup]	youtube	f
HbcPNfGlkFc	2019-10-01 21:29:34.618404-04	2019-10-01 21:29:34.618404-04	\N	204000000	Drop It Like It's Ka-Hot (Full Version)	youtube	f
H6ErheuuT60	2019-10-01 21:33:12.543746-04	2019-10-01 21:33:12.543746-04	\N	155000000	Old Town Kahoot	youtube	f
olC8JOSoyOI	2019-10-01 22:15:23.987553-04	2019-10-01 22:15:23.987553-04	\N	231000000	GREAT DAYS -Units Ver.- - JoJo's Bizarre Adventure: Diamond Records	youtube	f
yg8C9SqIUKI	2019-10-01 22:17:36.187466-04	2019-10-01 22:17:36.187466-04	\N	189000000	We Are Number One but its a mashup with 'Problem' by Ariana Grande	youtube	f
RTZeTXRniFA	2019-10-01 22:29:44.216257-04	2019-10-01 22:29:44.216257-04	\N	258000000	We Are Number One (Rice Cooker Version) - LazyTown: The Video Game	youtube	f
k2XKwuTU_jw	2019-10-01 22:59:09.342801-04	2019-10-01 22:59:09.342801-04	\N	187000000	This Is Gospel	youtube	f
JE37e1eK2mY	2019-10-01 22:59:42.631413-04	2019-10-01 22:59:42.631413-04	\N	683000000	Weird Al Yankovic - Albuquerque: THE MOVIE	youtube	f
123BD9U5FIk	2019-10-01 23:33:07.404514-04	2019-10-01 23:33:07.404514-04	\N	258000000	サカナクション / モス	youtube	f
wsFVQJolzYs	2019-10-01 23:33:17.647925-04	2019-10-01 23:33:17.647925-04	\N	222000000	Megalomachia2 - SUPER-REFLEX	youtube	f
uUM593qcILE	2019-10-02 23:55:15.833345-04	2019-10-02 23:55:15.833345-04	\N	159000000	Things About You - KNOWER	youtube	f
F5HLHjyey_I	2019-10-03 00:52:36.594996-04	2019-10-03 00:52:36.594996-04	\N	406000000	Porter Robinson - Spitfire	youtube	f
5zo7BYoaqAA	2019-10-03 16:04:37.246876-04	2019-10-03 16:04:37.246876-04	\N	168000000	RUSH 🅱	youtube	f
feIS8SSVtkU	2019-10-03 18:10:32.999426-04	2019-10-03 18:10:32.999426-04	\N	280000000	doin hhgregg right - a Lavender Harmony remix	youtube	f
ppIi-fr-tNY	2019-10-03 18:17:43.307628-04	2019-10-03 18:17:43.307628-04	\N	65000000	busta rhymes watches spongebob (remake)	youtube	f
HqxAaX9qq7k	2019-10-03 18:22:47.299699-04	2019-10-03 18:22:47.299699-04	\N	212000000	AIN'T NOTHIN' LIKE A FUNKY BEAT - Lethal League Blaze	youtube	f
HSZIej-ZraE	2019-10-03 18:25:57.182155-04	2019-10-03 18:25:57.182155-04	\N	194000000	Jet Set Radio Future - Funky Dealer	youtube	f
4V4IEV8l-gA	2019-10-03 18:27:09.361448-04	2019-10-03 18:27:09.361448-04	\N	227000000	Jet Set Radio Future - Concept of Love	youtube	f
J9b7gveF_tQ	2019-10-03 18:29:21.283047-04	2019-10-03 18:29:21.283047-04	\N	213000000	TWICE (트와이스) - TT [HAN|ROM|ENG Color Coded Lyrics]	youtube	f
HG3lDeGnMQA	2019-10-03 18:43:21.487029-04	2019-10-03 18:43:21.487029-04	\N	175000000	Billie Eilish - Bad Guy (Eurodance Remix)	youtube	f
hAI5V3YVeb0	2019-10-03 18:46:46.478376-04	2019-10-03 18:46:46.478376-04	\N	115000000	the Mii Channel theme except it's in G Major	youtube	f
um_yP-2ix9k	2019-10-03 18:47:02.250541-04	2019-10-03 18:47:02.250541-04	\N	249000000	TheFatRat - Unity vs Megalovania (by LiterallyNoOne)	youtube	f
uho2Uz11IMs	2019-10-03 18:47:44.2123-04	2019-10-03 18:47:44.2123-04	\N	115000000	Kahoot 6ix9ine - Tati Remix	youtube	f
IB3d1UthDrk	2019-10-03 18:48:02.611678-04	2019-10-03 18:48:02.611678-04	\N	145000000	wii theme but its the worst thing you will ever hear	youtube	f
1PrWA4C8eLw	2019-10-03 19:00:42.217672-04	2019-10-03 19:00:42.217672-04	\N	115000000	Lil Nas X - Panini (Official Audio)	youtube	f
i23NEQEFpgQ	2019-10-03 19:07:48.006388-04	2019-10-03 19:07:48.006388-04	\N	269000000	j-hope 'Chicken Noodle Soup (feat. Becky G)' MV	youtube	f
sig15597k2A	2019-10-03 19:08:37.239343-04	2019-10-03 19:08:37.239343-04	\N	403000000	Drunk in love (Kanye West Remix)	youtube	f
L65zFtADA-E	2019-10-03 19:25:08.642747-04	2019-10-03 19:25:08.642747-04	\N	385000000	Panic! At The Disco - House of Memories Megamix (ft. Melanie, Lana, Troye, Halsey, tøp, Marina)	youtube	f
lTx3G6h2xyA	2019-10-03 19:36:17.514731-04	2019-10-03 19:36:17.514731-04	\N	204000000	Madeon - Pop Culture (live mashup)	youtube	f
27mB8verLK8	2019-10-04 01:57:50.355184-04	2019-10-04 01:57:50.355184-04	\N	173000000	Pirates Of The Caribbean Theme Song	youtube	f
T3553DGF71g	2019-10-04 16:40:54.011103-04	2019-10-04 16:40:54.011103-04	\N	247000000	Give Me Everything (Tonight) - Pitbull ft. Neyo, Nayer & Afrojack w/ lyrics on screen & download HD	youtube	f
LY-54Xo_Dl8	2019-10-04 16:54:28.688609-04	2019-10-04 16:54:28.688609-04	\N	202000000	THE FEARLESS FLYERS /// Simon F15	youtube	f
xU7yLn5DYQM	2019-10-04 18:57:50.025356-04	2019-10-04 18:57:50.025356-04	\N	290000000	Def Leppard - Pour Some Sugar On Me (Official Music Video)	youtube	f
NznDn6tU2Xk	2019-10-04 18:58:09.430326-04	2019-10-04 18:58:09.430326-04	\N	155000000	Cruel Angel's Thesis - Neon Genesis Evangelion OP on recorder	youtube	f
Rqs4cMyMLnY	2019-10-04 19:02:07.901098-04	2019-10-04 19:02:07.901098-04	\N	267000000	Pour Some Sugar On Me	youtube	f
tyTz_-EQOXE	2019-10-04 19:02:40.810334-04	2019-10-04 19:02:40.810334-04	\N	458000000	Dragonforce - through the fire and flames on flute	youtube	f
2KG-vH46U0c	2019-10-04 19:29:47.25774-04	2019-10-04 19:29:47.25774-04	\N	341000000	Discord Sings Mr. Blue Sky (gone wrong)	youtube	f
zvq9r6R6QAY	2019-10-05 15:22:23.016669-04	2019-10-05 15:22:23.016669-04	\N	178000000	Caramell - Caramelldansen Swedish Original (Official)	youtube	f
KmDQuwJWs84	2019-10-05 15:35:08.880411-04	2019-10-05 15:35:08.880411-04	\N	160000000	Nightcore - When You Leave (Numa Numa)	youtube	f
RlBJbvnDV2k	2019-10-05 20:18:07.069437-04	2019-10-05 20:18:07.069437-04	\N	225000000	NiTE CRUiSiNG feat. Numb'n'dub	youtube	f
JhoG0BB6HHI	2019-10-06 15:41:34.619152-04	2019-10-06 15:41:34.619152-04	\N	99000000	THE OLDSPICE REVOLVING	youtube	f
B6tFRzt-QvA	2019-10-06 21:02:03.908815-04	2019-10-06 21:02:03.908815-04	\N	140000000	100 gecs - 800db cloud (Official Audio Stream)	youtube	f
UzVxuxnp6rc	2019-10-06 21:28:27.808346-04	2019-10-06 21:28:27.808346-04	\N	229000000	Clone Hero Custom: Revenge vCH	youtube	f
CJHK5SWJu0k	2019-10-06 21:37:54.583043-04	2019-10-06 21:37:54.583043-04	\N	104000000	My name is Jon Arbuckle.	youtube	f
VYd3bOzLU1U	2019-10-06 21:54:57.59447-04	2019-10-06 21:54:57.59447-04	\N	311000000	Harder Better Faster Oatmeal 2	youtube	f
N_6ghPf0FuQ	2019-10-06 22:32:21.147157-04	2019-10-06 22:32:21.147157-04	\N	171000000	Drake - god's GAY (god's plan gay parody) @kusorare_	youtube	f
Jpj0v0U4R0o	2019-10-07 15:27:27.449972-04	2019-10-07 15:27:27.449972-04	\N	175000000	Neil Cicierega - The Starting Line	youtube	f
sker5mvMTj8	2019-10-07 15:51:06.738041-04	2019-10-07 15:51:06.738041-04	\N	54000000	Mii channel theme but the violin and electric piano are swapped	youtube	f
h3cE9iXIx9c	2019-10-07 19:25:44.619954-04	2019-10-07 19:25:44.619954-04	\N	134000000	Flux Pavilion - Bass Cannon	youtube	f
MNjQ8gQtPso	2019-10-07 19:25:53.271947-04	2019-10-07 19:25:53.271947-04	\N	32000000	Pump Cannon	youtube	f
cPCLFtxpadE	2019-10-07 19:49:03.069448-04	2019-10-07 19:49:03.069448-04	\N	516000000	Roundabout (2008 Remastered Version)	youtube	f
rRervevYGR0	2019-10-07 19:51:02.917703-04	2019-10-07 19:51:02.917703-04	\N	231000000	Mousou Express - Hanazawa Kana full remix	youtube	f
Apq2T1vuA6g	2019-10-07 20:04:59.785634-04	2019-10-07 20:04:59.785634-04	\N	105000000	Miigalovania	youtube	f
RrF42Wvd-jQ	2019-10-07 20:14:28.430787-04	2019-10-07 20:14:28.430787-04	\N	9000000	Louis Armstrong - What A Wonderful World	youtube	f
ehcgSoWycVs	2019-10-07 20:23:38.724747-04	2019-10-07 20:23:38.724747-04	\N	119000000	【Mashup】rugrats get money	youtube	f
sfrhj0oDv8E	2019-10-07 20:23:55.80755-04	2019-10-07 20:23:55.80755-04	\N	260000000	Spaghetti Eastwood	youtube	f
r-Qjdso1FFg	2019-10-07 20:27:47.388598-04	2019-10-07 20:27:47.388598-04	\N	266000000	Saria, Ms. Jackson	youtube	f
wPi0GEwqGmA	2019-10-07 20:28:58.039995-04	2019-10-07 20:28:58.039995-04	\N	23000000	Mambo No. 9	youtube	f
eCiFO7qV54E	2019-10-07 20:29:47.219637-04	2019-10-07 20:29:47.219637-04	\N	113000000	Crawling in my Crawl	youtube	f
DJwVlrM0E_k	2019-10-07 20:30:53.868119-04	2019-10-07 20:30:53.868119-04	\N	128000000	We Will Rock You but it's split into stomps and claps	youtube	f
9VBSH-2fMuw	2019-10-08 00:53:20.65665-04	2019-10-08 00:53:20.65665-04	\N	31000000	Little Diddy	youtube	f
bXsmGSnq3lE	2019-10-08 16:45:15.503397-04	2019-10-08 16:45:15.503397-04	\N	250000000	Bon Jovi - Living on a Prayer (Lyrics)	youtube	f
o0aoh363PI4	2019-10-08 16:52:05.00105-04	2019-10-08 16:52:05.00105-04	\N	202000000	Friction - Imagine Dragons (Audio)	youtube	f
1IBDHmBWzeE	2019-10-08 16:53:12.757475-04	2019-10-08 16:53:12.757475-04	\N	217000000	Symphony No.5	youtube	f
tbuDW774bh4	2019-10-08 18:56:22.69009-04	2019-10-08 18:56:22.69009-04	\N	67000000	ماريو الصحراء واحد  - سوبر ماريو صانع اثنين	youtube	f
qTRXOnbuJVM	2019-10-08 19:05:22.89372-04	2019-10-08 19:05:22.89372-04	\N	49000000	The X-Files Theme in a Major Key	youtube	f
FG7R6zuVufE	2019-10-08 19:07:19.311007-04	2019-10-08 19:07:19.311007-04	\N	234000000	Uptown Funk - Evanescence	youtube	f
oQPZikexR1Y	2019-10-08 19:08:13.104775-04	2019-10-08 19:08:13.104775-04	\N	224000000	"Macarena" in Minor key	youtube	f
o6suaQYVMiE	2019-10-08 19:15:23.090685-04	2019-10-08 19:15:23.090685-04	\N	272000000	File Select 3½	youtube	f
l9BZYndTQsw	2019-10-08 19:15:51.433602-04	2019-10-08 19:15:51.433602-04	\N	173000000	Caramelldansen Simulation	youtube	f
ITLfmCA6XPA	2019-10-08 19:25:10.634143-04	2019-10-08 19:25:10.634143-04	\N	225000000	Childish Gambino - This is The Literature Club	youtube	f
L-xi8orqmu8	2019-10-08 19:25:50.835243-04	2019-10-08 19:25:50.835243-04	\N	162000000	the only time i make a dame tu cosita mashup	youtube	f
mABwhdIifUc	2019-10-08 19:27:47.235715-04	2019-10-08 19:27:47.235715-04	\N	243000000	Rolling Girl In the style of A-ha Take On Me	youtube	f
0CRBsQrLTdI	2019-10-08 19:28:16.537078-04	2019-10-08 19:28:16.537078-04	\N	226000000	One More Night - Rock Band 4	youtube	f
dGRQPK7bUPs	2019-10-08 19:35:47.163562-04	2019-10-08 19:35:47.163562-04	\N	232000000	Main Theme - 1 2 Oatmeal	youtube	f
QDBqa1b2N7Y	2019-10-08 19:37:48.784411-04	2019-10-08 19:37:48.784411-04	\N	131000000	009 Sound System (Epic Eurobeat Mix) - Initial Dreamscape	youtube	f
z9IDGTKyqJw	2019-10-08 19:40:13.809169-04	2019-10-08 19:40:13.809169-04	\N	164000000	20 Second Countdown (Groovy) (Spanish Version) - Kahoot!	youtube	f
X_XGxzMrq04	2019-10-08 20:18:24.846959-04	2019-10-08 20:18:24.846959-04	\N	229000000	"Don't Mine At Night" - A Minecraft Parody of Katy Perry's Last Friday Night (Music Video)	youtube	f
5g5QkKOE3Yg	2019-10-09 12:11:41.125159-04	2019-10-09 12:11:41.125159-04	\N	264000000	【東方Eurobeat】 MASSIVE SUPER GIRL 「SOUND HOLIC」	youtube	f
34VwwPoUTzQ	2019-10-09 12:37:10.703798-04	2019-10-09 12:37:10.703798-04	\N	171000000	DEATH BY GRAND DAD	youtube	f
pe3Ad3TI2R4	2019-10-09 13:06:15.031892-04	2019-10-09 13:06:15.031892-04	\N	283000000	【東方ボーカル】 「郷愁千夜物語」 【SOUND HOLIC】	youtube	f
o6t67YhSpCA	2019-10-09 13:07:08.756653-04	2019-10-09 13:07:08.756653-04	\N	285000000	【東方ボーカル】 「零次元エクスプレス」 【SOUND HOLIC】	youtube	f
LF6CG2jGjQ0	2019-10-09 16:54:41.017132-04	2019-10-09 16:54:41.017132-04	\N	307000000	Dicko-nara Mode - Unfunny Sayo-nara Mashups in 2019: The Game	youtube	f
tghg0DxiM1c	2019-10-09 17:00:48.148373-04	2019-10-09 17:00:48.148373-04	\N	195000000	Travis Scott x Drake – Sicko Mode Over (DØNAVEN MASHUP)	youtube	f
HJeaZEiPfms	2019-10-09 17:01:32.651717-04	2019-10-09 17:01:32.651717-04	\N	64000000	TIKO Mode	youtube	f
v9PHcqlpCLg	2019-10-09 17:16:35.669914-04	2019-10-09 17:16:35.669914-04	\N	104000000	"Useless" - A Minecraft Parody of I Love It By Lil' Pump & Kanye West	youtube	f
1kdOsWoU4Qo	2019-10-09 17:32:44.757579-04	2019-10-09 17:32:44.757579-04	\N	15000000	pizza pasta but its miku	youtube	f
OVSHntQMlnE	2019-10-10 13:31:07.674093-04	2019-10-10 13:31:07.674093-04	\N	55000000	grapefruit technique vocoded	youtube	f
2c1iSpk3u1A	2019-10-10 13:47:09.437074-04	2019-10-10 13:47:09.437074-04	\N	248000000	Trainwreck Of Electro Swing - A Hat In Time Remix	youtube	f
McGS6IJKF2A	2019-10-10 18:56:01.907306-04	2019-10-10 18:56:01.907306-04	\N	320000000	Sicko mode but drakes part is Dicko mode but it's also earrape.	youtube	f
YTrgUZa1maw	2019-10-10 19:05:11.934506-04	2019-10-10 19:05:11.934506-04	\N	158000000	Ape Oddity (DK Vine REUPLOAD)	youtube	f
iRI-z8tbhws	2019-10-10 19:09:35.063656-04	2019-10-10 19:09:35.063656-04	\N	510000000	We Are The Crystal Gems Fusion Collab	youtube	f
sQSByufEE3U	2019-10-10 19:10:31.580633-04	2019-10-10 19:10:31.580633-04	\N	259000000	Take Me Home, Country Roads (Nuclear Winter Update) - Fallout 76	youtube	f
mi20Dzmbaxs	2019-10-10 19:19:26.707939-04	2019-10-10 19:19:26.707939-04	\N	450000000	Boss Battle Fusion Collab	youtube	f
5NNFtQIxhHU	2019-10-10 19:34:28.206579-04	2019-10-10 19:34:28.206579-04	\N	132000000	Have You Ever Had A Dream (Wattz Trap Remix)	youtube	f
1CUvmmjAlm4	2019-10-10 19:40:14.983168-04	2019-10-10 19:40:14.983168-04	\N	23000000	My Left Leg has Went Totally Numb	youtube	f
FQMTYxA6tUI	2019-10-10 19:56:11.849138-04	2019-10-10 19:56:11.849138-04	\N	135000000	We Are Number One but it's a Shooting Stars Mashup	youtube	f
wx038ogs228	2019-10-10 20:17:21.616662-04	2019-10-10 20:17:21.616662-04	\N	32000000	Zombieland saga Eminem real Slim Shady	youtube	f
A3t_D5P1z1U	2019-10-10 20:39:06.089296-04	2019-10-10 20:39:06.089296-04	\N	60000000	Morty tries to rap "Look At Me Now" / (Rick and Morty) Animation	youtube	f
qx8hrhBZJ98	2019-10-10 22:42:48.594877-04	2019-10-10 22:42:48.594877-04	\N	232000000	Tuvan Throat Singing	youtube	f
nt-Jktr3RI4	2019-10-10 22:43:35.825774-04	2019-10-10 22:43:35.825774-04	\N	23000000	Mongolian Throat Singing (Donald Trump mix)	youtube	f
SW-BU6keEUw	2019-10-10 22:44:03.330253-04	2019-10-10 22:44:03.330253-04	\N	277000000	Eminem - "Mom's Spaghetti" (Music Video)	youtube	f
vANdBuNcTow	2019-10-10 22:44:34.247005-04	2019-10-10 22:44:34.247005-04	\N	37000000	iPhone Ringtone Trap Remix	youtube	f
rHsKqQMeeI4	2019-10-10 22:45:49.851252-04	2019-10-10 22:45:49.851252-04	\N	44000000	running boy	youtube	f
dsPF8SPAy7E	2019-10-10 22:46:25.022076-04	2019-10-10 22:46:25.022076-04	\N	40000000	Hey Vsauce, Michael here - Shooting Stars Meme	youtube	f
dFdBLHSW_zI	2019-10-10 22:46:42.996752-04	2019-10-10 22:46:42.996752-04	\N	246000000	Closer by the Chainsmokers but every lyric is replaced by All Star by Smash Mouth	youtube	f
A1PAO3jgmXY	2019-10-10 22:47:06.890185-04	2019-10-10 22:47:06.890185-04	\N	152000000	Soviet Army dancing to Hard Bass	youtube	f
Z1G4V6X5ONA	2019-10-10 22:47:59.932176-04	2019-10-10 22:47:59.932176-04	\N	19000000	Jean-Claude Van Damme - mit Katana (Do you like Sushi?)	youtube	f
8nh7SNGrUpk	2019-10-10 22:50:14.92558-04	2019-10-10 22:50:14.92558-04	\N	65000000	Holder - Chillin' and doing beats...	youtube	f
xaYSUzFaN5I	2019-10-10 22:50:25.916388-04	2019-10-10 22:50:25.916388-04	\N	57000000	You know what i'm saying? Eminem.	youtube	f
FsCaBYdMIIA	2019-10-10 22:50:55.805301-04	2019-10-10 22:50:55.805301-04	\N	54000000	Buzz Lightyear commercial	youtube	f
ZZ5LpwO-An4	2019-10-10 22:51:08.529465-04	2019-10-10 22:51:08.529465-04	\N	127000000	HEYYEYAAEYAAAEYAEYAA	youtube	f
hQgcJ90z4FY	2019-10-10 22:53:03.489117-04	2019-10-10 22:53:03.489117-04	\N	32000000	Megalovania — Ringtone (Undertale sans meme)	youtube	f
jUOdO5dqPeU	2019-10-11 14:59:36.004533-04	2019-10-11 14:59:36.004533-04	\N	221000000	Big Time Rush - Boyfriend (Official Video) ft. Snoop Dogg	youtube	f
jQHtfeSoBDk	2019-10-11 15:00:10.363683-04	2019-10-11 15:00:10.363683-04	\N	174000000	caramelldansen from another room	youtube	f
JQm21nB4uwI	2019-10-11 15:29:03.030445-04	2019-10-11 15:29:03.030445-04	\N	259000000	SuperM (슈퍼엠) - Jopping (Color Coded Lyrics Eng/Rom/Han/가사)	youtube	f
6nDrD2WNSJU	2019-10-12 15:41:31.960524-04	2019-10-12 15:41:31.960524-04	\N	278000000	【東方ボーカル】 「仮面のエモーション」 【あ～るの～と】	youtube	f
IevsaST5LOE	2019-10-12 15:43:43.82783-04	2019-10-12 15:43:43.82783-04	\N	184000000	Nightcore - Courtesy Call	youtube	f
sBo52--2XU4	2019-10-12 15:44:46.216068-04	2019-10-12 15:44:46.216068-04	\N	175000000	Nightcore - Accelerate	youtube	f
cXEZu-uIdeI	2019-10-12 15:57:29.777599-04	2019-10-12 15:57:29.777599-04	\N	168000000	Nightcore - Sarcasm	youtube	f
5I-r3Z_tm7I	2019-10-12 15:57:45.996896-04	2019-10-12 15:57:45.996896-04	\N	163000000	Nightcore - Blackout	youtube	f
Yn0d6qpzepU	2019-10-12 15:58:41.567849-04	2019-10-12 15:58:41.567849-04	\N	172000000	Nightcore - Operator	youtube	f
eH4F1Tdb040	2019-10-12 16:03:20.363309-04	2019-10-12 16:03:20.363309-04	\N	271000000	Stephen - Crossfire	youtube	f
15ry8nvYLdQ	2019-10-12 16:04:20.141264-04	2019-10-12 16:04:20.141264-04	\N	211000000	Stephen - Remembering Myself	youtube	f
gDDfKqRWueU	2019-10-12 16:05:52.38684-04	2019-10-12 16:05:52.38684-04	\N	287000000	Stephen - Sincerely	youtube	f
6di5tkf5oYw	2019-10-13 14:36:41.86898-04	2019-10-13 14:36:41.86898-04	\N	201000000	IZ*ONE (아이즈원) - Violeta (비올레타) (Color Coded Lyrics Eng/Rom/Han/가사)	youtube	f
o_Skd2Lw6xI	2019-10-13 14:49:44.882126-04	2019-10-13 14:49:44.882126-04	\N	189000000	Stray Kids "DOUBLE KNOT" (Color Coded Lyrics Eng/Rom/Han/가사)	youtube	f
1qnV55LUFVM	2019-10-13 14:51:16.975009-04	2019-10-13 14:51:16.975009-04	\N	237000000	BIGBANG - BAD BOY M/V	youtube	f
--zku6TB5NY	2019-10-13 14:51:30.208962-04	2019-10-13 14:51:30.208962-04	\N	297000000	BIGBANG - ‘LAST DANCE’ M/V	youtube	f
Tx3PHZKlWqU	2019-10-13 15:28:26.822113-04	2019-10-13 15:28:26.822113-04	\N	232000000	Егор Крид - Самая Самая (Lyrics)	youtube	f
-Abm0pewwLo	2019-10-13 15:48:04.319637-04	2019-10-13 15:48:04.319637-04	\N	215000000	BTS (방탄소년단) – 'Blood Sweat & Tears' (피 땀 눈물) Lyrics [Color Coded_Han_Rom_Eng]	youtube	f
OEnvXsyGZmU	2019-10-13 15:49:09.720486-04	2019-10-13 15:49:09.720486-04	\N	232000000	BTS (방탄소년단) - Boy With Luv (작은 것들을 위한 시) feat. Halsey (Color Coded Lyrics Eng/Rom/Han/가사)	youtube	f
KmRqHwJrTKQ	2019-10-13 15:49:50.26854-04	2019-10-13 15:49:50.26854-04	\N	200000000	Love Shot	youtube	f
AX3Bsiq-13k	2019-10-13 15:50:30.449432-04	2019-10-13 15:50:30.449432-04	\N	189000000	Dua Lipa & BLACKPINK - Kiss and Make Up (Official Audio)	youtube	f
vnLNituBa5k	2019-10-13 18:39:04.367361-04	2019-10-13 18:39:04.367361-04	\N	115000000	Lil Nas X's Panini but It's Sung By Schnitzel	youtube	f
bpszIdtcWQc	2019-10-13 19:56:42.58708-04	2019-10-13 19:56:42.58708-04	\N	85000000	take on thoose notes	youtube	f
ceoJnIJO1zM	2019-10-13 20:12:37.092736-04	2019-10-13 20:12:37.092736-04	\N	261000000	【東方ボーカル】 「ニヒル神楽」 【幽閉サテライト】【Subbed】	youtube	f
mqLQwb1Ml9c	2019-10-13 22:36:46.234224-04	2019-10-13 22:36:46.234224-04	\N	277000000	Caramell Dancing with the Sickness [Disturbed vs Caramell] Mashup	youtube	f
ucsUBRN52Fk	2019-10-13 22:46:05.825125-04	2019-10-13 22:46:05.825125-04	\N	226000000	Shooting Rebecca Black	youtube	f
d_QvnThhtq8	2019-10-13 22:51:49.508664-04	2019-10-13 22:51:49.508664-04	\N	353000000	SICKO RHAPSODY (Queen x Travis Scott) (mashup)	youtube	f
_Gx2YH4ysYs	2019-10-13 22:54:04.495363-04	2019-10-13 22:54:04.495363-04	\N	196000000	SICKO MODE KAHOOT REMIX	youtube	f
znwZp6nCSek	2019-10-13 23:03:20.886979-04	2019-10-13 23:03:20.886979-04	\N	231000000	[♫] [Fort Minor x Everything Soundclown] Remember the Meme	youtube	f
XxEpGowemb4	2019-10-13 23:53:42.336719-04	2019-10-13 23:53:42.336719-04	\N	30000000	Waluigi is drinking wine on a Friday night when he gets wario’s death notice in the mail.mp3	youtube	f
umvgwXINJBE	2019-10-11 15:50:32.321863-04	2019-10-11 15:50:32.321863-04	\N	165000000	GOOFY'S TRIAL ANIMATED - By Shigloo	youtube	f
Zz4foifCkwM	2019-10-11 16:09:44.873264-04	2019-10-11 16:09:44.873264-04	\N	17000000	abstractjoke.mp4	youtube	f
dh1brUJQ-5A	2019-10-11 16:37:30.721285-04	2019-10-11 16:37:30.721285-04	\N	218000000	Marshmello x Hardwell x CHRVCHES x Katy Perryx Manse - Small Talk [Music Video] (Ceribelli Mashup)	youtube	f
Kw--2QxTcBg	2019-10-11 16:38:06.49906-04	2019-10-11 16:38:06.49906-04	\N	170000000	Actually Every Old Town Road remix played at once	youtube	f
YmNK8R-YuEc	2019-10-11 16:46:51.900983-04	2019-10-11 16:46:51.900983-04	\N	64000000	Alex Trebek saying the word "genre" on Jeopardy!	youtube	f
_rwQ5RAKPMQ	2019-10-11 18:52:44.523943-04	2019-10-11 18:52:44.523943-04	\N	189000000	Flori Mumajesi - Ta boja me drita	youtube	f
2NMeO8z_CSQ	2019-10-11 19:12:28.00363-04	2019-10-11 19:12:28.00363-04	\N	213000000	DK Rap but every noun is a COCONUT GUN	youtube	f
k2rDbRUDkds	2019-10-11 19:12:58.498275-04	2019-10-11 19:12:58.498275-04	\N	276000000	"TNT" - A Minecraft Parody of Taio Cruz's Dynamite (Music Video)	youtube	f
KxGRhd_iWuE	2019-10-11 19:14:02.361495-04	2019-10-11 19:14:02.361495-04	\N	35000000	Matsuoka Shuzo [松岡修造 ] - あきらめかけているあなた (NEVER GIVE UP!!) [English]	youtube	f
-on8Zpps2R0	2019-10-11 19:14:23.353524-04	2019-10-11 19:14:23.353524-04	\N	225000000	DK Rap (Anniversary Edition) - Donkey Kong 64	youtube	f
uCsD3ZGzMgE	2019-10-11 19:29:46.519239-04	2019-10-11 19:29:46.519239-04	\N	837000000	The Josephus Problem - Numberphile	youtube	f
8GW6sLrK40k	2019-10-11 19:29:54.89091-04	2019-10-11 19:29:54.89091-04	\N	213000000	HOME - Resonance	youtube	f
JefYSbOXxpY	2019-10-11 19:41:53.540044-04	2019-10-11 19:41:53.540044-04	\N	200000000	Alex Jones New World Order Remix	youtube	f
rXfKWIZQIo4	2019-10-11 19:42:02.588135-04	2019-10-11 19:42:02.588135-04	\N	779000000	The Moving Sofa Problem - Numberphile	youtube	f
NLW2JXzlkTA	2019-10-11 19:43:49.666213-04	2019-10-11 19:43:49.666213-04	\N	225000000	DJs Got Us Fallin' In Love Again but it switches to Revenge every beat	youtube	f
n-cQsTkEjL8	2019-10-11 20:29:54.601617-04	2019-10-11 20:29:54.601617-04	\N	8000000	Goose Honk (Beta Mix) - Untitled Goose Game	youtube	f
lUDbXK2IxJ8	2019-10-11 23:33:15.214713-04	2019-10-11 23:33:15.214713-04	\N	297000000	"today's music sucks, nothing beats the classics"	youtube	f
ZdpJAVuzIaM	2019-10-12 13:07:28.097216-04	2019-10-12 13:07:28.097216-04	\N	226000000	SuperM (슈퍼엠) - Super Car (Color Coded Lyrics Eng/Rom/Han/가사)	youtube	f
rom0oQPBrAk	2019-10-12 13:07:49.686608-04	2019-10-12 13:07:49.686608-04	\N	208000000	SuperM (슈퍼엠) - 'I Can't Stand the Rain' Lyrics (Color Coded_Han_Rom_Eng)	youtube	f
i1IKnWDecwA	2019-10-12 14:29:39.86756-04	2019-10-12 14:29:39.86756-04	\N	208000000	Phoenix (ft. Cailin Russo and Chrissy Costanza) | Worlds 2019 - League of Legends	youtube	f
kjBOesZCoqc	2019-10-12 14:47:49.601456-04	2019-10-12 14:47:49.601456-04	\N	304000000	Essence of linear algebra preview	youtube	f
cyW2ajAVyfA	2019-10-12 14:55:34.639575-04	2019-10-12 14:55:34.639575-04	\N	127000000	Nightcore - Take A Hint	youtube	f
c0mX-5q3mrY	2019-10-12 14:55:49.92137-04	2019-10-12 14:55:49.92137-04	\N	172000000	Nightcore - This Little Girl	youtube	f
qgeaoW55Pks	2019-10-12 14:56:03.627654-04	2019-10-12 14:56:03.627654-04	\N	223000000	Nightcore - Just A Dream	youtube	f
xkIytYlDD_o	2019-10-12 14:58:54.768507-04	2019-10-12 14:58:54.768507-04	\N	197000000	Nightcore - Dollhouse	youtube	f
CJcll7v5b5U	2019-10-12 15:45:19.842114-04	2019-10-12 15:45:19.842114-04	\N	210000000	Nightstep - Bullet Train	youtube	f
4lRWYRlzlT8	2019-10-12 15:45:45.712664-04	2019-10-12 15:45:45.712664-04	\N	282000000	【東方ボーカル】 「マーメイド幻想 ～Mermaid Fantasy～」 【あ～るの～と】	youtube	f
D-LxTP6zLVI	2019-10-12 15:47:00.843624-04	2019-10-12 15:47:00.843624-04	\N	162000000	Nightcore - Wonderland	youtube	f
y7CuNfVq790	2019-10-12 15:47:18.661286-04	2019-10-12 15:47:18.661286-04	\N	253000000	Nightcore - This Is War	youtube	f
5GkgV_17RIY	2019-10-13 14:43:34.076828-04	2019-10-13 14:43:34.076828-04	\N	201000000	Gee	youtube	f
eSH7QSzkhQg	2019-10-13 14:50:25.344664-04	2019-10-13 14:50:25.344664-04	\N	681000000	cute songs to help you cope with depression	youtube	f
AIp3IOhBYiU	2019-10-13 14:50:42.855486-04	2019-10-13 14:50:42.855486-04	\N	196000000	Lauv - f*ck, i'm lonely (with Anne-Marie) [Official Audio]	youtube	f
4dmT9D6Upzs	2019-10-13 15:18:18.852801-04	2019-10-13 15:18:18.852801-04	\N	221000000	La La La	youtube	f
NZbsCXrBcyA	2019-10-13 15:22:29.449455-04	2019-10-13 15:22:29.449455-04	\N	160000000	Jackson Wang - BULLET TO THE HEART	youtube	f
fjx_5kDEyug	2019-10-13 15:48:24.79184-04	2019-10-13 15:48:24.79184-04	\N	220000000	ATEEZ (에이티즈) - 'SAY MY NAME' Lyrics [Color Coded_Han_Rom_Eng]	youtube	f
R8sZbleUQFg	2019-10-13 15:50:59.758465-04	2019-10-13 15:50:59.758465-04	\N	196000000	MAMAMOO(마마무) - gogobebe (고고베베) (Color Coded Lyrics Eng/Rom/Han/가사)	youtube	f
zmyUcpA1B6I	2019-10-13 15:51:29.107155-04	2019-10-13 15:51:29.107155-04	\N	222000000	BTS (방탄소년단) - 'DNA' Lyrics [Color Coded_Han_Rom_Eng]	youtube	f
lJlvrPRXDIo	2019-10-13 15:52:10.437098-04	2019-10-13 15:52:10.437098-04	\N	221000000	BTS (방탄소년단) – 'IDOL' Lyrics [Color Coded_Han_Rom_Eng]	youtube	f
XLUdnWsaurU	2019-10-13 15:52:28.621586-04	2019-10-13 15:52:28.621586-04	\N	243000000	BTS (방탄소년단) - 'FAKE LOVE' Lyrics [Color Coded_Han_Rom_Eng]	youtube	f
DhCp22tIiTc	2019-10-13 15:58:22.658883-04	2019-10-13 15:58:22.658883-04	\N	182000000	Naughty Boy - La La La ft. Sam Smith (K Theory Remix)	youtube	f
Vn25uTGgYho	2019-10-13 18:12:31.55732-04	2019-10-13 18:12:31.55732-04	\N	121000000	Hentacito	youtube	f
WYS5NtRXlZQ	2019-10-13 18:12:43.680347-04	2019-10-13 18:12:43.680347-04	\N	62000000	Education Connection Commercial Jingle	youtube	f
QJzt8L_i7_U	2019-10-13 22:40:45.843139-04	2019-10-13 22:40:45.843139-04	\N	30000000	HH Gregg AD 2010 christmas in july	youtube	f
iYGTbrYi914	2019-10-13 22:40:59.487635-04	2019-10-13 22:40:59.487635-04	\N	97000000	doin	youtube	f
mb8nF_B7xCI	2019-10-13 22:42:51.978891-04	2019-10-13 22:42:51.978891-04	\N	126000000	Lil Nas X - Megalovania	youtube	f
0X2nDhlPTFU	2019-10-13 23:09:41.727841-04	2019-10-13 23:09:41.727841-04	\N	205000000	Finger Eleven - Paralyzer (Mario Kart DS Style)	youtube	f
c7SNgpj3-Y8	2019-10-13 23:46:00.728182-04	2019-10-13 23:46:00.728182-04	\N	84000000	Wii Theme but it’s Scatman’s World	youtube	f
H9ssgV07nvs	2019-10-13 23:48:08.330606-04	2019-10-13 23:48:08.330606-04	\N	221000000	Scatman's Bonfire (Childish Gambino x Scatman John Mashup)	youtube	f
CK-putgJD5E	2019-10-13 23:54:54.650746-04	2019-10-13 23:54:54.650746-04	\N	185000000	God's Flat Zone [God's Plan x Flat Zone 2 Mashup]	youtube	f
eja2gshkD1Y	2019-10-14 00:01:14.249597-04	2019-10-14 00:01:14.249597-04	\N	300000000	sicko mode but it randomly cuts out to dicko mode	youtube	f
-1q3OY2FIrs	2019-10-14 00:10:20.883685-04	2019-10-14 00:10:20.883685-04	\N	224000000	The Oatmeal Revolving	youtube	f
CHpe_v5nXkU	2019-10-14 11:59:17.601815-04	2019-10-14 11:59:17.601815-04	\N	224000000	Stay One More Night - Zedd & Alessia vs Maroon 5 (Mashup)	youtube	f
rGflu3TbREo	2019-10-14 12:05:34.423685-04	2019-10-14 12:05:34.423685-04	\N	140000000	"YMCA" reworked to Minor key	youtube	f
IVH6Gl7W0hI	2019-10-14 12:12:19.506749-04	2019-10-14 12:12:19.506749-04	\N	930000000	Super Mario Galaxy Music Extended - Gusty Garden Galaxy	youtube	f
dqkh7vwaiHs	2019-10-14 12:22:47.859999-04	2019-10-14 12:22:47.859999-04	\N	163000000	Eiffel 65 - Megalovania	youtube	f
Lv08YiSkyG8	2019-10-14 12:23:12.849107-04	2019-10-14 12:23:12.849107-04	\N	230000000	What Is Creeper Aw Man?	youtube	f
xR0DKOGco_o	2019-10-14 12:37:53.824534-04	2019-10-14 12:37:53.824534-04	\N	246000000	Hallelujah Rufus Wainwright	youtube	f
2c4dB52ehAE	2019-10-14 14:29:59.88479-04	2019-10-14 14:29:59.88479-04	\N	214000000	AJR - 100 Bad Days [Official Video]	youtube	f
kP_WimOPYJ8	2019-10-14 14:38:18.302817-04	2019-10-14 14:38:18.302817-04	\N	211000000	Scatbusters - Scatman John + Ray Parker Jr. (Mashup)	youtube	f
Fl2OvKxMA0s	2019-10-14 18:42:16.160575-04	2019-10-14 18:42:16.160575-04	\N	204000000	Death of a Bachelor	youtube	f
NaBF7qsPxWg	2019-10-15 12:18:14.049554-04	2019-10-15 12:18:14.049554-04	\N	286000000	Luschka - Kami no Kotoba	youtube	f
uKDuIhNVLyg	2019-10-15 12:18:49.072788-04	2019-10-15 12:18:49.072788-04	\N	161000000	Nightcore - Everytime We Touch	youtube	f
1rufRTZ2XJA	2019-10-15 12:19:29.353145-04	2019-10-15 12:19:29.353145-04	\N	164000000	Nightcore - Runaway (Cascada)	youtube	f
Lr91gOOnvl8	2019-10-15 12:21:55.099956-04	2019-10-15 12:21:55.099956-04	\N	237000000	"unravel(Tokyo Ghoul)" - covered by Luschka	youtube	f
pRG7FJobkv4	2019-10-15 12:58:04.593289-04	2019-10-15 12:58:04.593289-04	\N	242000000	MY FIRST STORY -不可逆リプレイス-【Official Video】	youtube	f
_3rYdHNoW7U	2019-10-15 13:00:43.38494-04	2019-10-15 13:00:43.38494-04	\N	242000000	Feryquitous (Vo.Sennzai) -  Rhuzerv/声 【Irui Album】	youtube	f
LfAju0F2q5o	2019-10-15 13:00:57.424635-04	2019-10-15 13:00:57.424635-04	\N	170000000	Deemo 2.3 - Sakuzyo - Angelfalse	youtube	f
x45IxcnXH_8	2019-10-15 15:38:52.954413-04	2019-10-15 15:38:52.954413-04	\N	190000000	Sleep Paralysis - SiIvaGunner: King for a Day Tournament	youtube	f
iWprnHQGYlo	2019-10-15 15:45:52.515358-04	2019-10-15 15:45:52.515358-04	\N	103000000	Everytime We Touch - SiIvaGunner: King for a Day Tournament	youtube	f
DmfWyrnZ4ns	2019-10-15 15:49:26.508981-04	2019-10-15 15:49:26.508981-04	\N	58000000	Play a Mini-Game! (PAL Version) - Mario Party	youtube	f
Qq4uP1fXWe4	2019-10-15 16:04:47.78702-04	2019-10-15 16:04:47.78702-04	\N	110000000	Circus (Swedish Version) - Five Nights at Freddy's	youtube	f
4onDd_1Cdm4	2019-10-15 16:23:26.151096-04	2019-10-15 16:23:26.151096-04	\N	132000000	Take A Hint - Victorious: Taking the Lead	youtube	f
8zvVqrwPISY	2019-10-15 16:37:50.012829-04	2019-10-15 16:37:50.012829-04	\N	209000000	Don't Stop Me Now (Queen) - IN A MINOR KEY!!!	youtube	f
KsvPJJv4ysg	2019-10-15 17:21:23.540544-04	2019-10-15 17:21:23.540544-04	\N	145000000	Nunca Me Das Cositas - SiIvaGunner: King for a Day Tournament	youtube	f
cVdmD_J8feY	2019-10-15 21:23:20.374728-04	2019-10-15 21:23:20.374728-04	\N	179000000	NCT 127 – Fire Truck (소방차) (Color Coded Han|Rom|Eng Lyrics) | by Yankat	youtube	f
If27FnxvjZA	2019-10-15 21:41:55.758657-04	2019-10-15 21:41:55.758657-04	\N	236000000	Pitbull - Fireball (Audio) ft. John Ryan	youtube	f
3b1YSNsF2eE	2019-10-15 21:42:51.091638-04	2019-10-15 21:42:51.091638-04	\N	217000000	Girl on Fire by Alicia Keys (Lyrics)	youtube	f
n1lfYh-aUk0	2019-10-15 21:43:42.117977-04	2019-10-15 21:43:42.117977-04	\N	234000000	Firework - Katy Perry (Lyrics)	youtube	f
adPPajWXdVM	2019-10-15 21:44:40.625558-04	2019-10-15 21:44:40.625558-04	\N	203000000	FNAF SONG: "DIE IN A FIRE " (by The Living Tombstone)	youtube	f
TZCfydWF48c	2019-10-16 00:54:25.261423-04	2019-10-16 00:54:25.261423-04	\N	563000000	Antonio Vivaldi - Winter (Full) - The Four Seasons	youtube	f
DtKCNJmARF0	2019-10-16 01:05:12.637673-04	2019-10-16 01:05:12.637673-04	\N	220000000	Diana Boncheva feat. BanYa - Beethoven Virus Full Version	youtube	f
q6A1PzmGy_s	2019-10-16 15:24:37.374076-04	2019-10-16 15:24:37.374076-04	\N	143000000	Eminem feat. D12 - My Salsa (Music Video)	youtube	f
uhhSxWTEIeI	2019-10-16 15:32:05.421799-04	2019-10-16 15:32:05.421799-04	\N	179000000	Credits - Love Live! School Idol Festival ALL STARS	youtube	f
eXOpDDCMwsY	2019-10-16 15:39:44.814945-04	2019-10-16 15:39:44.814945-04	\N	135000000	Paralyzer John - Finger Eleven & Scatman Ski | RaveDj	youtube	f
D54e_HEknD8	2019-10-16 22:26:05.848431-04	2019-10-16 22:26:05.848431-04	\N	7000000	Soulja Boy Gets Let Down	youtube	f
G7kPRelDb18	2019-10-17 14:33:23.993415-04	2019-10-17 14:33:23.993415-04	\N	260000000	【東方ボーカル】 「汝は白狼なりや？ feat.あやぽんず*」 【森羅万象】	youtube	f
WXhUQwPTQUo	2019-10-17 14:38:27.684471-04	2019-10-17 14:38:27.684471-04	\N	266000000	【東方ボーカル】 「ZERØISM」 【SOUND HOLIC】	youtube	f
xwb-BQHBs-8	2019-10-17 14:38:43.376099-04	2019-10-17 14:38:43.376099-04	\N	230000000	【東方ボーカル】 「MISTLAKE LOVE」 【SOUND HOLIC】	youtube	f
4DtIj9AJG2E	2019-10-17 14:43:09.112654-04	2019-10-17 14:43:09.112654-04	\N	200000000	【東方ボーカル】 「メイドノココロハ アヤツリドール」 【森羅万象】	youtube	f
d6raPbTyp7o	2019-10-17 16:25:41.741423-04	2019-10-17 16:25:41.741423-04	\N	299000000	【東方Vocal】花たん - Who loves your world (DiGiTAL WiNG)	youtube	f
9hU1gQ13YK8	2019-10-17 16:25:58.200679-04	2019-10-17 16:25:58.200679-04	\N	342000000	(DiGiTAL WiNG) 天地有用	youtube	f
bCrLMOlchj4	2019-10-17 16:38:51.811334-04	2019-10-17 16:38:51.811334-04	\N	274000000	【東方EUROBEAT】 Reason For Red 【A-One】	youtube	f
dP4rX-8UfDY	2019-10-17 16:39:31.965813-04	2019-10-17 16:39:31.965813-04	\N	312000000	ᴴᴰ⁶⁰【東方Vocal】DiGiTAL WiNG｜CONTINUE? (Extended Version)【Vo. 野宮あゆみ】	youtube	f
0Da8CfbgGhs	2019-10-17 16:46:28.984074-04	2019-10-17 16:46:28.984074-04	\N	345000000	[DiGiTAL WiNG] O-One de Circuit	youtube	f
rJjn1nIZmes	2019-10-17 16:57:20.605048-04	2019-10-17 16:57:20.605048-04	\N	274000000	【東方ボーカル】Paranoia（DJ katsu CLUB EDIT）【DiGiTAL WiNG】	youtube	f
gr5eS50nrMs	2019-10-17 17:30:47.92296-04	2019-10-17 17:30:47.92296-04	\N	250000000	Bad Apple!! (Alternative Version) - Touhou 4: Lotus Land Story	youtube	f
l7LG15O6L2Y	2019-10-17 17:39:23.550677-04	2019-10-17 17:39:23.550677-04	\N	299000000	Run (AU Version) - Hotline Miami 2: Wrong Number	youtube	f
Q-js4IUiduw	2019-10-17 18:33:11.022952-04	2019-10-17 18:33:11.022952-04	\N	191000000	♬ "Creepers" - Minecraft Parody of "Heathens" by Twenty One Pilots	youtube	f
BnTW6fZz-1E	2019-10-17 18:33:19.850016-04	2019-10-17 18:33:19.850016-04	\N	194000000	Cheeki Breeki Hardbass Anthem	youtube	f
75x6DncZDgI	2019-10-17 18:38:30.636436-04	2019-10-17 18:38:30.636436-04	\N	308000000	Chopin - Fantaisie Impromptu, Op. 66 (Rubinstein)	youtube	f
CJzfTZlEl40	2019-10-17 18:40:16.819713-04	2019-10-17 18:40:16.819713-04	\N	178000000	UKF Dubstep Tutorial (Presented by Dubba Jonny)	youtube	f
eto6s-4IGh4	2019-10-17 18:46:31.305529-04	2019-10-17 18:46:31.305529-04	\N	154000000	Dubba Jonny - Not Another UKF Dubstep Tutorial	youtube	f
8aCUHkFA9oQ	2019-10-17 19:16:57.647144-04	2019-10-17 19:16:57.647144-04	\N	203000000	THE WORLD REVOLTING - Vavrrune	youtube	f
8Ci2wBwz-HE	2019-10-17 20:17:11.599575-04	2019-10-17 20:17:11.599575-04	\N	43000000	Fortress BGM - Super Mario Bros. 3	youtube	f
_UwWYtLWEZg	2019-10-17 20:17:47.88033-04	2019-10-17 20:17:47.88033-04	\N	250000000	Sleeping With Sirens - If You Can't Hang (Official Music Video)	youtube	f
ME6RtQgBMSI	2019-10-17 20:18:03.361104-04	2019-10-17 20:18:03.361104-04	\N	240000000	Pierce The Veil - "King For A Day" ft. Kellin Quinn (Lyric Video)	youtube	f
li9-CjymjcQ	2019-10-17 20:19:26.177949-04	2019-10-17 20:19:26.177949-04	\N	241000000	Feryquitous feat. Sennzai - Koe (声)	youtube	f
PMSsrtGVYKI	2019-10-17 20:36:13.516586-04	2019-10-17 20:36:13.516586-04	\N	223000000	Oatmeal's Got Us Getting Our Revenge	youtube	f
7p4fF_0O6SU	2019-10-17 20:37:29.172765-04	2019-10-17 20:37:29.172765-04	\N	218000000	Meta Knight's Revenge	youtube	f
8_G9tOflZII	2019-10-17 20:41:08.531054-04	2019-10-17 20:41:08.531054-04	\N	215000000	B, L, & J - Oatember	youtube	f
SCD2tB1qILc	2019-10-17 21:38:31.037675-04	2019-10-17 21:38:31.037675-04	\N	270000000	[DnB] - Tristam & Braken - Frame of Mind [Monstercat Release]	youtube	f
usXhiWE2Uc0	2019-10-17 21:38:45.662797-04	2019-10-17 21:38:45.662797-04	\N	271000000	[Glitch Hop or 110BPM] - Tristam - Till It's Over [Monstercat Release]	youtube	f
OVMuwa-HRCQ	2019-10-17 21:39:06.514457-04	2019-10-17 21:39:06.514457-04	\N	220000000	[Drumstep] - Tristam & Braken - Flight [Monstercat Release]	youtube	f
fUCXEoMGjrM	2019-10-18 14:30:45.676689-04	2019-10-18 14:30:45.676689-04	\N	363000000	【東方・Electronic】『ShibayanRecords』深紅の瞳	youtube	f
9mYDS1t_cGQ	2019-10-18 14:31:59.427306-04	2019-10-18 14:31:59.427306-04	\N	448000000	[Touhou Vocal] [ShibayanRecords] Oznei Haman wa Mou Iranai (spanish & english subtitles)	youtube	f
JjxEmisrOlI	2019-10-18 15:10:12.55037-04	2019-10-18 15:10:12.55037-04	\N	265000000	【東方ボーカル】 少女フラクタル - 聖人の調律	youtube	f
waVV5RA4Qgw	2019-10-18 15:10:25.238331-04	2019-10-18 15:10:25.238331-04	\N	226000000	【東方ボーカル】 少女フラクタル - 地より謳う	youtube	f
GFJ0h3EF3DY	2019-10-18 15:11:39.025258-04	2019-10-18 15:11:39.025258-04	\N	245000000	Tatsh Music Circle - paraguas (Beware the Umbrella Left There Forever)	youtube	f
OnSOLSEfvLM	2019-10-18 15:12:08.643072-04	2019-10-18 15:12:08.643072-04	\N	228000000	【東方ボーカル】 幽閉サテライト - 死が二人に理解を灯す	youtube	f
NjzMOENwI08	2019-10-18 15:13:21.03581-04	2019-10-18 15:13:21.03581-04	\N	241000000	【東方ボーカル】 幽閉サテライト - 束縛アネモネーション	youtube	f
fQzD2G-QBK0	2019-10-18 15:13:36.813293-04	2019-10-18 15:13:36.813293-04	\N	287000000	【東方ボーカル】 pulse 【FELT】【Subbed】	youtube	f
aGjF8qWrJog	2019-10-18 15:14:23.400768-04	2019-10-18 15:14:23.400768-04	\N	243000000	【東方ボーカル】 New World [Eris's Full of Stars mix] 【FELT】	youtube	f
3BZ7EoKQKOE	2019-10-18 15:15:50.23978-04	2019-10-18 15:15:50.23978-04	\N	278000000	Touhou Eurobeat - Darkside Doll	youtube	f
Mc128agK4BQ	2019-10-18 15:17:44.410732-04	2019-10-18 15:17:44.410732-04	\N	40000000	Ben Shapiros cumslut rp ASMR	youtube	f
-tbTJeCT48A	2019-10-18 15:19:32.142158-04	2019-10-18 15:19:32.142158-04	\N	236000000	【東方ボーカル】 幽閉サテライト - その神のジレンマに	youtube	f
YK3ZP6frAMc	2019-11-03 13:17:44.362099-05	2019-11-03 13:17:44.362099-05	\N	153000000	Hot Butter - Popcorn	youtube	f
iG1o5xLqqcY	2019-10-15 15:30:49.09568-04	2019-10-15 15:30:49.09568-04	\N	263000000	marcianito 100% real bailando cumbia full version	youtube	f
fA9QWJlbJag	2019-10-15 15:33:55.839704-04	2019-10-15 15:33:55.839704-04	\N	118000000	Brain Power (Beta Mix) - SOUND VOLTEX II -infinite infection-	youtube	f
-o6wZi3x6H0	2019-10-15 15:37:15.548048-04	2019-10-15 15:37:15.548048-04	\N	232000000	Main Theme (NTSC Version) - WarioWare: Smooth Moves	youtube	f
1tBGC_31LmY	2019-10-15 15:50:52.386431-04	2019-10-15 15:50:52.386431-04	\N	180000000	Title Theme (OST Version) - Super Mario Sunshine	youtube	f
3xQr8bX1_J4	2019-10-15 15:55:03.429945-04	2019-10-15 15:55:03.429945-04	\N	308000000	D12-My Band Lyrics	youtube	f
MrEXbOrkz-0	2019-10-15 16:07:59.1138-04	2019-10-15 16:07:59.1138-04	\N	158000000	Kendrick Lamar - M.A.A.D. City (Super Smash Bros Brawl Remix)	youtube	f
9p0w-SViIDI	2019-10-15 16:09:28.435665-04	2019-10-15 16:09:28.435665-04	\N	104000000	Konga Conga Kappa (King Conga) (Alpha Mix) - Crypt of the NecroDancer	youtube	f
aR0jF_tEPXg	2019-10-15 16:09:57.314808-04	2019-10-15 16:09:57.314808-04	\N	142000000	Electroman Adventures - Geometry Dash	youtube	f
tOghvK_FeAs	2019-10-15 16:15:39.926893-04	2019-10-15 16:15:39.926893-04	\N	255000000	Crank Dat Super Mario!	youtube	f
1Ci-V9HzXV0	2019-10-15 19:05:51.490685-04	2019-10-15 19:05:51.490685-04	\N	118000000	Toad sings Africa	youtube	f
Cxv-h62XLAM	2019-10-15 21:39:54.722281-04	2019-10-15 21:39:54.722281-04	\N	244000000	Fire Burning - Sean Kingston (Lyrics)	youtube	f
IAmOI1kvkQU	2019-10-15 21:40:18.54815-04	2019-10-15 21:40:18.54815-04	\N	208000000	BTS (방탄소년단) - FIRE (불타오르네) (Color Coded Lyrics Han/Rom/Eng)	youtube	f
m50p-XScreM	2019-10-15 21:40:35.943874-04	2019-10-15 21:40:35.943874-04	\N	247000000	We Didn't Start the Fire w/ Lyrics	youtube	f
aWrzhWnzhAs	2019-10-16 00:05:26.971855-04	2019-10-16 00:05:26.971855-04	\N	358000000	Elton John - Madman Across the Water (1971) With Lyrics!	youtube	f
0tjdo2ntvHA	2019-10-17 13:52:34.323539-04	2019-10-17 13:52:34.323539-04	\N	265000000	【東方Vocal／Eurobeat】 夜乃風車 「Crazy Beats」	youtube	f
vJvV0LoEmM0	2019-10-17 13:55:49.19689-04	2019-10-17 13:55:49.19689-04	\N	296000000	[Touhou Vocal] [SOUND HOLIC] ForgoTTen World (spanish & english subtitles)	youtube	f
ow1jcfOOT4o	2019-10-17 13:56:37.104828-04	2019-10-17 13:56:37.104828-04	\N	275000000	【東方Vocal】 Beware the Umbrella Left There Forever 「kimino-museum」	youtube	f
-39tLnuuMT4	2019-10-17 14:04:29.064798-04	2019-10-17 14:04:29.064798-04	\N	264000000	【東方ボーカル】 絡繰りドール 【SOUND HOLIC】	youtube	f
pF5LAPabI8Y	2019-10-17 14:05:45.95427-04	2019-10-17 14:05:45.95427-04	\N	266000000	【東方ボーカル】 「Ring Sky Core」 【森羅万象】	youtube	f
_7Hd5vhyp54	2019-10-17 14:05:59.566592-04	2019-10-17 14:05:59.566592-04	\N	258000000	【東方ボーカル】 「絡繰りドール (DJ Command Remix)」 【SOUND HOLIC】	youtube	f
4PvZa_VLIG4	2019-10-17 14:06:31.024211-04	2019-10-17 14:06:31.024211-04	\N	282000000	【東方ボーカル】 「鋼鉄の魔女 -Iron Magus- (DJ Command Remix)」 【SOUND HOLIC】	youtube	f
6aw5C8kukjc	2019-10-17 14:06:45.856724-04	2019-10-17 14:06:45.856724-04	\N	236000000	【東方ボーカル】 「SOUL DESTINATION」 【SOUND HOLIC】	youtube	f
mt6sNqMdhFk	2019-10-17 14:28:32.969939-04	2019-10-17 14:28:32.969939-04	\N	241000000	【東方ボーカル】 「世紀末SOS」 【森羅万象】	youtube	f
2a3vWP9wv30	2019-10-17 14:28:40.270435-04	2019-10-17 14:28:40.270435-04	\N	291000000	【東方ボーカル】 「マヨナカトリップ」 【森羅万象】	youtube	f
BWaCHsIexSo	2019-10-17 14:32:18.157577-04	2019-10-17 14:32:18.157577-04	\N	301000000	【東方ボーカル】 「ヨスズメロディハート feat.あよ」 【森羅万象】	youtube	f
gpHw1ItONzE	2019-10-17 14:33:10.557853-04	2019-10-17 14:33:10.557853-04	\N	255000000	【東方ボーカル】 「lovestoned」 【SOUND HOLIC】	youtube	f
qziK5Z6RhQk	2019-10-17 14:39:48.119624-04	2019-10-17 14:39:48.119624-04	\N	296000000	【東方Vocal／Electro Rock】 HEAVENLY NOTE 「SOUND HOLIC」	youtube	f
6ydxGwD2dZo	2019-10-17 14:42:10.062825-04	2019-10-17 14:42:10.062825-04	\N	285000000	【東方ボーカル】 「サイハテハーバリウム」 【森羅万象】	youtube	f
h6TH1hAnEls	2019-10-17 14:44:36.156255-04	2019-10-17 14:44:36.156255-04	\N	245000000	【東方ボーカル】 「那由多の唄」 【森羅万象】	youtube	f
W4BeecKex6w	2019-10-17 14:44:56.18336-04	2019-10-17 14:44:56.18336-04	\N	231000000	【東方ボーカル】 「Life√Butterfly」 【森羅万象】	youtube	f
q_hqe-Rbx_A	2019-10-17 15:21:56.140659-04	2019-10-17 15:21:56.140659-04	\N	301000000	【東方ボーカル】 「さよならバイバイ、また明日」 【Liz Triangle】	youtube	f
7u7oH6YSXls	2019-10-17 15:22:13.022555-04	2019-10-17 15:22:13.022555-04	\N	305000000	【東方アレンジ】Demetori - ピュアヒューリーズ ～ Vengeance is Mine	youtube	f
zc-U1vbhx2U	2019-10-17 15:22:35.880755-04	2019-10-17 15:22:35.880755-04	\N	253000000	【東方ボーカル】 「廃獄ドリームランド」 【SOUND HOLIC】	youtube	f
qsGUR56a9AE	2019-10-17 15:27:54.76722-04	2019-10-17 15:27:54.76722-04	\N	264000000	【東方ボーカル】 「忘れられた奇跡 -Sciencefiction-」 【幽閉サテライト】	youtube	f
D4GthFnxn5U	2019-10-17 15:28:22.102737-04	2019-10-17 15:28:22.102737-04	\N	349000000	【東方ボーカル】 「滲色血界、月狂ノ獄」 【EastNewSound】 【Subbed】	youtube	f
tNoZi0rgZE0	2019-10-17 15:33:02.653943-04	2019-10-17 15:33:02.653943-04	\N	262000000	【東方ボーカル】 「MAHOROBAGRAPHIE」 【SOUND HOLIC】	youtube	f
a7gW74TCqd8	2019-10-17 15:33:23.455121-04	2019-10-17 15:33:23.455121-04	\N	270000000	【東方ボーカル】 「中道」 【幽閉サテライト】	youtube	f
B5VPHqbHGec	2019-10-17 15:34:46.979777-04	2019-10-17 15:34:46.979777-04	\N	320000000	【東方ボーカル】 「カルテット」 【森羅万象】	youtube	f
hbmDzRZ7ifI	2019-10-17 15:34:59.818441-04	2019-10-17 15:34:59.818441-04	\N	215000000	【東方ボーカル】 「可能性の化身」 【幽閉サテライト】	youtube	f
w-l9a4KggYs	2019-10-17 15:36:54.868076-04	2019-10-17 15:36:54.868076-04	\N	225000000	【東方ボーカル】 「荒れ果てた地上の唄」 【幽閉サテライト】	youtube	f
6G3L0wxiXOQ	2019-10-17 15:37:04.062886-04	2019-10-17 15:37:04.062886-04	\N	261000000	【東方ボーカル】 「take a shot」 【森羅万象】	youtube	f
3yKdxLuat6A	2019-10-17 15:37:12.996107-04	2019-10-17 15:37:12.996107-04	\N	272000000	【東方ボーカル】 「MERMAiD」 【幽閉サテライト】	youtube	f
FNSx3CObpZs	2019-10-17 15:37:52.539086-04	2019-10-17 15:37:52.539086-04	\N	213000000	【東方ボーカル】 「感染経路」 【幽閉サテライト】	youtube	f
Q9JDdYLf-jM	2019-10-17 15:38:24.089947-04	2019-10-17 15:38:24.089947-04	\N	268000000	【東方ボーカル】Say Around【A-ONE】	youtube	f
W3P8CJkwMTg	2019-10-17 15:38:56.1454-04	2019-10-17 15:38:56.1454-04	\N	258000000	【東方ボーカルENG SUB】Scream Out!【A-ONE】	youtube	f
8uZEVIputp4	2019-10-17 16:16:04.490533-04	2019-10-17 16:16:04.490533-04	\N	271000000	【東方Eurobeat】 Endless Seeker 【A-One】	youtube	f
fro6je9L5kg	2019-10-17 18:21:38.255729-04	2019-10-17 18:21:38.255729-04	\N	235000000	Hard Bass School - narkotik kal	youtube	f
8cOt9UcYGOU	2019-10-17 18:36:56.401996-04	2019-10-17 18:36:56.401996-04	\N	236000000	Delta Heavy - Get By (Official Video)	youtube	f
ly3EJbzRPjc	2019-10-17 19:40:28.683799-04	2019-10-17 19:40:28.683799-04	\N	265000000	Mean It - Louis Cole (ft. Sam Gendel)	youtube	f
4zH9Zca1vRM	2019-10-17 19:40:40.835332-04	2019-10-17 19:40:40.835332-04	\N	227000000	THE GOVT. KNOWS - KNOWER	youtube	f
yhtcG79kPNw	2019-10-17 19:40:56.006683-04	2019-10-17 19:40:56.006683-04	\N	249000000	Time Traveler (Live Band sesh) - KNOWER	youtube	f
0S6zQEokHpU	2019-10-17 19:57:58.032237-04	2019-10-17 19:57:58.032237-04	\N	106000000	Spartan Combat - SiIvaGunner: King for a Day Tournament	youtube	f
jRKR8fDaLZo	2019-10-17 20:03:30.075382-04	2019-10-17 20:03:30.075382-04	\N	37000000	We No Speak Americano (Alpha Mix) - DJ Hero 2	youtube	f
pohxu1nAG9U	2019-10-17 20:17:09.123527-04	2019-10-17 20:17:09.123527-04	\N	124000000	Sandglass [M2U-Deemo 3.2] Lyric Video	youtube	f
FXCb6azGnbk	2019-10-17 21:36:57.655378-04	2019-10-17 21:36:57.655378-04	\N	98000000	Dirty Jobs Theme	youtube	f
LQhX8PbNUWI	2019-10-17 21:38:42.457922-04	2019-10-17 21:38:42.457922-04	\N	245000000	Faith No More - We Care a Lot (Official Music Video)	youtube	f
01skyPMeeoc	2019-10-18 00:12:04.8831-04	2019-10-18 00:12:04.8831-04	\N	190000000	EoSD Stage 5 Boss - Sakuya Izayoi's Theme - Lunar Clock ~ Luna Dial	youtube	f
8RZ5A7pJ7ew	2019-10-18 01:26:40.788121-04	2019-10-18 01:26:40.788121-04	\N	127000000	UKF Dubstep VIP Tutorial (Presented by Dubba Jonny)	youtube	f
IxMyUf16tN8	2019-10-18 15:20:51.305984-04	2019-10-18 15:20:51.305984-04	\N	236000000	【東方ボーカル】 幽閉サテライト - ふたり、桜の下	youtube	f
cj73hUrwM1s	2019-10-18 15:21:10.393556-04	2019-10-18 15:21:10.393556-04	\N	315000000	[Electro] - Tristam - Truth [Monstercat Release]	youtube	f
uuzUq3ZeXec	2019-10-18 15:22:13.67361-04	2019-10-18 15:22:13.67361-04	\N	261000000	[Dubstep] - Razihel & Virtual Riot - One For All, All For One [Monstercat Release]	youtube	f
fBO8T2PLrrY	2019-10-18 15:22:54.847821-04	2019-10-18 15:22:54.847821-04	\N	263000000	【東方Vocal】幽閉サテライト / 零れずの願いゴト 【FullMV】	youtube	f
AuUiYXcC1zE	2019-10-18 15:23:37.816363-04	2019-10-18 15:23:37.816363-04	\N	187000000	Armin van Buuren feat. Sharon den Adel - In And Out Of Love (Lost Frequencies Remix)	youtube	f
F3Hh8KN4zFk	2019-10-18 15:26:30.481828-04	2019-10-18 15:26:30.481828-04	\N	136000000	Bupper Coyote - No Oat Like Oatmeal	youtube	f
sEguJsP9dYg	2019-10-18 15:29:27.008333-04	2019-10-18 15:29:27.008333-04	\N	220000000	Airplanes vs Despacito Mashup	youtube	f
c85P5iWD-fA	2019-10-18 19:32:24.6273-04	2019-10-18 19:32:24.6273-04	\N	240000000	【東方ボーカル】 「また会える日まで...」 【TatshMusicCircle】	youtube	f
PLiMy4NaSKc	2019-10-18 21:24:49.400219-04	2019-10-18 21:24:49.400219-04	\N	245000000	Saturday in the Park- Chicago	youtube	f
XNT6bwrvIzY	2019-10-18 21:25:12.13679-04	2019-10-18 21:25:12.13679-04	\N	295000000	Saturday Night’s Alright (For Fighting)	youtube	f
f5Wv2twBPjU	2019-10-18 23:07:44.980741-04	2019-10-18 23:07:44.980741-04	\N	51000000	Bone Down For What	youtube	f
f99njZJod2c	2019-10-18 23:38:25.502642-04	2019-10-18 23:38:25.502642-04	\N	139000000	If We Were Gay  -  NSP	youtube	f
zUvH7cGiNl8	2019-10-18 23:50:21.124908-04	2019-10-18 23:50:21.124908-04	\N	141000000	The Decision  -  NSP	youtube	f
x0E39ug6t70	2019-10-18 23:51:06.899793-04	2019-10-18 23:51:06.899793-04	\N	271000000	[Trap] - Rogue - Rattlesnake [Monstercat Release]	youtube	f
P5LVaGvat7A	2019-10-19 01:02:09.776894-04	2019-10-19 01:02:09.776894-04	\N	300000000	[Trap] - Muzzy - Insignia [Monstercat Release]	youtube	f
LKALcthKSwA	2019-10-19 01:03:11.792293-04	2019-10-19 01:03:11.792293-04	\N	328000000	[Breaks] - Noisestorm - Sentinel [Monstercat Release]	youtube	f
foS1bG8p2K0	2019-10-19 01:04:15.605742-04	2019-10-19 01:04:15.605742-04	\N	352000000	Toad Sings Bohemian Rhapsody	youtube	f
IyAEUWJlk1Q	2019-10-19 02:01:40.467869-04	2019-10-19 02:01:40.467869-04	\N	286000000	Atomic Dog	youtube	f
r_IPV2zeDIc	2019-10-19 02:02:14.567361-04	2019-10-19 02:02:14.567361-04	\N	313000000	Zapp & Roger - More Bounce to the Ounce	youtube	f
kpr9qvuodVA	2019-10-19 02:02:47.892566-04	2019-10-19 02:02:47.892566-04	\N	336000000	Brick - Dazz (1976)	youtube	f
KBn_oUH8Uo0	2019-10-19 02:05:22.700204-04	2019-10-19 02:05:22.700204-04	\N	245000000	Dennis Coffey-Scorpio	youtube	f
OLj34PJauik	2019-10-19 15:55:45.938049-04	2019-10-19 15:55:45.938049-04	\N	216000000	"haha my music taste is pretty diverse haha i hate mainstream music 😌"	youtube	f
1184_mAdDWU	2019-10-19 16:29:37.556018-04	2019-10-19 16:29:37.556018-04	\N	159000000	Great Days except the "Breakdown" part never ends	youtube	f
SDjFpNDPLZU	2019-10-19 16:29:49.855893-04	2019-10-19 16:29:49.855893-04	\N	192000000	【東方ボーカル】 「万華鏡」 【幽閉サテライト】	youtube	f
adY9xSzwrNE	2019-10-19 16:31:29.072264-04	2019-10-19 16:31:29.072264-04	\N	279000000	【東方ボーカル】 至福エキス 【幽閉サテライト】	youtube	f
ZG74KBg6M1M	2019-10-19 16:34:01.960685-04	2019-10-19 16:34:01.960685-04	\N	217000000	Crazy Noisy Wind & Fire [1000 Sub Special]	youtube	f
xQYHsXhcg78	2019-10-19 16:35:08.839336-04	2019-10-19 16:35:08.839336-04	\N	358000000	【オリジナル・ボーカル】 Radiant Future 【twinkle*twinkle】	youtube	f
coWFlub3IQk	2019-10-19 16:36:40.342514-04	2019-10-19 16:36:40.342514-04	\N	174000000	God's Plan but every other 4 beats are gay	youtube	f
wDQVzHPPbVA	2019-10-19 16:43:03.887677-04	2019-10-19 16:43:03.887677-04	\N	91000000	Fighting Gold but Coda is eating the microphone	youtube	f
QFBi276wHig	2019-10-19 17:36:22.788433-04	2019-10-19 17:36:22.788433-04	\N	89000000	Fighting Gold but Coda is taking a shower and the hot water runs out	youtube	f
JKz_YJhQtzs	2019-10-19 20:57:08.226465-04	2019-10-19 20:57:08.226465-04	\N	275000000	David Bowie - No Control	youtube	f
Ke9r-ldeX6g	2019-10-19 23:35:49.146026-04	2019-10-19 23:35:49.146026-04	\N	191000000	Spongebob Squarepants - Goofy Goober Rock Japanese	youtube	f
_lKi_aTN5Rg	2019-10-19 23:36:28.732071-04	2019-10-19 23:36:28.732071-04	\N	167000000	When the Going Gets Tough	youtube	f
6FDexhrYemI	2019-10-20 00:24:54.791227-04	2019-10-20 00:24:54.791227-04	\N	29000000	freddy mercury realizes he's lost his mom in walmart.mp3	youtube	f
MqMaK6C2sIM	2019-10-20 01:08:32.610782-04	2019-10-20 01:08:32.610782-04	\N	278000000	I'm Not a Loser	youtube	f
pd26snvyuXU	2019-10-20 12:29:51.767559-04	2019-10-20 12:29:51.767559-04	\N	190000000	Dame Tu Cosita & Despacito | El Chombo , Luis Fons | MASHUP|	youtube	f
nk68vsQMlnc	2019-10-20 12:42:55.624594-04	2019-10-20 12:42:55.624594-04	\N	249000000	Psy vs Ke$ha vs LMFAO vs Big Time Rush	youtube	f
Ayzl_Nani50	2019-10-20 15:10:03.257192-04	2019-10-20 15:10:03.257192-04	\N	16000000	You've Been Konged	youtube	f
QsR8zBh6EdE	2019-10-20 15:14:21.937667-04	2019-10-20 15:14:21.937667-04	\N	22000000	congrats	youtube	f
3eUwhXA1gVg	2019-10-20 15:17:37.682854-04	2019-10-20 15:17:37.682854-04	\N	284000000	Get Africa Low (mashup) - Toto Vs Lil Jon + The East Side Boyz - Valid A	youtube	f
TcrcuLmwjys	2019-10-20 15:22:21.763525-04	2019-10-20 15:22:21.763525-04	\N	303000000	Final Countdown in Major key (full!)	youtube	f
wZTQFa0OZbQ	2019-10-20 15:24:59.258929-04	2019-10-20 15:24:59.258929-04	\N	274000000	【Spongebob & Squidward】 Suki Kirai (Like-Dislike) 【UTAU COVER】	youtube	f
u6NOYTXRJzA	2019-10-20 15:27:21.923713-04	2019-10-20 15:27:21.923713-04	\N	311000000	The Final Countdown	youtube	f
_bypZmU1flQ	2019-10-20 15:27:28.490918-04	2019-10-20 15:27:28.490918-04	\N	153000000	Nightcore - All Star	youtube	f
3HjKJngme3Y	2019-10-20 15:27:44.498493-04	2019-10-20 15:27:44.498493-04	\N	154000000	Nightcore - Witch Doctor (Ooh Eeh Ooh Ah Aah Ting Tang Walla Walla Bing) - (Lyrics)	youtube	f
Yaagbi_LsYg	2019-10-20 15:29:05.014551-04	2019-10-20 15:29:05.014551-04	\N	131000000	"Wonderful world" in minor key	youtube	f
yZQqyIEkTQ0	2019-10-20 15:30:08.117647-04	2019-10-20 15:30:08.117647-04	\N	115000000	"Hit the road Jack" in Major key	youtube	f
B2vflM5jVX0	2019-10-20 15:30:33.673194-04	2019-10-20 15:30:33.673194-04	\N	68000000	Despacito by Luis Fonsi ft. Daddy Yankee in major key	youtube	f
i70Ni5fi3Ug	2019-10-20 15:31:07.498129-04	2019-10-20 15:31:07.498129-04	\N	134000000	"Ghostbusters" OST main theme in minor key	youtube	f
6SCQyBcHeDg	2019-10-20 15:32:41.215577-04	2019-10-20 15:32:41.215577-04	\N	165000000	Nightcore - Dam Dadi Do	youtube	f
vXU3pI7-cNo	2019-10-20 15:35:43.047191-04	2019-10-20 15:35:43.047191-04	\N	63000000	iMiku	youtube	f
zpnJQsn9O8M	2019-10-20 15:37:00.757143-04	2019-10-20 15:37:00.757143-04	\N	161000000	BFF	youtube	f
EpcDH9faOQw	2019-10-20 15:50:57.501592-04	2019-10-20 15:50:57.501592-04	\N	129000000	A Coconut Up Your Butt [HD]	youtube	f
Tth-8wA3PdY	2019-10-20 21:45:33.776166-04	2019-10-20 21:45:33.776166-04	\N	297000000	I will survive - Gloria Gaynor	youtube	f
85hxlHzoKI0	2019-10-20 23:19:28.57919-04	2019-10-20 23:19:28.57919-04	\N	224000000	『Komiya Mao』 (can you) understand me?	youtube	f
eJeeAoKkcC0	2019-10-20 23:24:37.794047-04	2019-10-20 23:24:37.794047-04	\N	218000000	t+pazolite - Censored!! (Full ver)	youtube	f
hjVJhsyNI8A	2019-10-20 23:24:57.363137-04	2019-10-20 23:24:57.363137-04	\N	290000000	Lite Show Magic - Crack Traxxxx (Exxxxtend Mixxxx)	youtube	f
G7kpMvoxTYE	2019-10-20 23:24:58.851036-04	2019-10-20 23:24:58.851036-04	\N	297000000	t+pazolite - cheatreal	youtube	f
2P5ZvHGKuMI	2019-10-21 09:44:57.739416-04	2019-10-21 09:44:57.739416-04	\N	162000000	[Electro Swing Remix] Spooky Scary (Swingin') Skeletons	youtube	f
gvSeLq-3Azg	2019-10-21 15:45:02.252734-04	2019-10-21 15:45:02.252734-04	\N	281000000	【シャノ(40㍍)】 夏恋花火 【オリジナル】	youtube	f
NXE4Ybi5stU	2019-10-21 15:45:23.399529-04	2019-10-21 15:45:23.399529-04	\N	175000000	Nightcore - Falling Apart	youtube	f
dfyNnUgK8qE	2019-10-21 15:46:32.602443-04	2019-10-21 15:46:32.602443-04	\N	225000000	Kidz Bop Kids: Bring Me To Life	youtube	f
oaL-WpF6WgU	2019-10-21 15:47:24.601881-04	2019-10-21 15:47:24.601881-04	\N	172000000	Nightcore - Take Me Away	youtube	f
Dmi44tOGl1s	2019-10-21 15:48:24.166644-04	2019-10-21 15:48:24.166644-04	\N	411000000	【東方ボーカル】 「鳥よ」 【凋叶棕】	youtube	f
6y5Aptycdig	2019-10-21 15:48:40.157479-04	2019-10-21 15:48:40.157479-04	\N	230000000	⁴ᴷ【東方Vocalニコカラ】Paranoia（SBver2 Remix）【DiGiTAL WiNG】	youtube	f
huXsxplO4kY	2019-10-21 16:12:57.715164-04	2019-10-21 16:12:57.715164-04	\N	332000000	【東方ボーカル】 「emergence」 【凋叶棕】	youtube	f
VzxyigMVimM	2019-10-21 16:28:58.599082-04	2019-10-21 16:28:58.599082-04	\N	292000000	私的作業用BGM Fripside - true eternity  album version -	youtube	f
4BpUM_ou-9E	2019-10-21 16:29:51.516427-04	2019-10-21 16:29:51.516427-04	\N	285000000	私的作業用BGM Fripside - distant moon  version 2005 -	youtube	f
jn-LR4d3wx4	2019-10-21 16:35:07.994688-04	2019-10-21 16:35:07.994688-04	\N	375000000	私的作業用BGM  Fripside - split tears -	youtube	f
V5c-CLjSdyk	2019-10-21 16:36:24.841417-04	2019-10-21 16:36:24.841417-04	\N	336000000	fripside-snow blind after	youtube	f
JoDZvKZ1FEg	2019-10-21 16:36:57.206542-04	2019-10-21 16:36:57.206542-04	\N	322000000	Sky - Fripside(AM)	youtube	f
8mM0drPALjo	2019-10-21 16:46:14.541685-04	2019-10-21 16:46:14.541685-04	\N	251000000	私的作業用BGM  Fripside - before dawn daybreak -	youtube	f
iyM-uC1qM2E	2019-10-21 16:55:24.263249-04	2019-10-21 16:55:24.263249-04	\N	285000000	私的作業用BGM Fripside - libration crisis -	youtube	f
36nACLsBXi4	2019-10-21 17:01:31.269116-04	2019-10-21 17:01:31.269116-04	\N	317000000	私的作業用BGM  Fripside  escape -version 2008-	youtube	f
ExK0bK-HKp4	2019-10-21 18:13:15.957993-04	2019-10-21 18:13:15.957993-04	\N	500000000	【東方ボーカル】 【凋叶棕】 うつろわざるもの　～True Conclusion	youtube	f
2uAQ-pTbLbI	2019-10-21 18:42:41.365444-04	2019-10-21 18:42:41.365444-04	\N	284000000	SLASHSTREET BOYS - "AS LONG AS YOU'RE BLOODY" (BACKSTREET BOYS PARODY)	youtube	f
62cdBh0YuEQ	2019-10-21 18:50:19.535264-04	2019-10-21 18:50:19.535264-04	\N	120000000	Nightcore - Shia LaBeouf (Live)	youtube	f
9V-IILc7uWU	2019-10-21 21:16:02.205957-04	2019-10-21 21:16:02.205957-04	\N	182000000	Back in August - Ghost Synth (Remix) [Stardew Valley]	youtube	f
Gb33Qnbw520	2019-10-22 00:31:49.854581-04	2019-10-22 00:31:49.854581-04	\N	62000000	Overworld Theme - Super Mario Land	youtube	f
T_TsTvC67SA	2019-10-22 20:14:55.356397-04	2019-10-22 20:14:55.356397-04	\N	138000000	Creeper, Aw Man by Obama - This Day in Minecraft History	youtube	f
T5AI8mlcIAQ	2019-10-22 20:39:36.698527-04	2019-10-22 20:39:36.698527-04	\N	173000000	We Are Number One but sung by the DK Rap dude	youtube	f
TmlvS2B5xG4	2019-10-22 20:43:56.406418-04	2019-10-22 20:43:56.406418-04	\N	90000000	Who wants chowder USSR VOCODED	youtube	f
c03oNWHQ6bg	2019-10-22 20:47:53.879282-04	2019-10-22 20:47:53.879282-04	\N	32000000	Peter Tries a Rice Cake But Vocoded	youtube	f
iICXqfyYFeo	2019-10-22 20:48:29.015395-04	2019-10-22 20:48:29.015395-04	\N	265000000	it's not over til it's over	youtube	f
9Z31_0zOPrs	2019-10-22 20:51:59.219178-04	2019-10-22 20:51:59.219178-04	\N	410000000	【東方Irish Folk／Cinematic】 マヨヒガ演舞 「O-Life Japan」	youtube	f
59M5z0c8YtE	2019-10-22 20:54:08.163-04	2019-10-22 20:54:08.163-04	\N	222000000	[Glitch Hop or 110BPM] - Tristam - Once Again [Monstercat Album Exclusive]	youtube	f
UPl5KJhdRmE	2019-10-22 21:19:55.460271-04	2019-10-22 21:19:55.460271-04	\N	15000000	Goose Honk (JP Version) - Untitled Goose Game	youtube	f
r2Fm3yEXKcg	2019-10-22 21:25:12.267378-04	2019-10-22 21:25:12.267378-04	\N	216000000	【東方ボーカル】 「灰桜」 【幽閉サテライト】	youtube	f
AQWui3M8mrk	2019-10-22 21:26:29.564679-04	2019-10-22 21:26:29.564679-04	\N	178000000	【東方ボーカル】 「瞳に隠された想ヒ」 【幽閉サテライト】【Subbed】	youtube	f
Q6VfaTA1s7s	2019-10-22 21:27:16.322838-04	2019-10-22 21:27:16.322838-04	\N	228000000	【東方ボーカル】 幽閉サテライト - アナタがいない夜風	youtube	f
6mb0dyP_dGc	2019-10-22 22:05:08.09067-04	2019-10-22 22:05:08.09067-04	\N	223000000	【東方ボーカル】 「指先チョコレイト」 【幽閉サテライト】	youtube	f
MREVjdv8u10	2019-10-22 22:05:58.832584-04	2019-10-22 22:05:58.832584-04	\N	292000000	【東方ボーカルENG SUBS】Starting Over【A-ONE】	youtube	f
u3VFzuUiTGw	2019-10-23 01:42:40.936212-04	2019-10-23 01:42:40.936212-04	\N	200000000	Mike Posner - I Took A Pill In Ibiza (SeeB Remix)	youtube	f
tMAGx_Q2_7s	2019-10-23 12:56:35.248953-04	2019-10-23 12:56:35.248953-04	\N	50000000	Drake & Drake	youtube	f
Tptx8boeGhE	2019-10-23 12:56:58.679554-04	2019-10-23 12:56:58.679554-04	\N	263000000	Flat Zone 2 - Super Smash Bros. Brawl	youtube	f
Q7Co8Vpecr8	2019-10-23 15:11:53.414344-04	2019-10-23 15:11:53.414344-04	\N	14000000	lobotomy corp-nothing there's normal and human form(not final form) bgm	youtube	f
eKFN-aqPJH8	2019-10-23 20:01:01.577682-04	2019-10-23 20:01:01.577682-04	\N	208000000	You'll Be Back	youtube	f
VhinPd5RRJw	2019-10-23 20:42:14.44471-04	2019-10-23 20:42:14.44471-04	\N	237000000	Alexander Hamilton	youtube	f
WO8Z6S7oHTw	2019-10-23 20:57:37.810276-04	2019-10-23 20:57:37.810276-04	\N	70000000	A Winter's Ball	youtube	f
6frd_dHxPRs	2019-10-23 20:57:51.995609-04	2019-10-23 20:57:51.995609-04	\N	250000000	Helpless	youtube	f
InupuylYdcY	2019-10-23 20:58:03.102817-04	2019-10-23 20:58:03.102817-04	\N	329000000	Satisfied	youtube	f
7ZY36ygpgSQ	2019-10-23 20:58:20.813574-04	2019-10-23 20:58:20.813574-04	\N	116000000	The Story of Tonight (Reprise)	youtube	f
ulsLI029rH0	2019-10-23 21:11:11.862853-04	2019-10-23 21:11:11.862853-04	\N	194000000	Wait for It	youtube	f
u44jORNkM3g	2019-10-23 21:11:22.150242-04	2019-10-23 21:11:22.150242-04	\N	159000000	Stay Alive	youtube	f
m7iHmuco_zo	2019-10-23 21:11:35.99424-04	2019-10-23 21:11:35.99424-04	\N	107000000	Ten Duel Commandments	youtube	f
DPgE7PNzXag	2019-10-23 21:32:56.012913-04	2019-10-23 21:32:56.012913-04	\N	385000000	Non-Stop	youtube	f
9cATAAgy7Zc	2019-10-23 21:50:27.199319-04	2019-10-23 21:50:27.199319-04	\N	64000000	Schuyler Defeated	youtube	f
WySzEXKUSZw	2019-10-23 21:50:54.575749-04	2019-10-23 21:50:54.575749-04	\N	318000000	The Room Where It Happens	youtube	f
_jWVKYjy7E8	2019-10-23 21:56:27.061203-04	2019-10-23 21:56:27.061203-04	\N	143000000	Cabinet Battle #2	youtube	f
9014vq1lqXM	2019-10-23 21:57:05.183936-04	2019-10-23 21:57:05.183936-04	\N	181000000	Washington on Your Side	youtube	f
pEqnXNsAFL8	2019-10-23 21:57:22.269344-04	2019-10-23 21:57:22.269344-04	\N	296000000	One Last Time	youtube	f
kkG-KT_Comw	2019-10-23 21:57:46.539104-04	2019-10-23 21:57:46.539104-04	\N	98000000	I Know Him	youtube	f
PouTf9gYZMw	2019-10-23 21:58:38.614583-04	2019-10-23 21:58:38.614583-04	\N	55000000	The Adams Administration	youtube	f
tBj2GL_12R4	2019-10-23 21:58:55.961337-04	2019-10-23 21:58:55.961337-04	\N	142000000	We Know	youtube	f
thFXSNSO9xQ	2019-10-24 13:57:19.226281-04	2019-10-24 13:57:19.226281-04	\N	112000000	Stay Alive (Reprise)	youtube	f
bMAoOGnw9qQ	2019-10-24 13:57:37.270967-04	2019-10-24 13:57:37.270967-04	\N	270000000	It's Quiet Uptown	youtube	f
WrfPvuNUBg8	2019-10-24 14:30:08.477858-04	2019-10-24 14:30:08.477858-04	\N	238000000	The Election of 1800	youtube	f
Yr-mO1o1uHk	2019-10-24 14:30:19.18723-04	2019-10-24 14:30:19.18723-04	\N	150000000	Your Obedient Servant	youtube	f
hfmvDjPa2TU	2019-10-24 14:30:32.275122-04	2019-10-24 14:30:32.275122-04	\N	48000000	Best of Wives and Best of Women	youtube	f
BQ1ZwqaXJaQ	2019-10-24 14:31:43.90745-04	2019-10-24 14:31:43.90745-04	\N	302000000	The World Was Wide Enough	youtube	f
_gnypiKNaJE	2019-10-24 14:31:55.30357-04	2019-10-24 14:31:55.30357-04	\N	217000000	Who Lives, Who Dies, Who Tells Your Story	youtube	f
-NP3ZJseyJs	2019-10-24 17:28:15.823499-04	2019-10-24 17:28:15.823499-04	\N	156000000	Baby I'm Back	youtube	f
1E6WR5a8UU0	2019-10-24 17:28:29.400619-04	2019-10-24 17:28:29.400619-04	\N	163000000	Baby I'm Back II - Funko Mode	youtube	f
4JD4U9A_V30	2019-10-24 17:28:42.725222-04	2019-10-24 17:28:42.725222-04	\N	417000000	Baby I'm Back III	youtube	f
97ttv6-UiQs	2019-10-24 22:42:07.877767-04	2019-10-24 22:42:07.877767-04	\N	315000000	Sicko mode but drakes part is Dicko mode.	youtube	f
MwJatA0unTc	2019-10-24 22:58:55.613072-04	2019-10-24 22:58:55.613072-04	\N	241000000	Scatman John - Su Su Su Super Kirei	youtube	f
UwuAPyOImoI	2019-10-25 22:52:35.738295-04	2019-10-25 22:52:35.738295-04	\N	276000000	TAEYANG - 눈,코,입 (EYES, NOSE, LIPS) M/V	youtube	f
V2hlQkVJZhE	2019-10-25 22:54:15.211056-04	2019-10-25 22:54:15.211056-04	\N	221000000	TWICE "LIKEY" M/V	youtube	f
i0p1bmr0EmE	2019-10-25 23:18:29.293782-04	2019-10-25 23:18:29.293782-04	\N	223000000	TWICE "What is Love?" M/V	youtube	f
9kaCAbIXuyg	2019-10-25 23:20:41.072488-04	2019-10-25 23:20:41.072488-04	\N	228000000	G-DRAGON - '무제(無題) (Untitled, 2014)' M/V	youtube	f
BQOoTX1Nxx8	2019-10-26 02:03:57.522848-04	2019-10-26 02:03:57.522848-04	\N	173000000	Candy Store - Heathers: The Musical +LYRICS	youtube	f
w5x93pXSmRM	2019-10-26 02:15:17.530357-04	2019-10-26 02:15:17.530357-04	\N	156000000	Sigrid - Don’t Feel Like Crying	youtube	f
UF53cptEE5k	2019-10-26 02:16:18.104489-04	2019-10-26 02:16:18.104489-04	\N	199000000	SHINee 샤이니 'View' MV	youtube	f
Wx2FDyvt0gI	2019-10-26 14:57:50.383439-04	2019-10-26 14:57:50.383439-04	\N	89000000	Kevin MacLeod ~ Scheming Weasel (faster version)	youtube	f
yQ0iTDafXuM	2019-10-26 15:07:53.017139-04	2019-10-26 15:07:53.017139-04	\N	140000000	Wa-Elegy (Waluigi's Assist Trophy Song)	youtube	f
jtH_nLso2Gg	2019-10-21 18:26:28.870108-04	2019-10-21 18:26:28.870108-04	\N	240000000	【東方ボーカル】 「色は情へと誘う」 【幽閉サテライト】	youtube	f
_tf9mBIm6jM	2019-10-21 18:46:36.774498-04	2019-10-21 18:46:36.774498-04	\N	115000000	[NIGHTCORE] The Quick Brown Fox - The Big Black	youtube	f
aekfPU0SwNw	2019-10-21 20:26:49.741949-04	2019-10-21 20:26:49.741949-04	\N	274000000	The Room - "Oh Hi Mark" (Blu Ray) [1080p]	youtube	f
nBV7qycbG8A	2019-10-21 20:47:43.023591-04	2019-10-21 20:47:43.023591-04	\N	213000000	5 Seconds Of Summer - Babylon (Official Audio)	youtube	f
LPJfcXogMnY	2019-10-21 20:50:16.990567-04	2019-10-21 20:50:16.990567-04	\N	211000000	Stardew Valley - Spring (It's A Big World Out There) (Dasgust Remix)	youtube	f
NgYQVY7Bi50	2019-10-21 21:01:57.342554-04	2019-10-21 21:01:57.342554-04	\N	159000000	Megalovania except it's in Major Key	youtube	f
TxZ5FktApJg	2019-10-21 21:08:45.41786-04	2019-10-21 21:08:45.41786-04	\N	218000000	Monika's at a Payphone (Adam Levine X DDLC)	youtube	f
hNqSE3M2ROw	2019-10-21 21:15:08.477126-04	2019-10-21 21:15:08.477126-04	\N	266000000	It Wasn't Mii (Nintendo Mii Channel x Shaggy Mashup) // I am Jemboy	youtube	f
nEcCF_TCp2Q	2019-10-21 21:34:44.167746-04	2019-10-21 21:34:44.167746-04	\N	133000000	Megalovania in the style of 1, 2 Oatmeal	youtube	f
E37aeSoS67E	2019-10-21 21:35:23.002187-04	2019-10-21 21:35:23.002187-04	\N	144000000	Oatmeal Number One	youtube	f
KjGZ-a5eJOo	2019-10-22 15:50:22.162243-04	2019-10-22 15:50:22.162243-04	\N	370000000	【東方Vocal／Acoustic Rock】 空に近い場所 「凋叶棕」	youtube	f
p6agFmXcyMI	2019-10-22 16:03:32.907914-04	2019-10-22 16:03:32.907914-04	\N	230000000	Nightcore - What Hurts the most	youtube	f
CcH_7_KUkzs	2019-10-22 16:03:55.006973-04	2019-10-22 16:03:55.006973-04	\N	374000000	【東方ボーカル】 【凋叶棕】 どうして...	youtube	f
5Cf8VywNgL0	2019-10-22 21:18:29.430378-04	2019-10-22 21:18:29.430378-04	\N	169000000	Nightcore - Are You Ready	youtube	f
Jzv7iixXpns	2019-10-22 21:27:54.060884-04	2019-10-22 21:27:54.060884-04	\N	89000000	Fighting Gold but the song never starts	youtube	f
gKohX8RQooA	2019-10-22 21:38:36.612034-04	2019-10-22 21:38:36.612034-04	\N	192000000	【東方Folk／Acoustic】 旅の始まり 「Ringing Volcano」	youtube	f
VkTtzeueThg	2019-10-22 21:41:08.732093-04	2019-10-22 21:41:08.732093-04	\N	285000000	【東方Symphonic Power Metal】 Locked Girl ~ The Girl's Secret Room 「S.S.H. & Aether」	youtube	f
SoNzA-EqdXA	2019-10-22 21:48:49.548509-04	2019-10-22 21:48:49.548509-04	\N	312000000	【東方Piano／Violin】 The Gensokyo the Gods Loved 「TAMUSIC」	youtube	f
7tdozf19aWU	2019-10-22 21:49:25.214283-04	2019-10-22 21:49:25.214283-04	\N	291000000	[東方自作アレンジ] ゆらぐもの [原曲:フォールオブフォール ～ 秋めく滝]	youtube	f
D3ovuBdbUqk	2019-10-23 20:02:27.182815-04	2019-10-23 20:02:27.182815-04	\N	98000000	Mia & Sebastian’s Theme	youtube	f
1V5l_LbmWlQ	2019-10-23 20:03:21.453287-04	2019-10-23 20:03:21.453287-04	\N	112000000	Herman’s Habit	youtube	f
fQLAyvDNmUU	2019-10-23 20:03:58.323525-04	2019-10-23 20:03:58.323525-04	\N	111000000	City Of Stars	youtube	f
GTWqwSNQCcg	2019-10-23 20:04:23.476559-04	2019-10-23 20:04:23.476559-04	\N	145000000	'City of Stars' (Duet ft. Ryan Gosling, Emma Stone) - La La Land Original Motion Picture Soundtrack	youtube	f
i0hcq522FFE	2019-10-23 20:04:53.264542-04	2019-10-23 20:04:53.264542-04	\N	257000000	Planetarium	youtube	f
Lft6Eyh0cng	2019-10-23 20:05:13.333625-04	2019-10-23 20:05:13.333625-04	\N	125000000	Summer Montage / Madeline	youtube	f
9INMW5IL9E8	2019-10-23 20:05:46.309419-04	2019-10-23 20:05:46.309419-04	\N	192000000	Start A Fire	youtube	f
qzspvUBLoOY	2019-10-23 20:06:10.049311-04	2019-10-23 20:06:10.049311-04	\N	87000000	Engagement Party	youtube	f
XCf_kdmmVNE	2019-10-23 20:06:37.35671-04	2019-10-23 20:06:37.35671-04	\N	228000000	Audition (The Fools Who Dream)	youtube	f
L16vTRw9mDQ	2019-10-23 20:07:22.472291-04	2019-10-23 20:07:22.472291-04	\N	459000000	Epilogue	youtube	f
LOUf8Z0RQic	2019-10-23 20:42:56.15054-04	2019-10-23 20:42:56.15054-04	\N	157000000	Aaron Burr, Sir	youtube	f
Ic7NqP_YGlg	2019-10-23 20:43:09.451611-04	2019-10-23 20:43:09.451611-04	\N	333000000	My Shot	youtube	f
3vqwrepaMR0	2019-10-23 20:43:24.60156-04	2019-10-23 20:43:24.60156-04	\N	92000000	The Story of Tonight	youtube	f
UeqKF_NF1Qs	2019-10-23 20:44:46.297161-04	2019-10-23 20:44:46.297161-04	\N	187000000	The Schuyler Sisters	youtube	f
IRImIezjxRg	2019-10-23 20:44:59.465732-04	2019-10-23 20:44:59.465732-04	\N	113000000	Farmer Refuted	youtube	f
alQKTQdEE-0	2019-10-23 21:22:43.780732-04	2019-10-23 21:22:43.780732-04	\N	84000000	Meet Me Inside	youtube	f
kK9c41WgNpc	2019-10-23 21:22:53.289137-04	2019-10-23 21:22:53.289137-04	\N	178000000	That Would Be Enough	youtube	f
WOb8-C6jw0M	2019-10-23 21:23:05.706417-04	2019-10-23 21:23:05.706417-04	\N	128000000	Guns and Ships	youtube	f
l_l149E6Arc	2019-10-23 21:29:55.806429-04	2019-10-23 21:29:55.806429-04	\N	213000000	Peach Scone	youtube	f
-nmqQlW-sMo	2019-10-23 21:31:51.181491-04	2019-10-23 21:31:51.181491-04	\N	97000000	History Has Its Eyes on You	youtube	f
WQt1RRW_xv0	2019-10-23 21:32:13.979956-04	2019-10-23 21:32:13.979956-04	\N	243000000	Yorktown (The World Turned Upside Down)	youtube	f
jKw6n0PnTMY	2019-10-23 21:32:26.906322-04	2019-10-23 21:32:26.906322-04	\N	99000000	What Comes Next?	youtube	f
2JNRo7OipYc	2019-10-23 21:48:01.206755-04	2019-10-23 21:48:01.206755-04	\N	237000000	What'd I Miss	youtube	f
dSYW61XQZeo	2019-10-23 21:49:22.319712-04	2019-10-23 21:49:22.319712-04	\N	215000000	Cabinet Battle #1	youtube	f
itKtosLoGk4	2019-10-23 21:49:35.952255-04	2019-10-23 21:49:35.952255-04	\N	286000000	Take a Break	youtube	f
7sB8ITujc3w	2019-10-23 21:50:09.57352-04	2019-10-23 21:50:09.57352-04	\N	242000000	Say No To This	youtube	f
7ZfzuJ8oVpE	2019-10-24 13:54:37.611475-04	2019-10-24 13:54:37.611475-04	\N	144000000	Hurricane	youtube	f
0h2I8Dlu3_U	2019-10-24 13:54:49.21058-04	2019-10-24 13:54:49.21058-04	\N	128000000	The Reynolds Pamphlet	youtube	f
a0k0FJrY4a8	2019-10-24 13:55:39.151161-04	2019-10-24 13:55:39.151161-04	\N	225000000	Burn	youtube	f
yxG37MyQfoc	2019-10-24 13:55:51.567271-04	2019-10-24 13:55:51.567271-04	\N	174000000	Blow Us All Away	youtube	f
XH2xgSBcA5w	2019-10-24 19:47:43.056904-04	2019-10-24 19:47:43.056904-04	\N	253000000	I'm the Scat-Sans	youtube	f
MIZNISdZdJE	2019-10-24 19:55:38.287554-04	2019-10-24 19:55:38.287554-04	\N	196000000	Carefree Puyo - Puyo Pop Fever	youtube	f
8UFIYGkROII	2019-10-24 23:18:22.176593-04	2019-10-24 23:18:22.176593-04	\N	240000000	Soulja Boy Tell'em - Crank That (Soulja Boy) [Official Video]	youtube	f
YePtnXUzFgg	2019-10-25 01:44:47.328047-04	2019-10-25 01:44:47.328047-04	\N	121000000	You, Me and Steve	youtube	f
6okxuiiHx2w	2019-10-25 14:08:53.283563-04	2019-10-25 14:08:53.283563-04	\N	151000000	Breakbot - Baby I'm Yours feat. Irfane (Official Video)	youtube	f
H8u6gON8X6E	2019-10-25 22:23:47.33302-04	2019-10-25 22:23:47.33302-04	\N	143000000	Caillou Theme Song Remix	youtube	f
6uHHWgJ6dsk	2019-10-25 22:31:33.715311-04	2019-10-25 22:31:33.715311-04	\N	358000000	Егор Крид - Сердцеедка (Премьера клипа, 2019)	youtube	f
9sxVbIsy3Ck	2019-10-25 22:33:01.925638-04	2019-10-25 22:33:01.925638-04	\N	185000000	Егор Крид - Сердцеедка (текст/lyrics) трек 2019 года	youtube	f
O6T7hTSuh0M	2019-10-25 22:36:05.279932-04	2019-10-25 22:36:05.279932-04	\N	221000000	BIGBANG - Loser (Color Coded Han|Rom|Eng Lyrics)	youtube	f
UwbGi2nGFQg	2019-10-25 22:36:19.975967-04	2019-10-25 22:36:19.975967-04	\N	224000000	BIGBANG – BANG BANG BANG (뱅뱅뱅) (Color Coded Han|Rom|Eng Lyrics)	youtube	f
xc19CVlX3qU	2019-10-25 22:38:38.100248-04	2019-10-25 22:38:38.100248-04	\N	227000000	TWICE - Breakthrough (트와이스/トゥワイス - Breakthrough) [Color Coded Lyrics/Kan/Rom/Eng/가사]	youtube	f
3n9rDwpa6QA	2019-10-25 22:38:51.288623-04	2019-10-25 22:38:51.288623-04	\N	207000000	TWICE「HAPPY HAPPY」Music Video	youtube	f
4aKhZjVj55g	2019-10-25 22:43:15.46532-04	2019-10-25 22:43:15.46532-04	\N	222000000	Kendji Girac - Sonrisa (Clip Officiel)	youtube	f
1ZRb1we80kM	2019-10-25 22:51:46.214236-04	2019-10-25 22:51:46.214236-04	\N	250000000	GD X TAEYANG - GOOD BOY M/V	youtube	f
9jTo6hTZmiQ	2019-10-25 22:52:25.568108-04	2019-10-25 22:52:25.568108-04	\N	228000000	BIGBANG - 우리 사랑하지 말아요(LET'S NOT FALL IN LOVE) M/V	youtube	f
mAKsZ26SabQ	2019-10-25 22:53:06.44959-04	2019-10-25 22:53:06.44959-04	\N	269000000	TWICE "YES or YES" M/V	youtube	f
pAnK1y7qjuE	2019-10-26 02:17:29.807601-04	2019-10-26 02:17:29.807601-04	\N	284000000	SuperM 슈퍼엠 ‘Jopping’ MV	youtube	f
twh3cDkOH2I	2019-10-26 02:26:45.37738-04	2019-10-26 02:26:45.37738-04	\N	215000000	Never Mine	youtube	f
ZmRJ6ySjEiI	2019-10-26 02:27:42.062574-04	2019-10-26 02:27:42.062574-04	\N	218000000	Basic	youtube	f
3K7SkwdK0X4	2019-10-26 02:28:28.810803-04	2019-10-26 02:28:28.810803-04	\N	214000000	Summertime Magic	youtube	f
-o4EbjjeyEU	2019-10-26 16:54:22.147304-04	2019-10-26 16:54:22.147304-04	\N	171000000	Nightcore - Angel Of Darkness	youtube	f
rYDsq58zIlQ	2019-10-26 19:46:00.141197-04	2019-10-26 19:46:00.141197-04	\N	238000000	Will Jay - Nights Like These	youtube	f
3ob3fA7uTRM	2019-10-26 19:47:20.713867-04	2019-10-26 19:47:20.713867-04	\N	287000000	Rib - Forty-Seven (ヨンジュウナナ)	youtube	f
Wwz97VC3Qww	2019-10-26 19:55:44.503378-04	2019-10-26 19:55:44.503378-04	\N	160000000	Nightcore - I Want You To Hold Me	youtube	f
qHm9MG9xw1o	2019-10-27 16:26:05.644288-04	2019-10-27 16:26:05.644288-04	\N	233000000	OneRepublic - Secrets (Official Music Video)	youtube	f
1hdKQgKByYo	2019-10-27 16:27:01.334866-04	2019-10-27 16:27:01.334866-04	\N	258000000	OneRepublic - Counting Stars (Official Audio)	youtube	f
KINfQbfZwik	2019-10-27 16:27:41.283574-04	2019-10-27 16:27:41.283574-04	\N	235000000	One Republic - I Lived - Lyrics Video (Native Album) [HD][HQ]	youtube	f
V263ad2e2uk	2019-10-27 17:27:39.123176-04	2019-10-27 17:27:39.123176-04	\N	68000000	National Bruh Moment Alert:	youtube	f
W6Fs8eNXC9w	2019-10-27 20:31:21.12858-04	2019-10-27 20:31:21.12858-04	\N	218000000	Oatmeal Park - In The 1, 2 End	youtube	f
A1C_ualkEzw	2019-10-28 00:35:18.25819-04	2019-10-28 00:35:18.25819-04	\N	112000000	Anime Character Analysis: Bling Bling Boy	youtube	f
MsBJTstP0x4	2019-10-28 00:39:12.665361-04	2019-10-28 00:39:12.665361-04	\N	312000000	To Anime's Greatest Hero	youtube	f
BMEnQe6JQYQ	2019-10-28 16:44:11.740966-04	2019-10-28 16:44:11.740966-04	\N	106000000	XXXTENTACION - "LOOK AT ME" MINECRAFT PARODY	youtube	f
ETzsmqWe_tE	2019-10-28 16:45:31.653504-04	2019-10-28 16:45:31.653504-04	\N	153000000	NASDAQ	youtube	f
JF-HzZ90JBo	2019-10-28 16:59:04.459797-04	2019-10-28 16:59:04.459797-04	\N	155000000	Konga Conga Beach	youtube	f
gcfqTk60fkE	2019-10-28 18:09:29.618826-04	2019-10-28 18:09:29.618826-04	\N	294000000	【東方Vocal】 Bad Apple!! feat.nomico (Camellia’s “Bad Psy!!” Remix) 「Alstroemeria Records」【Subtitle】	youtube	f
x0tvBLzac-Q	2019-10-28 20:23:33.064784-04	2019-10-28 20:23:33.064784-04	\N	170000000	Lunatic Eyes ~ Invisible Full Moon - Touhou 14.5: Urban Legend in Limbo	youtube	f
ntiH63hxnVQ	2019-10-28 20:27:10.746646-04	2019-10-28 20:27:10.746646-04	\N	123000000	1 2 Lavender Town	youtube	f
LO3ugaHGp9w	2019-10-28 20:50:04.633231-04	2019-10-28 20:50:04.633231-04	\N	179000000	[NICODE] Nyanya no Uta｜Deemo 3.2 Update - M2U x NICODE Collection Vol.2	youtube	f
Q_rHOGpmnYA	2019-10-28 22:42:01.616602-04	2019-10-28 22:42:01.616602-04	\N	88000000	Megalovania X Gourmet Race | Mashup	youtube	f
s1EIUP8tvbE	2019-10-29 00:49:23.335392-04	2019-10-29 00:49:23.335392-04	\N	154000000	Where in the World is Carmen Sandiego (1991 FULL VERSION)	youtube	f
pXtYNQqpND8	2019-10-29 01:08:37.167851-04	2019-10-29 01:08:37.167851-04	\N	42000000	Fetch with Ruff Ruffman Theme Song HD (Season 4)	youtube	f
BRn9uwO2MnE	2019-10-29 15:07:09.800444-04	2019-10-29 15:07:09.800444-04	\N	265000000	Puppet - Scribble ft. The Eden Project (Extended Mix)	youtube	f
th4Czv1j3F8	2019-10-29 19:22:51.589308-04	2019-10-29 19:22:51.589308-04	\N	232000000	ALESTORM - Fucked With An Anchor (Official Video) | Napalm Records	youtube	f
rayiFhNLZOM	2019-10-29 19:25:19.02332-04	2019-10-29 19:25:19.02332-04	\N	206000000	Alestorm - Fronked With An Anchor (Disney Edit)	youtube	f
a6BbvCC0VI0	2019-10-29 19:26:29.287663-04	2019-10-29 19:26:29.287663-04	\N	381000000	DOOM (2016) OST - Rip & Tear	youtube	f
DelhLppPSxY	2019-10-29 19:27:28.251495-04	2019-10-29 19:27:28.251495-04	\N	314000000	Avenged Sevenfold - Hail To The King [Official Music Video]	youtube	f
TBLVkZYgspM	2019-10-29 20:23:52.984536-04	2019-10-29 20:23:52.984536-04	\N	232000000	Seven Nation Army (Pre-Release) (Complete)	youtube	f
BN76rtaSyyI	2019-10-29 20:47:01.365911-04	2019-10-29 20:47:01.365911-04	\N	103000000	Composerily - Creeper? Aw Man... but it's Russian Hardbass	youtube	f
70t4UjrY3lQ	2019-10-29 20:52:19.372542-04	2019-10-29 20:52:19.372542-04	\N	237000000	Celeste BUP Sides - Mirror Temple B-Side	youtube	f
oliCVn7Ic68	2019-10-29 21:10:41.303405-04	2019-10-29 21:10:41.303405-04	\N	256000000	SLASHSTREET BOYS - “I'LL KILL YOU THAT WAY" (OFFICIAL BACKSTREET BOYS PARODY)	youtube	f
MubzZq1WDOo	2019-10-30 16:56:38.057532-04	2019-10-30 16:56:38.057532-04	\N	97000000	Mount Wario Brass Band	youtube	f
SDnaxXIW_Rs	2019-10-30 17:02:00.01487-04	2019-10-30 17:02:00.01487-04	\N	146000000	party rockers in the underground tonight	youtube	f
EJjyl-hW_qE	2019-10-30 17:17:39.779971-04	2019-10-30 17:17:39.779971-04	\N	202000000	soulja guy - Billie Eilish vs. Soulja Boy (Mashup)	youtube	f
y3Born_SJhM	2019-10-30 18:29:23.037984-04	2019-10-30 18:29:23.037984-04	\N	430000000	【東方ボーカル】 【凋叶棕】 ヒメゴトクラブ	youtube	f
pskLirJCk48	2019-10-30 20:39:04.55367-04	2019-10-30 20:39:04.55367-04	\N	356000000	【東方ボーカル】 【凋叶棕】 A Secret Adventure	youtube	f
cwQgjq0mCdE	2019-10-31 18:46:19.998346-04	2019-10-31 18:46:19.998346-04	\N	130000000	Kanye West & Lil Pump ft. Adele Givens - "I Love It" (Official Music Video)	youtube	f
PvLz5kCVIss	2019-10-31 19:13:34.699105-04	2019-10-31 19:13:34.699105-04	\N	572000000	6969 - NSP	youtube	f
od9UKd-yvks	2019-10-31 19:38:19.820409-04	2019-10-31 19:38:19.820409-04	\N	222000000	벌써 12시 Gotta Go	youtube	f
j-2DGYNXRx0	2019-10-31 19:40:19.448705-04	2019-10-31 19:40:19.448705-04	\N	170000000	TheFatRat - Rise Up	youtube	f
6zB6lvWLDXQ	2019-10-31 19:47:19.164318-04	2019-10-31 19:47:19.164318-04	\N	151000000	when Gaston was a lad he ate 4 doz. eggs every morning to help him get barge.	youtube	f
BvqbyydDGuE	2019-10-31 19:53:23.118606-04	2019-10-31 19:53:23.118606-04	\N	511000000	A Capella Dubstep Covers (+ original tracks)	youtube	f
jwI1j7sslYI	2019-10-31 21:20:15.300179-04	2019-10-31 21:20:15.300179-04	\N	166000000	Crazy Frog - Popcorn (Official Video)	youtube	f
ATNJAYcIL04	2019-11-01 16:08:06.612832-04	2019-11-01 16:08:06.612832-04	\N	244000000	Shawn Wasabi - SNACK feat. raychel jay (Official Music Video)	youtube	f
xof7PkoggbM	2019-11-01 16:13:20.359885-04	2019-11-01 16:13:20.359885-04	\N	146000000	Shawn Wasabi - MARBLE TEA (Official Music Video)	youtube	f
LaH9b6Lqwzo	2019-11-01 18:43:21.53769-04	2019-11-01 18:43:21.53769-04	\N	192000000	Panic! At The Disco - Miss Jackson	youtube	f
lI5VmfngnNQ	2019-11-01 18:53:47.670409-04	2019-11-01 18:53:47.670409-04	\N	242000000	[Lyrics] Tori Kelly - Don't You Worry 'Bout A Thing (SING Movie Soundtrack)	youtube	f
10MqDLLxE1A	2019-11-01 18:59:48.546455-04	2019-11-01 18:59:48.546455-04	\N	214000000	Set it all free lyrics ~ Scarlett Johnsson	youtube	f
Qc89T_KPNWc	2019-11-01 19:08:59.462303-04	2019-11-01 19:08:59.462303-04	\N	271000000	Outkast - M.s Jackson	youtube	f
dW5Kj5ZQIZM	2019-11-01 20:33:12.111925-04	2019-11-01 20:33:12.111925-04	\N	92000000	"Pokémon Theme" A Cappella Cover	youtube	f
dB-ZljdXY0g	2019-11-01 21:45:12.537805-04	2019-11-01 21:45:12.537805-04	\N	13000000	Mr. Krabs - Gonna Cry?	youtube	f
FdyoniKSFLE	2019-11-01 22:49:33.834709-04	2019-11-01 22:49:33.834709-04	\N	204000000	soulja planes	youtube	f
jvEy4eDTqVw	2019-11-02 13:21:48.667599-04	2019-11-02 13:21:48.667599-04	\N	213000000	A.C.E (에이스) - 삐딱선 (SAVAGE) (Color Coded Lyrics Eng/Rom/Han/가사)	youtube	f
33eT9gn5t5E	2019-11-02 13:28:06.288432-04	2019-11-02 13:28:06.288432-04	\N	202000000	BLACKPINK (블랙핑크) - 'DDU-DU DDU-DU' (REMIX) Lyrics [Color Coded_Han_Rom_Eng]	youtube	f
AAbokV76tkU	2019-11-02 13:28:33.72188-04	2019-11-02 13:28:33.72188-04	\N	240000000	BIGBANG - FANTASTIC BABY M/V	youtube	f
KGVK9ShyWxw	2019-11-02 15:25:30.050957-04	2019-11-02 15:25:30.050957-04	\N	278000000	The Other Promise ~ Kingdom Hearts Piano Collections ~ played on grand piano	youtube	f
INv4yihs3so	2019-11-02 15:25:41.593533-04	2019-11-02 15:25:41.593533-04	\N	228000000	SimCity ( 2013 ) Soundtrack - 11. Clean Build of Health	youtube	f
s9XljBWGrRQ	2019-11-02 15:28:15.624961-04	2019-11-02 15:28:15.624961-04	\N	273000000	Kingdom Hearts HD 2.5 ReMIX - Remastered OST - The Other Promise.	youtube	f
P_WyB1Yunqw	2019-11-02 15:39:02.066653-04	2019-11-02 15:39:02.066653-04	\N	202000000	Lorde - Royals (Lyrics)	youtube	f
f2JuxM-snGc	2019-11-02 15:44:35.804079-04	2019-11-02 15:44:35.804079-04	\N	200000000	Lorde - Team	youtube	f
9nr2qJjvoB0	2019-11-03 01:54:57.0457-04	2019-11-03 01:54:57.0457-04	\N	242000000	Three Dog Night - One Is The Loneliest Number	youtube	f
JTc1mDieQI8	2019-11-03 11:09:37.582166-05	2019-11-03 11:09:37.582166-05	\N	1585000000	Mozart - Symphony No. 40 in G minor, K. 550 [complete]	youtube	f
T1h1NJMKtnc	2019-11-03 11:49:05.654351-05	2019-11-03 11:49:05.654351-05	\N	693000000	Dmitri Shostakovich - Symphony No. 5 - Finale	youtube	f
MPphWCr4ba8	2019-11-03 11:49:39.796794-05	2019-11-03 11:49:39.796794-05	\N	398000000	"Back to the Future" with composer Alan Silvestri conducting in Vienna!	youtube	f
snfsc7pEzlk	2019-11-03 12:10:59.514699-05	2019-11-03 12:10:59.514699-05	\N	307000000	Star Wars - Duel of the Fates (Piano Version)	youtube	f
Qx2gvHjNhQ0	2019-11-03 13:09:29.985352-05	2019-11-03 13:09:29.985352-05	\N	179000000	Harold Faltermeyer - Axel F (1984) Beverly Hills Cop - Soundtrack	youtube	f
KvaNfJJijrU	2019-10-27 15:40:13.897179-04	2019-10-27 15:40:13.897179-04	\N	9000000	Fire Emblem Victory Theme (Air Horn)	youtube	f
wEzD_04Jmxw	2019-10-28 17:02:11.792824-04	2019-10-28 17:02:11.792824-04	\N	192000000	Did somebody say same BPM?	youtube	f
PpIsdS-UvU4	2019-10-28 17:03:21.378427-04	2019-10-28 17:03:21.378427-04	\N	127000000	SickoForce | Mashup MV	youtube	f
NeotFAzacEc	2019-10-28 17:05:53.187844-04	2019-10-28 17:05:53.187844-04	\N	181000000	Neil Cicierega - The Starting Line (Album Version) (HQ Audio)	youtube	f
0T6go6EOuG4	2019-10-28 17:07:57.795344-04	2019-10-28 17:07:57.795344-04	\N	111000000	Don't Watch An Anime Called Boku - Typography	youtube	f
r_Z8tEW5A3Q	2019-10-28 17:15:31.692896-04	2019-10-28 17:15:31.692896-04	\N	91000000	We are Numa Numa	youtube	f
x0UhfSp-nss	2019-10-28 17:27:08.241146-04	2019-10-28 17:27:08.241146-04	\N	123000000	I Love Havana (Explicit)	youtube	f
IIdyAa7fMyY	2019-10-28 18:28:00.898482-04	2019-10-28 18:28:00.898482-04	\N	259000000	Marcianito 100% Real No Feik [SDLG Remix]	youtube	f
tkwjbZEEfk8	2019-10-28 18:39:45.285139-04	2019-10-28 18:39:45.285139-04	\N	241000000	Zion y Lennox - Hoy lo Siento ft. Tony Dize [Official Video]	youtube	f
bXrxvI9-2ZE	2019-10-28 18:47:15.190426-04	2019-10-28 18:47:15.190426-04	\N	166000000	Nightcore - Royalty || Lyrics	youtube	f
Pqzj5hrnDCk	2019-10-28 19:20:31.540695-04	2019-10-28 19:20:31.540695-04	\N	1605000000	Using linear programming for 5 year plans	youtube	f
_nCzRoH37jI	2019-10-28 23:06:47.553529-04	2019-10-28 23:06:47.553529-04	\N	165000000	1, 2 Oatmeal Pitch Corrected	youtube	f
eRNJGMZ_zpw	2019-10-28 23:57:14.445646-04	2019-10-28 23:57:14.445646-04	\N	241000000	BTS (방탄소년단) - 'DOPE / SICK' (쩔어) Lyrics [Color Coded_Han_Rom_Eng]	youtube	f
ILTWNFH4F5g	2019-10-29 00:59:42.387343-04	2019-10-29 00:59:42.387343-04	\N	68000000	Carmen Sandiego | Theme Song [HD] | Netflix	youtube	f
WnAvNdVyJB0	2019-10-29 19:31:21.5994-04	2019-10-29 19:31:21.5994-04	\N	286000000	Sabaton - Carolus Rex (English version)	youtube	f
nW5po_Z7YEs	2019-10-29 19:34:43.660818-04	2019-10-29 19:34:43.660818-04	\N	606000000	Chopin Ballade No.1 Performed by Arthur Rubinstein	youtube	f
CZlfbep2LdU	2019-10-29 19:36:10.359851-04	2019-10-29 19:36:10.359851-04	\N	138000000	Beep Beep I'm a Sheep (feat. TomSka & BlackGryph0n) | asdfmovie10 song | LilDeuceDeuce	youtube	f
Y2OVap25RV4	2019-10-29 20:03:11.758506-04	2019-10-29 20:03:11.758506-04	\N	123000000	Toad Sings We Will Rock You	youtube	f
aEfI4uYYH9I	2019-10-29 20:04:13.266244-04	2019-10-29 20:04:13.266244-04	\N	333000000	δ:for the DELTA	youtube	f
M76k6qDIrpk	2019-10-29 20:55:20.228792-04	2019-10-29 20:55:20.228792-04	\N	38000000	Your BUPality.	youtube	f
r9vO7b6w5CE	2019-10-29 20:56:38.591207-04	2019-10-29 20:56:38.591207-04	\N	30000000	BUP Nye The Science Guy	youtube	f
lDVWNKSEeoI	2019-10-30 17:33:04.8599-04	2019-10-30 17:33:04.8599-04	\N	129000000	Lil Pump-Booty Gang #NoHomo	youtube	f
SOFCQ2bfmHw	2019-10-30 18:37:11.498207-04	2019-10-30 18:37:11.498207-04	\N	193000000	Monster Mash (Lyrics)	youtube	f
4VviHFvQ1ts	2019-10-30 18:40:28.282309-04	2019-10-30 18:40:28.282309-04	\N	291000000	[동방 어레인지] A-One - Recover the Future (Eurobeat Style) [자막]	youtube	f
Gw0CCLjG9Pc	2019-10-30 18:40:44.092365-04	2019-10-30 18:40:44.092365-04	\N	305000000	【A-One×TUMENECO】Uncover the Universe (Eurobeat Style)【東方ボーカル Eurobeat】	youtube	f
wWwl9jRiZQM	2019-10-30 20:47:01.940191-04	2019-10-30 20:47:01.940191-04	\N	239000000	t+pazolite - Party in the HOLLOWood feat  ななひら	youtube	f
I33qw3gb9g0	2019-10-30 20:49:14.914996-04	2019-10-30 20:49:14.914996-04	\N	350000000	BlackYooh vs. siromaru - BLACK or WHITE? (Extended)	youtube	f
02I8JyjSyfE	2019-10-30 20:58:55.828553-04	2019-10-30 20:58:55.828553-04	\N	325000000	[Touhou Vocal] [SOUND HOLIC] Endless Reverse (spanish & english subtitles)	youtube	f
1PpueBknvmU	2019-10-30 20:59:54.449555-04	2019-10-30 20:59:54.449555-04	\N	215000000	【東方ボーカル】 「Chase Me, Catch Me！」 【SOUND HOLIC】	youtube	f
hpIdjzfx-Dk	2019-10-30 21:00:22.505461-04	2019-10-30 21:00:22.505461-04	\N	216000000	【東方Vocal】 Amanojaku 「Yuuhei Satellite」	youtube	f
BfWJqKIxyGc	2019-10-31 11:27:37.078787-04	2019-10-31 11:27:37.078787-04	\N	1561000000	Tubular Bells (Pt. I)	youtube	f
x0X4tUADWFI	2019-10-31 16:24:23.713514-04	2019-10-31 16:24:23.713514-04	\N	259000000	Snow halation - Love Live! School idol festival ~after school ACTIVITY~	youtube	f
QlZKlZKSSU4	2019-10-31 16:31:04.207799-04	2019-10-31 16:31:04.207799-04	\N	259000000	Snow halation (ELI Mix) - Love Live! School idol festival ~after school ACTIVITY~	youtube	f
OU7YFePj3jM	2019-10-31 16:48:58.031095-04	2019-10-31 16:48:58.031095-04	\N	440000000	Camellia - Nacreous Snowmelt (for THX 70k Twitter Followers)	youtube	f
SLP9mbCuhJc	2019-10-31 18:22:36.72104-04	2019-10-31 18:22:36.72104-04	\N	35000000	That's a ten	youtube	f
HhwTF97OyX8	2019-10-31 19:15:16.348268-04	2019-10-31 19:15:16.348268-04	\N	173000000	Lizzo - Truth Hurts (Official Lyric Video)	youtube	f
fEjqAkBWO8w	2019-10-31 19:37:34.762571-04	2019-10-31 19:37:34.762571-04	\N	211000000	Matoma - Running Out (ft. Astrid S)	youtube	f
hWTFG3J1CP8	2019-10-31 20:01:58.415319-04	2019-10-31 20:01:58.415319-04	\N	408000000	Complete History Of The Soviet Union, Arranged To The Melody Of Tetris	youtube	f
RQmEERvqq70	2019-10-31 20:02:34.908618-04	2019-10-31 20:02:34.908618-04	\N	223000000	TMABird - Everybody's Circulation (Lyric Video)	youtube	f
F5iDHYTL2CQ	2019-10-31 20:59:20.007592-04	2019-10-31 20:59:20.007592-04	\N	223000000	Got7 - Just Right (Color Coded Han|Rom|Eng Lyrics)	youtube	f
44E4KCK1GIo	2019-10-31 21:07:38.994967-04	2019-10-31 21:07:38.994967-04	\N	203000000	Hovey Benjamin - Bruh (Official Audio)	youtube	f
giqZkkOmozY	2019-10-31 21:32:21.011271-04	2019-10-31 21:32:21.011271-04	\N	193000000	Toxic Pool - Britney Spears vs. Drowning Pool (Mashup)	youtube	f
h4aYzKb0Cx8	2019-11-01 15:53:27.076485-04	2019-11-01 15:53:27.076485-04	\N	116000000	MAAAAMAAAA UWU	youtube	f
mc274HUFhQQ	2019-11-01 17:08:57.582773-04	2019-11-01 17:08:57.582773-04	\N	233000000	[MV] GFRIEND - Fallin' Light (天使の梯子)	youtube	f
DPC9erC5WqU	2019-11-01 17:38:31.698821-04	2019-11-01 17:38:31.698821-04	\N	345000000	Keith Ape - 잊지마 (It G Ma) (feat. JayAllDay, Loota, Okasian & Kohh) [Official Video]	youtube	f
-X2ty1SGl4A	2019-11-01 20:44:52.754335-04	2019-11-01 20:44:52.754335-04	\N	727000000	Baby I'm Back (I, II, & III) - pluffaduff	youtube	f
aBSN0g7CdlU	2019-11-02 13:47:44.281064-04	2019-11-02 13:47:44.281064-04	\N	203000000	[MV] 효린(HYOLYN)X창모(CHANGMO) - BLUE MOON (Prod. GroovyRoom)	youtube	f
AoZFLCy-P-8	2019-11-02 13:48:10.012691-04	2019-11-02 13:48:10.012691-04	\N	203000000	HYOLYN(효린) ‘달리(Dally) (Feat.GRAY)’ Official MV	youtube	f
CbFh06IpSwA	2019-11-02 13:48:36.127-04	2019-11-02 13:48:36.127-04	\N	225000000	SUPER JUNIOR 슈퍼주니어 'I Think I' MV	youtube	f
OK3GJ0WIQ8s	2019-11-02 13:58:34.80434-04	2019-11-02 13:58:34.80434-04	\N	229000000	j-hope 'Daydream (백일몽)' MV	youtube	f
W3iSnJ663II	2019-11-02 13:59:02.598535-04	2019-11-02 13:59:02.598535-04	\N	240000000	TXT (투모로우바이투게더) '어느날 머리에서 뿔이 자랐다 (CROWN)' Official MV	youtube	f
2gcCHTZEqKk	2019-11-02 15:03:56.841041-04	2019-11-02 15:03:56.841041-04	\N	217000000	TAEYEON (태연) '불티 (Spark)' (Color Coded Lyrics Eng/Rom/Han/가사)	youtube	f
BydX3CHVPp8	2019-11-02 15:04:06.316024-04	2019-11-02 15:04:06.316024-04	\N	300000000	AKMU - 'How can I love the heartbreak, you`re the one I love' Lyrics [Color Coded_Han_Rom_Eng]	youtube	f
tnCRPBdOGS0	2019-11-02 15:22:12.453758-04	2019-11-02 15:22:12.453758-04	\N	171000000	SimCity ( 2013 ) Soundtrack - 01. SimCity Theme	youtube	f
gRElM34qSXA	2019-11-03 10:09:45.899748-05	2019-11-03 10:09:45.899748-05	\N	180000000	Main Theme - Luigi's Mansion 3 Soundtrack	youtube	f
Jd38So1VvnA	2019-11-03 11:29:31.811354-05	2019-11-03 11:29:31.811354-05	\N	876000000	N. Rimsky-Korsakov. Scheherazade. Movement 4	youtube	f
0MOtEJhkl2U	2019-11-03 12:08:47.354426-05	2019-11-03 12:08:47.354426-05	\N	344000000	Man of Steel - Main Theme (Piano Version)	youtube	f
D0pTkyN1iwI	2019-11-03 12:19:42.707232-05	2019-11-03 12:19:42.707232-05	\N	246000000	Nunca Me Faltes	youtube	f
FMN3AtsXqA0	2019-11-03 12:43:00.178459-05	2019-11-03 12:43:00.178459-05	\N	193000000	Pitbull x El Chombo x Karol G - Dame Tu Cosita feat. Cutty Ranks (Prod. by Afro Bros) [Ultra Music]	youtube	f
k85mRPqvMbE	2019-11-03 13:02:50.934952-05	2019-11-03 13:02:50.934952-05	\N	173000000	Crazy Frog - Axel F (Official Video)	youtube	f
G7RgN9ijwE4	2019-11-03 13:06:04.136845-05	2019-11-03 13:06:04.136845-05	\N	22000000	Have you ever had a dream like this?	youtube	f
2k0SmqbBIpQ	2019-11-03 13:06:42.261484-05	2019-11-03 13:06:42.261484-05	\N	19000000	it's time to stop	youtube	f
WZU2PDO33IU	2019-11-03 13:15:06.273506-05	2019-11-03 13:15:06.273506-05	\N	209000000	Bring Donkey Kong To Life (Evanescence + DK Rap MASHUP)	youtube	f
ononpq4EAGs	2019-11-03 13:17:12.77023-05	2019-11-03 13:17:12.77023-05	\N	187000000	I LIKE TO MOVE IT - Crazy Frog	youtube	f
htg8v0g_4e4	2019-11-05 21:44:04.845869-05	2019-11-05 21:44:04.845869-05	\N	183000000	Don't Start Now	youtube	f
ECVRL7Rfbzg	2019-11-05 21:44:28.228199-05	2019-11-05 21:44:28.228199-05	\N	184000000	Don't Kill My Vibe	youtube	f
zwT6DZCQi9k	2019-11-05 22:04:43.211328-05	2019-11-05 22:04:43.211328-05	\N	272000000	Robin Thicke - Blurred Lines ft. T.I. & Pharrell (Unrated Version)	youtube	f
YVDGZzJnI14	2019-11-06 16:28:36.408856-05	2019-11-06 16:28:36.408856-05	\N	440000000	Shards of Infinity Review by Man Vs Meeple (Stone Blade Entertainment)	youtube	f
gG_dA32oH44	2019-11-06 18:43:25.34235-05	2019-11-06 18:43:25.34235-05	\N	251000000	Jay-Z & Kanye West - Ni**as In Paris (Explicit)	youtube	f
gX8p_V8u0Hg	2019-11-07 19:36:37.636679-05	2019-11-07 19:36:37.636679-05	\N	250000000	MBAND - Она вернeтся	youtube	f
_p1oj6_AaMQ	2019-11-07 19:36:55.332439-05	2019-11-07 19:36:55.332439-05	\N	194000000	Егор Крид - Мало так мало (премьера клипа, 2016)	youtube	f
KDgAP7uEU9o	2019-11-07 19:37:22.975444-05	2019-11-07 19:37:22.975444-05	\N	193000000	Егор Крид перепел Меладзе - Самба белого мотылька (2017 Сочи. Роза Хутор)	youtube	f
24nCbaf_nkw	2019-11-07 19:38:34.682306-05	2019-11-07 19:38:34.682306-05	\N	192000000	Егор Крид-Миллион алых роз/текст	youtube	f
qZFGwUHPggc	2019-11-07 19:38:59.991981-05	2019-11-07 19:38:59.991981-05	\N	197000000	Егор Крид-Берегу  (Текст песни Lyrics)	youtube	f
IYFLYpF82c0	2019-11-07 19:39:17.616077-05	2019-11-07 19:39:17.616077-05	\N	213000000	Егор Крид - Слеза (премьера трека, 2017)	youtube	f
IJCwApWy-t0	2019-11-07 19:39:58.940272-05	2019-11-07 19:39:58.940272-05	\N	200000000	Сати Казанова ft Arsenium - До рассвета ( Текст – Lyrics )	youtube	f
hUrtIqYz61E	2019-11-07 19:40:25.228882-05	2019-11-07 19:40:25.228882-05	\N	235000000	Mband - Все исправить (Lyrics)	youtube	f
9G3yWub5O0E	2019-11-07 19:45:32.980262-05	2019-11-07 19:45:32.980262-05	\N	202000000	Егор Крид - Надо Ли (текст + испанский )	youtube	f
4bMuV7_gfDw	2019-11-07 19:45:51.490837-05	2019-11-07 19:45:51.490837-05	\N	215000000	Тамерлан и Алена - Надо бы	youtube	f
bNx91KpgytY	2019-11-07 19:48:17.058337-05	2019-11-07 19:48:17.058337-05	\N	190000000	Learn Russian with Songs - Time and Glass probablymaybe - Время и Стекло Навернопотомучто	youtube	f
-WB2xSyf_Lw	2019-11-07 20:22:35.562386-05	2019-11-07 20:22:35.562386-05	\N	199000000	CRAYON - GD lyrics han/rom/ita/eng	youtube	f
yMqL1iWfku4	2019-11-07 20:23:09.860828-05	2019-11-07 20:23:09.860828-05	\N	181000000	[Crayon Pop] 크레용팝 빠빠빠(Bar Bar Bar) - M/V (안무버젼)	youtube	f
BJJcqhMRZK8	2019-11-07 20:23:27.959716-05	2019-11-07 20:23:27.959716-05	\N	251000000	[MV] DEFCONN(데프콘) _ HipHop Kindergarten(힙합 유치원)	youtube	f
V34UOc_0xO8	2019-11-07 20:25:02.269568-05	2019-11-07 20:25:02.269568-05	\N	252000000	MONATIK & Надя Дорофеева - Глубоко... [Audio]	youtube	f
Z8dE0Gm1B-Y	2019-11-07 20:25:53.756457-05	2019-11-07 20:25:53.756457-05	\N	186000000	G-DRAGON (권지용) - BULLSHIT (개소리) Lyrics [Color Coded_Han_Rom_Eng]	youtube	f
-I7v0HqejXE	2019-11-03 13:32:04.878911-05	2019-11-03 13:32:04.878911-05	\N	50000000	New Alphabet Song	youtube	f
QstOV9RwU3M	2019-11-03 13:34:16.758062-05	2019-11-03 13:34:16.758062-05	\N	110000000	Oatmeal Off	youtube	f
nspqYGz-Z1s	2019-11-03 14:11:37.117501-05	2019-11-03 14:11:37.117501-05	\N	441000000	Jacob Collier - All Night Long (Official Video)	youtube	f
DJfg39WkMvE	2019-11-03 14:16:12.594784-05	2019-11-03 14:16:12.594784-05	\N	93000000	Blend W	youtube	f
7YQESUr8Cxc	2019-11-03 22:20:07.343829-05	2019-11-03 22:20:07.343829-05	\N	200000000	Hollaback Girl	youtube	f
Gc71AmT_b2k	2019-11-03 22:24:30.629073-05	2019-11-03 22:24:30.629073-05	\N	130000000	Bazzi - Mine (Official Video)	youtube	f
gIegx_W1ds0	2019-11-04 02:07:04.058039-05	2019-11-04 02:07:04.058039-05	\N	288000000	Go the f**k to sleep, read by Samuel L Jackson	youtube	f
x9vHqkYTKIE	2019-11-04 16:19:34.894341-05	2019-11-04 16:19:34.894341-05	\N	106000000	Over the Garden Wall (Frog Lullaby) - Over the Garden Wall	youtube	f
BW_MZLAF0HU	2019-11-04 22:24:31.554895-05	2019-11-04 22:24:31.554895-05	\N	446000000	Camellia - Kannabis Kultivation	youtube	f
D3-vBBQKOYU	2019-11-10 14:16:38.640712-05	2019-11-10 14:16:38.640712-05	\N	301000000	Windows Error Remix	youtube	f
LJwR4iHxKV0	2019-11-04 22:25:37.901654-05	2019-11-04 22:25:37.901654-05	\N	247000000	打首獄門同好会「なつのうた」	youtube	f
zsIo3VfKgSQ	2019-11-04 22:26:04.725708-05	2019-11-04 22:26:04.725708-05	\N	323000000	【東方爆音ジャズ】MMD版フラワリングナイト 〜紅霧夜華2014【東京アクティブNEETs＆ドライブP】	youtube	f
WysJSFW0LU8	2019-11-05 13:24:26.070097-05	2019-11-05 13:24:26.070097-05	\N	208000000	Araki - Teo (HQ AUDIO)	youtube	f
yjR0NYo1SFw	2019-11-05 16:32:14.603645-05	2019-11-05 16:32:14.603645-05	\N	228000000	Hollyn - i feel bad for you (acoustic)	youtube	f
ykeTeIf3DTg	2019-11-05 16:35:48.794522-05	2019-11-05 16:35:48.794522-05	\N	218000000	Hollyn - i wasn't enough for you (acoustic)	youtube	f
P8XpSVrr5EY	2019-11-05 18:38:57.757633-05	2019-11-05 18:38:57.757633-05	\N	260000000	Ahoy Spongebob/Spongeboi Me Bob Compilation The Complete Series	youtube	f
QyggMXmpJDU	2019-11-05 18:42:49.435626-05	2019-11-05 18:42:49.435626-05	\N	262000000	Xan Griffin - Capricorn (feat. WOLFE)	youtube	f
UYocLBXr7hQ	2019-11-05 19:27:07.979193-05	2019-11-05 19:27:07.979193-05	\N	204000000	Sk8er Boi	youtube	f
KA-9PVKdtpA	2019-11-05 19:27:50.143561-05	2019-11-05 19:27:50.143561-05	\N	194000000	Nobody	youtube	f
fn_6i7Wed-c	2019-11-05 19:27:58.877448-05	2019-11-05 19:27:58.877448-05	\N	214000000	P3 Live: AURORA "God is a woman" (Ariana Grande cover)	youtube	f
CinJhZF5ZuA	2019-11-05 19:43:41.553102-05	2019-11-05 19:43:41.553102-05	\N	218000000	불티 Spark	youtube	f
vmxxZwJIdCM	2019-11-05 19:44:50.109397-05	2019-11-05 19:44:50.109397-05	\N	201000000	Cosmo's Midnight - Snare (feat. Wild Eyed Boy) | Official Music Video	youtube	f
5Dl_UV30p3c	2019-11-05 20:08:57.403706-05	2019-11-05 20:08:57.403706-05	\N	246000000	Real	youtube	f
rcc22_x1RmA	2019-11-05 20:09:14.61434-05	2019-11-05 20:09:14.61434-05	\N	174000000	Hello Yello - I Don't Care (Official Video)	youtube	f
-ZvOzBOv1nc	2019-11-05 20:09:40.945699-05	2019-11-05 20:09:40.945699-05	\N	258000000	[MV] Brown Eyed Girls(브라운아이드걸스) _ Wonder Woman(원더우먼)	youtube	f
D7_hIkO598g	2019-11-05 20:36:53.879876-05	2019-11-05 20:36:53.879876-05	\N	186000000	Play	youtube	f
Dfj0qO-Mkk4	2019-11-05 21:21:23.561402-05	2019-11-05 21:21:23.561402-05	\N	220000000	All For You	youtube	f
azvMBrRNwq4	2019-11-05 21:57:32.318129-05	2019-11-05 21:57:32.318129-05	\N	198000000	boy pablo - Feeling Lonely (Official Audio)	youtube	f
S4t9AF2L4U4	2019-11-06 16:02:32.271554-05	2019-11-06 16:02:32.271554-05	\N	208000000	Do Re Mi - Blackbear Lyrics	youtube	f
Y6a79azAzSU	2019-11-06 16:40:31.760572-05	2019-11-06 16:40:31.760572-05	\N	20000000	There’s the pretty girls, and the popular girls and I look like...	youtube	f
6BhGbHBOQDU	2019-11-06 16:42:16.383277-05	2019-11-06 16:42:16.383277-05	\N	470000000	Risk Legacy - Should You Buy It?	youtube	f
EouSUGJ7OLQ	2019-11-06 18:34:53.769723-05	2019-11-06 18:34:53.769723-05	\N	217000000	Billie Eilish - Bellyache (Marian Hill Remix/Audio)	youtube	f
QgKvfvLg3DA	2019-11-07 19:52:27.515657-05	2019-11-07 19:52:27.515657-05	\N	180000000	Текст песни НаверноПотомуЧто (Время и Стекло)	youtube	f
9BFF8onzEz8	2019-11-07 19:53:44.569508-05	2019-11-07 19:53:44.569508-05	\N	230000000	Мот - Изюм ❤️	youtube	f
Y3pZ1ESpEiY	2019-11-07 20:03:02.429382-05	2019-11-07 20:03:02.429382-05	\N	178000000	Макс Корж - Жить в кайф (текст)	youtube	f
J1urqd1c1zg	2019-11-07 20:06:26.417114-05	2019-11-07 20:06:26.417114-05	\N	168000000	DAESUNG - LOOK AT ME GWISUN Lyrics (Kan/Rom/Eng)	youtube	f
vCqHh0UPVwg	2019-11-07 20:08:08.081622-05	2019-11-07 20:08:08.081622-05	\N	182000000	Миша Марвин feat. Мот - А может Lyrics Текст	youtube	f
YBp-0d74q20	2019-11-07 20:11:36.503713-05	2019-11-07 20:11:36.503713-05	\N	171000000	BIGBANG – BAE BAE (Color Coded Han|Rom|Eng Lyrics)	youtube	f
h5PpfloQSIU	2019-11-07 20:32:37.557348-05	2019-11-07 20:32:37.557348-05	\N	227000000	G-dragon Crooked Lyrics [Han/Rom/Eng]	youtube	f
0xI4J9CwMuY	2019-11-07 20:36:21.339199-05	2019-11-07 20:36:21.339199-05	\N	286000000	【MV】虹/Fischer's	youtube	f
Kg0k4u7ZPqA	2019-11-07 20:36:41.19939-05	2019-11-07 20:36:41.19939-05	\N	226000000	Barobax - Eyne Mamane Mane OFFICIAL VIDEO HD	youtube	f
q3CVH5oVMec	2019-11-07 20:38:24.283611-05	2019-11-07 20:38:24.283611-05	\N	232000000	Gülşen - Bangır Bangır (Lyrics)	youtube	f
UMYUvK0dyaA	2019-11-07 20:39:00.885894-05	2019-11-07 20:39:00.885894-05	\N	231000000	Kendji Girac   Bella	youtube	f
zUU1bIWpH5c	2019-11-07 20:39:01.03652-05	2019-11-07 20:39:01.03652-05	\N	196000000	Rema - Dumebi ( Official Music Video )	youtube	f
16K3EZ-1H_w	2019-11-07 22:24:39.47118-05	2019-11-07 22:24:39.47118-05	\N	83000000	Giorno's Theme - Otamatone Cover	youtube	f
AFa1-kciCb4	2019-11-07 23:57:03.341465-05	2019-11-07 23:57:03.341465-05	\N	175000000	The good the bad and the ugly - The best theme tune ever	youtube	f
YILykk6SW50	2019-11-08 13:31:06.156572-05	2019-11-08 13:31:06.156572-05	\N	249000000	【東方ボーカル】 「不思議の国のクリスマス」 【SOUND HOLIC】 【Subbed】	youtube	f
qW-gf4loc7U	2019-11-08 13:48:54.610856-05	2019-11-08 13:48:54.610856-05	\N	14000000	DK Rap (Trans Pride Ver.) - Donkey Kong 64 (N64)	youtube	f
ZdKYi5ekshM	2019-11-08 13:53:16.908132-05	2019-11-08 13:53:16.908132-05	\N	218000000	TWICE「Breakthrough」Music Video	youtube	f
RlUb2F-zLxw	2019-11-08 14:22:47.42935-05	2019-11-08 14:22:47.42935-05	\N	356000000	星野源 – アイデア (Official Video)	youtube	f
q2iuL9-uV3g	2019-11-08 14:31:11.681616-05	2019-11-08 14:31:11.681616-05	\N	233000000	【東方Vocal／Jazz Rock】 CRYSTALLIZED 「SOUND HOLIC」	youtube	f
FdfKdYCFbsI	2019-11-08 14:31:31.848228-05	2019-11-08 14:31:31.848228-05	\N	184000000	La Venda	youtube	f
HOYAA13Bm9M	2019-11-08 16:46:11.931163-05	2019-11-08 16:46:11.931163-05	\N	223000000	"Sincerely, Me" from the DEAR EVAN HANSEN Original Broadway Cast Recording	youtube	f
h0_gMum9neE	2019-11-08 16:48:03.633162-05	2019-11-08 16:48:03.633162-05	\N	294000000	We Sell Drugs	youtube	f
9KSGUVcNfZM	2019-11-08 16:48:40.120259-05	2019-11-08 16:48:40.120259-05	\N	170000000	Yu-Gi-No	youtube	f
uvCfFYQnsk0	2019-11-08 16:48:58.085671-05	2019-11-08 16:48:58.085671-05	\N	107000000	Fictional Animals - NBL x FrankJavCee (Music Video)	youtube	f
GsgrCaJ14KU	2019-11-08 16:49:22.943804-05	2019-11-08 16:49:22.943804-05	\N	130000000	Gucci Gucci Literature Club's Not Hot (ft. Monika) [Miraie Mashup]	youtube	f
RC-e5vs6NeY	2019-11-08 16:50:25.755581-05	2019-11-08 16:50:25.755581-05	\N	266000000	Lil Dicky - Ex-Boyfriend (Official Video)	youtube	f
xLb7_UrV3-A	2019-11-08 16:50:49.743567-05	2019-11-08 16:50:49.743567-05	\N	265000000	The Book of Mormon - Hasa Diga Eebowai	youtube	f
kZX0srAgvko	2019-11-08 20:16:33.875094-05	2019-11-08 20:16:33.875094-05	\N	105000000	Hige Driver join. SELEN - Dadadadadadadadadada (Indian friendly version)	youtube	f
hq8oI2uahWE	2019-11-08 21:06:01.412451-05	2019-11-08 21:06:01.412451-05	\N	340000000	Cruel Angel's Thesis - Tokyo Brass Style	youtube	f
P7KJeuu4Whg	2019-11-08 21:19:41.08194-05	2019-11-08 21:19:41.08194-05	\N	130000000	The Credits Roll - Super Mario 3D World	youtube	f
xjs7xGRrVcE	2019-11-08 21:20:25.15704-05	2019-11-08 21:20:25.15704-05	\N	185000000	나인뮤지스A [9MUSES A] - '입술에 입술'(Lip 2 Lip) DanceVer mv	youtube	f
ye0aNGrXLMI	2019-11-08 22:00:16.723356-05	2019-11-08 22:00:16.723356-05	\N	200000000	Icon for Hire - Hollow (Official Audio)	youtube	f
nlt5Wa13fFU	2019-11-08 22:01:44.09498-05	2019-11-08 22:01:44.09498-05	\N	209000000	SEREBRO - Mi Mi Mi (Official Video)	youtube	f
5EXFilTUiko	2019-11-08 22:08:16.981352-05	2019-11-08 22:08:16.981352-05	\N	338000000	Tengen Toppa Gurren Lagann OST   Sorairo Days FULL VERSION	youtube	f
n2rVnRwW0h8	2019-11-08 22:08:24.518438-05	2019-11-08 22:08:24.518438-05	\N	211000000	Cowboy Bebop OST 1 - Tank!	youtube	f
BEGG-a0RlnQ	2019-11-08 22:08:45.846983-05	2019-11-08 22:08:45.846983-05	\N	157000000	Barefoot In The Park	youtube	f
1vrEljMfXYo	2019-11-09 15:28:27.516201-05	2019-11-09 15:28:27.516201-05	\N	198000000	John Denver - Take Me Home, Country Roads (Audio)	youtube	f
wMSrjfLjsc0	2019-11-10 00:46:56.228443-05	2019-11-10 00:46:56.228443-05	\N	162000000	The Anthem Of The Heart Song - Watashi No Koe ❤	youtube	f
DWy61wH21dg	2019-11-10 00:53:23.764368-05	2019-11-10 00:53:23.764368-05	\N	264000000	Nogizaka46 - Ima, Hanashitai Dareka ga Iru (Ending The Anthem of the Heart)	youtube	f
VowtyQeA9oc	2019-11-10 00:56:40.42222-05	2019-11-10 00:56:40.42222-05	\N	158000000	the anthem of the heart OST - harmonia	youtube	f
_VYgR_Pj5K0	2019-11-10 13:05:36.875092-05	2019-11-10 13:05:36.875092-05	\N	220000000	I Got Bitches	youtube	f
Imc7IRszGiM	2019-11-10 13:14:41.045262-05	2019-11-10 13:14:41.045262-05	\N	204000000	Dragonforce - My Heart Will Go On	youtube	f
18sN3tz7PkM	2019-11-10 13:53:42.38368-05	2019-11-10 13:53:42.38368-05	\N	138000000	It Was A One-Eyed One-Horned Flying Purple People Eater	youtube	f
AAGYmLLyOpI	2019-11-10 14:45:08.537111-05	2019-11-10 14:45:08.537111-05	\N	245000000	Lemon Demon - Super Hey Ya (OutKast Remix)	youtube	f
Oc8vrGjyqes	2019-11-10 18:42:54.064494-05	2019-11-10 18:42:54.064494-05	\N	90000000	Ta-Ta-Tax Fraud! (Reprise) - Yoshi Commits Tax Fraud	youtube	f
dFKz9iVHxeI	2019-11-10 20:26:34.289343-05	2019-11-10 20:26:34.289343-05	\N	220000000	"The Beat" - Ben Rector	youtube	f
8o1ieehttdA	2019-11-10 20:28:59.512968-05	2019-11-10 20:28:59.512968-05	\N	242000000	Kingdom Hearts Explained	youtube	f
9wh8FgsEtNQ	2019-11-10 21:52:44.946536-05	2019-11-10 21:52:44.946536-05	\N	215000000	BRADIO-Flyers【TVアニメ「デス・パレード」OP曲】(OFFICIAL VIDEO)	youtube	f
tQbbdvmyjS8	2019-11-11 13:40:03.542091-05	2019-11-11 13:40:03.542091-05	\N	197000000	679 (feat. Remy Boyz)	youtube	f
CwdrtwZiQ9E	2019-11-11 13:46:05.926119-05	2019-11-11 13:46:05.926119-05	\N	289000000	Black Eyed Peas - I Gotta Feeling [Audio]	youtube	f
ru0K8uYEZWw	2019-11-11 13:46:26.905536-05	2019-11-11 13:46:26.905536-05	\N	286000000	Justin Timberlake - CAN'T STOP THE FEELING! (From DreamWorks Animation's "Trolls") (Official Video)	youtube	f
BMGgVYxw4TU	2019-11-11 13:53:06.290468-05	2019-11-11 13:53:06.290468-05	\N	299000000	someBODY	youtube	f
FV4E7ffweoI	2019-11-11 14:04:50.525235-05	2019-11-11 14:04:50.525235-05	\N	218000000	The Pirates Who Don't Ignite Anything - ARRR. Kelly vs. VeggieTales	youtube	f
WXhZceXS7_8	2019-11-11 14:09:05.246852-05	2019-11-11 14:09:05.246852-05	\N	245000000	Without Me Remix | Eminem X Hasley	youtube	f
e7q3A33koNw	2019-11-11 14:13:35.494701-05	2019-11-11 14:13:35.494701-05	\N	203000000	How Low Can μ Go - Love Live! vs. Ludacris	youtube	f
H9mcYLgJyH8	2019-11-11 14:18:29.179049-05	2019-11-11 14:18:29.179049-05	\N	260000000	epic	youtube	f
0ncMQI226yg	2019-11-11 14:19:21.687893-05	2019-11-11 14:19:21.687893-05	\N	261000000	Britney's Bizarre Adventure	youtube	f
tjHRHkoUv8U	2019-11-11 14:23:38.422088-05	2019-11-11 14:23:38.422088-05	\N	200000000	Aesop Rock - Toxic Coffee (Britney Spears Mashup)	youtube	f
4sZuN0xXWLc	2019-11-11 14:54:56.027189-05	2019-11-11 14:54:56.027189-05	\N	60000000	Big Bill Hell's	youtube	f
bnsUkE8i0tU	2019-11-11 15:04:30.121392-05	2019-11-11 15:04:30.121392-05	\N	435000000	Infected Mushroom - Spitfire [Monstercat Release]	youtube	f
9AMYVgtmkoM	2019-11-11 15:08:01.944079-05	2019-11-11 15:08:01.944079-05	\N	53000000	[SFM] A challenger approaches	youtube	f
RIZdjT1472Y	2019-11-11 18:45:16.718739-05	2019-11-11 18:45:16.718739-05	\N	259000000	The Killers - Human (Official Music Video)	youtube	f
WPVNvJoljD0	2019-11-11 19:11:06.988905-05	2019-11-11 19:11:06.988905-05	\N	210000000	"Christmas is Creepy" Music Video - Fred Figglehorn	youtube	f
yEnMKgFaYuY	2019-11-11 19:25:38.518893-05	2019-11-11 19:25:38.518893-05	\N	320000000	Phineas Sings Green Day's 21 Guns	youtube	f
YnZV_6VcGcA	2019-11-11 19:49:54.090338-05	2019-11-11 19:49:54.090338-05	\N	162000000	Yira:: Quemado [Santos Impostores]	youtube	f
1giQV14nJJA	2019-11-11 22:37:29.143875-05	2019-11-11 22:37:29.143875-05	\N	191000000	Splurt - #OMW2SYG (Xmas Version) [Official Full Stream]	youtube	f
wzK29HJ_LLM	2019-11-12 17:09:07.738173-05	2019-11-12 17:09:07.738173-05	\N	1674000000	Rhythm Nirvana [RHYTHM HEAVEN GIGAMIX MASHUP]	youtube	f
jDwVkXVHIqg	2019-11-12 23:23:15.404501-05	2019-11-12 23:23:15.404501-05	\N	216000000	toad sings chandelier	youtube	f
6Dedl5cVMv0	2019-11-12 23:31:28.804933-05	2019-11-12 23:31:28.804933-05	\N	218000000	toad sings shallow	youtube	f
eDm6AnuKyGs	2019-11-12 23:35:54.474996-05	2019-11-12 23:35:54.474996-05	\N	247000000	KEiiNO - Shallow (official lyric video)	youtube	f
OBqOAQ4btbU	2019-11-12 23:55:23.485299-05	2019-11-12 23:55:23.485299-05	\N	176000000	NO NUT NOVEMBER - Official Music Video	youtube	f
ooOELrGMn14	2019-11-13 01:02:11.219955-05	2019-11-13 01:02:11.219955-05	\N	74000000	Why are you Gay - Funniest African interview ever! Link to full interview below	youtube	f
bb7zj0a3A3M	2019-11-13 18:23:18.220339-05	2019-11-13 18:23:18.220339-05	\N	11000000	ahh yes perry the platypus	youtube	f
OKWVNeDYZmU	2019-11-13 18:26:50.670475-05	2019-11-13 18:26:50.670475-05	\N	90000000	Yoda Cock and Ball Torture ASMR - (Hardstyle Remix (2019))	youtube	f
o_bpKA00W_g	2019-11-13 18:35:01.108516-05	2019-11-13 18:35:01.108516-05	\N	524000000	Infected Mushroom - Flamingo	youtube	f
oJuGlqO85YI	2019-11-13 19:20:37.971051-05	2019-11-13 19:20:37.971051-05	\N	206000000	TheFatRat & Anjulie - Close To The Sun	youtube	f
cMg8KaMdDYo	2019-11-13 19:21:21.811728-05	2019-11-13 19:21:21.811728-05	\N	194000000	TheFatRat - Fly Away feat. Anjulie	youtube	f
ceYUfCunDcw	2019-11-13 20:17:17.272244-05	2019-11-13 20:17:17.272244-05	\N	205000000	ICON FOR HIRE-Demons (Lyrics in Description)	youtube	f
fzcQxRr1cSw	2019-11-13 20:18:30.688194-05	2019-11-13 20:18:30.688194-05	\N	218000000	Hearts & Colors - Lion	youtube	f
PKB4cioGs98	2019-11-13 20:19:09.746087-05	2019-11-13 20:19:09.746087-05	\N	271000000	Jax Jones - You Don't Know Me ft. RAYE (Official Audio)	youtube	f
GwxSFJl8lKo	2019-11-14 00:33:01.275697-05	2019-11-14 00:33:01.275697-05	\N	263000000	♪ 'Form This Way' - Parody of Lady Gaga: 'Born This Way' - By The Yogscast	youtube	f
UvpC-pXBIjo	2019-11-14 00:36:57.093527-05	2019-11-14 00:36:57.093527-05	\N	252000000	♪ "The Miner" - A Minecraft Parody of The Fighter by Gym Class Heroes (Music Video)	youtube	f
2oT4bnjlDNE	2019-11-14 13:54:24.837229-05	2019-11-14 13:54:24.837229-05	\N	76000000	Gangplank Galleon Big Band	youtube	f
ZIfSaDNVjXI	2019-11-14 20:32:57.898036-05	2019-11-14 20:32:57.898036-05	\N	111000000	Chip Da Ripper freestyle (Interior Crocodile Alligator full song)	youtube	f
dgha9S39Y6M	2019-11-15 14:59:27.283928-05	2019-11-15 14:59:27.283928-05	\N	231000000	MINE DIAMONDS | miNECRAFT PARODY OF TAKE ON ME	youtube	f
16XRqMd1Pm0	2019-11-15 15:06:33.517031-05	2019-11-15 15:06:33.517031-05	\N	239000000	MINE DIAMONDS | miNECRAFT PARODY OF TAKE ON ME (Eurobeat Remix)	youtube	f
1HpQIjos-IE	2019-11-15 15:09:45.328262-05	2019-11-15 15:09:45.328262-05	\N	139000000	"Hello, Lean On My Mine" | Full Mashup	youtube	f
dANKqxonWsk	2019-11-15 15:13:24.125289-05	2019-11-15 15:13:24.125289-05	\N	192000000	WELCOME TO MY MINE | MINECRAFT PARODI OF WELCOME TO MY HOUSE	youtube	f
2RtI5UEZlzU	2019-11-16 15:12:17.263592-05	2019-11-16 15:12:17.263592-05	\N	242000000	toad sings all i want for christmas is you	youtube	f
Ej0NBRwht-w	2019-11-16 15:15:20.998216-05	2019-11-16 15:15:20.998216-05	\N	605000000	Ben Shapiro trashes John Lennon's "Imagine"	youtube	f
yXQViqx6GMY	2019-11-16 15:49:11.836109-05	2019-11-16 15:49:11.836109-05	\N	235000000	Mariah Carey - All I Want For Christmas Is You	youtube	f
oZazVpuooQ0	2019-11-16 17:09:59.25066-05	2019-11-16 17:09:59.25066-05	\N	277000000	you reposted in the wrong plastic love	youtube	f
dVDRmo5sn3Y	2019-11-16 17:10:29.248718-05	2019-11-16 17:10:29.248718-05	\N	321000000	夢の続き Yume No Tsuzuki (Original) - Mariya Takeuchi	youtube	f
lM-wVUcdp00	2019-11-16 17:16:43.57892-05	2019-11-16 17:16:43.57892-05	\N	64000000	Gonna Cry Meme Compilation Part 3	youtube	f
NNaJxMutEIE	2019-11-16 17:25:34.120174-05	2019-11-16 17:25:34.120174-05	\N	291000000	MAX COVERI / RUNNING IN THE "90S"【頭文字D/INITIAL D】	youtube	f
XfT6Cdh2Mhg	2019-11-16 17:47:15.606621-05	2019-11-16 17:47:15.606621-05	\N	85000000	DO YOU KNOW THE WAY SONG!!!	youtube	f
rsvKskQcFD4	2019-11-16 17:48:52.556628-05	2019-11-16 17:48:52.556628-05	\N	240000000	IU - 04. 너랑 나 (You & I)	youtube	f
j_cSseptMQg	2019-11-16 17:49:17.215946-05	2019-11-16 17:49:17.215946-05	\N	45000000	DO YOU KNOW DA WAE (Trap Remix)	youtube	f
9Gj47G2e1Jc	2019-11-16 18:21:45.142733-05	2019-11-16 18:21:45.142733-05	\N	477000000	Mariya Takeuchi Plastic Love  竹内 まりや	youtube	f
c9hGXjaKH_g	2019-11-16 18:22:02.006296-05	2019-11-16 18:22:02.006296-05	\N	260000000	Kaoru Akimoto - Dress Down	youtube	f
YzEK61siu5A	2019-11-16 18:29:42.555246-05	2019-11-16 18:29:42.555246-05	\N	200000000	I Like That	youtube	f
qvJ1Px8nCmw	2019-12-08 20:55:45.111372-05	2019-12-08 20:55:45.111372-05	\N	214000000	Lonely Rave Girl	youtube	f
IUjhrb8Mgdk	2019-11-16 19:06:39.021499-05	2019-11-16 19:06:39.021499-05	\N	187000000	"Cowboy Homos" Garth Brooks Parody Song by Ned - Bubba the Love Sponge	youtube	f
fwtLXlqB2qw	2019-11-16 19:07:58.367278-05	2019-11-16 19:07:58.367278-05	\N	200000000	Can't Stop by Ned (Red Hot Chili Peppers Parody Song) - The Bubba the Love Sponge Show	youtube	f
B7ATH2I9zBw	2019-11-16 19:08:29.683472-05	2019-11-16 19:08:29.683472-05	\N	164000000	"Jerk It" Ned BTLS Parody of "Work It" by Missy Elliott - Bubba the Love Sponge Show	youtube	f
AtAgmRuSeFw	2019-11-16 19:10:53.10633-05	2019-11-16 19:10:53.10633-05	\N	300000000	Ned Prank Call Catholic Priest	youtube	f
Sbjpe6b-7us	2019-11-16 19:56:30.398298-05	2019-11-16 19:56:30.398298-05	\N	103000000	12th Night Trap Remix	youtube	f
nEJk2FJJ18c	2019-11-16 19:57:01.214716-05	2019-11-16 19:57:01.214716-05	\N	263000000	Tom Misch - South Of The River (Official Audio)	youtube	f
_3T8KznhThQ	2019-11-16 19:59:49.389751-05	2019-11-16 19:59:49.389751-05	\N	236000000	Yaeji - Raingurl	youtube	f
3ppLBX2YKsQ	2019-11-16 20:30:49.855392-05	2019-11-16 20:30:49.855392-05	\N	185000000	Audrey - Time (Official Video)	youtube	f
zJzLc8Cj-AY	2019-11-16 20:41:15.739068-05	2019-11-16 20:41:15.739068-05	\N	314000000	Gang of Youths - Magnolia (Official Video)	youtube	f
Ryg62SUcYKE	2019-11-16 20:41:33.728771-05	2019-11-16 20:41:33.728771-05	\N	270000000	KATIE - Thinkin Bout You (Official Video)	youtube	f
v7CGBWzIIlQ	2019-11-16 20:43:06.618945-05	2019-11-16 20:43:06.618945-05	\N	253000000	High Line	youtube	f
fH17hr8wceE	2019-11-16 20:43:54.742826-05	2019-11-16 20:43:54.742826-05	\N	294000000	AAAMYYY - Over My Dead Body [Official Music Video]	youtube	f
Q3Bp1QVVieM	2019-11-16 20:50:31.090715-05	2019-11-16 20:50:31.090715-05	\N	350000000	Daft Punk - Lose Yourself To Dance (Feat. Pharrell Williams)	youtube	f
6mTbxCBs0P4	2019-11-16 21:57:58.589194-05	2019-11-16 21:57:58.589194-05	\N	238000000	TWICE (트와이스) - YES or YES (Audio) [YES or YES]	youtube	f
BKMy9YIl40I	2019-11-16 22:06:51.211401-05	2019-11-16 22:06:51.211401-05	\N	208000000	LAUNDRY DAY - Harvard	youtube	f
oWpDpx_gApM	2019-11-16 22:07:40.652551-05	2019-11-16 22:07:40.652551-05	\N	204000000	[Official Audio] OOHYO 우효 / Papercut (Eng.)	youtube	f
apXWuSTN2LI	2019-11-16 23:40:09.017506-05	2019-11-16 23:40:09.017506-05	\N	203000000	Panic! At The Disco - Death of a Bachelor [Lyrics]	youtube	f
UhMrJ6CncOk	2019-11-16 23:52:00.048815-05	2019-11-16 23:52:00.048815-05	\N	177000000	Shoujo Shuumatsu Ryokou - More One Night (Assertive Hardcore Bootleg)	youtube	f
RZ3ACUMl6_o	2019-11-16 23:52:34.013009-05	2019-11-16 23:52:34.013009-05	\N	239000000	Panda Eyes - Fruits	youtube	f
oqo3P4B0lUE	2019-11-16 23:53:04.414271-05	2019-11-16 23:53:04.414271-05	\N	320000000	Perfume　NIGHT FLIGHT	youtube	f
88AsTCuVHps	2019-11-16 23:55:07.185696-05	2019-11-16 23:55:07.185696-05	\N	287000000	Yousei Teikoku - Hades: The Rise	youtube	f
2djx83-4XNQ	2019-11-17 12:28:31.810931-05	2019-11-17 12:28:31.810931-05	\N	68000000	"Danny Phantom" Theme Song (HQ) | Episode Opening Credits | Nick Animation	youtube	f
PV06M-Gqxgg	2019-11-17 14:13:10.763307-05	2019-11-17 14:13:10.763307-05	\N	195000000	Tetris - Theme 'A' Acapella	youtube	f
hSXGRZ0lcj4	2019-11-17 14:37:38.692056-05	2019-11-17 14:37:38.692056-05	\N	209000000	Mario Galaxy: Rosalina's Comet Observatory Lo-fi Hip Hop || insaneintherainmusic (feat. DJ Cutman)	youtube	f
F93ywiGMDnQ	2019-11-17 14:55:48.592519-05	2019-11-17 14:55:48.592519-05	\N	193000000	INXS - Need You Tonight	youtube	f
wHIej9j7xyM	2019-11-17 15:41:25.198954-05	2019-11-17 15:41:25.198954-05	\N	251000000	Shawn Wasabi - Pizza Rolls (metal x EDM mashup)	youtube	f
DCtEjnfSGa4	2019-11-17 16:07:59.984473-05	2019-11-17 16:07:59.984473-05	\N	245000000	Cruel Angels Slam - Quad City DJs vs Yoko Takahashi (Reupload)	youtube	f
JLatBu--pHM	2019-11-17 20:36:34.211461-05	2019-11-17 20:36:34.211461-05	\N	76000000	how y'all motherfuckers look when you keep uploading custom megalos	youtube	f
zo9SBBSjRKg	2019-11-18 19:08:02.6192-05	2019-11-18 19:08:02.6192-05	\N	623000000	Baby I'm Back IV	youtube	f
uEB_vcWjXac	2019-11-19 11:31:26.089004-05	2019-11-19 11:31:26.089004-05	\N	170000000	Come Down	youtube	f
y_uvv1UKMQ0	2019-11-19 11:39:09.610392-05	2019-11-19 11:39:09.610392-05	\N	247000000	still feel.	youtube	f
L_rbj2gLOP4	2019-11-19 11:39:22.703421-05	2019-11-19 11:39:22.703421-05	\N	261000000	AJR x Half•Alive [Mashup] - Still Feel The House Burn Down	youtube	f
6r3qlgP1LoU	2019-11-19 12:46:52.721286-05	2019-11-19 12:46:52.721286-05	\N	213000000	Jay Sean - Down (Audio)	youtube	f
FQ3SJ4gL3MY	2019-11-19 12:51:59.098583-05	2019-11-19 12:51:59.098583-05	\N	229000000	The Fighter (Audio) Feat. Ryan Tedder	youtube	f
SiRJw4f_ufc	2019-11-19 12:53:20.079372-05	2019-11-19 12:53:20.079372-05	\N	211000000	Stereo Hearts (feat. Adam Levine)	youtube	f
rveqk0fBwfM	2019-11-19 12:54:19.965642-05	2019-11-19 12:54:19.965642-05	\N	211000000	Rocketeer	youtube	f
P-gWGlf_VrY	2019-11-19 13:21:50.504816-05	2019-11-19 13:21:50.504816-05	\N	245000000	David Guetta - Titanium (Audio)	youtube	f
lWDnwTsdtaw	2019-11-19 13:22:14.151384-05	2019-11-19 13:22:14.151384-05	\N	213000000	[Dubstep] - Pegboard Nerds - Self Destruct [Monstercat Release]	youtube	f
NkRsPrJMqUE	2019-11-19 19:05:46.627603-05	2019-11-19 19:05:46.627603-05	\N	216000000	Crazy Frog - Axel F (PedroDJDaddy | Trap 2018 Remix)	youtube	f
5qTjguPCgc8	2019-11-20 16:33:15.967597-05	2019-11-20 16:33:15.967597-05	\N	227000000	Nostalgic - S3RL feat Harri Rush	youtube	f
BjFWk0ncr70	2019-11-20 16:33:26.848254-05	2019-11-20 16:33:26.848254-05	\N	211000000	Catchit - S3RL	youtube	f
qe3c2XGnJw4	2019-11-20 17:19:31.58758-05	2019-11-20 17:19:31.58758-05	\N	178000000	Josip On Deck - Anime Pu$$y ft. Killa Karisma (Music Video)	youtube	f
5ojedxpk2G8	2019-11-20 18:45:55.049742-05	2019-11-20 18:45:55.049742-05	\N	44000000	uh oh stinky monkey lavender town	youtube	f
FPEX8KsPeE0	2019-11-20 20:10:05.439221-05	2019-11-20 20:10:05.439221-05	\N	237000000	Whoa I'm In Space Cuba (SECRET BONUS CHIP MIX) - Mighty Switch Force!	youtube	f
GByGJqmYBuo	2019-11-20 20:54:45.617219-05	2019-11-20 20:54:45.617219-05	\N	308000000	Panda Eyes & Teminite - Immortal Flame (feat. Anna Yvette)	youtube	f
v9p5ajY6Ruo	2019-11-20 20:54:58.881338-05	2019-11-20 20:54:58.881338-05	\N	229000000	Panda Eyes - ILY	youtube	f
JJ76zxbRKp0	2019-11-20 20:55:31.605076-05	2019-11-20 20:55:31.605076-05	\N	385000000	goreshit - burn this moment into the retina of my eye	youtube	f
izQsgE0L450	2019-11-20 23:58:39.905091-05	2019-11-20 23:58:39.905091-05	\N	481000000	Samuel Barber - Adagio for Strings	youtube	f
P_XikgjUOS0	2019-11-21 00:46:24.632282-05	2019-11-21 00:46:24.632282-05	\N	273000000	周杰倫 Jay Chou【比較大的大提琴 A Larger Cello】Official MV	youtube	f
S5RRCyCkiCk	2019-11-21 00:53:21.60419-05	2019-11-21 00:53:21.60419-05	\N	163000000	Sweet dreams are made of weebs (Weeb Anthem)	youtube	f
kRTMWzVoT_U	2019-11-21 14:13:55.137101-05	2019-11-21 14:13:55.137101-05	\N	211000000	Chicago - Old Days (HD)	youtube	f
Shk7qcvqDOo	2019-11-21 20:27:41.708091-05	2019-11-21 20:27:41.708091-05	\N	228000000	AViVA - GRRRLS	youtube	f
RQiyj8m5B-E	2019-11-21 20:50:25.784811-05	2019-11-21 20:50:25.784811-05	\N	215000000	Pitbull ft. Yomil y El Dany - Winning  (Audio Oficial)	youtube	f
XbGs_qK2PQA	2019-11-21 22:24:01.900228-05	2019-11-21 22:24:01.900228-05	\N	369000000	Eminem - Rap God (Explicit) [Official Video]	youtube	f
l18A5BOTlzE	2019-11-21 22:34:09.477991-05	2019-11-21 22:34:09.477991-05	\N	178000000	Five Nights at Freddy's 1 Song - The Living Tombstone	youtube	f
gk-aCL6eyGc	2019-11-21 22:34:49.06737-05	2019-11-21 22:34:49.06737-05	\N	180000000	Five Nights at Freddy's 2 Song - The Living Tombstone (FNAF2)	youtube	f
Mq1QBDBf52k	2019-11-21 22:36:01.068514-05	2019-11-21 22:36:01.068514-05	\N	156000000	The Living Tombstone - Super Smash Mouth Bros - FREE DOWNLOAD (SSB4 Remix)	youtube	f
P0g_X0yILlo	2019-11-21 23:14:06.544473-05	2019-11-21 23:14:06.544473-05	\N	60000000	Spongebob Cock and Ball Torture	youtube	f
R6ffimqo9Z8	2019-11-21 23:40:31.671635-05	2019-11-21 23:40:31.671635-05	\N	110000000	Ocho Cinco x M.A.A.D City x Heads Will Roll x Front To Back ( DJ SNAKE UMF Japan Mashup 19' )	youtube	f
Wv90VnDjgeM	2019-11-22 14:03:18.26041-05	2019-11-22 14:03:18.26041-05	\N	21000000	Dr phil - Go kill yourself	youtube	f
q8yQMCf734E	2019-11-22 14:51:34.706032-05	2019-11-22 14:51:34.706032-05	\N	397000000	YO MAMA SO HOT! Undertale	youtube	f
Lxg4Cp7_P5Y	2019-11-22 20:38:48.015874-05	2019-11-22 20:38:48.015874-05	\N	121000000	mega-yosh-vania	youtube	f
OQhbt2c8JqU	2019-11-23 12:44:55.035571-05	2019-11-23 12:44:55.035571-05	\N	214000000	Chumbawamba- Tubthumping	youtube	f
DfiOeLwDXbc	2019-11-23 13:38:20.212115-05	2019-11-23 13:38:20.212115-05	\N	193000000	Frank Sinatra - I'll Be Home for Christmas (If Only in My Dreams) (Faixa 8/20)	youtube	f
_yogyn10PBo	2019-11-23 13:47:35.18963-05	2019-11-23 13:47:35.18963-05	\N	236000000	Lawrence - Alibi (Official Video)	youtube	f
kaye3uc7D9g	2019-11-16 19:10:14.69985-05	2019-11-16 19:10:14.69985-05	\N	264000000	Ned calls a retirement home	youtube	f
vTIIMJ9tUc8	2019-11-16 19:13:52.845995-05	2019-11-16 19:13:52.845995-05	\N	256000000	Daler Mehndi - Tunak Tunak Tun Video	youtube	f
SdRpe9-xC0E	2019-11-16 19:33:04.308651-05	2019-11-16 19:33:04.308651-05	\N	98000000	[아이돌마스터] GO MY WAY!! (ED 10화) 논크레딧	youtube	f
v8umecK9UkE	2019-11-16 19:35:47.027072-05	2019-11-16 19:35:47.027072-05	\N	254000000	Renai Circulation	youtube	f
hUmUAu_6Szs	2019-11-16 19:38:48.230379-05	2019-11-16 19:38:48.230379-05	\N	90000000	交響詩篇エウレカセブン OP 1  DAYS	youtube	f
lZ84crMLmsA	2019-11-16 20:02:59.378168-05	2019-11-16 20:02:59.378168-05	\N	170000000	リズムがない	youtube	f
xHzB8KAuEr8	2019-11-16 20:19:31.874432-05	2019-11-16 20:19:31.874432-05	\N	276000000	Yaeji - Passionfruit	youtube	f
kLojMGNEJ1M	2019-11-16 21:16:06.345283-05	2019-11-16 21:16:06.345283-05	\N	250000000	Doing It Right- Daft Punk	youtube	f
Pm1SBkFaTL8	2019-12-03 14:40:19.540172-05	2019-12-03 14:40:19.540172-05	\N	166000000	ファビュラス	youtube	f
JtX6jCQFCBE	2019-11-16 21:16:32.106014-05	2019-11-16 21:16:32.106014-05	\N	203000000	Cosmo's Midnight - Have It All (Visualizer) ft. Age.Sex.Location	youtube	f
HxZXy7SaGsA	2019-11-16 21:16:51.039986-05	2019-11-16 21:16:51.039986-05	\N	257000000	JUNKO OHASHI-Dancin'	youtube	f
EHgeGRU3wDI	2019-11-16 21:18:03.443213-05	2019-11-16 21:18:03.443213-05	\N	207000000	청하 (CHUNG HA) - Why Don’t You Know (Feat. 넉살 (Nucksal)) MV	youtube	f
cIriwVhRPVA	2019-11-16 22:51:05.458159-05	2019-11-16 22:51:05.458159-05	\N	245000000	Sigrid - Strangers (Official Video)	youtube	f
pNd6gfFV_po	2019-11-16 23:53:12.556537-05	2019-11-16 23:53:12.556537-05	\N	326000000	Asterisk - Monochrome	youtube	f
4j7Umwfx60Q	2019-11-16 23:53:41.556721-05	2019-11-16 23:53:41.556721-05	\N	213000000	f(x) 에프엑스 '4 Walls' MV	youtube	f
RS7mk-UtdjQ	2019-11-17 12:35:40.947475-05	2019-11-17 12:35:40.947475-05	\N	23000000	Smitty Werbenjagermanjensen He Was Number One!	youtube	f
8ZFLsY_aT0g	2019-11-17 12:45:58.674348-05	2019-11-17 12:45:58.674348-05	\N	166000000	Pokemon Sword & Shield Allister Gym Battle Theme (w/ Shy Guy Audience)	youtube	f
P7glg9Hcv0w	2019-11-17 14:08:42.346872-05	2019-11-17 14:08:42.346872-05	\N	219000000	Doctor P vs. Knife Party - Fuck Centipedes (Tetris vs. Centipede mashup)	youtube	f
2RicaUqd9Hg	2019-11-17 14:56:48.068646-05	2019-11-17 14:56:48.068646-05	\N	155000000	Twist And Shout (Remastered 2009)	youtube	f
CY8E6N5Nzec	2019-11-17 16:41:30.620275-05	2019-11-17 16:41:30.620275-05	\N	206000000	Marshmello & Anne-Marie - FRIENDS (Lyric Video) *OFFICIAL FRIENDZONE ANTHEM*	youtube	f
f7ZHll_PSL4	2019-11-18 18:09:03.705607-05	2019-11-18 18:09:03.705607-05	\N	214000000	Toad Sings the USSR Anthem	youtube	f
chsBeG8sKFA	2019-11-18 18:13:42.610949-05	2019-11-18 18:13:42.610949-05	\N	45000000	Bakugan Theme Song HD	youtube	f
sbptRUyK8Rc	2019-11-18 18:28:46.996999-05	2019-11-18 18:28:46.996999-05	\N	241000000	Hatsune Miku - What Do You Mean?! (どういうことなの！？) - English/Romaji Sub	youtube	f
x4GxXcmhZ3s	2019-11-18 18:35:48.528167-05	2019-11-18 18:35:48.528167-05	\N	342000000	【Vocaloid DnB】Controlled Dive ft. Hatsune Miku【Camellia】	youtube	f
MzyXD8bNbvk	2019-11-18 20:04:33.573339-05	2019-11-18 20:04:33.573339-05	\N	200000000	[Hatsune Miku & Gumi]  Matryoshka [ENG Sub]	youtube	f
-1zeoDrN2Lo	2019-11-19 11:53:55.716063-05	2019-11-19 11:53:55.716063-05	\N	227000000	#SELFIE is a new and original song which doesn't plagiarize at all	youtube	f
ZsfIw7ZkEyc	2019-11-19 12:33:27.346928-05	2019-11-19 12:33:27.346928-05	\N	157000000	Victorious Cast - Take A Hint (Official Lyric Video) ft. Victoria Justice, Elizabeth Gillies	youtube	f
RFwwgB2jS_4	2019-11-19 13:05:26.227243-05	2019-11-19 13:05:26.227243-05	\N	257000000	Too Close	youtube	f
dSYu8FLVr_Y	2019-11-19 13:05:49.370493-05	2019-11-19 13:05:49.370493-05	\N	272000000	Lemaitre - Closer (feat. Jennie A.)	youtube	f
ZqJiXLJs_Pg	2019-11-19 13:08:17.692043-05	2019-11-19 13:08:17.692043-05	\N	301000000	Zedd - Addicted To A Memory (Audio) ft. Bahari	youtube	f
FYyCbKZIkgc	2019-11-19 13:11:22.745762-05	2019-11-19 13:11:22.745762-05	\N	228000000	[Progressive House] - Vicetone - What I've Waited For (feat. D. Brown) [Official Lyric Video]	youtube	f
rEL-HdWvLpM	2019-11-19 13:22:48.661956-05	2019-11-19 13:22:48.661956-05	\N	212000000	[Dubstep] - Pegboard Nerds - Here It Comes [Monstercat Release]	youtube	f
uW10SL-wKpU	2019-11-19 13:46:18.458355-05	2019-11-19 13:46:18.458355-05	\N	283000000	【東方ヴォーカルPV】純情アルメリア【森羅万象公式】	youtube	f
g4gU18TjR0Q	2019-11-19 13:46:29.873036-05	2019-11-19 13:46:29.873036-05	\N	282000000	【東方ヴォーカルPV】チルノは覚醒サマーデイズ！【森羅万象公式】	youtube	f
gM4S9lPyUUA	2019-11-19 16:20:14.86313-05	2019-11-19 16:20:14.86313-05	\N	364000000	toad sings bohemian rhapsody	youtube	f
iaMWkEXvqT8	2019-11-19 16:24:16.285412-05	2019-11-19 16:24:16.285412-05	\N	12000000	Ok Boomer - The DK Crew	youtube	f
SsslsubsYg8	2019-11-19 18:37:23.913726-05	2019-11-19 18:37:23.913726-05	\N	34000000	Billie Nyelish - Science Guy	youtube	f
jRAPZI9fzko	2019-11-20 11:18:30.876729-05	2019-11-20 11:18:30.876729-05	\N	101000000	the imperial MARCH but every other beat is missing	youtube	f
-HSuGYt_mDo	2019-11-20 16:32:43.39982-05	2019-11-20 16:32:43.39982-05	\N	125000000	no cock like horse cock bass boosted	youtube	f
ol0dPJdzm1M	2019-11-20 16:49:41.451786-05	2019-11-20 16:49:41.451786-05	\N	363000000	Billy Joel New York state of mind	youtube	f
95Ib0OFlm6k	2019-11-20 17:08:28.753063-05	2019-11-20 17:08:28.753063-05	\N	252000000	Mashup-Germany - Everybody Speaks No Americano (Yolanda Be Cool / Backstreet Boys +More)	youtube	f
0yGSQOWEXRo	2019-11-20 18:45:20.585886-05	2019-11-20 18:45:20.585886-05	\N	111000000	uh oh stinky but it's a soft lofi beat	youtube	f
PY5e2hK2FWs	2019-11-20 18:49:02.728823-05	2019-11-20 18:49:02.728823-05	\N	38000000	Uh Oh, Next	youtube	f
6k0HtHvGpy0	2019-11-20 20:26:56.345659-05	2019-11-20 20:26:56.345659-05	\N	254000000	[Future House] Camellia feat. Nanahira - Seashore on the moon	youtube	f
XJA5IhsDD9M	2019-11-20 20:45:36.058249-05	2019-11-20 20:45:36.058249-05	\N	180000000	R4V3 B0Y - S3RL feat Krystal	youtube	f
W3nQS5-3-AQ	2019-11-20 20:46:00.87488-05	2019-11-20 20:46:00.87488-05	\N	241000000	[東方Project] Shihori - Magic Girl	youtube	f
JAVyKDDsM3s	2019-11-21 00:17:00.2871-05	2019-11-21 00:17:00.2871-05	\N	347000000	Debussy - La cathédrale engloutie	youtube	f
5cPW0ggFq04	2019-11-21 21:59:12.998648-05	2019-11-21 21:59:12.998648-05	\N	190000000	blackbear - hot girl bummer [big budget music video]	youtube	f
v4-KVCT97wU	2019-11-21 21:59:23.133116-05	2019-11-21 21:59:23.133116-05	\N	241000000	Marshmello x YUNGBLUD x blackbear - Tongue Tied (Official Music Video)	youtube	f
FJldua1zV8s	2019-11-21 22:48:54.417513-05	2019-11-21 22:48:54.417513-05	\N	51000000	Big Time Rush Theme Song But Im Screaming The Lyrics	youtube	f
h7ZUQOkVefI	2019-11-22 00:24:38.258654-05	2019-11-22 00:24:38.258654-05	\N	32000000	Hoes Mad x Sans Theme Mashup	youtube	f
sODc6qNNDSU	2019-11-22 00:32:32.625966-05	2019-11-22 00:32:32.625966-05	\N	34000000	Welcome to the cum zone (desc)	youtube	f
QNmGqORMIZU	2019-11-22 00:34:27.230631-05	2019-11-22 00:34:27.230631-05	\N	563000000	(ASMR) Return to the Cum Zone	youtube	f
TyxTWCqm1qo	2019-11-22 00:34:55.277209-05	2019-11-22 00:34:55.277209-05	\N	158000000	Welcome to the cum zone [BASS BOOSTED]	youtube	f
laGutvWs7BA	2019-11-22 23:41:19.722683-05	2019-11-22 23:41:19.722683-05	\N	437000000	Spaceship Coupe	youtube	f
f0zfD3nfG4w	2019-11-23 13:22:11.294732-05	2019-11-23 13:22:11.294732-05	\N	164000000	"Sweet Dreams": original song in Major key	youtube	f
l1uoTMkhUiE	2019-11-23 13:29:14.689451-05	2019-11-23 13:29:14.689451-05	\N	200000000	Idina Menzel, AURORA - Into the Unknown (From "Frozen 2"/Lyric Video)	youtube	f
c-nEjZJVjvM	2019-11-23 13:31:42.313618-05	2019-11-23 13:31:42.313618-05	\N	242000000	Krewella - Alibi (Official Music Video)	youtube	f
LjxulQ1bEWg	2019-11-23 14:17:16.303468-05	2019-11-23 14:17:16.303468-05	\N	233000000	Tyga - Taste (Official Video) ft. Offset	youtube	f
0DNdXNHZO6w	2019-11-23 14:49:53.445667-05	2019-11-23 14:49:53.445667-05	\N	167000000	Nichijou Songs - Zzz （Acappella Version）	youtube	f
WwxZi_ZK0mw	2019-11-23 14:06:43.091485-05	2019-11-23 14:06:43.091485-05	\N	279000000	Lawrence - Do You Wanna Do Nothing With Me? (Official Video)	youtube	f
5TXWqWKS6LI	2019-11-23 14:34:35.601934-05	2019-11-23 14:34:35.601934-05	\N	216000000	Betty Who - Taste (Official Video)	youtube	f
mhuUimAaolE	2019-11-23 15:17:17.236354-05	2019-11-23 15:17:17.236354-05	\N	301000000	Count Basie Medley	youtube	f
wREBD2og5iY	2019-11-23 15:23:13.349948-05	2019-11-23 15:23:13.349948-05	\N	129000000	Beach Boys- I get Around	youtube	f
UvgigkaSCZA	2019-11-23 15:25:23.193952-05	2019-11-23 15:25:23.193952-05	\N	197000000	Lorde - Sober	youtube	f
5GHXEGz3PJg	2019-11-23 15:25:42.995493-05	2019-11-23 15:25:42.995493-05	\N	271000000	Florence + The Machine - Hunger	youtube	f
OQlByoPdG6c	2019-11-23 17:50:41.263399-05	2019-11-23 17:50:41.263399-05	\N	162000000	The Tokens - The Lion Sleeps Tonight (Wimoweh) (Audio)	youtube	f
DMo4zpGowAg	2019-11-23 17:52:13.149137-05	2019-11-23 17:52:13.149137-05	\N	243000000	'Girls Like To Swing' Full Song with LYRICS | Dil Dhadakne Do | T-Series	youtube	f
gdVjVtpr55M	2019-11-23 17:52:52.084179-05	2019-11-23 17:52:52.084179-05	\N	245000000	[OFFICIAL VIDEO] The Sound of Silence - Pentatonix	youtube	f
aAt1m1lQK3w	2019-11-23 17:53:40.231238-05	2019-11-23 17:53:40.231238-05	\N	215000000	Troye Sivan - EASE (Lyric Video) ft. Broods	youtube	f
6f1-QF9jvBM	2019-11-23 17:54:56.473422-05	2019-11-23 17:54:56.473422-05	\N	147000000	"Anybody Have a Map?" from the DEAR EVAN HANSEN Original Broadway Cast Recording	youtube	f
9A6_a-Suv9c	2019-11-23 22:56:59.371028-05	2019-11-23 22:56:59.371028-05	\N	200000000	Allie X - Paper Love (Official Video)	youtube	f
_0nS_ha9rjY	2019-11-23 23:19:11.135939-05	2019-11-23 23:19:11.135939-05	\N	171000000	Mr. Krabs Rave - SiIvaGunner: King for Another Day	youtube	f
aqCvjGEzMTI	2019-11-24 01:26:43.730715-05	2019-11-24 01:26:43.730715-05	\N	237000000	Mariah Carey - All I Want For Christmas Is You But It's Off Key	youtube	f
U5P80jYKwko	2019-11-24 13:26:21.958912-05	2019-11-24 13:26:21.958912-05	\N	271000000	Más Gasolina - SiIvaGunner: King for Another Day	youtube	f
HukKdwmOY80	2019-11-24 14:21:04.312789-05	2019-11-24 14:21:04.312789-05	\N	298000000	Green and Purple - SiIvaGunner: King for Another Day	youtube	f
vG1dXCYn3K8	2019-11-24 14:21:15.658331-05	2019-11-24 14:21:15.658331-05	\N	217000000	Love the Way You Blast - SiIvaGunner: King for Another Day	youtube	f
nr0HyLlEA-A	2019-11-24 14:21:33.210861-05	2019-11-24 14:21:33.210861-05	\N	94000000	Grass Skirt Crowdkill - SiIvaGunner: King for Another Day	youtube	f
YZhve0-Ep2Q	2019-11-24 14:21:54.702212-05	2019-11-24 14:21:54.702212-05	\N	94000000	Despicable Punk - SiIvaGunner: King for Another Day	youtube	f
GZ1i2-Vmqs8	2019-11-24 14:47:06.660735-05	2019-11-24 14:47:06.660735-05	\N	153000000	Music Video For "Which Backstreet Boy Is Gay?"	youtube	f
R4i0T49Y790	2019-11-24 14:56:26.948047-05	2019-11-24 14:56:26.948047-05	\N	95000000	Caught in the Worldwide Spotlight - SiIvaGunner: King for Another Day	youtube	f
M39q-NSXEZQ	2019-11-24 14:56:47.895928-05	2019-11-24 14:56:47.895928-05	\N	183000000	Lose Yourself - SiIvaGunner: King for Another Day	youtube	f
_daifJVuNQ8	2019-11-24 15:02:22.927197-05	2019-11-24 15:02:22.927197-05	\N	233000000	This Love - SiIvaGunner: King for Another Day	youtube	f
jv7ME7Tfx0c	2019-11-24 15:02:30.350465-05	2019-11-24 15:02:30.350465-05	\N	178000000	Hey Johnny Bravo - SiIvaGunner: King for Another Day	youtube	f
NCMJnTBZfeE	2019-11-24 19:55:24.317745-05	2019-11-24 19:55:24.317745-05	\N	198000000	"I'll Make Some Cake" A Minecraft parody of Glad You Came by The Wanted	youtube	f
tJWjq76qEIQ	2019-11-24 23:38:42.209849-05	2019-11-24 23:38:42.209849-05	\N	89000000	Crusin USA Main Menu	youtube	f
jP7wze4LzoA	2019-11-25 00:10:21.001154-05	2019-11-25 00:10:21.001154-05	\N	236000000	PIKASONIC - Miss You	youtube	f
nwmCOSYUSlI	2019-11-25 00:19:38.899141-05	2019-11-25 00:19:38.899141-05	\N	414000000	Led Zeppelin Heartbreaker / Living Loving Maid (She's Just a Woman)	youtube	f
WTLlCu4tUhU	2019-11-25 00:40:15.055012-05	2019-11-25 00:40:15.055012-05	\N	375000000	Title Theme (Time Trax) - SiIvaGunner: King for Another Day	youtube	f
BoOjcBiZu0I	2019-11-25 14:08:14.381712-05	2019-11-25 14:08:14.381712-05	\N	187000000	Strike the Earth! (Plains of Passage) - Shovel Knight: Treasure Trove	youtube	f
RlitYwYU3UI	2019-11-25 14:25:19.248968-05	2019-11-25 14:25:19.248968-05	\N	301000000	【東方ボーカル】 「冥き神の地へ」 【SOUND HOLIC】	youtube	f
TN3w-mxwoYE	2019-11-25 18:38:39.888567-05	2019-11-25 18:38:39.888567-05	\N	167000000	Snow halation (Event Mix) - Love Live! School idol festival	youtube	f
KjyltzOgm5Y	2019-11-25 18:58:29.468732-05	2019-11-25 18:58:29.468732-05	\N	397000000	BGM #04 (OST Version) - Simple DS Series Vol. 01 - The Mahjong	youtube	f
RX6PBHSlfIQ	2019-11-25 19:06:35.049997-05	2019-11-25 19:06:35.049997-05	\N	293000000	Boss Battle - Super Mario Bros. 2	youtube	f
6RADUpnJGFQ	2019-11-25 19:29:10.724726-05	2019-11-25 19:29:10.724726-05	\N	40000000	Gerudo Valley (CD Version) - The Legend of Zelda: Ocarina of Time	youtube	f
SOpkR3y8Jhs	2019-11-25 19:30:52.011565-05	2019-11-25 19:30:52.011565-05	\N	167000000	Main Theme (Beta Mix) - Papers, Please	youtube	f
EZ2usOpzTFA	2019-11-25 19:31:08.184869-05	2019-11-25 19:31:08.184869-05	\N	105000000	Where's the Exit? - Dance Dance Revolution Mario Mix	youtube	f
RxWHQqdtUO0	2019-11-25 20:17:26.335157-05	2019-11-25 20:17:26.335157-05	\N	57000000	Easton Kingdom (Unused Version) - Super Mario Land	youtube	f
N136JPG5HBo	2019-11-25 20:17:41.63576-05	2019-11-25 20:17:41.63576-05	\N	64000000	Grass Land (Unused Version) - Super Mario Bros. 3	youtube	f
hPJOnjnuA0M	2019-11-25 20:19:34.565316-05	2019-11-25 20:19:34.565316-05	\N	94000000	Michael Jackson vs Antonio Ríos (Mashup) Billie Jean / Nunca Me Faltes	youtube	f
w1EJXCl7hLQ	2019-11-25 20:21:20.194801-05	2019-11-25 20:21:20.194801-05	\N	226000000	Marcianito 100% real "8bit" EXTENDIDO NO FAKE 1 LINK MEGA MEDIAFIRE INCL MED 2017	youtube	f
uQoFBuMhSbM	2019-11-25 20:22:02.160769-05	2019-11-25 20:22:02.160769-05	\N	99000000	B-Balls, Please - Quad City DJs vs Lucas Pope	youtube	f
we7kkdrY9Vo	2019-11-25 20:25:42.914595-05	2019-11-25 20:25:42.914595-05	\N	260000000	The Beck Project - Marcianito Versión Metal 100% Real	youtube	f
ruQxoi3laao	2019-11-25 20:26:03.984332-05	2019-11-25 20:26:03.984332-05	\N	279000000	ANTONIO RIOS - NUNCA ME FALTES (Metal Cover)	youtube	f
exisFuLPgvc	2019-11-25 20:30:05.992233-05	2019-11-25 20:30:05.992233-05	\N	474000000	Slamformation High - Quad City DJs vs Sharon Apple	youtube	f
KQZlqNt63x8	2019-11-25 20:35:47.918341-05	2019-11-25 20:35:47.918341-05	\N	137000000	Gary Comes Home - SiIvaGunner: King for Another Day	youtube	f
RYJ4VE1uRx4	2019-11-25 21:21:09.717657-05	2019-11-25 21:21:09.717657-05	\N	251000000	Black Clover - Opening 8 Full『sky & blue』by GIRLFRIEND	youtube	f
szj59j0hz_4	2019-11-25 21:21:53.174588-05	2019-11-25 21:21:53.174588-05	\N	227000000	Galantis - Runaway (U & I) [Premiere]	youtube	f
0MEi4Qfzs1E	2019-11-25 21:22:07.093136-05	2019-11-25 21:22:07.093136-05	\N	209000000	DROELOE - Kintsugi	youtube	f
hLEoictM8p4	2019-11-25 21:23:41.672883-05	2019-11-25 21:23:41.672883-05	\N	197000000	Barns Courtney - Fire	youtube	f
90VwPOLVYkw	2019-11-25 21:24:05.464808-05	2019-11-25 21:24:05.464808-05	\N	251000000	Fox Stevenson - Comeback (Original Mix) [Lyrics in description]	youtube	f
TG5X4kOjEX8	2019-11-25 21:24:31.953792-05	2019-11-25 21:24:31.953792-05	\N	211000000	The Killers - For Reasons Unknown (Official Music Video)	youtube	f
LzqQtXPzLVU	2019-11-25 21:25:09.581346-05	2019-11-25 21:25:09.581346-05	\N	265000000	Black Clover Opening 2 Full『PAiNT it BLACK』by BiSH | Lyrics	youtube	f
2Ac9IpjukdQ	2019-11-25 21:25:23.45121-05	2019-11-25 21:25:23.45121-05	\N	246000000	Black Clover Opening 3 Full『Black Rover』by Vickeblanka	youtube	f
XgnQpxhCPfA	2019-11-25 21:25:41.175283-05	2019-11-25 21:25:41.175283-05	\N	374000000	Dream Theater - The Dance Of Eternity	youtube	f
myzOBN7wNIE	2019-11-25 21:26:32.320665-05	2019-11-25 21:26:32.320665-05	\N	168000000	Mattias IA Eklundh - The Road Less Traveled	youtube	f
-IHP9Acxa54	2019-11-25 21:34:40.064137-05	2019-11-25 21:34:40.064137-05	\N	257000000	Wonderful Christmastime (Full Length Version / Remastered 2011)	youtube	f
spN2_Tuw9hE	2019-11-26 00:13:27.996844-05	2019-11-26 00:13:27.996844-05	\N	300000000	Mariya Takeuchi 竹内まりや - Shiawase no Monosashi (VANTAGE// Edit)	youtube	f
Hq4Wiknb_IU	2019-11-26 02:16:50.944336-05	2019-11-26 02:16:50.944336-05	\N	287000000	Lil' Darlin' (a.k.a. Don't Dream Of Anybody But Me) by the Uptown Vocal jazz Quartet	youtube	f
YrGPeoUYHvw	2019-11-26 12:39:31.173879-05	2019-11-26 12:39:31.173879-05	\N	227000000	Megalo No. 5	youtube	f
dcwOVtHdI4A	2019-11-26 18:05:55.096262-05	2019-11-26 18:05:55.096262-05	\N	270000000	Step Into Christmas (Remastered)	youtube	f
2BnGtB6idak	2019-11-26 18:54:22.750422-05	2019-11-26 18:54:22.750422-05	\N	256000000	Theme of HOBaRT - SiIvaGunner: King for Another Day	youtube	f
cXLMYbk6wrE	2019-11-26 19:03:32.045764-05	2019-11-26 19:03:32.045764-05	\N	151000000	Launch Base '93 - SiIvaGunner: King for Another Day	youtube	f
8JzED4-CVmM	2019-11-26 19:04:41.836567-05	2019-11-26 19:04:41.836567-05	\N	292000000	Music Sounds Better With You (Power Mix) - SiIvaGunner: King for Another Day	youtube	f
OkNptl5szfU	2019-11-26 21:03:39.777896-05	2019-11-26 21:03:39.777896-05	\N	43000000	invader sans	youtube	f
D604HtudFMM	2019-11-26 22:55:22.977627-05	2019-11-26 22:55:22.977627-05	\N	237000000	「Nightcore」→ Oh Raven (Sing Me A Happy Song) - (Unlike Pluto)	youtube	f
5AzdeTNAW1Y	2019-11-26 22:57:03.84134-05	2019-11-26 22:57:03.84134-05	\N	165000000	「Nightcore」→ If We Have Each Other - (Lyrics)	youtube	f
kHHIDlRFVM0	2019-11-26 22:59:37.147426-05	2019-11-26 22:59:37.147426-05	\N	162000000	「Nightcore」→ Boy In The Bubble	youtube	f
bqdD5F7qh2Q	2019-11-26 23:16:03.464589-05	2019-11-26 23:16:03.464589-05	\N	191000000	「Nightcore」→ Axis Of Your Love 「Lyrics」	youtube	f
jaJ7iVnpr6M	2019-11-26 23:21:13.646879-05	2019-11-26 23:21:13.646879-05	\N	187000000	Nightcore - Live To Dance	youtube	f
_ZbBQg0coqU	2019-11-26 23:21:38.771512-05	2019-11-26 23:21:38.771512-05	\N	250000000	Nightcore - Nostalgic [S3RL feat Harri Rush] ▹Lyrics◃	youtube	f
Ki1lI4zlbdY	2019-11-26 23:21:53.670416-05	2019-11-26 23:21:53.670416-05	\N	248000000	Antonio Rios - Nunca me Faltes *EARRAPE* (Marciano 100% real no fake)	youtube	f
-qgpewMCVjs	2019-11-27 12:17:40.179031-05	2019-11-27 12:17:40.179031-05	\N	223000000	Cheap Trick - I Want You to Want Me (from Budokan!) [Official Video]	youtube	f
lwU2ficlHrM	2019-11-27 13:01:00.877528-05	2019-11-27 13:01:00.877528-05	\N	182000000	Daft Buster - SiIvaGunner: King for Another Day	youtube	f
nfLFgO_-xTo	2019-11-27 13:02:54.717737-05	2019-11-27 13:02:54.717737-05	\N	351000000	World Map - SiIvaGunner: King for Another Day	youtube	f
0NLugXQG0Fo	2019-11-27 13:03:30.125229-05	2019-11-27 13:03:30.125229-05	\N	172000000	The Whims of Plastic Love - SiIvaGunner: King for Another Day	youtube	f
JprsKeAStcw	2019-11-27 14:18:35.427359-05	2019-11-27 14:18:35.427359-05	\N	222000000	tofubeats - CAND¥¥¥LAND feat. LIZ (Pa's Lam System Remix)	youtube	f
Lq3u7P6QQxk	2019-11-27 14:45:09.460187-05	2019-11-27 14:45:09.460187-05	\N	334000000	「 終わりのセヲフ」Owari No Seraph OP - x.U. (ETIA. Hardcore Bootleg Remix)	youtube	f
qOU2nx1-7sA	2019-11-28 16:07:48.566965-05	2019-11-28 16:07:48.566965-05	\N	199000000	G Dragon (that XX uncensored) Lyrics eng + rom	youtube	f
vX8i21_6Isc	2019-11-28 16:13:19.462482-05	2019-11-28 16:13:19.462482-05	\N	340000000	Nandemonaiya - RADWIMPS (Kimi no na wa./Movie Version) 【English Translation - Romaji Lyrics】	youtube	f
PDSkFeMVNFs	2019-11-28 16:18:52.331331-05	2019-11-28 16:18:52.331331-05	\N	292000000	前前前世 (movie ver.) RADWIMPS MV	youtube	f
XezEKGO7Tys	2019-11-29 16:53:29.114505-05	2019-11-29 16:53:29.114505-05	\N	406000000	BASQUIAT	youtube	f
Q385MQrfuxI	2019-11-29 18:40:11.280295-05	2019-11-29 18:40:11.280295-05	\N	166000000	XXXTentacion - Moonlight (Lyrics) 🎵	youtube	f
uQcQsIL5UNU	2019-11-29 18:41:44.792489-05	2019-11-29 18:41:44.792489-05	\N	164000000	Arizona Zervas - ROXANNE (Prod. 94 Skrt)	youtube	f
pInrJ72eeUU	2019-11-29 18:52:58.416356-05	2019-11-29 18:52:58.416356-05	\N	316000000	Welcome To The Black Parade - My Chemical Romance Lyrics	youtube	f
Rynp7j8cTTM	2019-11-29 19:04:59.804687-05	2019-11-29 19:04:59.804687-05	\N	161000000	bülow - You & Jennifer (Lyrics)	youtube	f
bMM3z3o6BAs	2019-11-29 19:05:44.065281-05	2019-11-29 19:05:44.065281-05	\N	299000000	SAFETY SCHOOL (Harvard Diss Track)	youtube	f
lmhHyPo0qME	2019-11-29 19:45:08.402548-05	2019-11-29 19:45:08.402548-05	\N	140000000	Ur Mom Gay	youtube	f
pgN-vvVVxMA	2019-11-29 20:01:56.282973-05	2019-11-29 20:01:56.282973-05	\N	167000000	XXXTENTACION - SAD!	youtube	f
yv_lcgLFJmc	2019-11-29 20:56:14.220274-05	2019-11-29 20:56:14.220274-05	\N	139000000	VVVVVV Soundtrack 08/16 "Predestined Fate"	youtube	f
eT3BFzSD6YY	2019-11-29 20:59:45.536764-05	2019-11-29 20:59:45.536764-05	\N	202000000	All Star but they don't stop coming pitch corrected	youtube	f
3yQFebRcznA	2019-11-29 21:02:46.973092-05	2019-11-29 21:02:46.973092-05	\N	209000000	Neil Cicierega - Wndrwll	youtube	f
Uj8MsbgpjaQ	2019-11-29 22:35:35.383898-05	2019-11-29 22:35:35.383898-05	\N	223000000	VVVVVV Soundtrack 10/16 "Potential For Anything"	youtube	f
mBcDoZnN8ac	2019-11-29 23:52:22.237516-05	2019-11-29 23:52:22.237516-05	\N	266000000	The Protomen - Act II: The Hounds	youtube	f
jirfEgTFM-M	2019-11-29 23:52:47.233898-05	2019-11-29 23:52:47.233898-05	\N	218000000	Little People - Start Shootin'	youtube	f
6KMN61Zsd58	2019-11-30 00:38:31.358809-05	2019-11-30 00:38:31.358809-05	\N	215000000	OOH-AHH하게 Like OOH-AHH	youtube	f
bZe5J8SVCYQ	2019-11-30 00:59:45.184525-05	2019-11-30 00:59:45.184525-05	\N	100000000	The Missile Knows Where It Is...	youtube	f
CPhXKak_bHw	2019-11-30 01:11:02.794745-05	2019-11-30 01:11:02.794745-05	\N	209000000	Neil Cicierega - Wow Wow	youtube	f
G_SjnHwxWMU	2019-11-30 01:37:47.977036-05	2019-11-30 01:37:47.977036-05	\N	206000000	Noah Cyrus - Again ft. XXXTENTACION (Official Video)	youtube	f
r78xfXZb_WU	2019-11-30 02:00:32.575172-05	2019-11-30 02:00:32.575172-05	\N	230000000	Electric Feel	youtube	f
tv7yHglIDsc	2019-11-30 02:01:28.531066-05	2019-11-30 02:01:28.531066-05	\N	216000000	Still into You	youtube	f
V846b5ETp-c	2019-11-30 02:02:05.818808-05	2019-11-30 02:02:05.818808-05	\N	208000000	All Day Long	youtube	f
qrO4YZeyl0I	2019-11-30 02:02:24.964066-05	2019-11-30 02:02:24.964066-05	\N	308000000	Lady Gaga - Bad Romance (Official Music Video)	youtube	f
AUq2xNuVU0U	2019-11-30 03:40:44.568294-05	2019-11-30 03:40:44.568294-05	\N	218000000	Let the Bodies Hit the YMCA	youtube	f
zUx_FYyOBQ8	2019-11-30 14:17:09.116967-05	2019-11-30 14:17:09.116967-05	\N	94000000	Marcianito y Thanos 100% real bailando cumbia.wmv - SiIvaGunner: King for Another Day	youtube	f
NjBmrHPONt4	2019-11-30 15:12:18.959348-05	2019-11-30 15:12:18.959348-05	\N	187000000	Gangsta Rap - 100% Nigga	youtube	f
j61j0sHOBWI	2019-11-30 15:33:00.566889-05	2019-11-30 15:33:00.566889-05	\N	150000000	My Salsa - SiIvaGunner: King for Another Day	youtube	f
M92msWcbzBg	2019-11-30 15:50:46.074646-05	2019-11-30 15:50:46.074646-05	\N	94000000	Give Me Your Thing - SiIvaGunner: King for Another Day	youtube	f
ahvDGo0vzsA	2019-11-30 16:23:37.900415-05	2019-11-30 16:23:37.900415-05	\N	100000000	Childish gambino bonfire but its really racist *REUPLOAD*	youtube	f
Mqvc00qu-3Y	2019-11-30 16:40:48.167312-05	2019-11-30 16:40:48.167312-05	\N	127000000	what can i say except the n word	youtube	f
_V3pkENp6ho	2019-11-30 16:52:13.06364-05	2019-11-30 16:52:13.06364-05	\N	407000000	If METAL Sounded HAPPY!	youtube	f
xhy4PexsuNQ	2019-11-30 17:17:02.622677-05	2019-11-30 17:17:02.622677-05	\N	119000000	Mario CBT: The Full Experience (Fully Extended)	youtube	f
VTKmuXHXi4A	2019-11-30 17:19:45.898991-05	2019-11-30 17:19:45.898991-05	\N	29000000	Cock and ball torture Wikipedia but Google translated a lot	youtube	f
EQhy2lJkmZA	2019-11-30 17:19:55.634623-05	2019-11-30 17:19:55.634623-05	\N	7000000	So, No cock and ball torture?	youtube	f
iHtCMyHtne8	2019-11-30 17:20:06.090395-05	2019-11-30 17:20:06.090395-05	\N	7000000	"Hey Peter? No Cock & Ball Torture? I'm Out"	youtube	f
bMKkM6l24Oo	2019-11-30 17:20:16.26914-05	2019-11-30 17:20:16.26914-05	\N	7000000	Spongebob cock and ball torture	youtube	f
S1p4ZrcIl1M	2019-11-30 17:20:26.288431-05	2019-11-30 17:20:26.288431-05	\N	11000000	there will be no cock and ball torture in the mystery machine	youtube	f
F1oLNBAfKaE	2019-11-30 17:20:38.47552-05	2019-11-30 17:20:38.47552-05	\N	11000000	Kuzco's Cock and Ball Torture	youtube	f
2tN1OI0e280	2019-11-30 21:24:39.56709-05	2019-11-30 21:24:39.56709-05	\N	108000000	i play “ain’t no sunshine” but the intro is a bit different	youtube	f
jp-CVYGEsjg	2019-11-30 23:23:30.684892-05	2019-11-30 23:23:30.684892-05	\N	196000000	Panic! At The Disco - Into the Unknown (From "Frozen 2")	youtube	f
gmUW2pVAopc	2019-12-01 12:05:53.312219-05	2019-12-01 12:05:53.312219-05	\N	147000000	Jackson 5 -Santa Claus Is Comin' To Town	youtube	f
Y6rDA2Czz0E	2019-12-01 12:06:50.315299-05	2019-12-01 12:06:50.315299-05	\N	182000000	The Ronettes - Sleigh Ride (Audio)	youtube	f
qJ_MGWio-vc	2019-12-01 12:26:59.752782-05	2019-12-01 12:26:59.752782-05	\N	254000000	[Official Video] Little Drummer Boy - Pentatonix	youtube	f
jt3oAyK_IG8	2019-12-01 12:29:45.344195-05	2019-12-01 12:29:45.344195-05	\N	140000000	[Official Video] Dance of the Sugar Plum Fairy - Pentatonix	youtube	f
P8mNfNQOm0A	2019-12-01 12:53:56.332711-05	2019-12-01 12:53:56.332711-05	\N	483000000	Justin Timberlake - Pusher Love Girl	youtube	f
erep1OCaDOk	2019-12-01 13:30:22.975362-05	2019-12-01 13:30:22.975362-05	\N	263000000	[Full Flavor] Backstreet Boys - Everybody (Apashe x Oski x Lennon Bootleg)	youtube	f
cxtLytp95gw	2019-12-01 13:34:58.186374-05	2019-12-01 13:34:58.186374-05	\N	181000000	The 12 Days Of Christmas - Straight No Chaser	youtube	f
p1UzF1Q8-ww	2019-11-27 18:12:50.304074-05	2019-11-27 18:12:50.304074-05	\N	80000000	Shrek's Bizarre Adventure: Great Stars	youtube	f
FAUnDDTz30k	2019-11-27 21:23:21.96343-05	2019-11-27 21:23:21.96343-05	\N	38000000	I'm at soup - code ment	youtube	f
o6wtDPVkKqI	2019-11-28 14:12:30.952143-05	2019-11-28 14:12:30.952143-05	\N	244000000	「残酷な天使のテーゼ」MUSIC VIDEO（HDver.）/Zankoku na Tenshi no Te-ze“The Cruel Angel's Thesis”	youtube	f
P-uhgIzHYYo	2019-11-28 14:50:32.693522-05	2019-11-28 14:50:32.693522-05	\N	344000000	Demon Slayer: Kimetsu no Yaiba EP 19 Ending Full『Kamado Tanjiro no Uta』	youtube	f
YHP9IOkhRis	2019-11-28 15:14:01.815553-05	2019-11-28 15:14:01.815553-05	\N	236000000	Demon Slayer: Kimetsu no Yaiba Opening Full『LiSA - Gurenge』【ENG Sub】	youtube	f
dlFA0Zq1k2A	2019-11-28 16:36:48.037728-05	2019-11-28 16:36:48.037728-05	\N	265000000	Kana-Boon - Silhouette (Official Music Video)	youtube	f
LE_Lrs8LomE	2019-11-29 18:30:46.78726-05	2019-11-29 18:30:46.78726-05	\N	182000000	Super Meat Boy: Dr  Fetus' Castle (Indie Game Music HD)	youtube	f
MOpcEayO1Yw	2019-11-29 19:30:26.195162-05	2019-11-29 19:30:26.195162-05	\N	193000000	Migos - Stir Fry (lyrics)	youtube	f
GHmIjDx-m3k	2019-11-29 20:02:30.507838-05	2019-11-29 20:02:30.507838-05	\N	167000000	Rich Brian - 100 Degrees (Lyric Video)	youtube	f
hWOB5QYcmh0	2019-11-29 22:16:04.080153-05	2019-11-29 22:16:04.080153-05	\N	234000000	HONNE - Day 1 ◑	youtube	f
5wteaHAa8Vk	2019-11-29 23:00:54.231478-05	2019-11-29 23:00:54.231478-05	\N	271000000	20,000	youtube	f
bX7V6FAoTLc	2019-11-29 23:02:39.608987-05	2019-11-29 23:02:39.608987-05	\N	203000000	Edwin Starr - War (What Is It Good For?)	youtube	f
5l6Fz2bgos4	2019-11-29 23:12:56.358414-05	2019-11-29 23:12:56.358414-05	\N	272000000	델리스파이스  - 챠우챠우	youtube	f
UeCTNhP-E_c	2019-11-29 23:13:11.562049-05	2019-11-29 23:13:11.562049-05	\N	194000000	혁오 (Hyukoh) - 위잉위잉	youtube	f
UbQgXeY_zi4	2019-11-29 23:26:27.932572-05	2019-11-29 23:26:27.932572-05	\N	170000000	Caravan Palace - Lone Digger	youtube	f
q2y_2maXsqU	2019-11-29 23:59:53.506993-05	2019-11-29 23:59:53.506993-05	\N	191000000	짐살라빔 Zimzalabim	youtube	f
KLVzYtTeNS8	2019-11-30 00:13:30.343193-05	2019-11-30 00:13:30.343193-05	\N	48000000	One Direction but every line is You're Insecure	youtube	f
JSw2CF4EoKA	2019-11-30 00:18:37.587454-05	2019-11-30 00:18:37.587454-05	\N	197000000	SIGNAL	youtube	f
fRyhqobl0sk	2019-11-30 00:31:18.806898-05	2019-11-30 00:31:18.806898-05	\N	241000000	All I Want for Christmas Is You	youtube	f
vSoZqSCStfA	2019-11-30 00:51:59.73164-05	2019-11-30 00:51:59.73164-05	\N	288000000	The Toxic Avenger - Spaced	youtube	f
3cXjcKTRWcg	2019-11-30 01:06:31.336703-05	2019-11-30 01:06:31.336703-05	\N	212000000	Neil Cicierega - The End	youtube	f
Q5oXyM-n4ZQ	2019-11-30 01:38:36.724667-05	2019-11-30 01:38:36.724667-05	\N	174000000	B Young - Jumanji (Lyrics)	youtube	f
McEoTIqoRKk	2019-11-30 01:59:34.934565-05	2019-11-30 01:59:34.934565-05	\N	222000000	Calvin Harris - Summer (Audio)	youtube	f
8UbaEIhg17M	2019-11-30 03:35:12.923151-05	2019-11-30 03:35:12.923151-05	\N	226000000	Chance The Rapper - Hot Shower (Lyrics) Ft. DaBaby, MadeinTYO	youtube	f
04X5x4LDEDc	2019-11-30 14:51:12.982643-05	2019-11-30 14:51:12.982643-05	\N	123000000	The Uno Argument #ReUpload	youtube	f
PRnSfrXGY38	2019-11-30 14:51:48.359247-05	2019-11-30 14:51:48.359247-05	\N	52000000	YOU HAVE UNO! [Original]	youtube	f
weqK155M_4o	2019-11-30 15:01:28.579549-05	2019-11-30 15:01:28.579549-05	\N	178000000	You're Gonna Go Far, Kid	youtube	f
-ZYlXEUo-Lo	2019-11-30 15:13:18.612291-05	2019-11-30 15:13:18.612291-05	\N	378000000	Full Metal Jacket - The Opening Speech	youtube	f
ZMoF5iufj2I	2019-11-30 15:14:37.312558-05	2019-11-30 15:14:37.312558-05	\N	144000000	Spongebob Chase (Trap Remix) | [Musicality Remix] | Grass Skirt Chase	youtube	f
2M5HPOwnvwU	2019-11-30 16:33:41.208236-05	2019-11-30 16:33:41.208236-05	\N	67000000	Please Be Quiet (Sing-along) (BASS BOOSTED)	youtube	f
lPMEm0T6cRc	2019-11-30 17:04:24.150847-05	2019-11-30 17:04:24.150847-05	\N	118000000	Gucci Gang but it's in alphabetical order	youtube	f
J0a2Prc_MQo	2019-11-30 17:12:50.013513-05	2019-11-30 17:12:50.013513-05	\N	617000000	ULTIMATE HEADPHONE TEST !!! (Wear Headphone)	youtube	f
kcY7lUoV4uw	2019-11-30 17:20:49.039133-05	2019-11-30 17:20:49.039133-05	\N	14000000	Cock and ball torture	youtube	f
fhrQPxUdjl0	2019-11-30 17:21:40.759319-05	2019-11-30 17:21:40.759319-05	\N	422000000	yoda teaches YOU CBT	youtube	f
_tMXQvp3cBY	2019-11-30 22:06:03.815744-05	2019-11-30 22:06:03.815744-05	\N	230000000	My Body ft. Ozruk (MrVoletron remix)	youtube	f
sAKoLFfhoCg	2019-12-01 11:54:19.447969-05	2019-12-01 11:54:19.447969-05	\N	146000000	Sh-Boom	youtube	f
4vNcGlM8O3I	2019-12-01 12:21:58.69219-05	2019-12-01 12:21:58.69219-05	\N	224000000	Carol of the Bells - Trans-Siberian Orchestra	youtube	f
4Hd8jLgpaZQ	2019-12-01 12:22:47.791198-05	2019-12-01 12:22:47.791198-05	\N	205000000	Christmas / Sarajevo 12/24 (Instrumental)	youtube	f
ifCWN5pJGIE	2019-12-01 12:35:09.406539-05	2019-12-01 12:35:09.406539-05	\N	244000000	[Official Video] Mary, Did You Know? - Pentatonix	youtube	f
-C_rvt0SwLE	2019-12-01 13:25:12.472063-05	2019-12-01 13:25:12.472063-05	\N	230000000	Imagine Dragons - Next To Me (Audio)	youtube	f
NRhQjeLEoB8	2019-12-01 13:25:52.854968-05	2019-12-01 13:25:52.854968-05	\N	240000000	Slip Slide	youtube	f
E7sxc2aYTmo	2019-12-01 13:49:23.778464-05	2019-12-01 13:49:23.778464-05	\N	209000000	Taeyeon (태연) - A Poem Called You 그대라는 시 (Hotel Del Luna OST Part 3) Lyrics (Han/Rom/Eng/가사)	youtube	f
5fW6_8pw1ks	2019-12-01 20:02:41.640351-05	2019-12-01 20:02:41.640351-05	\N	91000000	Shrek's Bizarre Adventure - All Stream	youtube	f
jHefeA-hyMA	2019-12-01 14:11:26.518187-05	2019-12-01 14:11:26.518187-05	\N	189000000	Silver Bells - Bing Crosby	youtube	f
YNXWZ0P4Pas	2019-12-01 14:16:03.706953-05	2019-12-01 14:16:03.706953-05	\N	209000000	[MV] TAEYEON (태연) - 그대라는 시 (All About You) (호텔 델루나 OST Part. 3)	youtube	f
xpFBk05QGFI	2019-12-01 14:38:14.619583-05	2019-12-01 14:38:14.619583-05	\N	221000000	Chung Ha (청하) - At The End 그 끝에 그대 (Hotel Del Luna OST Part 6) Lyrics (Han/Rom/Eng/가사)	youtube	f
oHT_XE3NONo	2019-12-01 14:38:34.360752-05	2019-12-01 14:38:34.360752-05	\N	266000000	Ben (벤) - Can You Hear Me 내 목소리 들리니 (Hotel Del Luna OST Part 9) Lyrics (Han/Rom/Eng/가사)	youtube	f
XtAhISkoJZc	2019-12-01 15:53:09.91988-05	2019-12-01 15:53:09.91988-05	\N	212000000	chop suey but everything is a table	youtube	f
e7C5Br-NGOc	2019-12-01 16:27:07.888739-05	2019-12-01 16:27:07.888739-05	\N	193000000	Bad Teeth - 5SOS & Billie Eilish (Mashup)	youtube	f
pw3PhhSfcQg	2019-12-01 21:08:50.563171-05	2019-12-01 21:08:50.563171-05	\N	174000000	Michael Bublé - All I Want For Christmas Is You [Official HD]	youtube	f
PxctBMjtees	2019-12-02 14:14:22.891321-05	2019-12-02 14:14:22.891321-05	\N	258000000	[Undertale Au-World Wide Breakdown]Realidad/Reality	youtube	f
FdU8oqCbvzo	2019-12-02 14:27:35.077244-05	2019-12-02 14:27:35.077244-05	\N	439000000	Unlimited Corners	youtube	f
Bjb5moi1Ktg	2019-12-02 14:30:08.210566-05	2019-12-02 14:30:08.210566-05	\N	49000000	Sponge Guy (Bad Guy x Grass Skirt Chase Meme)	youtube	f
IK1ak_p4z-M	2019-12-02 14:31:48.828498-05	2019-12-02 14:31:48.828498-05	\N	370000000	Eminem Rapgod with Grass Skirt Chase	youtube	f
wjXBqelv4GM	2019-12-02 14:32:27.438037-05	2019-12-02 14:32:27.438037-05	\N	17000000	Eminem Rap God but with Spongebob Music	youtube	f
-8lDYrvTILc	2019-12-02 15:20:34.20707-05	2019-12-02 15:20:34.20707-05	\N	5000000	Law & Order: Sound Effect	youtube	f
hAmb7Td-lEw	2019-12-02 15:20:51.427534-05	2019-12-02 15:20:51.427534-05	\N	161000000	Tainted Love but the clapping is replaced with the Law & Order sound effect	youtube	f
q07RanslaGM	2019-12-02 16:10:12.248459-05	2019-12-02 16:10:12.248459-05	\N	204000000	Ed Sheeran - South of the Border (feat. Camila Cabello & Cardi B) [Official Lyric Video]	youtube	f
-rsEs4HWXeY	2019-12-02 16:23:46.815989-05	2019-12-02 16:23:46.815989-05	\N	59000000	Big Bill Hell's Cars (Original)	youtube	f
wZj7akBVClE	2019-12-02 19:35:43.661042-05	2019-12-02 19:35:43.661042-05	\N	113000000	lonemoon + NAW NAW [prod. shadient]	youtube	f
EL026a92i1o	2019-12-02 19:36:50.662113-05	2019-12-02 19:36:50.662113-05	\N	108000000	Interior Stegosaurus Brontosaurus	youtube	f
Tw8mpgccugc	2019-12-02 19:46:22.391809-05	2019-12-02 19:46:22.391809-05	\N	223000000	Flo Rida ft. Robin Thicke & Verdine White - I Don’t Like It, I Love It [Official Video]	youtube	f
BdKt_x_jiT0	2019-12-02 19:46:34.36869-05	2019-12-02 19:46:34.36869-05	\N	154000000	lonemoon "BLUEPINKWHITE (prod. vendr)"	youtube	f
Dnrd4MkY0Go	2019-12-02 19:49:48.802055-05	2019-12-02 19:49:48.802055-05	\N	230000000	16BIT Magic	youtube	f
zfp408AqBLE	2019-12-02 19:50:53.686663-05	2019-12-02 19:50:53.686663-05	\N	238000000	Uptown Surprise | Mark Ronson x Persona 5	youtube	f
R6W42wWF3fg	2019-12-02 19:53:21.445414-05	2019-12-02 19:53:21.445414-05	\N	176000000	HAMMER.	youtube	f
CveUiz_hgp0	2019-12-02 19:55:13.849451-05	2019-12-02 19:55:13.849451-05	\N	155000000	m.E.G.a city	youtube	f
nhTAJYpIkHU	2019-12-02 19:56:27.037656-05	2019-12-02 19:56:27.037656-05	\N	170000000	Let Me Clear My Wallet	youtube	f
GcfzQVYNHnU	2019-12-02 20:00:33.688811-05	2019-12-02 20:00:33.688811-05	\N	276000000	Uptown Bowser	youtube	f
65IAdRvdkdw	2019-12-02 20:05:15.824926-05	2019-12-02 20:05:15.824926-05	\N	214000000	Big KRIT Kingdom - Steam Bank	youtube	f
6nhjZhyzW2g	2019-12-02 20:11:43.088189-05	2019-12-02 20:11:43.088189-05	\N	194000000	Red's Humble	youtube	f
gx_mg-1WhWw	2019-12-02 20:17:22.353616-05	2019-12-02 20:17:22.353616-05	\N	207000000	박재범 Jay Park - 몸매 (MOMMAE) Feat.Ugly Duck Official Music Video	youtube	f
1b5K-paBIgY	2019-12-02 20:26:46.396444-05	2019-12-02 20:26:46.396444-05	\N	268000000	Still D R E	youtube	f
XB7TsvBQUMQ	2019-12-02 21:01:43.97578-05	2019-12-02 21:01:43.97578-05	\N	370000000	FIGHTCLUB CHINATOWN - SiIvaGunner: King for Another Day	youtube	f
ZWQsa-I6fnE	2019-12-02 21:34:40.599062-05	2019-12-02 21:34:40.599062-05	\N	353000000	Bomber (ポストエルビス Edit) - SiIvaGunner: King for Another Day	youtube	f
vFgxeDHtijw	2019-12-02 22:27:05.172272-05	2019-12-02 22:27:05.172272-05	\N	60000000	Bill Nye the Science Guy: Stops the Rock! - SiIvaGunner: King for Another Day	youtube	f
HR-VxD7qZ1Y	2019-12-03 13:53:35.328753-05	2019-12-03 13:53:35.328753-05	\N	181000000	Humble - Kendrick Lamar - FUNK cover!	youtube	f
cZvfCYZUmLQ	2019-12-03 13:56:19.71446-05	2019-12-03 13:56:19.71446-05	\N	206000000	君はこころの友	youtube	f
6x_zyXg_fx4	2019-12-03 17:18:33.407815-05	2019-12-03 17:18:33.407815-05	\N	194000000	Ayo & Teo - Lit Right Now (PROD. BL$$D)	youtube	f
4TPjhJYIt1k	2019-12-03 18:31:45.268976-05	2019-12-03 18:31:45.268976-05	\N	193000000	Doin' it Right - SiIvaGunner: King for Another Day	youtube	f
dqX6d7fPmzY	2019-12-03 18:43:14.064878-05	2019-12-03 18:43:14.064878-05	\N	110000000	Minecraft con Gadget ft. Pitbull - SiIvaGunner: King for Another Day	youtube	f
hYKYka-PNt0	2019-12-03 20:28:07.72747-05	2019-12-03 20:28:07.72747-05	\N	252000000	Stevie Wonder - I Wish (the original version)	youtube	f
JFlBtX8DN3s	2019-12-03 20:34:29.747873-05	2019-12-03 20:34:29.747873-05	\N	209000000	Billie Eilish - bad guy (SpongeBob's Grass Skirt Chase mashup)	youtube	f
iHjqcPLfoJk	2019-12-03 21:26:08.461404-05	2019-12-03 21:26:08.461404-05	\N	84000000	Slider (Alpha Mix) - Super Mario 64	youtube	f
I6bUHGp7TUQ	2019-12-03 21:26:41.121936-05	2019-12-03 21:26:41.121936-05	\N	78000000	Slider (Barebones Mix) - Super Mario 64	youtube	f
tVsmQvetD2A	2019-12-03 21:27:27.519039-05	2019-12-03 21:27:27.519039-05	\N	81000000	Slider (Dog Mix) - Super Mario 64	youtube	f
QVolHJFxPXI	2019-12-03 21:28:03.453-05	2019-12-03 21:28:03.453-05	\N	4000000	Slider (Short Version) - Super Mario 64 DS	youtube	f
o6RJLdnoxLg	2019-12-03 21:28:13.343049-05	2019-12-03 21:28:13.343049-05	\N	81000000	Slider (Long Version) - Super Mario 64 DS	youtube	f
kzWkOkA4snY	2019-12-03 21:28:24.595399-05	2019-12-03 21:28:24.595399-05	\N	130000000	Slider (Number One Mix) - Super Mario 64	youtube	f
IcxKwQJZ_04	2019-12-03 21:49:33.538881-05	2019-12-03 21:49:33.538881-05	\N	222000000	Harry Belafonte - Jump In The Line	youtube	f
AmuKdoe8MvI	2019-12-03 21:50:11.1465-05	2019-12-03 21:50:11.1465-05	\N	216000000	Pitbull - Shake Senora (Official Audio) ft. T-Pain, Sean Paul	youtube	f
oxFoIvgAbbA	2019-12-03 21:51:55.910788-05	2019-12-03 21:51:55.910788-05	\N	163000000	Moonlight Sonata - Ludwig Van Beethoven (Ft. Pitbull)	youtube	f
osY3hWPv62A	2019-12-03 22:03:06.394464-05	2019-12-03 22:03:06.394464-05	\N	288000000	DK Rap but featuring Pitbull	youtube	f
1rmo3fKeveo	2019-12-03 22:09:19.833683-05	2019-12-03 22:09:19.833683-05	\N	233000000	Mongolian Throat Singing-Batzorig Vaanchig	youtube	f
Mtbsb3swbcU	2019-12-03 22:09:37.997601-05	2019-12-03 22:09:37.997601-05	\N	161000000	Canto Difonico Tuvano - Sygyt (Overtone singing - throat singing)	youtube	f
oRa_c9zfZh0	2019-12-03 22:10:47.468907-05	2019-12-03 22:10:47.468907-05	\N	319000000	SICKO BAMBA	youtube	f
RMSRqD8oc8I	2019-12-04 00:51:06.118882-05	2019-12-04 00:51:06.118882-05	\N	139000000	EXTREME BASS BOOSTED x Gucci Gucci Literature Club's Not Hot (Miraie Mashup)	youtube	f
zmEUpMF-HLE	2019-12-04 00:55:05.089312-05	2019-12-04 00:55:05.089312-05	\N	198000000	Kero Kero Bonito - Flamingo [mega earrape and bass boost]	youtube	f
P7dLp2Eb7cg	2019-12-04 01:26:22.522576-05	2019-12-04 01:26:22.522576-05	\N	344000000	Suwako's Theme - Native Faith	youtube	f
Em_ntdAGIRE	2019-12-04 01:43:56.845927-05	2019-12-04 01:43:56.845927-05	\N	241000000	C.R.E.E.P.E.R. - pluffaduff	youtube	f
wdda2rY1zDM	2019-12-04 01:49:42.520486-05	2019-12-04 01:49:42.520486-05	\N	223000000	濁雨 / 初音ミク	youtube	f
TcHvEFxk_78	2019-12-04 01:49:51.014697-05	2019-12-04 01:49:51.014697-05	\N	194000000	YY - ft.Hatsune Miku	youtube	f
PvzBWFGEz8M	2019-12-04 01:49:58.282977-05	2019-12-04 01:49:58.282977-05	\N	254000000	トーキョーゲットー - Eve MV	youtube	f
PzeOSXS171I	2019-12-04 02:14:19.827538-05	2019-12-04 02:14:19.827538-05	\N	255000000	少女ゼッキョウ。/ GUMI [初産][ver.S-VHS]	youtube	f
LqjOhFlLKxc	2019-12-04 02:14:58.14412-05	2019-12-04 02:14:58.14412-05	\N	275000000	Don't say "Lazy" (Yuc'e Remix)	youtube	f
Mi19Vu_JOuc	2019-12-04 13:39:42.692851-05	2019-12-04 13:39:42.692851-05	\N	77000000	Slider (Swedish Version) - Super Mario 64 DS	youtube	f
5kpCIxGjrCY	2019-12-04 13:40:23.821602-05	2019-12-04 13:40:23.821602-05	\N	225000000	Super Eminem 64	youtube	f
j8F1NwrHBIU	2019-12-05 23:52:02.435013-05	2019-12-05 23:52:02.435013-05	\N	319000000	[Electronica] - Draper - Pressure (feat. Laura Brehm) [Monstercat Release]	youtube	f
4R7vYXvos30	2019-12-05 23:52:25.266477-05	2019-12-05 23:52:25.266477-05	\N	190000000	Lush & Simon X Rico & Miella - We Are Lost (Radio Edit)	youtube	f
UoLq_wJKFXg	2019-12-05 23:57:11.116153-05	2019-12-05 23:57:11.116153-05	\N	188000000	This Will Be the Day (feat. Casey Lee Williams)	youtube	f
0-gPcpDgeI4	2019-12-06 00:10:44.257891-05	2019-12-06 00:10:44.257891-05	\N	46000000	Freddie Mercury Slips On Ice and Can't Get Up	youtube	f
2LOmFBBq4T0	2019-12-06 00:12:45.691818-05	2019-12-06 00:12:45.691818-05	\N	176000000	The Living Tombstone - Dog of Wisdom Remix BLUE feat. Joe Gran	youtube	f
8DNyLdCMi78	2019-12-06 01:00:26.861232-05	2019-12-06 01:00:26.861232-05	\N	240000000	Africa Halation (Mashup)	youtube	f
5-kQQ0KwYbQ	2019-12-06 16:12:35.940019-05	2019-12-06 16:12:35.940019-05	\N	182000000	Billie Eilish vs. Eminem - Bad Guy (Mashup)	youtube	f
A_jPguIFYfs	2019-12-06 16:23:01.328735-05	2019-12-06 16:23:01.328735-05	\N	188000000	"Seven Bad Guys Army" The White Stripes - Seven Nation Army/ Billie Eilish - Bad Guy (Mashup)	youtube	f
eA2bZ-aShdc	2019-12-06 21:08:21.811454-05	2019-12-06 21:08:21.811454-05	\N	20000000	Mafia City Theme But It's Pizza Time	youtube	f
EU3zMbG6EWA	2019-12-06 21:09:11.042483-05	2019-12-06 21:09:11.042483-05	\N	30000000	Star Invincibility - Mario Kart: Double Dash!!	youtube	f
zDNNGhsL9Oo	2019-12-06 22:56:40.19439-05	2019-12-06 22:56:40.19439-05	\N	282000000	Lil Dicky - Earth (Lyrics)	youtube	f
JWAaDM3g-vA	2019-12-06 23:04:43.346041-05	2019-12-06 23:04:43.346041-05	\N	208000000	MAMAMOO (마마무) - HIP (Color Coded Lyrics Eng/Rom/Han/가사)	youtube	f
4zqe4IzqAdo	2019-12-06 23:10:00.892181-05	2019-12-06 23:10:00.892181-05	\N	265000000	APES**T	youtube	f
T4pTMZuAux4	2019-12-07 13:34:18.96821-05	2019-12-07 13:34:18.96821-05	\N	210000000	Taylor Swift- Last Christmas (Lyrics)	youtube	f
xjLTDaCUYuQ	2019-12-07 13:48:25.652114-05	2019-12-07 13:48:25.652114-05	\N	187000000	Rudolph the Red-Nosed Reindeer	youtube	f
_RtSu3woTKM	2019-12-07 13:49:31.448757-05	2019-12-07 13:49:31.448757-05	\N	228000000	Colbie Caillat 'Christmas In The Sand' [Lyric Video]	youtube	f
hGNQY7R4nBE	2019-12-07 13:50:27.717002-05	2019-12-07 13:50:27.717002-05	\N	249000000	Believe (From the Polar Express) Lyrics	youtube	f
fTlt4gnZLRc	2019-12-07 13:54:02.819174-05	2019-12-07 13:54:02.819174-05	\N	289000000	11 Pas de Deux - The Nutcracker Suite	youtube	f
G-QAhsbQYmE	2019-12-07 13:54:25.787391-05	2019-12-07 13:54:25.787391-05	\N	132000000	13 Dance of the Sugar Plum Fairy - The Nutcracker Suite	youtube	f
eqY3FaZmh-Y	2019-12-07 15:18:15.680689-05	2019-12-07 15:18:15.680689-05	\N	629000000	Snarky Puppy feat. Jacob Collier & Big Ed Lee - "Don't You Know" (Family Dinner Volume Two)	youtube	f
bRqOjKWobSI	2019-12-07 15:45:35.348274-05	2019-12-07 15:45:35.348274-05	\N	266000000	The Real Group - Pass Me The Jazz - Södermalm Sessions (live)	youtube	f
QnEWs8D9zu8	2019-12-07 16:06:35.617543-05	2019-12-07 16:06:35.617543-05	\N	185000000	Weezer - Lost in the Woods (From "Frozen 2")	youtube	f
md7dK5-qvHc	2019-12-07 16:08:33.90113-05	2019-12-07 16:08:33.90113-05	\N	262000000	Idina Menzel, Evan Rachel Wood - Show Yourself (From "Frozen 2"/Lyric Video)	youtube	f
eFpc1ilq_Y0	2019-12-07 16:09:36.258857-05	2019-12-07 16:09:36.258857-05	\N	189000000	SpongeBob sings high hopes	youtube	f
7hKSuPC8NqM	2019-12-07 19:54:31.826049-05	2019-12-07 19:54:31.826049-05	\N	232000000	"Megalovania" with Snubby J (our biggest request)	youtube	f
PS9xd6bXQ5E	2019-12-07 21:42:08.340438-05	2019-12-07 21:42:08.340438-05	\N	161000000	RUDOLPH THE RED-NOSED REINDEER (Trap Remix)	youtube	f
hT_nvWreIhg	2019-12-07 22:57:26.036067-05	2019-12-07 22:57:26.036067-05	\N	283000000	OneRepublic - Counting Stars (Official Music Video)	youtube	f
vKrZiYmqqy8	2019-12-04 13:59:46.255154-05	2019-12-04 13:59:46.255154-05	\N	57000000	dame tu marcianito the alien	youtube	f
rF-hq_CHNH0	2019-12-04 17:33:51.26914-05	2019-12-04 17:33:51.26914-05	\N	242000000	Migos - Versace (Official Video)	youtube	f
xN-5UjtmYew	2019-12-04 18:44:54.929467-05	2019-12-04 18:44:54.929467-05	\N	288000000	【東方Vocal】THE EVENING STAR【SOUND HOLIC】Vo.花たん	youtube	f
6P26Sl7BEaY	2019-12-04 22:52:01.189107-05	2019-12-04 22:52:01.189107-05	\N	261000000	I.C.U. - SiIvaGunner: King for Another Day	youtube	f
lhjk5x54bsE	2019-12-04 22:52:06.517033-05	2019-12-04 22:52:06.517033-05	\N	224000000	The Turntable Turnabout (Mystery Skulls - Money)	youtube	f
GT9V89rbrWQ	2019-12-05 01:09:08.325149-05	2019-12-05 01:09:08.325149-05	\N	68000000	Beloved Tomboyish Girl (Beta Mix) - Touhou 6: the Embodiment of Scarlet Devil	youtube	f
856x2xIpoZM	2019-12-05 15:22:17.720273-05	2019-12-05 15:22:17.720273-05	\N	225000000	Bottoms Upalovania (Full Version) (Megalovania)	youtube	f
Yv6shy_9KVM	2019-12-05 18:21:14.509957-05	2019-12-05 18:21:14.509957-05	\N	252000000	打首獄門同好会 (Uchikubi Gokumon Doukoukai) - I don' t wanna get out of futon	youtube	f
04854XqcfCY	2019-12-05 19:55:43.321287-05	2019-12-05 19:55:43.321287-05	\N	190000000	Queen - We Are The Champions (Official Video)	youtube	f
yFnQu0kmCuY	2019-12-05 20:54:32.950959-05	2019-12-05 20:54:32.950959-05	\N	255000000	The Struts - One Night Only	youtube	f
BzE1mX4Px0I	2019-12-05 23:40:50.43694-05	2019-12-05 23:40:50.43694-05	\N	201000000	Selena Gomez & The Scene - Who Says	youtube	f
93ASUImTedo	2019-12-05 23:42:24.038078-05	2019-12-05 23:42:24.038078-05	\N	257000000	Disclosure - Latch feat. Sam Smith  (Official Video)	youtube	f
weQfKKcIXkA	2019-12-05 23:54:04.188883-05	2019-12-05 23:54:04.188883-05	\N	232000000	Ken Ashcorp - Absolute Territory (Remix)	youtube	f
zgEKLhvCCVA	2019-12-06 00:24:03.418369-05	2019-12-06 00:24:03.418369-05	\N	233000000	BURN IT DOWN (Official Lyric Video) - Linkin Park	youtube	f
kXYiU_JCYtU	2019-12-06 00:24:20.818463-05	2019-12-06 00:24:20.818463-05	\N	186000000	Numb (Official Video) - Linkin Park	youtube	f
eVTXPUF4Oz4	2019-12-06 00:25:01.557175-05	2019-12-06 00:25:01.557175-05	\N	218000000	In The End (Official Video) - Linkin Park	youtube	f
Eya3m3FGW7E	2019-12-06 00:27:07.861762-05	2019-12-06 00:27:07.861762-05	\N	203000000	Taio Cruz- Dynamite (Audio)	youtube	f
ZFmv55_DsAE	2019-12-06 00:47:55.166464-05	2019-12-06 00:47:55.166464-05	\N	274000000	Earth, Wind & Snow Halation	youtube	f
tmWQiLixGOI	2019-12-06 00:50:02.450147-05	2019-12-06 00:50:02.450147-05	\N	257000000	Love Live! - Snow halation 【Thai/English Subtitles】	youtube	f
4FmzR0-J62Q	2019-12-06 00:52:13.677425-05	2019-12-06 00:52:13.677425-05	\N	318000000	Snow Halation but it's Emo	youtube	f
fC_q9KPczAg	2019-12-06 03:03:47.068852-05	2019-12-06 03:03:47.068852-05	\N	175000000	Barenaked Ladies - One Week (Video)	youtube	f
pvuN_WvF1to	2019-12-06 11:42:53.322747-05	2019-12-06 11:42:53.322747-05	\N	431000000	Lil Dicky - Earth (Official Music Video)	youtube	f
IFhVkE8ftmI	2019-12-06 15:40:22.610222-05	2019-12-06 15:40:22.610222-05	\N	116000000	Cumbiote Bien Gaton - SiIvaGunner: King for Another Day	youtube	f
LmnmZ4tJpuw	2019-12-06 15:54:41.007682-05	2019-12-06 15:54:41.007682-05	\N	78000000	Slider (Athletic Mix) - Super Mario 64	youtube	f
2kaaY9XXfHc	2019-12-06 15:55:36.999937-05	2019-12-06 15:55:36.999937-05	\N	125000000	Slider (Super Mario 64) (Classic) - Mario & Sonic at the Rio 2016 Olympic Games	youtube	f
UzRVEQDxiOo	2019-12-07 02:48:56.670313-05	2019-12-07 02:48:56.670313-05	\N	165000000	俺ら東京さ行ぐだ	youtube	f
4mVjg_71bcQ	2019-12-07 02:50:20.551255-05	2019-12-07 02:50:20.551255-05	\N	246000000	【IKZO】 白金ディスコも無ェFuli ver 【偽物語】	youtube	f
JoKKsQCAvd0	2019-12-07 02:51:52.407462-05	2019-12-07 02:51:52.407462-05	\N	300000000	Ikuzo Yoshi -  俺ら東京さ行ぐだ We gonna go to Tokyo - Super Euro Remix	youtube	f
47ALJ9JKwWA	2019-12-07 02:52:01.282235-05	2019-12-07 02:52:01.282235-05	\N	265000000	［吉幾三］Night of IKZO［EURO BEAT］	youtube	f
RotMvuCrVhU	2019-12-07 02:53:41.76339-05	2019-12-07 02:53:41.76339-05	\N	269000000	UPTOWN FUNK feat.  IKUZO　[吉幾三 x Mark Ronson]	youtube	f
l3l83C-we-k	2019-12-07 13:25:39.958844-05	2019-12-07 13:25:39.958844-05	\N	232000000	Michael Bublé - Have Yourself A Merry Little Christmas [Official HD]	youtube	f
J0uGnm3dGvc	2019-12-07 13:27:20.398906-05	2019-12-07 13:27:20.398906-05	\N	133000000	Original Carol of the bells song 🎄	youtube	f
mN7LW0Y00kE	2019-12-07 13:29:48.873562-05	2019-12-07 13:29:48.873562-05	\N	127000000	Dean Martin - Let it Snow!	youtube	f
w9QLn7gM-hY	2019-12-07 13:30:20.529427-05	2019-12-07 13:30:20.529427-05	\N	180000000	Bing Crosby - White Christmas (1942) Original Version	youtube	f
Xww_oaafCBA	2019-12-07 13:32:09.280086-05	2019-12-07 13:32:09.280086-05	\N	259000000	Andrea Bocelli - O Tannenbaum	youtube	f
QxHkLdQy5f0	2019-12-07 14:34:25.43131-05	2019-12-07 14:34:25.43131-05	\N	450000000	Tchaikovsky - Waltz of the Flowers	youtube	f
VbxgYlcNxE8	2019-12-07 14:34:37.289155-05	2019-12-07 14:34:37.289155-05	\N	908000000	Tchaikovsky - 1812 Overture (Full with Cannons)	youtube	f
CICIOJqEb5c	2019-12-07 15:02:32.537257-05	2019-12-07 15:02:32.537257-05	\N	129000000	Bill Withers - Ain't No Sunshine	youtube	f
p5rQHoaQpTw	2019-12-07 15:45:09.720297-05	2019-12-07 15:45:09.720297-05	\N	310000000	Elton John - Bennie and the Jets (with lyrics)	youtube	f
cObMQ5V51rQ	2019-12-07 15:45:57.297191-05	2019-12-07 15:45:57.297191-05	\N	193000000	The Girl in White - SiIvaGunner: King for Another Day	youtube	f
L0r6ocwGnMg	2019-12-07 20:25:36.209576-05	2019-12-07 20:25:36.209576-05	\N	195000000	Lil Jon featuring Kool-Aid Man - All I Really Want For Christmas (Official Music Video)	youtube	f
CscsCCWeV-I	2019-12-08 01:24:39.29009-05	2019-12-08 01:24:39.29009-05	\N	159000000	Dare to be Stupid - SiIvaGunner: King for Another Day	youtube	f
EWYudrW9A2M	2019-12-08 13:52:49.286558-05	2019-12-08 13:52:49.286558-05	\N	106000000	Welcome To The Black Parade but it's just a normal lyrics video...	youtube	f
-_xpK41qLQk	2019-12-08 14:11:15.337877-05	2019-12-08 14:11:15.337877-05	\N	220000000	Mambo No 5. but it's Megalovania	youtube	f
vO3r8eJgWzo	2019-12-08 14:18:30.514811-05	2019-12-08 14:18:30.514811-05	\N	36000000	Hey look a Gravity Falls meme	youtube	f
XJsy5jJ7Dp0	2019-12-08 14:20:34.166335-05	2019-12-08 14:20:34.166335-05	\N	161000000	Trauma Center DS 2: Gentle Breeze	youtube	f
W9a9xdWgU5I	2019-12-08 14:21:08.753462-05	2019-12-08 14:21:08.753462-05	\N	135000000	Are You a Real Villain? ~ We Are Number One [Commission]	youtube	f
BZfjzg2lbXw	2019-12-08 14:22:13.481514-05	2019-12-08 14:22:13.481514-05	\N	146000000	Slider (Electric Mix) - Super Mario 64	youtube	f
3vxqtt8q8d4	2019-12-08 14:24:23.618873-05	2019-12-08 14:24:23.618873-05	\N	96000000	Super Mario 64 - E1M1 (At Doom's Gate)	youtube	f
hQczqK9uGPU	2019-12-08 14:37:49.034213-05	2019-12-08 14:37:49.034213-05	\N	207000000	Alive 1987 - SiIvaGunner: King for Another Day	youtube	f
mxbodI60OT4	2019-12-08 16:42:37.899078-05	2019-12-08 16:42:37.899078-05	\N	143000000	Mitochondria - the powerhouse of the cell	youtube	f
-zafJKbMPA8	2019-12-08 16:42:48.479213-05	2019-12-08 16:42:48.479213-05	\N	188000000	Cells Cells - Parts of the Cell Rap	youtube	f
vkYEYjintqU	2019-12-08 16:42:53.64391-05	2019-12-08 16:42:53.64391-05	\N	317000000	Mitochondria: the cell's powerhouse	youtube	f
8xe6nLVXEC0	2019-12-08 16:43:15.396476-05	2019-12-08 16:43:15.396476-05	\N	197000000	Don't Stay in School	youtube	f
wW23Z94yf24	2019-12-08 16:53:29.545221-05	2019-12-08 16:53:29.545221-05	\N	256000000	Crust in Pieces Song	youtube	f
yPvKhFXc7ck	2019-12-08 17:07:19.227577-05	2019-12-08 17:07:19.227577-05	\N	692000000	The History of American Dad Speedrunning	youtube	f
fbPyB_UxI8M	2019-12-08 17:26:03.020984-05	2019-12-08 17:26:03.020984-05	\N	95000000	DMX - Rudolph The Red Nosed Reindeer (Full Edit)	youtube	f
XymjrRSNiPM	2019-12-08 20:19:29.441239-05	2019-12-08 20:19:29.441239-05	\N	134000000	Bohemian Rhapsody but it's the Pokemon song	youtube	f
qFEB7pczc7o	2019-12-08 20:36:33.688746-05	2019-12-08 20:36:33.688746-05	\N	116000000	Atrévete-Te-Te - SiIvaGunner: King for Another Day	youtube	f
ZbAO6kMFRLQ	2019-12-08 20:45:06.641902-05	2019-12-08 20:45:06.641902-05	\N	155000000	Sponge Guy - Billie Eilish ft. SpongeBob (Full Version)	youtube	f
h2gVhW5WgLg	2019-12-08 20:48:56.003433-05	2019-12-08 20:48:56.003433-05	\N	25000000	big time rush but they're ghostbusters - mashup	youtube	f
Kdz-pm-tWG8	2019-12-08 20:49:43.307682-05	2019-12-08 20:49:43.307682-05	\N	174000000	Boyfriend (Mashup) Big Time Rush & Ariana Grande	youtube	f
5syQiSmi2lw	2019-12-08 20:55:07.833343-05	2019-12-08 20:55:07.833343-05	\N	127000000	You've Got A Friend In Town	youtube	f
JGACGFIB7co	2019-12-08 20:55:16.135725-05	2019-12-08 20:55:16.135725-05	\N	155000000	But Hey, That's Just A Theory...	youtube	f
PYrNkZG8Lxw	2019-12-11 17:19:43.248013-05	2019-12-11 17:19:43.248013-05	\N	19000000	Emote: Zany - Fortnite	youtube	f
2aMZEdR2pSU	2019-12-11 17:20:11.436656-05	2019-12-11 17:20:11.436656-05	\N	85000000	Fishing Frenzy - Dance Dance Revolution Mario Mix	youtube	f
JrVSzQy3vFQ	2019-12-11 17:20:50.723171-05	2019-12-11 17:20:50.723171-05	\N	183000000	Forest Theme - New Super Mario Bros. Wii	youtube	f
5mW1P0gpWrk	2019-12-11 17:28:10.387549-05	2019-12-11 17:28:10.387549-05	\N	6000000	Smile Sweet Sister Sadistic Stinky Poop Meme	youtube	f
oOuKjaAYyJM	2019-12-11 17:30:34.25479-05	2019-12-11 17:30:34.25479-05	\N	238000000	EDP445's Is jacking off a sport?	youtube	f
_Ung1YmdNZo	2019-12-11 19:14:02.833868-05	2019-12-11 19:14:02.833868-05	\N	317000000	Miserable At Best	youtube	f
m4NMSr837Y0	2019-12-11 19:21:10.602552-05	2019-12-11 19:21:10.602552-05	\N	181000000	Nightcore - Doktorspiele	youtube	f
xUvXlRBTp1A	2019-12-11 19:22:14.303719-05	2019-12-11 19:22:14.303719-05	\N	197000000	Nightcore - Pyromania (Skitz Remix)	youtube	f
A1KXT7oghPQ	2019-12-11 19:28:09.096993-05	2019-12-11 19:28:09.096993-05	\N	205000000	Sweet Caroline but with guns	youtube	f
uuBETyA_yxc	2019-12-11 20:03:50.991089-05	2019-12-11 20:03:50.991089-05	\N	173000000	U Got That | FULL VERSION [MMV]	youtube	f
SQTcRxPsoMo	2019-12-11 20:04:32.714205-05	2019-12-11 20:04:32.714205-05	\N	257000000	MTC - S3RL	youtube	f
B7bKKkjPsL0	2019-12-11 20:06:22.09236-05	2019-12-11 20:06:22.09236-05	\N	127000000	►Nightcore -  Dame Tu Cosita ☆	youtube	f
LDU_Txk06tM	2019-12-11 22:18:14.101684-05	2019-12-11 22:18:14.101684-05	\N	192000000	Noisestorm - Crab Rave [Monstercat Release]	youtube	f
L_jWHffIx5E	2019-12-11 22:23:43.227152-05	2019-12-11 22:23:43.227152-05	\N	237000000	Smash Mouth - All Star (Official Music Video)	youtube	f
YwncjWqnBsg	2019-12-11 22:36:12.733687-05	2019-12-11 22:36:12.733687-05	\N	82000000	SpongeBob sings "All Star" by Smash Mouth	youtube	f
SgD3cHaktQI	2019-12-09 14:40:22.392642-05	2019-12-09 14:40:22.392642-05	\N	118000000	Paralyzer - SiIvaGunner: King for a Day Tournament	youtube	f
rrjKUqO6pvw	2019-12-10 01:08:02.040612-05	2019-12-10 01:08:02.040612-05	\N	31000000	Johnny Bravo Theme Song | Bass Boosted | Earrape	youtube	f
UoWnVUN0Sew	2019-12-10 01:08:28.834865-05	2019-12-10 01:08:28.834865-05	\N	278000000	"JOHNNY BRAVO" [Theme Song Remix!] -Remix Maniacs	youtube	f
Y1So82y91Yw	2019-12-10 01:17:38.796512-05	2019-12-10 01:17:38.796512-05	\N	57000000	Im. Scatman	youtube	f
EZcMOF3HzTs	2019-12-10 01:20:39.186458-05	2019-12-10 01:20:39.186458-05	\N	24000000	EVERYBODY	youtube	f
z6VKBf3sEfc	2019-12-10 01:32:15.607418-05	2019-12-10 01:32:15.607418-05	\N	176000000	No Control - SiIvaGunner: King for Another Day	youtube	f
0mxfLMxkvdY	2019-12-10 01:57:04.934395-05	2019-12-10 01:57:04.934395-05	\N	210000000	tofubeats - CANDYYYLAND feat. LIZ	youtube	f
dM9zwZCOmjM	2019-12-10 02:07:49.56872-05	2019-12-10 02:07:49.56872-05	\N	231000000	Rick Takeuchi - Never Gonna Give You Plastic Love	youtube	f
fekWiU3K_e0	2019-12-10 02:11:55.861907-05	2019-12-10 02:11:55.861907-05	\N	288000000	Tatsuro Yamashita - Magic Ways	youtube	f
ZTfxHh6NM48	2019-12-10 02:12:04.779055-05	2019-12-10 02:12:04.779055-05	\N	261000000	Tatsuro Yamashita - Mirai no Theme (Mirai no Mirai Opening FULL)	youtube	f
1rdlHKioR6A	2019-12-10 02:33:09.396367-05	2019-12-10 02:33:09.396367-05	\N	275000000	Tatsuro Yamashita - Ride on Time (1982)	youtube	f
ORyw6TGLBvk	2019-12-10 02:33:42.203507-05	2019-12-10 02:33:42.203507-05	\N	280000000	Mariya Takeuchi - September	youtube	f
yUL-KrF05-I	2019-12-10 02:37:26.385402-05	2019-12-10 02:37:26.385402-05	\N	295000000	金魚花火 / 大塚 愛	youtube	f
I0JVRcJLea8	2019-12-10 02:37:55.006148-05	2019-12-10 02:37:55.006148-05	\N	239000000	Junko Ohashi - Telephone Number (1984)	youtube	f
mj-v6zCnEaw	2019-12-10 13:55:11.132743-05	2019-12-10 13:55:11.132743-05	\N	368000000	NOMA - Brain Power	youtube	f
b3iKJ10UAnE	2019-12-10 16:58:50.138345-05	2019-12-10 16:58:50.138345-05	\N	378000000	Robot R.O.C.K - SiIvaGunner: King for Another Day	youtube	f
GlyFOvy-HHM	2019-12-10 16:59:43.227753-05	2019-12-10 16:59:43.227753-05	\N	155000000	AIN'T NOTHIN' LIKE A FLAT BEAT - SiIvaGunner: King for Another Day	youtube	f
7nBxy4bya0w	2019-12-10 17:02:51.504705-05	2019-12-10 17:02:51.504705-05	\N	359000000	An Intellectual Look At Jimmy Neutron	youtube	f
tsP3KggtRyo	2019-12-10 18:18:37.072579-05	2019-12-10 18:18:37.072579-05	\N	207000000	Solving Groove - SiIvaGunner: King for Another Day	youtube	f
zlm6bcMD7Fg	2019-12-10 23:05:27.650042-05	2019-12-10 23:05:27.650042-05	\N	15000000	monke rap	youtube	f
TnORy_pcpcI	2019-12-10 23:07:01.978555-05	2019-12-10 23:07:01.978555-05	\N	65000000	Uh oh stinky remix	youtube	f
XQ6I9AeA1kQ	2019-12-10 23:09:13.158182-05	2019-12-10 23:09:13.158182-05	\N	98000000	Uh oh stinky remix	youtube	f
kedJfeCiKl4	2019-12-10 23:09:42.559435-05	2019-12-10 23:09:42.559435-05	\N	191000000	Uh oh stinky Every version | soft version	youtube	f
WW067ndNwFI	2019-12-11 14:04:23.519305-05	2019-12-11 14:04:23.519305-05	\N	7000000	Uh oh stinky all the small things	youtube	f
dQw4w9WgXcQ	2019-12-11 14:06:32.18968-05	2019-12-11 14:06:32.18968-05	\N	212000000	Rick Astley - Never Gonna Give You Up (Video)	youtube	f
ZmWjRlhbKsg	2019-12-11 17:24:12.047859-05	2019-12-11 17:24:12.047859-05	\N	23000000	EDP445: "My Left Leg Has Went Totally Numb - Man Down!" (HD)	youtube	f
h3eJQmd263g	2019-12-11 18:44:54.432564-05	2019-12-11 18:44:54.432564-05	\N	318000000	東方[Piano / Instrumental] Akutagawa Ryuunosuke's Kappa ~ Candid Friend 『5』【Winter #15】	youtube	f
7NQwE9lRT8k	2019-12-11 19:13:17.163978-05	2019-12-11 19:13:17.163978-05	\N	291000000	Mayday Parade - Three cheers for five years [Punk goes acoustic two.] with lyrics.	youtube	f
cmlCuzn_mqI	2019-12-11 19:13:54.716115-05	2019-12-11 19:13:54.716115-05	\N	156000000	Nightcore - Bad boy	youtube	f
wlCN2hCjYbY	2019-12-11 19:18:22.229556-05	2019-12-11 19:18:22.229556-05	\N	33000000	uh oh nightcore	youtube	f
X3oOQ8XnQWU	2019-12-11 19:26:45.447521-05	2019-12-11 19:26:45.447521-05	\N	290000000	Sporty - o - Let Me Hit It ( Audiostalkers Original Mix)  BEST QUALITY !!!	youtube	f
LtjXOAP7Ghw	2019-12-11 19:43:49.900041-05	2019-12-11 19:43:49.900041-05	\N	137000000	Welcome To The Cum Zone (nightcore)	youtube	f
nqfmfeVQX48	2019-12-11 22:24:08.446395-05	2019-12-11 22:24:08.446395-05	\N	293000000	All Star but "star" is replaced with Gordon Ramsay insults	youtube	f
I1fIrejsuV0	2019-12-11 22:26:07.086511-05	2019-12-11 22:26:07.086511-05	\N	100000000	All Star but it's Old Town Road	youtube	f
ILTxg9Dg7AU	2019-12-11 22:28:48.580059-05	2019-12-11 22:28:48.580059-05	\N	216000000	Gravity Falls Remix vs. Bonfire - Childish Gambino	youtube	f
3lttyZhTYVg	2019-12-11 22:38:10.031995-05	2019-12-11 22:38:10.031995-05	\N	214000000	CBT The Full Experience	youtube	f
Gof7De7nOsQ	2019-12-11 22:39:43.668366-05	2019-12-11 22:39:43.668366-05	\N	206000000	CBT: The Full Experience vocoded to Chicago - Old Days	youtube	f
1ER67r8OCW8	2019-12-11 22:41:46.435829-05	2019-12-11 22:41:46.435829-05	\N	186000000	S3RL – Hentai	youtube	f
JHeKhyg14-U	2019-12-12 00:39:52.051021-05	2019-12-12 00:39:52.051021-05	\N	185000000	Plastic Love (DJ DVD RIP Edit) - SiIvaGunner: King for Another Day	youtube	f
IizDXdfjAj0	2019-12-12 12:24:29.234581-05	2019-12-12 12:24:29.234581-05	\N	499000000	Kurokotei - Scattered Faith (with osu hitsounds)	youtube	f
F18v1HwEI6M	2019-12-12 17:02:07.805444-05	2019-12-12 17:02:07.805444-05	\N	246000000	Baby I'm Yours - SiIvaGunner: King for Another Day	youtube	f
XH4ITDBZcOM	2019-12-12 19:28:59.553382-05	2019-12-12 19:28:59.553382-05	\N	192000000	POP/STARS (Original Version) - League of Legends	youtube	f
judFo2_tjF0	2019-12-12 19:34:12.391515-05	2019-12-12 19:34:12.391515-05	\N	206000000	Re: Mr. Monokuma's Lesson - Danganronpa 2: Goodbye Despair	youtube	f
5rLaw8jJP90	2019-12-12 21:51:13.328497-05	2019-12-12 21:51:13.328497-05	\N	642000000	Kahoot Theme 10 Minutes	youtube	f
2ZIpFytCSVc	2019-12-12 22:39:13.015631-05	2019-12-12 22:39:13.015631-05	\N	1000000	Bruh Sound Effect #2	youtube	f
M-rhzt-FW70	2019-12-13 11:51:48.294975-05	2019-12-13 11:51:48.294975-05	\N	215000000	Kano - Sukisuki Zecchou Shou	youtube	f
Vwz8qnsWJaA	2019-12-13 11:52:02.296945-05	2019-12-13 11:52:02.296945-05	\N	256000000	Ayalis - Ai o Chikaishi Hime Kazari	youtube	f
VaUvLnruYzQ	2019-12-13 11:52:20.804139-05	2019-12-13 11:52:20.804139-05	\N	255000000	GARNiDELiA - Yakusoku	youtube	f
TGcR7gCDMk8	2019-12-13 11:54:07.806266-05	2019-12-13 11:54:07.806266-05	\N	339000000	artefatto vita - witch's slave	youtube	f
VD13tT9abKI	2019-12-13 11:56:22.126892-05	2019-12-13 11:56:22.126892-05	\N	155000000	ああああ - carnation (BMS差分)	youtube	f
Zq8uyUvobiw	2019-12-13 15:48:38.89649-05	2019-12-13 15:48:38.89649-05	\N	117000000	Dame tu America	youtube	f
zQdEi3zYc74	2019-12-13 18:39:29.64179-05	2019-12-13 18:39:29.64179-05	\N	145000000	YMCA But Every Other Beat Is Missing (Why, EA?)	youtube	f
TN6l0yUCL5s	2019-12-13 18:45:32.257119-05	2019-12-13 18:45:32.257119-05	\N	226000000	Get Off Easy	youtube	f
1NlAcWPiRdU	2019-12-13 18:47:28.514948-05	2019-12-13 18:47:28.514948-05	\N	209000000	Take It Back	youtube	f
-B_2bx9XZhk	2019-12-13 18:48:58.528832-05	2019-12-13 18:48:58.528832-05	\N	231000000	Sweat It Out	youtube	f
PBZICTaUmU0	2019-12-13 18:51:26.577878-05	2019-12-13 18:51:26.577878-05	\N	211000000	Breathe Carolina - Blackout Lyric Video	youtube	f
71sCcYy-k8U	2019-12-13 18:53:50.043097-05	2019-12-13 18:53:50.043097-05	\N	256000000	They Say You Won't Come Back	youtube	f
Bq7wSWojCiM	2019-12-13 20:12:11.819645-05	2019-12-13 20:12:11.819645-05	\N	380000000	Tatsuro Yamashita & Mariya Takeuchi   -   Have Yourself A Merry Little Christmas	youtube	f
y0p3jn7ODuc	2019-12-13 23:28:45.248146-05	2019-12-13 23:28:45.248146-05	\N	204000000	Aaron Carter - Aaron's Party (Come Get It) (The Video)	youtube	f
gsH_oUaFmas	2019-12-14 00:34:36.853522-05	2019-12-14 00:34:36.853522-05	\N	120000000	the mii channel theme but it's played using a 3D printer ♪ ♫	youtube	f
N_x72hA7_SY	2019-12-14 15:42:24.457486-05	2019-12-14 15:42:24.457486-05	\N	215000000	O-Zone -Dragostea Din Tei- Lyrics (numa numa)	youtube	f
fPp3Qh-GRqs	2019-12-14 15:42:56.622273-05	2019-12-14 15:42:56.622273-05	\N	245000000	Khachaturian - Masquerade Suite - Waltz	youtube	f
I6Njg1LFxFk	2019-12-14 15:43:07.228205-05	2019-12-14 15:43:07.228205-05	\N	233000000	Schubert - "Ständchen" D957	youtube	f
OSuba0LSkwQ	2019-12-14 15:46:25.620824-05	2019-12-14 15:46:25.620824-05	\N	62000000	Age of empires 2 theme song!	youtube	f
BUfw0PUYebA	2019-12-14 15:51:58.011108-05	2019-12-14 15:51:58.011108-05	\N	286000000	O-Zone - Dragostea Din Tei (DOPEDROP Remix)!	youtube	f
flqEfzKp8bU	2019-12-14 15:52:04.783377-05	2019-12-14 15:52:04.783377-05	\N	380000000	Best Dragostea Din Tei Remix Ever	youtube	f
R1qZEqNNsLM	2019-12-14 15:52:14.674151-05	2019-12-14 15:52:14.674151-05	\N	226000000	O-Zone - Dragostea Din Tei (Shockspears Hardstyle Bootleg) | HQ Videoclip	youtube	f
MzAh0LutwUQ	2019-12-14 15:52:25.918405-05	2019-12-14 15:52:25.918405-05	\N	254000000	Eiffel 65 - Blue (K Theory Remix)	youtube	f
pVLmZMjxfjw	2019-12-14 15:52:41.731291-05	2019-12-14 15:52:41.731291-05	\N	252000000	Eiffel 65 - Blue (KNY Factory Remix)	youtube	f
S3xWa7DChS4	2019-12-14 15:52:44.563789-05	2019-12-14 15:52:44.563789-05	\N	223000000	O-Zone - Dragostea Din Tei (HBz & Adwegno Bounce Remix)	youtube	f
VjRRwuT6or4	2019-12-14 15:52:51.622077-05	2019-12-14 15:52:51.622077-05	\N	293000000	Nightcore  - Numa Numa (Dragostea Din Tei) (Remix) ✕	youtube	f
JBMWqDqo580	2019-12-14 15:52:57.825883-05	2019-12-14 15:52:57.825883-05	\N	190000000	Dragostea Din Tei - O-Zone (Dimitri Vegas & Like Mike Remix)[CarlosJr Remake]	youtube	f
IQTzlGLvCAU	2019-12-14 16:02:19.076529-05	2019-12-14 16:02:19.076529-05	\N	188000000	Flo Rida - GDFR (K Theory Remix)	youtube	f
oygrmJFKYZY	2019-12-14 16:03:08.62518-05	2019-12-14 16:03:08.62518-05	\N	181000000	Dua Lipa - Don't Start Now (Official Music Video)	youtube	f
wgqPRKbiBXk	2019-12-14 18:37:14.120161-05	2019-12-14 18:37:14.120161-05	\N	221000000	Telephone Number (fm chillout mix) - SiIvaGunner: King for Another Day	youtube	f
7O-TZdXh7Y4	2019-12-14 18:37:37.948151-05	2019-12-14 18:37:37.948151-05	\N	229000000	Sparkle - SiIvaGunner: King for Another Day	youtube	f
bvpkzBwUNn8	2019-12-14 18:37:44.572986-05	2019-12-14 18:37:44.572986-05	\N	152000000	Mr.Werewolf - SiIvaGunner: King for Another Day	youtube	f
y9LlnLTH87U	2019-12-14 19:02:36.485091-05	2019-12-14 19:02:36.485091-05	\N	241000000	Ya no sé qué hacer conmigo	youtube	f
BbWY-avjDto	2019-12-14 19:05:44.926546-05	2019-12-14 19:05:44.926546-05	\N	199000000	Danza Kuduro	youtube	f
JFkRtjrrM5k	2019-12-14 19:14:58.250234-05	2019-12-14 19:14:58.250234-05	\N	303000000	Snarky Puppy feat. Magda Giannikou - Amour T'es Là (Family Dinner - Volume One)	youtube	f
nbriUJ-Wn_Q	2019-12-14 19:16:20.979297-05	2019-12-14 19:16:20.979297-05	\N	228000000	Cuarteto de Nos - Buen Día Benito (Video Oficial)	youtube	f
BCIHke3Ftl4	2019-12-14 22:52:46.260957-05	2019-12-14 22:52:46.260957-05	\N	189000000	RetroVision - Elevate	youtube	f
ESI2EqaF1rk	2019-12-14 22:58:17.538737-05	2019-12-14 22:58:17.538737-05	\N	161000000	Gene Shinozaki | Remember	youtube	f
jFJzAouHzMc	2019-12-14 22:58:51.072164-05	2019-12-14 22:58:51.072164-05	\N	294000000	Tchami feat. Stacy Barthe - "After Life" OFFICIAL VERSION	youtube	f
kr0_YzOQf5A	2019-12-14 22:58:56.792554-05	2019-12-14 22:58:56.792554-05	\N	417000000	Tchami - "Adieu" OFFICIAL VERSION	youtube	f
3LBoxsE_8bE	2019-12-14 23:01:20.608746-05	2019-12-14 23:01:20.608746-05	\N	181000000	INKIE - Grand Beatbox LOOPSTATION Battle 2018 [Second Round]	youtube	f
3QqDfEPePnE	2019-12-14 23:09:20.409111-05	2019-12-14 23:09:20.409111-05	\N	286000000	Gene Shinozaki | Never Give Up	youtube	f
twBU2sLDtIM	2019-12-14 23:10:52.861156-05	2019-12-14 23:10:52.861156-05	\N	882000000	Inkie vs Saro - Beatboxing Loop Station Final - 5th Beatbox Battle World Championship	youtube	f
-TK94mhOt5M	2019-12-14 23:13:28.393286-05	2019-12-14 23:13:28.393286-05	\N	211000000	DJ Snake & Mercer - Let's Get Ill	youtube	f
AOEOsEgp6BI	2019-12-14 23:14:02.878377-05	2019-12-14 23:14:02.878377-05	\N	195000000	DJ Snake - Magenta Riddim	youtube	f
4yUUbCpe1J0	2019-12-14 23:28:07.066821-05	2019-12-14 23:28:07.066821-05	\N	188000000	Jauz x San Holo - OK! [Monstercat Release]	youtube	f
FQSfGqvLAxU	2019-12-14 23:28:35.870137-05	2019-12-14 23:28:35.870137-05	\N	204000000	[Trap Music] Ephixa & Holder - Cobra (Ninety9Lives release) Free Download	youtube	f
ejmFqq-Yhb4	2019-12-14 23:29:00.718158-05	2019-12-14 23:29:00.718158-05	\N	201000000	Jacuzzi - Loose Ends	youtube	f
ne0IFTKhMdI	2019-12-14 23:29:50.406279-05	2019-12-14 23:29:50.406279-05	\N	153000000	matbow - the myth	youtube	f
YwntMYGSlrM	2019-12-14 23:30:07.665349-05	2019-12-14 23:30:07.665349-05	\N	235000000	ZwiReK - R3B3L	youtube	f
15ZgKeMCxIs	2019-12-14 23:30:47.969343-05	2019-12-14 23:30:47.969343-05	\N	337000000	Pegboard Nerds - Heaven Let Us Down (feat. Koda)	youtube	f
UIoF7J75NI8	2019-12-14 23:31:04.623257-05	2019-12-14 23:31:04.623257-05	\N	226000000	Lika Morgan - Sweet Dreams (Andrey Keyton & Sharapov Remix)	youtube	f
ueSxyMZOch4	2019-12-14 23:31:38.567912-05	2019-12-14 23:31:38.567912-05	\N	220000000	Maiki Vanics - Vice	youtube	f
ECLxDMZrGQI	2019-12-14 23:31:58.918796-05	2019-12-14 23:31:58.918796-05	\N	335000000	Liu - Groove	youtube	f
0T4nSXULU-k	2019-12-14 23:32:25.106877-05	2019-12-14 23:32:25.106877-05	\N	301000000	Yeah Yeah Yeahs x A-Trak - Heads Will Roll (DiscoTech Remix)	youtube	f
J9FImc2LOr8	2019-12-15 00:51:17.20728-05	2019-12-15 00:51:17.20728-05	\N	250000000	Space Jam Theme Song	youtube	f
JmcA9LIIXWw	2019-12-15 01:35:56.149801-05	2019-12-15 01:35:56.149801-05	\N	236000000	Culture Club - Karma Chameleon (Official Video)	youtube	f
G0JMs7Q3j_o	2019-12-15 02:27:47.276042-05	2019-12-15 02:27:47.276042-05	\N	290000000	Take Me - Casiopea	youtube	f
hRQrHydqAi0	2019-12-15 02:29:29.602495-05	2019-12-15 02:29:29.602495-05	\N	236000000	DCappella - All I Want for Christmas Is You	youtube	f
Jb3oxVzJ3ms	2019-12-15 13:30:14.488643-05	2019-12-15 13:30:14.488643-05	\N	190000000	Big Time Rush - Paralyzed (Full Song) HD	youtube	f
nCiOrkdxyCk	2019-12-15 13:33:56.829735-05	2019-12-15 13:33:56.829735-05	\N	72000000	Main Theme (Wrong Order Mix) - Tryin' to Steal Our Stuff Again	youtube	f
sV4wKmFfoG8	2019-12-15 13:34:14.174217-05	2019-12-15 13:34:14.174217-05	\N	111000000	Baby Te Quiero - Siivagunner: Kig for anther day	youtube	f
AKURYT4YutM	2019-12-15 13:34:34.019719-05	2019-12-15 13:34:34.019719-05	\N	38000000	Results Screen - Mario Kart DS	youtube	f
21ltvmlNyhU	2019-12-15 13:38:20.820083-05	2019-12-15 13:38:20.820083-05	\N	265000000	New Divide - Twinkin Park	youtube	f
V7Lx4MGLXKc	2019-12-15 13:38:49.957604-05	2019-12-15 13:38:49.957604-05	\N	20000000	LEAFY & LEAFY vs. BRUNO BUCCIARATI [R1 M7] - Vavr fansub: King for a gay	youtube	f
lmD3TRz7EAI	2019-12-15 13:39:13.153748-05	2019-12-15 13:39:13.153748-05	\N	259000000	High Hopes (Winter 2019 Remix) - Panic! at the Disco: Pray for the Wicked	youtube	f
II8qCkOWOKY	2019-12-15 13:52:31.649883-05	2019-12-15 13:52:31.649883-05	\N	229000000	Crank Dat Super Mario - SiIvaGunner: King for Another Day	youtube	f
cvFZ0aiz0hg	2019-12-15 14:55:13.162936-05	2019-12-15 14:55:13.162936-05	\N	915000000	Undertale OST - Ghouliday Extended	youtube	f
IETP_lQKnzU	2019-12-15 15:49:31.584165-05	2019-12-15 15:49:31.584165-05	\N	82000000	SLAM! - SiIvaGunner: King for Another Day	youtube	f
7MbtUaSm1FU	2019-12-15 15:58:24.833644-05	2019-12-15 15:58:24.833644-05	\N	226000000	Mariya Takeuchi - Special Delivery~特別航空便~ (1981) [Japanese Christmas Music]	youtube	f
EDF4VJXUJE0	2019-12-15 16:22:45.969187-05	2019-12-15 16:22:45.969187-05	\N	180000000	SpongeBob Music Remix | Grass Skirt Chase - [RUDE E9 REMIX]	youtube	f
hryAPx9OFZM	2019-12-15 16:38:39.948516-05	2019-12-15 16:38:39.948516-05	\N	65000000	Marianne and Hilda Secret Support Conversation	youtube	f
82nqsksBH7M	2019-12-15 19:18:21.916645-05	2019-12-15 19:18:21.916645-05	\N	216000000	"Africa" by Toto but every word is in alphabetical order	youtube	f
QwdbFNGCkLw	2019-12-15 19:27:27.078681-05	2019-12-15 19:27:27.078681-05	\N	231000000	Nightcore - Ievan Polkka (VSNS Remix)	youtube	f
eSFhd-CGIWU	2019-12-15 19:36:24.051793-05	2019-12-15 19:36:24.051793-05	\N	154000000	I'm Gonna Kill Santa Claus - Official Music Video	youtube	f
s_qwMCseMbo	2019-12-15 20:49:05.763446-05	2019-12-15 20:49:05.763446-05	\N	136000000	Blue Christmas - Elvis Presley (Lyrics)	youtube	f
gy4qut30KO0	2019-12-15 20:49:25.974242-05	2019-12-15 20:49:25.974242-05	\N	164000000	Ray Conniff - jingle bells	youtube	f
hMhMekfIyos	2019-12-15 20:49:44.547506-05	2019-12-15 20:49:44.547506-05	\N	224000000	Paul McCartney - Simply Having A Wonderful Christmas Time (Lyrics) [HD]	youtube	f
oUMdA1KPzjE	2019-12-15 20:50:00.920898-05	2019-12-15 20:50:00.920898-05	\N	147000000	White Christmas- Taylor Swift (Lyrics Video) HD	youtube	f
yHFB0NFXXug	2019-12-15 20:50:18.947248-05	2019-12-15 20:50:18.947248-05	\N	239000000	Idina Menzel - I'll Be Home For Christmas (Visualizer) ft. Aaron Lohr	youtube	f
cVVWWEIQAkA	2019-12-15 20:50:54.89117-05	2019-12-15 20:50:54.89117-05	\N	141000000	Air Supply – “Sleigh Ride” (Arista) 1987	youtube	f
1tcbarFCk3w	2019-12-15 20:51:10.015761-05	2019-12-15 20:51:10.015761-05	\N	259000000	Mariah Carey - Joy to the World (audio) (Digital Video)	youtube	f
OsyxFkYZ-aU	2019-12-15 20:51:27.601542-05	2019-12-15 20:51:27.601542-05	\N	205000000	Mariah Carey - Santa Claus Is Comin' to Town (Official Audio)	youtube	f
cGSneujgGT8	2019-12-15 20:51:52.000459-05	2019-12-15 20:51:52.000459-05	\N	176000000	You're A Mean One, Mr. Grinch	youtube	f
e5X-kyz_P8M	2019-12-15 20:54:44.730503-05	2019-12-15 20:54:44.730503-05	\N	119000000	Have a Holly Jolly Christmas	youtube	f
QJtpg6tHGtU	2019-12-17 11:24:58.681295-05	2019-12-17 11:24:58.681295-05	\N	401000000	Plastic Love	youtube	f
O1i08a4t1_M	2019-12-17 13:03:20.477676-05	2019-12-17 13:03:20.477676-05	\N	262000000	【Vocaloid】extraterrestrial feat. Hatsune Miku【Camellia】	youtube	f
mHyOPnktB0Y	2019-12-17 13:08:25.892266-05	2019-12-17 13:08:25.892266-05	\N	363000000	[Groundbreaking BOFU2015] ああああ - ☆をかけるアドベンチャー ～ we are forever friends! ～　[Long ver.]	youtube	f
2CJw_rihu5s	2019-12-17 13:09:27.592317-05	2019-12-17 13:09:27.592317-05	\N	126000000	[BGA]　MilK　[BOFU2015]	youtube	f
Gmf-TW5rWiY	2019-12-17 14:25:39.048853-05	2019-12-17 14:25:39.048853-05	\N	41000000	Graweedy Falls	youtube	f
awc6vDxjtfc	2019-12-17 14:31:26.954008-05	2019-12-17 14:31:26.954008-05	\N	197000000	Lunatic Eyes ~ Invisible Full Moon || Metal Cover by RichaadEB	youtube	f
nziDjSl4RFs	2019-12-15 20:55:12.369503-05	2019-12-15 20:55:12.369503-05	\N	173000000	Rod Stewart - Let it snow (HD Audio)	youtube	f
kFSPGIHjak8	2019-12-15 20:55:33.641586-05	2019-12-15 20:55:33.641586-05	\N	123000000	Nat King Cole - Caroling, Caroling (Christmas Bells Are Ringing) Capitol Records 1960	youtube	f
G4eP9OO53CY	2019-12-16 14:25:36.55315-05	2019-12-16 14:25:36.55315-05	\N	193000000	Tame Impala - The Less I Know The Better (HQ Audio)	youtube	f
LqRC-WHfLfg	2019-12-16 16:01:00.31698-05	2019-12-16 16:01:00.31698-05	\N	587000000	【東方ボーカル】 「MyonMyonMyonMyonMyonMyonMyon!」 【ShibayanRecords】 【Subbed】	youtube	f
8R_saFdisRA	2019-12-16 16:01:56.573316-05	2019-12-16 16:01:56.573316-05	\N	590000000	【東方NuDisco】 MyonMyonMyonMyonMyonMyonMyonMyon! 「ShibayanRecords」	youtube	f
Cvcn-P2KJd0	2019-12-16 18:31:47.654434-05	2019-12-16 18:31:47.654434-05	\N	167000000	Nightcore - Sweet But Psycho - Ava Max - (Lyrics)	youtube	f
F6GMVUrVLNc	2019-12-16 18:36:13.261169-05	2019-12-16 18:36:13.261169-05	\N	225000000	Nightcore - Battlefield	youtube	f
JThz8-nYYHs	2019-12-16 18:36:29.371941-05	2019-12-16 18:36:29.371941-05	\N	149000000	Nightcore - Warriors	youtube	f
wL-2Cu6zSNk	2019-12-16 18:36:45.257378-05	2019-12-16 18:36:45.257378-05	\N	203000000	Nightcore - Bring Me To Life	youtube	f
iIRl-pLQYiQ	2019-12-16 18:40:27.243223-05	2019-12-16 18:40:27.243223-05	\N	150000000	Nightcore - I'm So Sick	youtube	f
MssoLlPrhMo	2019-12-16 18:42:01.925416-05	2019-12-16 18:42:01.925416-05	\N	159000000	Nightcore - Make a Move	youtube	f
Ftomn0bQYOs	2019-12-16 18:42:59.321032-05	2019-12-16 18:42:59.321032-05	\N	158000000	Nightcore - Diary of Jane	youtube	f
hg0I3DyFZsU	2019-12-16 18:43:51.856941-05	2019-12-16 18:43:51.856941-05	\N	164000000	Nightcore - B Team	youtube	f
htO87OCjp2M	2019-12-16 18:44:22.872548-05	2019-12-16 18:44:22.872548-05	\N	170000000	Nightcore - Pity Party	youtube	f
h8ZGzFqZO7k	2019-12-16 18:47:49.444494-05	2019-12-16 18:47:49.444494-05	\N	180000000	Nightcore - Electra Heart	youtube	f
-Z_mr_XGVbo	2019-12-16 19:03:27.635213-05	2019-12-16 19:03:27.635213-05	\N	359000000	◤Nightcore◢ ↬ MEGAMIX House of Memories [Switching Vocals | Megamix]	youtube	f
shaA4OMuKZc	2019-12-16 19:18:32.418212-05	2019-12-16 19:18:32.418212-05	\N	176000000	Nightcore - Dame Tu Cosita (Pitbull x El Chombo x Karol G ft Cutty Ranks) || Lyrics	youtube	f
aDsYxCgR3tA	2019-12-16 19:26:34.960485-05	2019-12-16 19:26:34.960485-05	\N	150000000	MAK & SAK feat. XANA - Indecent (Nightcore Mix)	youtube	f
JxAe6oVaMhs	2019-12-16 20:27:20.48612-05	2019-12-16 20:27:20.48612-05	\N	134000000	Vengeful Annihilation (The Overworld) - Rivals of Aether	youtube	f
oR_iQomHOZQ	2019-12-16 20:30:57.457814-05	2019-12-16 20:30:57.457814-05	\N	166000000	Set It Off - Kill The Lights (Lyric Video)	youtube	f
wlQY35lt_4Y	2019-12-16 20:52:50.270785-05	2019-12-16 20:52:50.270785-05	\N	272000000	Yuikonnu - Chikyuu Saigo no Kokuhaku wo	youtube	f
ywLQq3A6pqM	2019-12-16 20:53:49.487191-05	2019-12-16 20:53:49.487191-05	\N	187000000	HyuN - Fallen Angel (feat. JeeE)	youtube	f
RVea-2Up8xM	2019-12-17 13:03:48.002276-05	2019-12-17 13:03:48.002276-05	\N	238000000	【東方ボーカル】 「Real or Fake」 【森羅万象】	youtube	f
yuAdBTTLKg0	2019-12-17 13:04:11.300965-05	2019-12-17 13:04:11.300965-05	\N	292000000	Sawai Miku - Colorful (Asterisk DnB Remix)	youtube	f
9zRSEMjmCIU	2019-12-17 13:04:20.639391-05	2019-12-17 13:04:20.639391-05	\N	281000000	✩ Kakegurui Opening SoundTrack : Deal with the Devil - Tia ✩	youtube	f
JQRsCXY5MGA	2019-12-17 13:08:02.932971-05	2019-12-17 13:08:02.932971-05	\N	203000000	Kobaryo - Pumpin' Junkies (Kobaryo's FTN-Remix)	youtube	f
46Mp6Bq1lFM	2019-12-17 14:31:33.991614-05	2019-12-17 14:31:33.991614-05	\N	225000000	PRIMORDIAL BEAT (Raiko's Theme) || Metal Cover by RichaadEB & The8BitDrummer	youtube	f
sleAfASgSOw	2019-12-17 14:37:40.604034-05	2019-12-17 14:37:40.604034-05	\N	317000000	DOLL JUDGMENT (Alice's Theme) || Metal Cover by RichaadEB	youtube	f
zG325qCKH9o	2019-12-17 14:40:05.945387-05	2019-12-17 14:40:05.945387-05	\N	276000000	Pure Furies ~ Whereabouts of the Heart || Metal Cover by RichaadEB	youtube	f
_9SWpnQzjaM	2019-12-17 14:49:53.503309-05	2019-12-17 14:49:53.503309-05	\N	300000000	Lunatic Princess (Kaguya's Theme) || Metal Cover by RichaadEB	youtube	f
yrH71-VISFQ	2019-12-17 14:50:01.018346-05	2019-12-17 14:50:01.018346-05	\N	229000000	Clownpiece's Theme: Pierrot of the Star-Spangled Banner || METAL COVER by RichaadEB	youtube	f
lk0gm_Z81bE	2019-12-17 14:58:34.511134-05	2019-12-17 14:58:34.511134-05	\N	122000000	Toradora! - Lost My Pieces (OST)	youtube	f
nB1nlOBCqr0	2019-12-17 14:58:47.598147-05	2019-12-17 14:58:47.598147-05	\N	292000000	【東方ヴォーカル】Pizuya's Cell / 衛星アクアリウム【Pizuya's Cell Official】	youtube	f
G3NRNc6fMqE	2019-12-17 15:00:53.904167-05	2019-12-17 15:00:53.904167-05	\N	134000000	Who Let the Dogs Out? - SiIvaGunner: King for Another Day	youtube	f
WchseC9aKTU	2019-12-17 15:05:32.929667-05	2019-12-17 15:05:32.929667-05	\N	244000000	Lemon Demon - Two Trucks	youtube	f
3GSY_jRiOdw	2019-12-17 15:08:34.224122-05	2019-12-17 15:08:34.224122-05	\N	269000000	Hanatan - Airman ga Taosenai (Sound Holic Ver) (NO GAMEPLAY)	youtube	f
1TX5gsKBo88	2019-12-17 15:13:11.951951-05	2019-12-17 15:13:11.951951-05	\N	203000000	Stevie Wonder - Superstition (C2C Remix)	youtube	f
3Gz5pNLQAGg	2019-12-17 15:27:21.774967-05	2019-12-17 15:27:21.774967-05	\N	209000000	【東方Vocal／Eurobeat】 PRESERVED VAMPIRE 「SOUND HOLIC」 【Subbed】	youtube	f
i072j0pl9Qs	2019-12-17 15:28:58.566754-05	2019-12-17 15:28:58.566754-05	\N	199000000	Touhou - Wind God Girl (Aya's Theme) || Metal Cover by RichaadEB	youtube	f
0cHlZSEld-c	2019-12-17 15:31:44.184986-05	2019-12-17 15:31:44.184986-05	\N	256000000	Emotional Skyscraper ~ Cosmic Mind || Metal Cover by RichaadEB	youtube	f
iNSqksOSmnU	2019-12-17 15:32:37.557306-05	2019-12-17 15:32:37.557306-05	\N	204000000	Becky G - Mayores ft. Bad Bunny (lyrics/letra)	youtube	f
RvH87vs0St4	2019-12-17 15:32:54.723301-05	2019-12-17 15:32:54.723301-05	\N	390000000	[Touhou Vocal] [Liz Triangle] Arigatou (spanish & english subtitles)	youtube	f
VgzWiAsH1Kw	2019-12-17 15:47:11.809501-05	2019-12-17 15:47:11.809501-05	\N	618000000	【東方ボーカル】 「With Triangle」 【Liz Triangle】	youtube	f
uzbLUljNIy4	2019-12-17 15:56:08.539492-05	2019-12-17 15:56:08.539492-05	\N	176000000	Pasame la botella - Letra	youtube	f
y4CouaE5TVU	2019-12-17 16:20:38.394867-05	2019-12-17 16:20:38.394867-05	\N	314000000	[Touhou PV] [Liz Triangle] Little Dreamer (spanish & english subtitles)	youtube	f
NqYfXDxlkg8	2019-12-17 16:27:19.768838-05	2019-12-17 16:27:19.768838-05	\N	221000000	Daddy Yankee - Ven Conmigo (Audio Oficial)	youtube	f
5jAjTHT-W1A	2019-12-17 16:41:56.651588-05	2019-12-17 16:41:56.651588-05	\N	166000000	Nightcore ► Revenge [REMIX]	youtube	f
pCxk_Lxhcfg	2019-12-17 18:20:15.924666-05	2019-12-17 18:20:15.924666-05	\N	203000000	Caramelldansen - SiIvaGunner: King for Another Day	youtube	f
WliJU8_Dibo	2019-12-17 18:21:54.620889-05	2019-12-17 18:21:54.620889-05	\N	208000000	DK Rap - SiIvaGunner: King for Another Day	youtube	f
2Zm_wGQxbv4	2019-12-17 22:38:56.767849-05	2019-12-17 22:38:56.767849-05	\N	90000000	Main Theme - Yo Mama	youtube	f
GRjjLq_nytI	2019-12-17 22:39:24.209842-05	2019-12-17 22:39:24.209842-05	\N	225000000	Megalovania (Ohio Mix)- Undertale	youtube	f
42jeD5agsRE	2019-12-18 12:12:21.904804-05	2019-12-18 12:12:21.904804-05	\N	148000000	Law and Cum	youtube	f
yeh708tybpM	2019-12-18 12:36:48.901517-05	2019-12-18 12:36:48.901517-05	\N	704000000	We Are Number One but every one is replaced with Mike Wazowski getting Slammed each time 20% slower	youtube	f
bxch-yi14BE	2019-12-18 12:41:53.043779-05	2019-12-18 12:41:53.043779-05	\N	164000000	Will The Real Mitt Romney Please Stand Up (feat. Eminem)	youtube	f
KcYPp7Xd9Kw	2019-12-18 12:51:52.17077-05	2019-12-18 12:51:52.17077-05	\N	88000000	DAME TU COSITA IN A NUTSHELL 3! SUPER MARIO	youtube	f
7QzARxWSMlM	2019-12-18 12:57:01.809329-05	2019-12-18 12:57:01.809329-05	\N	55000000	【Miku V4】Dame Tu Cosita【Vocaloid Cover】	youtube	f
hGCSD6AHv5U	2019-12-18 12:57:15.633283-05	2019-12-18 12:57:15.633283-05	\N	75000000	Little Einsteins Theme Song Remix	youtube	f
oBobgJmBRCE	2019-12-18 12:57:38.031573-05	2019-12-18 12:57:38.031573-05	\N	193000000	DAME TU COSITA - [TRAP REMIX] ALIEN DANCE SONG | ENTERTAINING CAMPUS	youtube	f
IxHPEmkXFIg	2019-12-18 13:01:49.890301-05	2019-12-18 13:01:49.890301-05	\N	152000000	DAME TU COSITA EXTREME EARRAPE	youtube	f
-OqrcUvrbRY	2019-12-18 15:02:56.128065-05	2019-12-18 15:02:56.128065-05	\N	175000000	Anderson .Paak - Come Down (Official Video)	youtube	f
jO2viLEW-1A	2019-12-18 15:03:32.701159-05	2019-12-18 15:03:32.701159-05	\N	181000000	Jeremy Zucker - comethru	youtube	f
eNt78mQJavY	2019-12-18 15:07:09.129932-05	2019-12-18 15:07:09.129932-05	\N	200000000	SHAUN – Way Back Home (feat. Conor Maynard) [Sam Feldt Edit] (Official Lyric Video)	youtube	f
sugUX1PtUc4	2020-01-05 14:23:30.191136-05	2020-01-05 14:23:30.191136-05	\N	264000000	JoJo Sono Chi No Sadame Full	youtube	f
ekgPDRTyriY	2020-01-05 14:24:22.966233-05	2020-01-05 14:24:22.966233-05	\N	297000000	JoJo's Bizarre Adventure Opening 4 Full "JOJO Sono Chi no Kioku ~end of THE WORLD~"	youtube	f
j48AbQkXWK8	2020-01-06 13:48:58.910332-05	2020-01-06 13:48:58.910332-05	\N	246000000	Claymore	youtube	f
7u052cW1e1Y	2020-01-06 13:49:15.516235-05	2020-01-06 13:49:15.516235-05	\N	255000000	Kakusei	youtube	f
alp9lJvVnNE	2020-01-06 14:39:45.373192-05	2020-01-06 14:39:45.373192-05	\N	233000000	Army Of Two	youtube	f
einYdvdocJo	2020-01-06 14:40:03.60876-05	2020-01-06 14:40:03.60876-05	\N	229000000	After the fire	youtube	f
ND8_6NSkXCY	2020-01-06 14:41:42.294243-05	2020-01-06 14:41:42.294243-05	\N	237000000	The Tower	youtube	f
C7b9uheTzSk	2020-01-06 14:45:00.754405-05	2020-01-06 14:45:00.754405-05	\N	204000000	Give You The World	youtube	f
ZJfyq-L96Lk	2020-01-06 14:58:33.658139-05	2020-01-06 14:58:33.658139-05	\N	190000000	The Loneliest Girl	youtube	f
7ltt-4fPSk4	2020-01-07 13:36:04.444263-05	2020-01-07 13:36:04.444263-05	\N	390000000	[東方 Vocal] [Liz Triangle]  ありがとう	youtube	f
gwvaU_zeEg8	2020-01-07 14:18:21.506143-05	2020-01-07 14:18:21.506143-05	\N	270000000	【第11回東方ニコ童祭】Variable Mystery/紺碧studio【東方ヴォーカルPV】	youtube	f
vltkAhhm2kU	2020-01-07 14:18:50.894315-05	2020-01-07 14:18:50.894315-05	\N	105000000	Frozen 2 - Into The Unknown (cover by Big Marvel)	youtube	f
h6CHZ0rFWQ4	2020-01-07 14:19:45.581387-05	2020-01-07 14:19:45.581387-05	\N	264000000	あき - SUMMER ENERGY	youtube	f
zWIGYnpbsO4	2020-01-07 17:47:40.721027-05	2020-01-07 17:47:40.721027-05	\N	157000000	Fly Flushin' - SiIvaGunner: King for Another Day	youtube	f
ubokqiJbMhM	2020-01-07 19:28:41.043832-05	2020-01-07 19:28:41.043832-05	\N	323000000	DYNAMITE EXPLOSION	youtube	f
N7M5dfe4oMs	2020-01-07 19:35:51.114546-05	2020-01-07 19:35:51.114546-05	\N	327000000	・・・・・・・・・／「ねぇ」	youtube	f
liQbvDCAoQE	2020-01-07 19:37:44.297613-05	2020-01-07 19:37:44.297613-05	\N	278000000	Stand by Me	youtube	f
st4ZoMhFiVY	2020-01-07 19:38:14.738851-05	2020-01-07 19:38:14.738851-05	\N	222000000	NakamuraEmi「かかってこいよ」(TVアニメ『メガロボクス』エンディングテーマ)Music Video	youtube	f
2Bb8VCfn014	2019-12-19 23:10:47.895372-05	2019-12-19 23:10:47.895372-05	\N	60000000	Crawling in My Crawl (Nightcore)	youtube	f
5-sfG8BV8wU	2019-12-20 00:21:05.443571-05	2019-12-20 00:21:05.443571-05	\N	137000000	Shia LaBeouf - Just Do It (Make Your Dreams Come True) [Ultimate Remix]	youtube	f
SXdmvOXqOgc	2019-12-20 00:21:33.255944-05	2019-12-20 00:21:33.255944-05	\N	143000000	PopularVines: "just do it !" shia labeouf remix compilation	youtube	f
snrS46umUQY	2019-12-20 00:21:47.309107-05	2019-12-20 00:21:47.309107-05	\N	132000000	DO IT! The Shia LaBeouf Remix	youtube	f
FPy_he-ocbo	2019-12-21 16:07:21.011902-05	2019-12-21 16:07:21.011902-05	\N	91000000	mii channel theme but every time it goes dun dun dun it gets bass boosted	youtube	f
OasBTTMxa_U	2019-12-21 16:11:25.226321-05	2019-12-21 16:11:25.226321-05	\N	294000000	Maigoinu To Ame No Beat @ Yojouhan Shinwa Taikei OP	youtube	f
iHy3mB6235g	2019-12-21 16:15:14.688918-05	2019-12-21 16:15:14.688918-05	\N	299000000	Loop (by Sirup)	youtube	f
3M_5oYU-IsU	2019-12-21 16:24:10.883185-05	2019-12-21 16:24:10.883185-05	\N	251000000	BIG SHAQ - MANS NOT HOT (MUSIC VIDEO)	youtube	f
zMQvOnhiKlA	2019-12-21 18:02:56.075063-05	2019-12-21 18:02:56.075063-05	\N	245000000	Haywyre & Zeros - Permutate	youtube	f
bg64AFnRnkc	2019-12-21 18:04:25.853495-05	2019-12-21 18:04:25.853495-05	\N	243000000	Caro - Bad Bunny ( Video Oficial )	youtube	f
hoQmSA6MRAk	2019-12-21 18:05:05.57133-05	2019-12-21 18:05:05.57133-05	\N	233000000	Otra Noche en Miami - Bad Bunny | X 100PRE	youtube	f
TKfKWzCBTm4	2019-12-21 18:05:15.687585-05	2019-12-21 18:05:15.687585-05	\N	320000000	[Glitch Hop or 110BPM] - Haywyre - The Schism [Monstercat LP Release]	youtube	f
Wz2wVLyTar4	2019-12-21 18:51:58.162315-05	2019-12-21 18:51:58.162315-05	\N	267000000	2Pac - To live and die in LA (Dirty Version) [HD].	youtube	f
UzckcWF23ys	2019-12-21 18:52:14.072951-05	2019-12-21 18:52:14.072951-05	\N	236000000	2pac - Old School (Cookin' Soul Remix)	youtube	f
kCMJh4eVUIM	2020-01-02 18:34:22.31594-05	2020-01-02 18:34:22.31594-05	\N	212000000	【フルMV】まるでゴリラ/バーチャルゴリラ	youtube	f
BwVZ_tPryDc	2020-01-03 04:02:42.849793-05	2020-01-03 04:02:42.849793-05	\N	159000000	Bruhlovania	youtube	f
xe7JCnoCmFs	2020-01-05 15:34:24.571038-05	2020-01-05 15:34:24.571038-05	\N	214000000	Vinland Saga Ending 2 Full "Drown" by Milet	youtube	f
3w4B16TRsPM	2020-01-05 15:59:18.890834-05	2020-01-05 15:59:18.890834-05	\N	143000000	Gourmet Race (64) | Super Smash Bros. Ultimate	youtube	f
FMrqlo_L-gY	2020-01-06 12:04:05.683143-05	2020-01-06 12:04:05.683143-05	\N	237000000	WORLD ORDER  "Let's start WW3”	youtube	f
dEcTdl9AspE	2020-01-06 15:51:58.679183-05	2020-01-06 15:51:58.679183-05	\N	181000000	Absolute proof that Smash Mouth All Star works with literally any song	youtube	f
79LHxkJE3fg	2020-01-06 15:53:02.940099-05	2020-01-06 15:53:02.940099-05	\N	235000000	TK - unravel HQ [Tokyo Ghoul] FULL	youtube	f
r2S1I_ien6A	2020-01-06 16:09:05.467834-05	2020-01-06 16:09:05.467834-05	\N	323000000	"SING, SING, SING" BY BENNY GOODMAN	youtube	f
WXrdYwG17PE	2020-01-06 16:09:20.574404-05	2020-01-06 16:09:20.574404-05	\N	236000000	Parov Stelar - Catgroove (Official Audio)	youtube	f
psLjNy9-L_c	2020-01-06 16:10:07.191351-05	2020-01-06 16:10:07.191351-05	\N	214000000	Pump It - The Black Eyed Peas HQ (HD)	youtube	f
UOjXWKNWQDw	2020-01-06 16:12:56.809788-05	2020-01-06 16:12:56.809788-05	\N	453000000	Count Bubba	youtube	f
FVxY-KmWsYY	2020-01-06 16:16:31.754702-05	2020-01-06 16:16:31.754702-05	\N	396000000	Count Bubba's Revenge - Gordon Goodwin	youtube	f
UISxce3pKGI	2020-01-06 22:18:54.763363-05	2020-01-06 22:18:54.763363-05	\N	246000000	Stereo Bruh (Stereo love bruh remix)	youtube	f
92Gq_mG-cQY	2020-01-06 22:31:28.241592-05	2020-01-06 22:31:28.241592-05	\N	317000000	Bad Apple Bottom Jeans - Flo Rida × Alstroemeria Records	youtube	f
oh5ZZz1_YAQ	2020-01-07 14:06:14.001565-05	2020-01-07 14:06:14.001565-05	\N	337000000	【東方Vocal】peЯoco - DUOTONE LOGIC (DJ katsu CLUB EDIT) (DiGiTAL WiNG)	youtube	f
FjIWp2uxAHk	2020-01-07 14:08:22.330425-05	2020-01-07 14:08:22.330425-05	\N	215000000	【東方ボーカル】 「θで突き刺して」 【幽閉サテライト】 【Subbed】	youtube	f
zY7-oI_MdrI	2020-01-07 14:13:30.202969-05	2020-01-07 14:13:30.202969-05	\N	276000000	SOUND HOLIC feat. Nana Takahashi - "SkyDrift" (full)	youtube	f
pnnmxtKZY3A	2020-01-07 14:13:46.468033-05	2020-01-07 14:13:46.468033-05	\N	17000000	DK rap but it's Feliz Navidad	youtube	f
OMjjqfpKa_c	2020-01-07 14:14:37.893939-05	2020-01-07 14:14:37.893939-05	\N	153000000	Cascada - Dream On Dreamer (Nightcore Mix)	youtube	f
ZWkO_M6vWBw	2020-01-07 14:16:06.827705-05	2020-01-07 14:16:06.827705-05	\N	145000000	Nightcore - Ready or not	youtube	f
EFH9soeufXY	2020-01-07 16:58:14.271688-05	2020-01-07 16:58:14.271688-05	\N	230000000	Winnie The Pooh dancing to Pitbull (full song)	youtube	f
FowWFOsuF_A	2020-01-07 17:21:07.513291-05	2020-01-07 17:21:07.513291-05	\N	114000000	Konga Conga Kappa (King Conga) (Unused Version) - Crypt of the NecroDancer	youtube	f
e62M-5-7ajY	2020-01-07 18:10:19.010618-05	2020-01-07 18:10:19.010618-05	\N	230000000	Every Michael Jackson Grunt	youtube	f
qJXcBEsJ-WQ	2020-01-07 18:42:04.013688-05	2020-01-07 18:42:04.013688-05	\N	212000000	BLACKPINK vs Daler Mehndi - 뚜두뚜두 (TU-NAK TU-NAK) (feat. Party Favor & Nymz) (J.E.B Mashup)	youtube	f
iIgEWRb61IQ	2020-01-07 22:36:40.271152-05	2020-01-07 22:36:40.271152-05	\N	111000000	Slap My Nuts	youtube	f
_8Qudou3ntU	2020-01-07 22:41:04.629614-05	2020-01-07 22:41:04.629614-05	\N	205000000	"Nigga" from Wikipedia, the Free Encyclopedia at https://en.wikipedia.org	youtube	f
6YDoowoYzOI	2020-01-07 22:42:29.718993-05	2020-01-07 22:42:29.718993-05	\N	119000000	Big Chungus (song)	youtube	f
m1-rpd3S-48	2020-01-07 22:43:18.877365-05	2020-01-07 22:43:18.877365-05	\N	197000000	[OFFICIAL VIDEO] Attention - Pentatonix	youtube	f
dRAtIhCZpT8	2020-01-07 22:49:00.032421-05	2020-01-07 22:49:00.032421-05	\N	81000000	Main Theme - Until it's Done Done	youtube	f
w5x7956gchI	2020-01-08 01:40:57.157029-05	2020-01-08 01:40:57.157029-05	\N	227000000	Ooh Nah Nah - SiIvaGunner: King for Another Day	youtube	f
\.


--
-- Name: media media_pkey; Type: CONSTRAINT; Schema: public; Owner: prismriver
--

ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_pkey PRIMARY KEY (id, type);


--
-- Name: idx_media_deleted_at; Type: INDEX; Schema: public; Owner: prismriver
--

CREATE INDEX idx_media_deleted_at ON public.media USING btree (deleted_at);


--
-- PostgreSQL database dump complete
--

