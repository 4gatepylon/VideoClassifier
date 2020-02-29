--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Raspbian 11.5-1+deb10u1)
-- Dumped by pg_dump version 11.5 (Raspbian 11.5-1+deb10u1)

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
bequiet	2020-01-20 12:00:51.322991-05	2020-01-20 12:00:51.322991-05	\N	3710000000	Please Be Quiet!	internal	f
gwvaU_zeEg8	2020-01-20 12:33:15.725466-05	2020-01-20 12:33:15.725466-05	\N	270000000	【第11回東方ニコ童祭】Variable Mystery/紺碧studio【東方ヴォーカルPV】	youtube	t
TPjAsus_bZo	2020-01-20 12:36:23.476398-05	2020-01-20 12:36:23.476398-05	\N	294000000	【東方ヴォーカルPV】無間嫉妬劇場『666』【森羅万象公式】	youtube	t
cPJUBQd-PNM	2020-01-20 12:39:34.991432-05	2020-01-20 12:39:34.991432-05	\N	265000000	"Revenge" - A Minecraft Parody of Usher's DJ Got Us Fallin' In Love (Music Video)	youtube	t
p-o_bMkzOW0	2020-01-20 12:44:37.389806-05	2020-01-20 12:44:37.389806-05	\N	205000000	LUVORATORRRRRY! ver れをる feat.nqrse	youtube	t
9eyyhtOrKPI	2020-01-20 12:44:54.019695-05	2020-01-20 12:44:54.019695-05	\N	227000000	[MV] REOL - drop pop candy	youtube	t
o0-DCn9Vao0	2020-01-20 13:00:20.029986-05	2020-01-20 13:00:20.029986-05	\N	273000000	ミカヅキBIGWAVE - Emotional Prism 感情的なプリズム	youtube	f
QoCcDi8zH8M	2020-01-20 13:06:18.92328-05	2020-01-20 13:06:18.92328-05	\N	85000000	whomst.mp4	youtube	t
iIgEWRb61IQ	2020-01-20 13:08:20.91741-05	2020-01-20 13:08:20.91741-05	\N	111000000	Slap My Nuts	youtube	t
GjjZacZSWT4	2020-01-20 13:12:59.100824-05	2020-01-20 13:12:59.100824-05	\N	21000000	i learnt 3D animation to make this 1 video	youtube	t
6zB6lvWLDXQ	2020-01-20 13:14:55.411796-05	2020-01-20 13:14:55.411796-05	\N	151000000	when Gaston was a lad he ate 4 doz. eggs every morning to help him get barge.	youtube	t
XJhnuBlZSfU	2020-01-20 13:19:40.523272-05	2020-01-20 13:19:40.523272-05	\N	798000000	iRacing 24 Hours of Daytona - Fails, Wins & Funny Moments - January 2020	youtube	t
JES55S-l5RM	2020-01-20 13:25:27.531385-05	2020-01-20 13:25:27.531385-05	\N	199000000	〔れをる〕 一心不乱 〔feat ill.bell,nqrse〕	youtube	t
QgJmliDNi0U	2020-01-20 13:27:21.500578-05	2020-01-20 13:27:21.500578-05	\N	395000000	FailRace Episode 263 - Don't Fight With Lawnmowers.	youtube	t
X_XGxzMrq04	2020-01-20 13:34:56.010213-05	2020-01-20 13:34:56.010213-05	\N	229000000	"Don't Mine At Night" - A Minecraft Parody of Katy Perry's Last Friday Night (Music Video)	youtube	t
igH3lbZ81Ao	2020-01-20 13:35:15.931278-05	2020-01-20 13:35:15.931278-05	\N	29000000	Talk Dirty to Sans Undertale	youtube	t
2KG-vH46U0c	2020-01-20 13:35:43.291613-05	2020-01-20 13:35:43.291613-05	\N	341000000	Discord Sings Mr. Blue Sky (gone wrong)	youtube	t
tVj0ZTS4WF4	2020-01-20 13:40:54.761606-05	2020-01-20 13:40:54.761606-05	\N	246000000	Weird russian singer - Chum Drum Bedrum	youtube	f
SaJz1cEiNVA	2020-01-20 13:42:29.360258-05	2020-01-20 13:42:29.360258-05	\N	711000000	EXTREME MEME MUSIC MEGAMASHUP 3	youtube	t
qWVc-xVZxho	2020-01-20 13:42:50.480391-05	2020-01-20 13:42:50.480391-05	\N	251000000	(HQ) Vitas - The 7th Element 2001	youtube	t
OUHVRWdVQCI	2020-01-20 13:43:06.780935-05	2020-01-20 13:43:06.780935-05	\N	312000000	SLAV MEME COMPILATION	youtube	t
oQmkuZJLTyQ	2020-01-20 13:43:43.373372-05	2020-01-20 13:43:43.373372-05	\N	81000000	Hat	youtube	t
dFdBLHSW_zI	2020-01-20 13:45:02.520011-05	2020-01-20 13:45:02.520011-05	\N	246000000	Closer by the Chainsmokers but every lyric is replaced by All Star by Smash Mouth	youtube	f
yBLdQ1a4-JI	2020-01-20 13:45:14.314107-05	2020-01-20 13:45:14.314107-05	\N	43000000	AHHHHH	youtube	t
u0GPQpAbTyw	2020-01-20 13:45:21.284619-05	2020-01-20 13:45:21.284619-05	\N	112000000	How to Pick Up a Blue Chair Off the Ground	youtube	t
Z1G4V6X5ONA	2020-01-20 13:45:29.012023-05	2020-01-20 13:45:29.012023-05	\N	19000000	Jean-Claude Van Damme - mit Katana (Do you like Sushi?)	youtube	t
iBpdKkbvrko	2020-01-20 13:45:36.877059-05	2020-01-20 13:45:36.877059-05	\N	300000000	DJ Dooku Drops JEDI PARTY	youtube	t
riP-x50DP2U	2020-01-20 13:45:44.121409-05	2020-01-20 13:45:44.121409-05	\N	28000000	Age of Empires IRL	youtube	t
A1PAO3jgmXY	2020-01-20 13:45:51.564875-05	2020-01-20 13:45:51.564875-05	\N	152000000	Soviet Army dancing to Hard Bass	youtube	t
h4XOTPybSW8	2020-01-20 13:45:59.350813-05	2020-01-20 13:45:59.350813-05	\N	221000000	Gamecube Startup 4 Billion times.	youtube	t
V3hL0IEKbq4	2020-01-20 13:46:49.417049-05	2020-01-20 13:46:49.417049-05	\N	16000000	Slavic train with hardbass	youtube	t
SQoA_wjmE9w	2020-01-20 13:47:04.815865-05	2020-01-20 13:47:04.815865-05	\N	195000000	Sandroll	youtube	t
Ey5GItze-BY	2020-01-20 13:47:24.253426-05	2020-01-20 13:47:24.253426-05	\N	71000000	All Star but it's a Bach chorale following the conventions of the Common Practice Period	youtube	f
3_slOp6yhjQ	2020-01-20 13:50:08.766244-05	2020-01-20 13:50:08.766244-05	\N	289000000	Company of Thieves - Oscar Wilde	youtube	f
WSDn1y1THPY	2020-01-20 13:58:23.813242-05	2020-01-20 13:58:23.813242-05	\N	93000000	【Sans Undertale MMD】Chikatto Chika Chikattsu	youtube	t
NcsECg6RtcM	2020-01-20 14:03:11.224954-05	2020-01-20 14:03:11.224954-05	\N	203000000	the show we put on	youtube	t
3lttyZhTYVg	2020-01-20 14:04:47.416407-05	2020-01-20 14:04:47.416407-05	\N	214000000	CBT The Full Experience	youtube	t
WA_djlZ0uhs	2020-01-20 14:05:51.616209-05	2020-01-20 14:05:51.616209-05	\N	210000000	u got hat	youtube	t
AtWBqB0_aTA	2020-01-20 14:19:29.916505-05	2020-01-20 14:19:29.916505-05	\N	138000000	Red Roses Too.gifv	youtube	t
fV-E6NoK2L8	2020-01-20 14:20:28.175579-05	2020-01-20 14:20:28.175579-05	\N	219000000	Transcendental Granola - You Suck at Cooking (episode 43)	youtube	t
J2LBttJgCTk	2020-01-20 14:23:35.150309-05	2020-01-20 14:23:35.150309-05	\N	119000000	Tones and I - Dance Monkey 🎧	youtube	t
k7EqoT5YOqk	2020-01-20 14:29:02.456189-05	2020-01-20 14:29:02.456189-05	\N	264000000	Viva La Kingdom (Fallen Kingdom and Viva La Vida Mashup)	youtube	f
XejVB_fba04	2020-01-20 14:29:25.854862-05	2020-01-20 14:29:25.854862-05	\N	220000000	Jonas Brothers - What A Man Gotta Do (Official Video)	youtube	f
PN-zHSvDc1g	2020-01-20 14:31:38.036754-05	2020-01-20 14:31:38.036754-05	\N	191000000	Sucker is a new and original song which doesn't plagiarize at all	youtube	t
I-sH53vXP2A	2020-01-20 14:43:49.829336-05	2020-01-20 14:43:49.829336-05	\N	288000000	"Fallen Kingdom" - A Minecraft Parody of Coldplay's Viva la Vida (Music Video)	youtube	t
YHnUSZhhOxU	2020-01-20 14:44:22.906813-05	2020-01-20 14:44:22.906813-05	\N	19000000	cbt	youtube	t
Pv61yEcOqpw	2020-01-20 14:46:59.227086-05	2020-01-20 14:46:59.227086-05	\N	22000000	You want him to do you so much that you could do anything	youtube	t
2k0SmqbBIpQ	2020-01-20 14:47:35.866662-05	2020-01-20 14:47:35.866662-05	\N	19000000	it's time to stop	youtube	t
S9AjQTVXT1o	2020-01-20 14:47:49.169831-05	2020-01-20 14:47:49.169831-05	\N	114000000	Gachi Sort	youtube	t
tKNhPpUR0Pg	2020-01-20 14:49:01.485785-05	2020-01-20 14:49:01.485785-05	\N	202000000	You're a Wizard Harry	youtube	t
VfCYZ3pks48	2020-01-20 14:49:13.127034-05	2020-01-20 14:49:13.127034-05	\N	237000000	Sex Offender Shuffle	youtube	t
ZXOBW8SMAJ8	2020-01-20 14:49:28.469145-05	2020-01-20 14:49:28.469145-05	\N	6000000	Are you choking? ARE YOU CHOKING? Hilarious 2015 Funny Comedy Vine	youtube	t
uj-ODQnxAfA	2020-01-20 14:50:23.012422-05	2020-01-20 14:50:23.012422-05	\N	261000000	WELCOME TO THE INTERNET!	youtube	t
c0-VnkgeLiY	2020-01-20 14:50:39.71421-05	2020-01-20 14:50:39.71421-05	\N	215000000	Shots but it's Il Vento D'oro	youtube	t
mKkLjJHwRec	2020-01-20 14:51:09.991657-05	2020-01-20 14:51:09.991657-05	\N	359000000	Computer Error Song	youtube	f
wsj15wPpjLY	2020-01-20 15:18:13.008641-05	2020-01-20 15:18:13.008641-05	\N	189000000	Seasons of Love - Rent Original Motion Picture Soundtrack	youtube	f
v_iMvf1Djmw	2020-01-20 16:04:57.793482-05	2020-01-20 16:04:57.793482-05	\N	175000000	【Hatsune Miku & Gumi English】ASSGORE (Fingerfückung)【VOCALOID Cover】	youtube	t
ZsUoefdaoo0	2020-01-20 16:45:39.301677-05	2020-01-20 16:45:39.301677-05	\N	153000000	Patty Power	youtube	t
fU3jfk-O7L0	2020-01-20 16:47:54.265293-05	2020-01-20 16:47:54.265293-05	\N	129000000	SPICETALE	youtube	t
cxNLJl_pAuc	2020-01-20 16:52:00.63768-05	2020-01-20 16:52:00.63768-05	\N	123000000	Mr. Game and Watch vibin, Short Version (Albino)	youtube	t
9DbXmreD_go	2020-01-20 17:07:03.967429-05	2020-01-20 17:07:03.967429-05	\N	144000000	Sex - Steve Harvey	youtube	t
2b9vCJuofo8	2020-01-20 17:09:13.842879-05	2020-01-20 17:09:13.842879-05	\N	250000000	Former Hell Funk - SiIvaGunner: King for Another Day	youtube	f
XB7TsvBQUMQ	2020-01-20 17:11:19.519967-05	2020-01-20 17:11:19.519967-05	\N	370000000	FIGHTCLUB CHINATOWN - SiIvaGunner: King for Another Day	youtube	f
o_TIdWRuixo	2020-01-20 17:11:25.682828-05	2020-01-20 17:11:25.682828-05	\N	214000000	Yasuha - Flyday Chinatown	youtube	f
spN2_Tuw9hE	2020-01-20 17:25:13.738-05	2020-01-20 17:25:13.738-05	\N	300000000	Mariya Takeuchi 竹内まりや - Shiawase no Monosashi (VANTAGE// Edit)	youtube	f
_tA3qxh1y6U	2020-01-20 17:32:26.827502-05	2020-01-20 17:32:26.827502-05	\N	212000000	【東方Vocal／Eurobeat】 Cosmos Routine (EUROBEAT Remix) 「556mm」【JPN Subtitle】	youtube	f
4mbtk45j6rc	2020-01-20 17:37:26.429333-05	2020-01-20 17:37:26.429333-05	\N	276000000	【東方ボーカル】 「WORLD DOMINATION」 【SOUND HOLIC】	youtube	f
Lk7t7m8uXgg	2020-01-20 17:46:31.447125-05	2020-01-20 17:46:31.447125-05	\N	273000000	【東方ボーカル】 「DESTRUCTION A to Z」 【SOUND HOLIC】	youtube	f
n4qIQ_1cDew	2020-01-20 17:46:52.059705-05	2020-01-20 17:46:52.059705-05	\N	283000000	【東方ヴォーカルPV】全力ハッピーライフ【森羅万象公式】	youtube	t
HgNj9v5ClGQ	2020-01-20 18:04:44.44-05	2020-01-20 18:04:44.44-05	\N	450000000	【Shibayan Records】 オズネイ・ハマンはもういらない	youtube	f
JhH1waXoHy8	2020-01-20 21:55:01.972332-05	2020-01-20 21:55:01.972332-05	\N	54000000	ＥＬＥＣＴＲＩＣ ＢＯＤＹＢＵＩＬＤＥＲ ＦＲＯＭ ＴＨＥ ＵＮＤＥＲＧＲＯＵＮＤ	youtube	t
buc64u6Q_oA	2020-01-20 21:57:59.886992-05	2020-01-20 21:57:59.886992-05	\N	36000000	acquire the sire	youtube	t
I-oY8ZZ78LY	2020-01-20 21:58:14.635738-05	2020-01-20 21:58:14.635738-05	\N	84000000	sad kiwi hours	youtube	t
tAZMDz2Y7Nk	2020-01-20 22:00:47.711327-05	2020-01-20 22:00:47.711327-05	\N	14000000	meowth ascends	youtube	t
8cOt9UcYGOU	2020-01-20 22:01:46.62366-05	2020-01-20 22:01:46.62366-05	\N	236000000	Delta Heavy - Get By (Official Video)	youtube	t
lhjk5x54bsE	2020-01-20 22:01:55.098808-05	2020-01-20 22:01:55.098808-05	\N	224000000	The Turntable Turnabout (Mystery Skulls - Money)	youtube	t
YlEb3L1PIco	2020-01-20 22:09:23.77559-05	2020-01-20 22:09:23.77559-05	\N	275000000	Mystery Skulls Animated - Ghost	youtube	t
I6KF0PwjSjM	2020-01-20 22:12:37.893162-05	2020-01-20 22:12:37.893162-05	\N	177000000	Alison Wonderland - High ft. Trippie Redd	youtube	t
XGxCMyLm6js	2020-01-20 22:23:51.27138-05	2020-01-20 22:23:51.27138-05	\N	39000000	trying to guess anime characters' ages	youtube	t
KtvNU4hH_Gc	2020-01-20 22:25:50.279776-05	2020-01-20 22:25:50.279776-05	\N	106000000	【Touhou Fanmade Anime OP】 Touhou Hakureisou 【東方アニメ  SOUNDHOLIC】	youtube	t
-rsEs4HWXeY	2020-01-20 22:58:44.733478-05	2020-01-20 22:58:44.733478-05	\N	59000000	Big Bill Hell's Cars (Original)	youtube	t
EvTaE99vfIw	2020-01-20 23:01:32.645688-05	2020-01-20 23:01:32.645688-05	\N	109000000	Touhou Anime PVD5 #3 - Candy Powder【東方PVD5】(C85)	youtube	t
qJXcBEsJ-WQ	2020-01-20 23:10:58.909252-05	2020-01-20 23:10:58.909252-05	\N	212000000	BLACKPINK vs Daler Mehndi - 뚜두뚜두 (TU-NAK TU-NAK) (feat. Party Favor & Nymz) (J.E.B Mashup)	youtube	f
PjvTTfbpWjY	2020-01-20 23:28:37.147793-05	2020-01-20 23:28:37.147793-05	\N	158000000	Shostakovich String Quartet No. 8 in C Minor (II)	youtube	f
RTvh-KPYFDA	2020-01-21 00:32:10.400724-05	2020-01-21 00:32:10.400724-05	\N	234000000	Overwatch: Best Piano Players Paris PTR (Running in the 90s, Megalovania, Mario Bros. Theme & More)	youtube	t
xe7JCnoCmFs	2020-01-21 13:49:32.858354-05	2020-01-21 13:49:32.858354-05	\N	214000000	Vinland Saga Ending 2 Full "Drown" by Milet	youtube	f
f9O2Rjn1azc	2020-01-21 13:56:32.394694-05	2020-01-21 13:56:32.394694-05	\N	180000000	Transistor Original Soundtrack - We All Become	youtube	f
41tIUr_ex3g	2020-01-21 13:56:40.414331-05	2020-01-21 13:56:40.414331-05	\N	224000000	Transistor Original Soundtrack - The Spine	youtube	f
cGMWL8cOeAU	2020-01-21 13:56:49.847828-05	2020-01-21 13:56:49.847828-05	\N	236000000	Transistor Original Soundtrack - In Circles	youtube	f
vFrjMq4aL-g	2020-01-21 13:56:57.8099-05	2020-01-21 13:56:57.8099-05	\N	271000000	Transistor Original Soundtrack - Paper Boats	youtube	f
UyDG6y08YOA	2020-01-21 16:10:07.725521-05	2020-01-21 16:10:07.725521-05	\N	34000000	here comes pac man 4k	youtube	f
gRy1EepJYEA	2020-01-21 23:14:13.389813-05	2020-01-21 23:14:13.389813-05	\N	252000000	Despaircito | Danganronpa MV	youtube	t
6F5azNTnaOI	2020-01-21 23:34:39.373384-05	2020-01-21 23:34:39.373384-05	\N	175000000	MMD - Sans Undertale x Nagito Komaeda (fingers in his ass)	youtube	t
VSPuRXkUWoU	2020-01-21 23:37:53.841797-05	2020-01-21 23:37:53.841797-05	\N	47000000	how to create billie eilish's "bad guy"	youtube	t
PEAuoJRVgE8	2020-01-21 23:41:28.243491-05	2020-01-21 23:41:28.243491-05	\N	220000000	Kero Kero Bonito - When the Fires Come	youtube	t
wY3kl5CRSkc	2020-01-21 23:48:45.239793-05	2020-01-21 23:48:45.239793-05	\N	85000000	ナイト・オブ・【SAX】	youtube	t
X1M69l7ZGlw	2020-01-21 23:51:19.184014-05	2020-01-21 23:51:19.184014-05	\N	92000000	Platinum Spice	youtube	t
IpXQYRc0LOg	2020-01-21 23:52:45.794522-05	2020-01-21 23:52:45.794522-05	\N	96000000	How Do You Octagon！？	youtube	t
FHI6ifd9xIE	2020-01-21 23:54:51.704055-05	2020-01-21 23:54:51.704055-05	\N	102000000	Through The Dirt And Tiles	youtube	t
x-ioZed6aSk	2020-01-21 23:57:55.311996-05	2020-01-21 23:57:55.311996-05	\N	105000000	We are number one but it's octagon	youtube	t
bruh-de-la-boi/its-a-sin-that-this-mashup-works	2020-01-22 00:06:21.658474-05	2020-01-22 00:06:21.658474-05	\N	132400000	It's a sin that this mashup works.	soundcloud	f
mudJyhjtWEE	2020-01-22 01:17:12.357728-05	2020-01-22 01:17:12.357728-05	\N	278000000	VIRTUAL DREAM	youtube	f
xeuphoric/sky-city	2020-01-22 01:32:39.815067-05	2020-01-22 01:32:39.815067-05	\N	269269000	Sky City	soundcloud	f
L-xi8orqmu8	2020-01-22 13:07:07.840973-05	2020-01-22 13:07:07.840973-05	\N	162000000	the only time i make a dame tu cosita mashup	youtube	t
tCM6W-1A4lo	2020-01-22 13:31:00.941925-05	2020-01-22 13:31:00.941925-05	\N	350000000	Touhou 10 MoF - Faith is for the Transient People 【Intense Symphonic Metal Cover】	youtube	f
gazden-roolay/itried-so-hard-1	2020-01-22 14:01:08.767056-05	2020-01-22 14:01:08.767056-05	\N	171326000	iTried So Hard	soundcloud	f
Vwo1sTdZi0g	2020-01-22 14:07:38.87644-05	2020-01-22 14:07:38.87644-05	\N	303000000	Il vento d'orifto	youtube	f
GigzaqqOl6Y	2020-01-22 14:09:51.813464-05	2020-01-22 14:09:51.813464-05	\N	381000000	GALNERYUS - RAISE MY SWORD (cover by a retard)	youtube	t
0wd8lOHKfbc	2020-01-22 14:15:09.339515-05	2020-01-22 14:15:09.339515-05	\N	392000000	Why Doom Eternal WILL NOT be Game of the Year!!!	youtube	t
34-3oPiu98s	2020-01-22 14:15:30.066439-05	2020-01-22 14:15:30.066439-05	\N	245000000	BILLIE EILISH - "Bad Guy" - DANCE IN PUBLIC!!	youtube	t
bpszIdtcWQc	2020-01-22 14:15:30.640704-05	2020-01-22 14:15:30.640704-05	\N	85000000	take on thoose notes	youtube	t
kZX0srAgvko	2020-01-22 14:28:41.572902-05	2020-01-22 14:28:41.572902-05	\N	105000000	Hige Driver join. SELEN - Dadadadadadadadadada (Indian friendly version)	youtube	f
_V3pkENp6ho	2020-01-22 14:30:01.914113-05	2020-01-22 14:30:01.914113-05	\N	407000000	If METAL Sounded HAPPY! 20 Metal Riffs in Major Key	youtube	t
H7hiF7fXhLg	2020-01-22 14:32:56.174838-05	2020-01-22 14:32:56.174838-05	\N	260000000	Bloody Slam - Quad City DJs vs Coda	youtube	f
1ReSKnPhenU	2020-01-22 14:33:10.436807-05	2020-01-22 14:33:10.436807-05	\N	238000000	Hoops! Nyaruko-slam W (Quad City DJ's vs. Nyarlathotep)	youtube	f
I8ogRMPlQF8	2020-01-22 14:40:49.387398-05	2020-01-22 14:40:49.387398-05	\N	236000000	Slipknot - Psychosocial (ACOUSTIC COVER in Major Key)	youtube	f
lpSv_oElmhI	2020-01-22 15:02:50.517653-05	2020-01-22 15:02:50.517653-05	\N	226000000	【東方Vocal／Eurobeat】 君は僕の、僕は君の (EUROBEAT Remix) 「556mm」	youtube	f
0ffGuajCdwg	2020-01-22 15:51:43.931957-05	2020-01-22 15:51:43.931957-05	\N	318000000	Undertale - Death by Glamour (Mettaton EX) 【Intense Symphonic Metal Cover】	youtube	f
zo9SBBSjRKg	2020-01-22 17:57:51.670643-05	2020-01-22 17:57:51.670643-05	\N	623000000	Baby I'm Back IV	youtube	t
Vd5YgpEqUYY	2020-01-22 18:33:57.480181-05	2020-01-22 18:33:57.480181-05	\N	103000000	I switched Perfect Cell's Voice with Plankton's	youtube	t
sugUX1PtUc4	2020-01-22 18:47:43.757379-05	2020-01-22 18:47:43.757379-05	\N	264000000	JoJo Sono Chi No Sadame Full	youtube	f
m01lS3UWghk	2020-01-22 19:08:35.821228-05	2020-01-22 19:08:35.821228-05	\N	177000000	ASSGORE (Fingerfückung) | But every time he says ass the bass gets boosted	youtube	f
6yqKAblvqnc	2020-01-22 19:11:26.411483-05	2020-01-22 19:11:26.411483-05	\N	314000000	sicko mode but every other 4 beats it switches to dicko mode and back	youtube	f
-hJf4ZffkoI	2020-01-22 19:11:50.627548-05	2020-01-22 19:11:50.627548-05	\N	495000000	Mozart Symphony #40 in G Minor, K 550 - 1. Molto Allegro	youtube	f
OUpe2E5ou80	2020-01-22 19:12:15.018795-05	2020-01-22 19:12:15.018795-05	\N	245000000	Xing Noises  ( UNDEAD CORPORATION Official Lyric Video)	youtube	t
TGcR7gCDMk8	2020-01-22 19:13:00.135702-05	2020-01-22 19:13:00.135702-05	\N	339000000	artefatto vita - witch's slave	youtube	f
tGJVqN2Emsw	2020-01-22 19:13:56.730855-05	2020-01-22 19:13:56.730855-05	\N	161000000	Gaston but it zooms into random objects	youtube	t
JNYPjxisTGw	2020-01-22 19:14:23.938444-05	2020-01-22 19:14:23.938444-05	\N	216000000	【J-POP】Kano - Sukisuki Zecchou Shou	youtube	t
cOe9RPqg1GE	2020-01-22 19:14:48.544952-05	2020-01-22 19:14:48.544952-05	\N	277000000	Sana - Packet Hero	youtube	f
zel6hU84bYs	2020-01-22 19:16:11.345693-05	2020-01-22 19:16:11.345693-05	\N	245000000	【World Fragments】xi - Aragami	youtube	f
xa-4IAR_9Yw	2020-01-22 19:19:17.344796-05	2020-01-22 19:19:17.344796-05	\N	151000000	Casually Explained: Is She Into You?	youtube	t
6ltAVRyeqHk	2020-01-22 19:31:35.530046-05	2020-01-22 19:31:35.530046-05	\N	189000000	PINK GUY - NICKELODEON GIRLS	youtube	f
90SGLQywYwY	2020-01-22 19:44:08.359133-05	2020-01-22 19:44:08.359133-05	\N	144000000	Nightcore - Dangerous	youtube	f
twhF6SM0KyY	2020-01-22 19:58:23.312458-05	2020-01-22 19:58:23.312458-05	\N	223000000	Peaks Police	youtube	t
2uFPEcySxx8	2020-01-22 20:06:35.542822-05	2020-01-22 20:06:35.542822-05	\N	86000000	Treasure Bodywash Cove	youtube	t
Gvj0i1PN-Pw	2020-01-22 20:08:34.15964-05	2020-01-22 20:08:34.15964-05	\N	80000000	The Kitchen Gun & The Toilet Grenade	youtube	t
6Ajhzlq42f0	2020-01-22 20:10:36.371624-05	2020-01-22 20:10:36.371624-05	\N	59000000	Super Spice Bros 2	youtube	t
n52MADpXYT8	2020-01-22 20:11:21.746269-05	2020-01-22 20:11:21.746269-05	\N	73000000	[Reupload] Run Run Bodywash	youtube	t
eWEFU2c3tBI	2020-01-22 20:13:33.769778-05	2020-01-22 20:13:33.769778-05	\N	203000000	Miki Núñez - La Venda (Eurovision Song Contest / Tel Aviv 2019)	youtube	t
Gmf-TW5rWiY	2020-01-22 20:15:11.410301-05	2020-01-22 20:15:11.410301-05	\N	41000000	Graweedy Falls	youtube	t
sifVwz5Nguc	2020-01-22 20:19:01.554769-05	2020-01-22 20:19:01.554769-05	\N	24000000	Adweedure time with Snoop & Dogg	youtube	t
rnS-05XoXs4	2020-01-22 20:19:16.140259-05	2020-01-22 20:19:16.140259-05	\N	61000000	Smokémon	youtube	t
DJfg39WkMvE	2020-01-22 20:20:07.148636-05	2020-01-22 20:20:07.148636-05	\N	93000000	Blend W	youtube	t
dNJdJIwCF_Y	2020-01-22 20:20:59.792549-05	2020-01-22 20:20:59.792549-05	\N	101000000	Fresh Guacamole by PES | Oscar Nominated Short	youtube	t
wBClhMEBbGA	2020-01-22 20:21:58.226456-05	2020-01-22 20:21:58.226456-05	\N	6000000	"S" Stands For	youtube	t
kduVm1Z43U4	2020-01-22 20:24:25.348861-05	2020-01-22 20:24:25.348861-05	\N	131000000	S stands for...	youtube	t
XZNAHd7pgy4	2020-01-22 20:24:41.599413-05	2020-01-22 20:24:41.599413-05	\N	446000000	the brain	youtube	t
Tlwda9S58Lg	2020-01-22 20:26:16.353476-05	2020-01-22 20:26:16.353476-05	\N	7000000	I have the power of god and anime on my side	youtube	t
A7XdOyZIkko	2020-01-22 20:29:00.234175-05	2020-01-22 20:29:00.234175-05	\N	276000000	Speak Like Darth Vader with Sulfur Hexafluoride	youtube	t
1uHPn51tC20	2020-01-22 20:29:51.344295-05	2020-01-22 20:29:51.344295-05	\N	65000000	Boneless Pizza [SFM]	youtube	t
BH-b_Thp7UU	2020-01-22 20:30:48.479892-05	2020-01-22 20:30:48.479892-05	\N	4000000	Blend J	youtube	t
nl8o9PsJPAQ	2020-01-22 20:31:48.862215-05	2020-01-22 20:31:48.862215-05	\N	185000000	Meet the Deadliest Cat on the Planet	youtube	t
5mW1P0gpWrk	2020-01-22 20:37:26.360504-05	2020-01-22 20:37:26.360504-05	\N	6000000	Smile Sweet Sister Sadistic Stinky Poop Meme	youtube	t
P1CAswQH2Ow	2020-01-22 20:40:26.419355-05	2020-01-22 20:40:26.419355-05	\N	18000000	A GANGSTAR HAS FALLEN INTO THE RIVER IN LEGO CTIY	youtube	t
yeh708tybpM	2020-01-22 20:43:59.975815-05	2020-01-22 20:43:59.975815-05	\N	704000000	We Are Number One but every one is replaced with Mike Wazowski getting Slammed each time 20% slower	youtube	t
G5KxZ5Lc_YA	2020-01-22 20:48:39.371562-05	2020-01-22 20:48:39.371562-05	\N	79000000	Lazy Town-Cooking by the book remix ft. Lil Jon	youtube	t
ZW8AZgBaXzE	2020-01-22 20:49:58.634942-05	2020-01-22 20:49:58.634942-05	\N	68000000	Arthur Theme Song ft. Lil Jon	youtube	t
pgul67PqOkg	2020-01-22 20:57:05.548169-05	2020-01-22 20:57:05.548169-05	\N	209000000	Friends Halation - The Rembrandts vs. Love Live!	youtube	t
V263ad2e2uk	2020-01-22 20:57:21.156258-05	2020-01-22 20:57:21.156258-05	\N	68000000	National Bruh Moment Alert:	youtube	t
3nlSDxvt6JU	2020-01-23 00:27:54.450359-05	2020-01-23 00:27:54.450359-05	\N	240000000	Snail's House - Pixel Galaxy (Official MV)	youtube	f
US3VTVDRbjE	2020-01-23 00:28:07.8856-05	2020-01-23 00:28:07.8856-05	\N	244000000	Snail's House - Snailchan Adventure (Official MV)	youtube	f
JHeKhyg14-U	2020-01-23 00:36:15.504988-05	2020-01-23 00:36:15.504988-05	\N	185000000	Plastic Love (DJ DVD RIP Edit) - SiIvaGunner: King for Another Day	youtube	f
SmKKG6tCP3M	2020-01-23 01:22:30.168206-05	2020-01-23 01:22:30.168206-05	\N	353000000	【東方ボーカル】 「タイニーリトル・アジアンタム」 【ShibayanRecords】 【Subbed】	youtube	f
2de2MHIzNbg	2020-01-23 01:22:39.247925-05	2020-01-23 01:22:39.247925-05	\N	340000000	【東方ボーカル】 「MyonMyonMyonMyonMyonMyon!」 【ShibayanRecords】【Subbed】	youtube	f
XIN0BMNgFf0	2020-01-23 01:23:57.74289-05	2020-01-23 01:23:57.74289-05	\N	334000000	GYARI - アカリがやってきたぞっ (android52 Edit)	youtube	f
6P26Sl7BEaY	2020-01-23 01:24:27.394493-05	2020-01-23 01:24:27.394493-05	\N	261000000	I.C.U. - SiIvaGunner: King for Another Day	youtube	f
wgqPRKbiBXk	2020-01-23 01:24:31.797811-05	2020-01-23 01:24:31.797811-05	\N	221000000	Telephone Number (fm chillout mix) - SiIvaGunner: King for Another Day	youtube	f
7O-TZdXh7Y4	2020-01-23 01:24:36.965397-05	2020-01-23 01:24:36.965397-05	\N	229000000	Sparkle - SiIvaGunner: King for Another Day	youtube	f
9mYDS1t_cGQ	2020-01-23 01:27:19.523156-05	2020-01-23 01:27:19.523156-05	\N	448000000	[Touhou Vocal] [ShibayanRecords] Oznei Haman wa Mou Iranai (spanish & english subtitles)	youtube	f
thicc_rooster/want-die	2020-01-23 01:30:41.547653-05	2020-01-23 01:30:41.547653-05	\N	179921000	big pee pee	soundcloud	f
IFhVkE8ftmI	2020-01-23 01:36:53.052277-05	2020-01-23 01:36:53.052277-05	\N	116000000	Cumbiote Bien Gaton - SiIvaGunner: King for Another Day	youtube	f
Z-VMmWoxQCQ	2020-01-23 01:36:58.813628-05	2020-01-23 01:36:58.813628-05	\N	123000000	Conga de los Alienígenas - SiIvaGunner: King for Another Day	youtube	f
FowWFOsuF_A	2020-01-23 01:54:58.906289-05	2020-01-23 01:54:58.906289-05	\N	114000000	Konga Conga Kappa (King Conga) (Unused Version) - Crypt of the NecroDancer	youtube	f
lammirai/throughthedamesandcositas	2020-01-23 01:59:24.577715-05	2020-01-23 01:59:24.577715-05	\N	402845000	Through the Dames and Cositas	soundcloud	f
5uFrdGMo684	2020-01-23 01:59:26.159631-05	2020-01-23 01:59:26.159631-05	\N	330000000	永遠にゲームで対戦したいキリタン	youtube	f
aYAJopwEYv8	2020-01-23 13:39:42.127711-05	2020-01-23 13:39:42.127711-05	\N	205000000	Flight Of The Bumblebee - Rimsky-Korsakov	youtube	f
xZO5KTJTwhE	2020-01-23 13:42:04.714471-05	2020-01-23 13:42:04.714471-05	\N	119000000	Flight of the Bumblebee - Canadian Brass	youtube	f
8b2GKp70LzU	2020-01-23 13:42:52.984387-05	2020-01-23 13:42:52.984387-05	\N	161000000	Claudio Santangelo - The Flight of the Bumblebee - R. Korsakov	youtube	f
WzucpFgi7Xk	2020-01-23 13:44:08.108645-05	2020-01-23 13:44:08.108645-05	\N	32000000	Flight of the Bumblebee on 101 Bottles!	youtube	t
P7glg9Hcv0w	2020-01-23 13:50:22.883382-05	2020-01-23 13:50:22.883382-05	\N	219000000	Doctor P vs. Knife Party - Fuck Centipedes (Tetris vs. Centipede mashup)	youtube	f
EWMPVn1kgIQ	2020-01-23 13:51:10.621694-05	2020-01-23 13:51:10.621694-05	\N	165000000	Enormous Penis	youtube	f
monogiraffe/enormous-pizza-a-secret-course	2020-01-23 13:55:05.360565-05	2020-01-23 13:55:05.360565-05	\N	164611000	Enormous Pizza (A Secret Course)	soundcloud	f
110-percent/teen-drinking-is-very-bad	2020-01-23 13:59:46.960406-05	2020-01-23 13:59:46.960406-05	\N	171221000	Teen Drinking is Very Bad	soundcloud	f
lammirai/thebestmamboever	2020-01-23 14:01:15.002595-05	2020-01-23 14:01:15.002595-05	\N	184807000	The Best Mambo Ever	soundcloud	f
sean-peden/crank-on-me	2020-01-23 14:09:44.752142-05	2020-01-23 14:09:44.752142-05	\N	232276000	Crank On Me	soundcloud	f
chestermoistmuffinz/without-mii	2020-01-23 14:13:57.934686-05	2020-01-23 14:13:57.934686-05	\N	252366000	Without Mii (Full Ver.)	soundcloud	f
the-death-of-comedy/hotel-califireandflames	2020-01-23 14:19:07.915705-05	2020-01-23 14:19:07.915705-05	\N	220598000	hotel califireandflames	soundcloud	f
U5P80jYKwko	2020-01-23 14:29:42.816465-05	2020-01-23 14:29:42.816465-05	\N	271000000	Más Gasolina - SiIvaGunner: King for Another Day	youtube	f
wl-LeTFM8zo	2020-01-23 16:08:44.971538-05	2020-01-23 16:08:44.971538-05	\N	131000000	PINK GUY - MEME MACHINE	youtube	f
j0Sp9g47728	2020-01-23 16:22:52.487503-05	2020-01-23 16:22:52.487503-05	\N	181000000	Squid Pride	youtube	t
SnaRPu2UEDE	2020-01-23 16:23:41.678758-05	2020-01-23 16:23:41.678758-05	\N	35000000	Peter tries rice cakes...	youtube	t
TmlvS2B5xG4	2020-01-23 16:28:34.668339-05	2020-01-23 16:28:34.668339-05	\N	90000000	Who wants chowder USSR VOCODED	youtube	t
eViS-dUIdQI	2020-01-23 16:29:35.051955-05	2020-01-23 16:29:35.051955-05	\N	98000000	No Squid November	youtube	t
VlmDPC6ai4Y	2020-01-23 16:33:53.179797-05	2020-01-23 16:33:53.179797-05	\N	25000000	Nintendo GameCube Startup - Console BIOS/Startup Fanfare	youtube	f
EpcDH9faOQw	2020-01-23 16:40:22.163582-05	2020-01-23 16:40:22.163582-05	\N	129000000	A Coconut Up Your Butt [HD]	youtube	t
sdUUx5FdySs	2020-01-23 16:41:32.237777-05	2020-01-23 16:41:32.237777-05	\N	190000000	Kiwi!	youtube	t
z_lfgINqKkY	2020-01-23 16:49:11.454193-05	2020-01-23 16:49:11.454193-05	\N	77000000	Stardew Valley OST - Music Box Song	youtube	f
VT6w7f3N8Hw	2020-01-23 16:49:27.346063-05	2020-01-23 16:49:27.346063-05	\N	236000000	Eye Of The Spider (Eye Of The Tiger Minecraft Parody)	youtube	t
l5QpNAVw2vU	2020-01-23 16:54:57.788505-05	2020-01-23 16:54:57.788505-05	\N	70000000	Eye of the Spider 2 (Official Trailer)	youtube	t
ty-garcia-151899984/lil-nas-x-carry-on	2020-01-23 17:04:45.117648-05	2020-01-23 17:04:45.117648-05	\N	183683000	Lil Nas X - Carry On	soundcloud	f
e7q3A33koNw	2020-01-23 17:14:38.910428-05	2020-01-23 17:14:38.910428-05	\N	203000000	How Low Can μ Go - Love Live! vs. Ludacris	youtube	f
dWLq-nTGZ1M	2020-01-23 17:20:34.222751-05	2020-01-23 17:20:34.222751-05	\N	261000000	super mario dat hoe	youtube	t
tOghvK_FeAs	2020-01-23 17:21:59.41143-05	2020-01-23 17:21:59.41143-05	\N	255000000	Crank Dat Super Mario!	youtube	t
n5AaUie9Rrg	2020-01-23 18:27:13.915391-05	2020-01-23 18:27:13.915391-05	\N	31000000	BRUH NYE THE SCIENCE GUY	youtube	t
0aW62jeSvu8	2020-01-23 18:40:30.299015-05	2020-01-23 18:40:30.299015-05	\N	129000000	【Touhou TETLAPOT x IOSYS】Cirno's Perfect Math Class: The ⑨ Anniversary Edition 【東方】English Subs	youtube	t
_nCzRoH37jI	2020-01-23 18:43:45.529369-05	2020-01-23 18:43:45.529369-05	\N	165000000	1, 2 Oatmeal Pitch Corrected	youtube	t
tyneiz9FRMw	2020-01-23 18:45:38.733265-05	2020-01-23 18:45:38.733265-05	\N	301000000	アカリがやってきたぞっ	youtube	t
slazi2PpYUo	2020-01-23 18:46:04.011288-05	2020-01-23 18:46:04.011288-05	\N	175000000	Kill Me Baby ED (Full)	youtube	t
RvbxW6Viy8o	2020-01-23 18:47:26.374278-05	2020-01-23 18:47:26.374278-05	\N	138000000	1 2 Oatmeal (Hatsune Miku Cover)	youtube	t
fBO8T2PLrrY	2020-01-23 18:52:28.033513-05	2020-01-23 18:52:28.033513-05	\N	263000000	【東方Vocal】幽閉サテライト / 零れずの願いゴト 【FullMV】	youtube	t
juu-SSciqWA	2020-01-23 18:53:07.942695-05	2020-01-23 18:53:07.942695-05	\N	251000000	【東方爆音ジャズ12】輝く針の小人族【東京アクティブNEETs】	youtube	t
FMN3AtsXqA0	2020-01-23 18:55:10.050377-05	2020-01-23 18:55:10.050377-05	\N	193000000	Pitbull x El Chombo x Karol G - Dame Tu Cosita feat. Cutty Ranks (Prod. by Afro Bros) [Ultra Music]	youtube	t
Q81bjDQAsT8	2020-01-23 19:00:16.686457-05	2020-01-23 19:00:16.686457-05	\N	295000000	【東方爆音ジャズ4】上海紅茶館【東京アクティブNEETs】	youtube	t
Nkh341cY_no	2020-01-23 19:01:19.705289-05	2020-01-23 19:01:19.705289-05	\N	281000000	【東方星蓮船】BLACK ON WHITE/紺碧studio【東方ヴォーカルPV】	youtube	t
BzwIMs78H8E	2020-01-23 19:04:27.422392-05	2020-01-23 19:04:27.422392-05	\N	166000000	6 AM - Dame Tu Cosita: The Game	youtube	f
R6QXxQBO-50	2020-01-23 19:07:56.183684-05	2020-01-23 19:07:56.183684-05	\N	145000000	El Taiger, Popoy & DJ Unic - Me Kemaste (Official Video) [Ultra Music]	youtube	t
IIxLJmsOR80	2020-01-23 19:10:56.81196-05	2020-01-23 19:10:56.81196-05	\N	232000000	[Touhou PV] [Buta-Otome] Gensou no Satellite (spanish & english subtitles)	youtube	t
Jk-x6ONbPls	2020-01-23 19:18:53.702471-05	2020-01-23 19:18:53.702471-05	\N	153000000	Party Rockin' - Dame Tu Cosita: The Game	youtube	f
H7AJ2krJ014	2020-01-23 19:26:40.949917-05	2020-01-23 19:26:40.949917-05	\N	277000000	【東方】生演奏オーケストラによる『ネイティブフェイス』【交響アクティブNEETs】	youtube	t
hGdjWDllKPo	2020-01-23 19:30:58.178562-05	2020-01-23 19:30:58.178562-05	\N	301000000	{YTP} ~ The Price is Rice (And Other-Type Game Shows)	youtube	t
Ze6D_AUgbEo	2020-01-23 19:41:44.231095-05	2020-01-23 19:41:44.231095-05	\N	394000000	{YTP} ~ The Price is Rice Jr.	youtube	t
_ZBBcs3g9sY	2020-01-23 19:46:08.59537-05	2020-01-23 19:46:08.59537-05	\N	500000000	{YTP} ~ The Price is Rice CLASSIC	youtube	t
dMapmlUwerw	2020-01-23 19:48:17.780825-05	2020-01-23 19:48:17.780825-05	\N	325000000	{YTP} ~ Wow! It's Made!	youtube	t
fOQDO-6Otuk	2020-01-23 20:05:26.54777-05	2020-01-23 20:05:26.54777-05	\N	156000000	Real Dame Tu Cosita Learning Colour  [4K] | Learning Colour With Tchococita Song And Alien Dance	youtube	t
Ov_7xPEjfKQ	2020-01-23 20:07:02.831517-05	2020-01-23 20:07:02.831517-05	\N	313000000	【東方ボーカル】 「愛憎EGOIST」 【C-CLAYS】	youtube	f
gu3KzCWoons	2020-01-23 22:26:34.210629-05	2020-01-23 22:26:34.210629-05	\N	35000000	ｄａｎｃｉｎ	youtube	t
Tbwx9mv9q34	2020-01-23 22:30:43.548034-05	2020-01-23 22:30:43.548034-05	\N	100000000	Weed la Weed	youtube	t
8dKFxu-_oIE	2020-01-23 22:34:39.979749-05	2020-01-23 22:34:39.979749-05	\N	90000000	Kill La Kill Intro (Season 1)	youtube	t
OdZrFtIGzfU	2020-01-23 22:37:45.798662-05	2020-01-23 22:37:45.798662-05	\N	95000000	Chika Dance - Kawaii Anime Dance	youtube	t
N3bEh-PEk1g	2020-01-23 22:41:42.306005-05	2020-01-23 22:41:42.306005-05	\N	79000000	But steel is heavier than feathers	youtube	t
ZdPdiQNWDeY	2020-01-23 22:42:08.336038-05	2020-01-23 22:42:08.336038-05	\N	222000000	Gayle: Episode 1	youtube	t
Y7WtkdLQ6PM	2020-01-23 22:43:01.569034-05	2020-01-23 22:43:01.569034-05	\N	466000000	[YTP] IT'S ALL RIGHT HERE AT YOUR FINGERTITS	youtube	t
VNciHhxGO5E	2020-01-23 22:49:44.728121-05	2020-01-23 22:49:44.728121-05	\N	20000000	A Man Has Fallen Into The River In Lego City	youtube	t
nyoWmkhRyp8	2020-01-23 22:52:07.509068-05	2020-01-23 22:52:07.509068-05	\N	143000000	Sir Ian McKellen, On Acting	youtube	t
CCH-uTp6mlU	2020-01-23 23:02:39.225835-05	2020-01-23 23:02:39.225835-05	\N	127000000	[YTP] Paula Peen Cooks Black People	youtube	t
EBBchnDdJYY	2020-01-23 23:05:03.959374-05	2020-01-23 23:05:03.959374-05	\N	226000000	[YTP] - Paula Deen makes weird gingerbread cookies	youtube	t
aw2CMQip63k	2020-01-23 23:13:35.73951-05	2020-01-23 23:13:35.73951-05	\N	513000000	Strange Addiction: I Want to be a Mattress Dub	youtube	t
h4WiK9dgM9g	2020-01-23 23:20:47.773005-05	2020-01-23 23:20:47.773005-05	\N	312000000	[YTP] The Incredi-balls	youtube	t
2c_1QdIEElc	2020-01-23 23:30:15.836326-05	2020-01-23 23:30:15.836326-05	\N	124000000	SQUARE Red Copper Pan Dub	youtube	t
0zLiG50X940	2020-01-23 23:30:33.108636-05	2020-01-23 23:30:33.108636-05	\N	120000000	Red Copper Flipwich Dub	youtube	t
pKy-kj2bBGw	2020-01-23 23:30:37.246995-05	2020-01-23 23:30:37.246995-05	\N	40000000	52 Lego City commercials, but they all yell HEY at the same time.	youtube	t
uBKdbbQBEJw	2020-01-23 23:32:42.50558-05	2020-01-23 23:32:42.50558-05	\N	218000000	[YTP] Flextits Makes You Super Wet and Completely Dry	youtube	t
ep3AxbfqiII	2020-01-23 23:40:34.683308-05	2020-01-23 23:40:34.683308-05	\N	40000000	We  Tech  Those	youtube	t
BUhKGzAMzbE	2020-01-23 23:42:05.29439-05	2020-01-23 23:42:05.29439-05	\N	9000000	Quagmire turns into a toilet	youtube	t
RBV3YFf76ow	2020-01-23 23:58:06.217581-05	2020-01-23 23:58:06.217581-05	\N	102000000	Halsey - Walls Could Talk (Audio)	youtube	f
8F3QkvBJpF4	2020-01-24 00:00:04.834636-05	2020-01-24 00:00:04.834636-05	\N	215000000	Eurythmics - Sweet Dreams (Are Made Of Bees)	youtube	f
k2WgjvFjPg8	2020-01-24 00:06:53.731778-05	2020-01-24 00:06:53.731778-05	\N	70000000	U Got That | SMASH BROS. EDITION	youtube	t
ogI_pMoDKAA	2020-01-24 00:25:38.27755-05	2020-01-24 00:25:38.27755-05	\N	174000000	Can't Sleep Love- Pentatonix (LYRICS)	youtube	f
gMrYfJGm7kM	2020-01-24 00:28:10.836134-05	2020-01-24 00:28:10.836134-05	\N	230000000	Dean - What 2 Do ft. Crush, Jeff Bernat (Official Video)	youtube	t
WtejRvpwscY	2020-01-24 00:33:22.229131-05	2020-01-24 00:33:22.229131-05	\N	259000000	Rudimental - Lay It All On Me feat. Ed Sheeran [Official Video]	youtube	f
RvH87vs0St4	2020-01-24 00:33:43.837103-05	2020-01-24 00:33:43.837103-05	\N	390000000	[Touhou Vocal] [Liz Triangle] Arigatou (spanish & english subtitles)	youtube	f
_ub0Wm8UMko	2020-01-24 00:36:26.380984-05	2020-01-24 00:36:26.380984-05	\N	301000000	I See Fire	youtube	f
pjTj-_55WZ8	2020-01-24 00:37:06.357312-05	2020-01-24 00:37:06.357312-05	\N	232000000	Rudimental - These Days feat. Jess Glynne, Macklemore & Dan Caplen [Official Video]	youtube	f
N1EhXF1lskA	2020-01-24 01:01:29.210214-05	2020-01-24 01:01:29.210214-05	\N	247000000	Elderbrook & Rudimental - Something About You (Official Video)	youtube	f
qZVm-2nM0sA	2020-01-24 01:12:09.048536-05	2020-01-24 01:12:09.048536-05	\N	205000000	Rudimental - Sun Comes Up feat. James Arthur [Official Video]	youtube	f
jp-CVYGEsjg	2020-01-24 12:44:51.134366-05	2020-01-24 12:44:51.134366-05	\N	196000000	Panic! At The Disco - Into the Unknown (From "Frozen 2")	youtube	f
gIOyB9ZXn8s	2020-01-24 12:45:08.440459-05	2020-01-24 12:45:08.440459-05	\N	209000000	Idina Menzel, AURORA - Into the Unknown (From "Frozen 2")	youtube	f
md7dK5-qvHc	2020-01-24 12:53:21.737418-05	2020-01-24 12:53:21.737418-05	\N	262000000	Idina Menzel, Evan Rachel Wood - Show Yourself (From "Frozen 2"/Lyric Video)	youtube	f
vltkAhhm2kU	2020-01-24 12:58:40.173591-05	2020-01-24 12:58:40.173591-05	\N	105000000	Frozen 2 - Into The Unknown (cover by Big Marvel)	youtube	t
1dKkLK6HjMQ	2020-01-24 13:05:46.129067-05	2020-01-24 13:05:46.129067-05	\N	13000000	S stands for syka blyat	youtube	t
QdLuPQS1KnU	2020-01-24 13:06:34.958327-05	2020-01-24 13:06:34.958327-05	\N	276000000	"S stands for..." MEME COMPILATION (Blend S)	youtube	t
ZRrauyTlT6U	2020-01-24 13:07:59.418714-05	2020-01-24 13:07:59.418714-05	\N	105000000	Blend-S - Opening | Bon Appétit♡S	youtube	t
MADvxFXWvwE	2020-01-24 14:10:30.525941-05	2020-01-24 14:10:30.525941-05	\N	409000000	Ram Ranch	youtube	f
J2fRCQoxf3w	2020-01-24 14:26:15.427809-05	2020-01-24 14:26:15.427809-05	\N	133000000	[YTP] Bruno's Uptown Rectal Cleansing Sing-along PSA	youtube	t
wLtBGGX8GIk	2020-01-24 14:27:27.543557-05	2020-01-24 14:27:27.543557-05	\N	574000000	Shrek but every time he takes a STEP it gets 5% faster	youtube	t
ivND-ZcYqNc	2020-01-24 14:27:44.990657-05	2020-01-24 14:27:44.990657-05	\N	219000000	"Let it Go" but every time Elsa says "go" more vibrato is added	youtube	t
7apltfVJBwU	2020-01-24 14:28:21.251663-05	2020-01-24 14:28:21.251663-05	\N	251000000	The Bee Movie at 3000% speed except when they say "bee"	youtube	t
eOI6YExCHeU	2020-01-24 14:29:32.429257-05	2020-01-24 14:29:32.429257-05	\N	144000000	The Ratatouille Trailer but every rat increases the content aware scale and the audio gets echoed	youtube	t
wDJBcqF-Ee4	2020-01-24 14:29:48.146832-05	2020-01-24 14:29:48.146832-05	\N	80000000	The goofy goober song except every time he says goofy goober it gets faster	youtube	t
9efmoXY3__I	2020-01-24 14:30:04.376297-05	2020-01-24 14:30:04.376297-05	\N	172000000	Moana's You're Welcome but it gets 10X WORSE every time he says you're welcome	youtube	t
oPx9Kh3lw6o	2020-01-24 14:30:36.298612-05	2020-01-24 14:30:36.298612-05	\N	73000000	Prince Ali but every time they say Prince Ali it changes to the live action version	youtube	t
xqATYtengYI	2020-01-24 14:35:29.249338-05	2020-01-24 14:35:29.249338-05	\N	284000000	Shrek The Musical The Ballad of Farquaad	youtube	t
tdi19AZvHkQ	2020-01-24 14:47:21.934086-05	2020-01-24 14:47:21.934086-05	\N	256000000	S M U G  - D A N C I N  - 𝓔 𝓥 𝓞 𝓛 𝓥 𝓔 𝓓	youtube	t
4p3fX2RXtUI	2020-01-24 14:55:51.089103-05	2020-01-24 14:55:51.089103-05	\N	179000000	The True Secrets of the PPAP - Kill Me Baby vs. PIKOTARO	youtube	f
ru8XIGMO1Co	2020-01-24 14:56:31.997404-05	2020-01-24 14:56:31.997404-05	\N	108000000	How to Eat a Bag of Chips (tutorial)	youtube	t
s4DxPeLNVuw	2020-01-24 14:57:07.372396-05	2020-01-24 14:57:07.372396-05	\N	252000000	打首獄門同好会「布団の中から出たくない」	youtube	t
uhhSxWTEIeI	2020-01-24 14:58:25.908829-05	2020-01-24 14:58:25.908829-05	\N	179000000	Credits - Love Live! School Idol Festival ALL STARS	youtube	t
iA-_M0FfAtM	2020-01-24 15:03:01.907133-05	2020-01-24 15:03:01.907133-05	\N	245000000	Touhou 8 IN - Lunatic Eyes ~ Invisible Full Moon 【Intense Symphonic Metal Cover】	youtube	f
y6E71Ey4P8M	2020-01-24 15:09:40.82017-05	2020-01-24 15:09:40.82017-05	\N	271000000	Touhou 15.5 AoCF - Last Occultism ~ Esotericist of the Present World 【Intense Symphonic Metal Cover】	youtube	f
R03cqGg40GU	2020-01-24 15:15:31.829531-05	2020-01-24 15:15:31.829531-05	\N	213000000	Panic! At The Disco: Death Of A Bachelor [OFFICIAL VIDEO]	youtube	f
DrjKg5RJvJI	2020-01-24 15:33:15.19464-05	2020-01-24 15:33:15.19464-05	\N	269000000	Shoujo Shuumatsu Ryoukou (Girls Last Tour) - Insert Song - Amadare no Uta | Pizza EX AMV	youtube	t
2ZIpFytCSVc	2020-01-24 16:32:42.474829-05	2020-01-24 16:32:42.474829-05	\N	1000000	Bruh Sound Effect #2	youtube	f
U33yvLae2CQ	2020-01-24 18:27:09.648892-05	2020-01-24 18:27:09.648892-05	\N	35000000	Super Mario Bros. Music - Ground Theme	youtube	f
rstGGdoFZ9s	2020-01-24 18:27:20.302512-05	2020-01-24 18:27:20.302512-05	\N	9000000	Super Mario Bros. Music - Scene Change	youtube	f
dRLQgtQDArU	2020-01-24 18:28:11.160954-05	2020-01-24 18:28:11.160954-05	\N	61000000	Let the Game Begin! - Mario Party 2	youtube	f
8hj2nn94fQs	2020-01-24 18:28:34.562827-05	2020-01-24 18:28:34.562827-05	\N	8000000	Player Down (JP Version) - Super Mario World	youtube	f
RxWHQqdtUO0	2020-01-24 18:33:11.875587-05	2020-01-24 18:33:11.875587-05	\N	57000000	Easton Kingdom (Unused Version) - Super Mario Land	youtube	f
xLHIb40MzNE	2020-01-24 18:35:18.991657-05	2020-01-24 18:35:18.991657-05	\N	92000000	Marcianito llega a la tierra por primera vez 100% real no fake	youtube	t
QsR8zBh6EdE	2020-01-24 20:35:36.391408-05	2020-01-24 20:35:36.391408-05	\N	22000000	congrats	youtube	f
gvFHvotIO_4	2020-01-24 20:51:34.183073-05	2020-01-24 20:51:34.183073-05	\N	177000000	Hotel Luigi - Booty Quest	youtube	t
QbeBhdjW1_w	2020-01-24 21:23:28.916847-05	2020-01-24 21:23:28.916847-05	\N	46000000	Nani!?	youtube	t
UM1-_S-x16A	2020-01-24 22:04:05.756722-05	2020-01-24 22:04:05.756722-05	\N	12000000	Can you shut the fuck up please!!	youtube	f
U6y2ZgmXVxw	2020-01-24 22:05:09.508789-05	2020-01-24 22:05:09.508789-05	\N	199000000	high hopes but beats are swapped [CC]	youtube	f
MlW7T0SUH0E	2020-01-25 00:16:13.440783-05	2020-01-25 00:16:13.440783-05	\N	168000000	El Chombo - Chacarron (Official Video)	youtube	f
bbJDjNLzv8U	2020-01-25 00:17:15.017974-05	2020-01-25 00:17:15.017974-05	\N	189000000	My Dick - Mickey Avalon	youtube	f
chimeric/just-add-some-chacarron	2020-01-25 00:18:13.943614-05	2020-01-25 00:18:13.943614-05	\N	38246000	Just add some chacarron	soundcloud	f
92Gq_mG-cQY	2020-01-25 00:29:37.415117-05	2020-01-25 00:29:37.415117-05	\N	317000000	Bad Apple Bottom Jeans - Flo Rida × Alstroemeria Records	youtube	t
xEO5JU1o6Jo	2020-01-25 00:44:44.614243-05	2020-01-25 00:44:44.614243-05	\N	334000000	【東方爆音ジャズ】MMD版 東方妖々夢～広有射怪鳥事【東京アクティブNEETs＆ドライブP】	youtube	t
KmMvm98Z99A	2020-01-25 00:44:59.31213-05	2020-01-25 00:44:59.31213-05	\N	54000000	We Finally Took Out General Solymonie	youtube	t
C6u0wUIo9OU	2020-01-25 00:46:12.272686-05	2020-01-25 00:46:12.272686-05	\N	92000000	the wild area is scary part 4	youtube	t
3MteSlpxCpo	2020-01-25 00:48:04.825154-05	2020-01-25 00:48:04.825154-05	\N	295000000	[Official Video] Daft Punk - Pentatonix	youtube	t
KpelkMBAD2o	2020-01-25 00:49:52.695633-05	2020-01-25 00:49:52.695633-05	\N	138000000	DePiglio	youtube	t
0-gPcpDgeI4	2020-01-25 00:56:34.79644-05	2020-01-25 00:56:34.79644-05	\N	46000000	Freddie Mercury Slips On Ice and Can't Get Up	youtube	t
QabOws88zD4	2020-01-25 01:07:56.539395-05	2020-01-25 01:07:56.539395-05	\N	19000000	give me the ball papa	youtube	t
IRY9hF-NyXs	2020-01-25 11:59:56.330933-05	2020-01-25 11:59:56.330933-05	\N	429000000	O Euchari	youtube	f
zSzaplTFagQ	2020-01-25 12:00:44.533676-05	2020-01-25 12:00:44.533676-05	\N	308000000	All Eyez On Me	youtube	f
MI0ijoJgx5k	2020-01-25 12:02:28.482127-05	2020-01-25 12:02:28.482127-05	\N	278000000	Ola Gjeilo - Ave Generosa	youtube	f
80RzZkMCLOY	2020-01-25 12:03:30.570735-05	2020-01-25 12:03:30.570735-05	\N	3930000000	The Legend of Zelda • Relaxing Music with Sweet Rain	youtube	f
Mtbsb3swbcU	2020-01-25 12:04:01.94896-05	2020-01-25 12:04:01.94896-05	\N	161000000	Canto Difonico Tuvano - Sygyt (Overtone singing - throat singing)	youtube	t
2H5rusicEnc	2020-01-25 12:04:45.594802-05	2020-01-25 12:04:45.594802-05	\N	376000000	Schubert - Ave Maria	youtube	f
gQLtItwCePI	2020-01-25 12:06:53.87639-05	2020-01-25 12:06:53.87639-05	\N	283000000	Heartz Of Men	youtube	f
Wz2wVLyTar4	2020-01-25 12:07:20.441563-05	2020-01-25 12:07:20.441563-05	\N	267000000	2Pac - To live and die in LA (Dirty Version) [HD].	youtube	f
cQZqPi1aHNo	2020-01-25 12:07:53.968839-05	2020-01-25 12:07:53.968839-05	\N	278000000	2Pac - Ambitionz az a ridah [HD]	youtube	f
Y2hnxRtI1_w	2020-01-25 12:08:36.226747-05	2020-01-25 12:08:36.226747-05	\N	315000000	Picture Me Rollin'	youtube	f
Lbg4TSP44yU	2020-01-25 12:25:06.028159-05	2020-01-25 12:25:06.028159-05	\N	389000000	Hildegard von Bingen - Ave generosa	youtube	f
-PZzzQkKIpY	2020-01-25 12:25:44.22438-05	2020-01-25 12:25:44.22438-05	\N	64000000	Planetside 2 Soundtrack - Vanu Sovereignty Travel 2	youtube	f
GBGeDOx-CD8	2020-01-25 12:26:45.111697-05	2020-01-25 12:26:45.111697-05	\N	315000000	Jay Z   Can't Knock The Hustle	youtube	f
hI8A14Qcv68	2020-01-25 12:27:08.455594-05	2020-01-25 12:27:08.455594-05	\N	296000000	Nas - N.Y. State of Mind (Official Audio)	youtube	f
GnyAgOWhMnk	2020-01-25 12:28:03.140502-05	2020-01-25 12:28:03.140502-05	\N	465000000	Libertango in Berlin Philharmonic (amazing!!!)	youtube	f
sdaPoUNk5R8	2020-01-25 12:30:04.989353-05	2020-01-25 12:30:04.989353-05	\N	323000000	Recuerdos de la Alhambra played by Andres Segovia	youtube	f
xlYCxbBZUCY	2020-01-25 12:30:29.240403-05	2020-01-25 12:30:29.240403-05	\N	253000000	John Williams - Duel of the Fates (Star Wars Soundtrack) [HQ]	youtube	f
JSAd3NpDi6Q	2020-01-25 12:31:24.24102-05	2020-01-25 12:31:24.24102-05	\N	220000000	Handel - Sarabande	youtube	f
_MXi3qt-wOY	2020-01-25 12:31:49.262234-05	2020-01-25 12:31:49.262234-05	\N	841000000	Anakin vs Obi-wan and Yoda VS Sidious.	youtube	f
rr6f26I2cBI	2020-01-25 18:05:33.726482-05	2020-01-25 18:05:33.726482-05	\N	205000000	VULFPECK /// Half of the Way (feat. Theo Katzman)	youtube	f
Qu_OzBsgRcI	2020-01-25 12:32:47.011646-05	2020-01-25 12:32:47.011646-05	\N	236000000	【東方Vocal／Electro Pop】 Real or Fake 「ShinRa-Bansho」[JP Subs]	youtube	f
zucBfXpCA6s	2020-01-25 12:33:02.242472-05	2020-01-25 12:33:02.242472-05	\N	407000000	Beethoven "Moonlight" Sonata,  III "Presto Agitato" Valentina Lisitsa	youtube	f
5fIfQ5-BtiM	2020-01-25 12:37:43.190006-05	2020-01-25 12:37:43.190006-05	\N	1003000000	Bach - Harpsichord Concerto no.3 in D major, BWV 1054 - CroBaroque	youtube	f
zc5lhK00GSg	2020-01-25 12:39:05.497388-05	2020-01-25 12:39:05.497388-05	\N	182000000	J.S. BACH, CONCERTO NO.5 IN F-MINOR FOR HARPSICHORD AND STRINGS (BWV 1056) - LARGO, MARIA JOÃO PIRES	youtube	f
m5qeuVOIbHk	2020-01-25 12:40:19.364868-05	2020-01-25 12:40:19.364868-05	\N	244000000	Ashkenazy plays Chopin Nocturne in C sharp Minor (No.20)	youtube	f
JRQbVNzmCK0	2020-01-25 12:40:39.385463-05	2020-01-25 12:40:39.385463-05	\N	306000000	This Game - No Game No Life OP [Piano]	youtube	f
_8UZMD3A2rs	2020-01-25 12:42:03.507283-05	2020-01-25 12:42:03.507283-05	\N	268000000	Euterpe - Guilty Crown OST [Piano]	youtube	f
kyBqq_Ibdvg	2020-01-25 12:45:43.895325-05	2020-01-25 12:45:43.895325-05	\N	422000000	Nier Automata ED - Weight of the World [Piano]	youtube	f
SkNjCfMjRXA	2020-01-25 12:47:12.524701-05	2020-01-25 12:47:12.524701-05	\N	223000000	Fullmetal Alchemist Brotherhood OST - Main Theme	youtube	f
EkwqPJZe8ms	2020-01-25 12:48:14.146733-05	2020-01-25 12:48:14.146733-05	\N	2158000000	Stravinsky The Rite of Spring // London Symphony Orchestra/Sir Simon Rattle	youtube	f
IJiHDmyhE1A	2020-01-25 12:49:33.250717-05	2020-01-25 12:49:33.250717-05	\N	215000000	Christopher Tin - Baba Yetu (Official Music Video)	youtube	f
34VwwPoUTzQ	2020-01-25 14:08:46.684341-05	2020-01-25 14:08:46.684341-05	\N	171000000	DEATH BY GRAND DAD	youtube	t
y_goHl-GuNk	2020-01-25 14:41:36.802222-05	2020-01-25 14:41:36.802222-05	\N	325000000	Francisco Tárrega - Capricho árabe	youtube	f
8EcIxJmKCQQ	2020-01-25 14:42:24.610695-05	2020-01-25 14:42:24.610695-05	\N	299000000	Francisco Tárrega: Tango Maria	youtube	f
Nz7k0DWSGL0	2020-01-25 14:42:31.114505-05	2020-01-25 14:42:31.114505-05	\N	229000000	Francisco Tárrega: Adelita	youtube	f
ZgVDl_tElzk	2020-01-25 14:42:47.3856-05	2020-01-25 14:42:47.3856-05	\N	127000000	Francisco TÁRREGA - Lágrima	youtube	f
KzEFQW9CXGc	2020-01-25 14:43:22.575552-05	2020-01-25 14:43:22.575552-05	\N	759000000	Concierto de Aranjuez - Joaquín Rodrigo II. Adagio / Pablo Sáinz-Villegas - LIVE	youtube	f
v1K4EAXe2oo	2020-01-25 14:44:54.008976-05	2020-01-25 14:44:54.008976-05	\N	165000000	EEEAAAOOO	youtube	f
thO90CMuXgU	2020-01-25 14:45:35.181898-05	2020-01-25 14:45:35.181898-05	\N	7000000	Bongo Cat	youtube	t
uSQzUx3QW2Y	2020-01-25 15:06:43.073206-05	2020-01-25 15:06:43.073206-05	\N	176000000	Francisco Tárrega - Gran Vals	youtube	f
XZHF6SDWtU8	2020-01-25 15:24:39.228154-05	2020-01-25 15:24:39.228154-05	\N	448000000	Buena Vista Social Club - El Cuarto de Tula	youtube	f
beQMZ9-Ovs4	2020-01-25 16:45:18.817098-05	2020-01-25 16:45:18.817098-05	\N	63000000	top 5 bruh moments	youtube	t
_czzkqPjvS4	2020-01-25 16:45:37.186645-05	2020-01-25 16:45:37.186645-05	\N	22000000	Top 10 N Words	youtube	t
trenedey/lil-pulp-fiction	2020-01-25 16:49:26.197139-05	2020-01-25 16:49:26.197139-05	\N	111605000	Lil Pulp Fiction (TODD)	soundcloud	f
HIPLFUknEDk	2020-01-25 16:53:56.21339-05	2020-01-25 16:53:56.21339-05	\N	63000000	Time Warp Trio Theme Song	youtube	f
pSCJBGxRmH8	2020-01-25 17:04:53.449285-05	2020-01-25 17:04:53.449285-05	\N	1323000000	Renard -  Because Maybe! pt. 2	youtube	f
EIf2kKwy7h8	2020-01-25 17:11:03.289674-05	2020-01-25 17:11:03.289674-05	\N	210000000	Blue Toad's Perm	youtube	f
nhTAJYpIkHU	2020-01-25 17:12:22.1084-05	2020-01-25 17:12:22.1084-05	\N	170000000	Let Me Clear My Wallet	youtube	f
R6W42wWF3fg	2020-01-25 17:13:40.990764-05	2020-01-25 17:13:40.990764-05	\N	176000000	HAMMER.	youtube	f
otCpCn0l4Wo	2020-01-25 17:13:59.604237-05	2020-01-25 17:13:59.604237-05	\N	273000000	MC Hammer - U Can't Touch This (Official Music Video)	youtube	f
65IAdRvdkdw	2020-01-25 17:15:14.953991-05	2020-01-25 17:15:14.953991-05	\N	214000000	Big KRIT Kingdom - Steam Bank	youtube	f
8o-JZBljd2g	2020-01-25 17:16:28.734449-05	2020-01-25 17:16:28.734449-05	\N	243000000	Bubble Tea (feat. Juu & Cinders)	youtube	f
wZj7akBVClE	2020-01-25 17:17:34.342879-05	2020-01-25 17:17:34.342879-05	\N	113000000	lonemoon + NAW NAW [prod. shadient]	youtube	f
RQmEERvqq70	2020-01-25 17:18:20.285008-05	2020-01-25 17:18:20.285008-05	\N	223000000	TMABird - Everybody's Circulation (Lyric Video)	youtube	f
uT3SBzmDxGk	2020-01-25 17:19:12.532533-05	2020-01-25 17:19:12.532533-05	\N	298000000	2CELLOS - Thunderstruck [OFFICIAL VIDEO]	youtube	f
qAeybdD5UoQ	2020-01-25 17:20:04.486796-05	2020-01-25 17:20:04.486796-05	\N	170000000	Shawn Wasabi - Marble Soda (Original Song)	youtube	f
xof7PkoggbM	2020-01-25 17:20:12.542345-05	2020-01-25 17:20:12.542345-05	\N	146000000	Shawn Wasabi - MARBLE TEA (Official Music Video)	youtube	f
JE1Gvzxfm1E	2020-01-25 17:20:37.867454-05	2020-01-25 17:20:37.867454-05	\N	122000000	Shawn Wasabi - BURNT RICE (Original Song)	youtube	f
GOJTG8E0bwU	2020-01-25 17:22:17.396944-05	2020-01-25 17:22:17.396944-05	\N	260000000	Shawn Wasabi - HOTTO DOGU (live original stuff)	youtube	f
Cj2eUpt3MVE	2020-01-25 17:22:37.203377-05	2020-01-25 17:22:37.203377-05	\N	194000000	Shawn Wasabi - OTTER POP (ft. Hollis) (Original Song)	youtube	f
NzGGL0VpKUI	2020-01-25 17:23:17.049267-05	2020-01-25 17:23:17.049267-05	\N	188000000	Shawn Wasabi - SPICY BOYFRIEND (Original Song)	youtube	f
wHIej9j7xyM	2020-01-25 17:24:00.398434-05	2020-01-25 17:24:00.398434-05	\N	251000000	Shawn Wasabi - Pizza Rolls (metal x EDM mashup)	youtube	f
unx9er0sG6o	2020-01-25 17:24:13.143897-05	2020-01-25 17:24:13.143897-05	\N	292000000	Shawn Wasabi - Mac n' Cheese (live mashup)	youtube	f
a7fzkqLozwA	2020-01-25 17:24:34.197759-05	2020-01-25 17:24:34.197759-05	\N	197000000	Lauv - I Like Me Better [Official Audio]	youtube	f
_Uw6oJecPBA	2020-01-25 17:24:51.329473-05	2020-01-25 17:24:51.329473-05	\N	234000000	Shawn Wasabi - SQUEEZ® (ft. raychel jay)	youtube	f
6ZcaXikDUqU	2020-01-25 17:25:17.234637-05	2020-01-25 17:25:17.234637-05	\N	140000000	Shawn Wasabi - i lost all my eggs (original song) *new button pad!*	youtube	f
km5OXaB2Uu0	2020-01-25 17:25:52.802777-05	2020-01-25 17:25:52.802777-05	\N	206000000	Na Na Na (Na Na Na Na Na Na Na Na Na)	youtube	f
5G5BnlBuozU	2020-01-25 17:26:16.155318-05	2020-01-25 17:26:16.155318-05	\N	162000000	Teenagers	youtube	f
QxTBtHsh408	2020-01-25 17:27:37.794771-05	2020-01-25 17:27:37.794771-05	\N	276000000	Some Nights	youtube	f
lpvT-Fciu-4	2020-01-25 17:31:46.827239-05	2020-01-25 17:31:46.827239-05	\N	77000000	pizza time	youtube	f
5XK4v2fgMPU	2020-01-25 17:32:44.451737-05	2020-01-25 17:32:44.451737-05	\N	259000000	KYLE - iSpy feat. Lil Yachty [Official Music Video]	youtube	f
KI9e5T8X4DQ	2020-01-25 17:33:11.426196-05	2020-01-25 17:33:11.426196-05	\N	193000000	KYLE - Playinwitme feat. Kehlani [Lyric Video]	youtube	f
LxGZD6QgfgU	2020-01-25 17:33:41.093003-05	2020-01-25 17:33:41.093003-05	\N	203000000	Sex & Super Smash Bros.	youtube	f
nAsftdHSsjM	2020-01-25 17:34:04.420298-05	2020-01-25 17:34:04.420298-05	\N	181000000	IV. Sweatpants	youtube	f
Ln8DwKHaejo	2020-01-25 17:34:27.905541-05	2020-01-25 17:34:27.905541-05	\N	210000000	Caroline	youtube	f
4AxJXWs3mnw	2020-01-25 17:34:53.539613-05	2020-01-25 17:34:53.539613-05	\N	258000000	Same Drugs	youtube	f
gOgpdp3lP8M	2020-01-25 17:37:38.274971-05	2020-01-25 17:37:38.274971-05	\N	214000000	Panic! At The Disco: The Ballad Of Mona Lisa [OFFICIAL VIDEO]	youtube	t
UZkVqLjGM_I	2020-01-25 17:39:30.999716-05	2020-01-25 17:39:30.999716-05	\N	337000000	Lil Dicky - Molly feat. Brendon Urie (Official Video)	youtube	t
le0BLAEO93g	2020-01-25 18:01:39.082563-05	2020-01-25 18:01:39.082563-05	\N	213000000	VULFPECK /// Dean Town	youtube	f
jRHQPG1xd9o	2020-01-25 18:01:57.314806-05	2020-01-25 18:01:57.314806-05	\N	222000000	VULFPECK /// 1612	youtube	t
yG96RttfZtM	2020-01-25 18:02:20.002506-05	2020-01-25 18:02:20.002506-05	\N	195000000	VULFPECK /// Back Pocket (Music Video)	youtube	t
R0tvrLcOITU	2020-01-25 18:02:27.988829-05	2020-01-25 18:02:27.988829-05	\N	167000000	SPLASH DADDY - Wii TENNIS (prod. okthxbb) [OFFICIAL VIDEO]	youtube	f
r4G0nbpLySI	2020-01-25 18:02:32.057541-05	2020-01-25 18:02:32.057541-05	\N	248000000	VULFPECK /// Wait for the Moment	youtube	t
w5x7956gchI	2020-01-25 18:02:49.105368-05	2020-01-25 18:02:49.105368-05	\N	227000000	Ooh Nah Nah - SiIvaGunner: King for Another Day	youtube	f
F7nCDrf90V8	2020-01-25 18:03:16.699672-05	2020-01-25 18:03:16.699672-05	\N	238000000	VULFPECK /// Disco Ulysses (Instrumental)	youtube	t
XftabV9S2z0	2020-01-25 18:03:48.845818-05	2020-01-25 18:03:48.845818-05	\N	281000000	VULFPECK /// Outro	youtube	t
eCO_hcBz-0I	2020-01-25 18:04:03.748706-05	2020-01-25 18:04:03.748706-05	\N	185000000	VULFPECK /// Welcome to Vulf Records	youtube	t
to22meUpSEI	2020-01-25 18:05:05.225254-05	2020-01-25 18:05:05.225254-05	\N	203000000	VULFPECK /// Lost My Treble Long Ago	youtube	t
d5K3UgrPdbQ	2020-01-25 18:11:01.130154-05	2020-01-25 18:11:01.130154-05	\N	184000000	VULFPECK /// Christmas in L.A.	youtube	f
E44zg5qZA_o	2020-01-25 18:11:24.177254-05	2020-01-25 18:11:24.177254-05	\N	165000000	VULFPECK /// Poinciana	youtube	t
8DRCGcuByQc	2020-01-25 18:12:07.897741-05	2020-01-25 18:12:07.897741-05	\N	209000000	VULFPECK /// Daddy, He Got a Tesla	youtube	f
u8fWZ9FjIK4	2020-01-25 18:12:47.460652-05	2020-01-25 18:12:47.460652-05	\N	198000000	VULFPECK /// 1 for 1, DiMaggio	youtube	t
j3rwKl267gE	2020-01-25 18:13:24.899925-05	2020-01-25 18:13:24.899925-05	\N	216000000	VULFPECK /// Game Winner	youtube	t
t2pz6uNiheg	2020-01-25 18:14:20.831059-05	2020-01-25 18:14:20.831059-05	\N	233000000	VULFPECK /// Aunt Leslie	youtube	t
4dpvyZBKg6Q	2020-01-25 18:14:59.245307-05	2020-01-25 18:14:59.245307-05	\N	262000000	VULFPECK /// Rango II (feat. Blake Mills)	youtube	t
hYKYka-PNt0	2020-01-25 18:16:29.002711-05	2020-01-25 18:16:29.002711-05	\N	252000000	Stevie Wonder - I Wish (the original version)	youtube	f
IVvkjuEAwgU	2020-01-25 18:16:56.082198-05	2020-01-25 18:16:56.082198-05	\N	204000000	Stevie Wonder-Isn't She Lovely Lyrics	youtube	f
6sIjSNTS7Fs	2020-01-25 18:17:18.97363-05	2020-01-25 18:17:18.97363-05	\N	238000000	Stevie Wonder - Sir Duke	youtube	f
pUj9frKY46E	2020-01-25 18:17:41.733949-05	2020-01-25 18:17:41.733949-05	\N	188000000	Stevie Wonder - Signed, Sealed, Delivered I'm Yours	youtube	f
nqxVMLVe62U	2020-01-25 18:22:59.193032-05	2020-01-25 18:22:59.193032-05	\N	213000000	The Jacksons - Blame It On the Boogie (Official Video)	youtube	t
ho7796-au8U	2020-01-25 18:23:25.823832-05	2020-01-25 18:23:25.823832-05	\N	211000000	The Jackson 5 - ABC	youtube	t
s3Q80mk7bxE	2020-01-25 18:23:56.480858-05	2020-01-25 18:23:56.480858-05	\N	179000000	I Want You Back - The Jackson 5	youtube	t
5X-Mrc2l1d0	2020-01-25 18:24:14.899549-05	2020-01-25 18:24:14.899549-05	\N	203000000	Michael Jackson - Rock With You (Official Video)	youtube	t
H9tEvfIsDyo	2020-01-25 18:24:57.289957-05	2020-01-25 18:24:57.289957-05	\N	235000000	Prince - Kiss (Official Music Video)	youtube	t
-OqrcUvrbRY	2020-01-25 18:25:18.133215-05	2020-01-25 18:25:18.133215-05	\N	175000000	Anderson .Paak - Come Down (Official Video)	youtube	t
5GL9JoH4Sws	2020-01-25 18:26:01.249476-05	2020-01-25 18:26:01.249476-05	\N	220000000	Fifth Harmony - Work from Home ft. Ty Dolla $ign	youtube	t
SeIJmciN8mo	2020-01-25 18:27:10.85027-05	2020-01-25 18:27:10.85027-05	\N	261000000	Nicki Minaj - Starships (Explicit)	youtube	t
4JipHEz53sU	2020-01-25 18:27:35.669256-05	2020-01-25 18:27:35.669256-05	\N	218000000	Nicki Minaj - Super Bass	youtube	t
0HDdjwpPM3Y	2020-01-25 18:28:21.763951-05	2020-01-25 18:28:21.763951-05	\N	262000000	Jessie J, Ariana Grande, Nicki Minaj - Bang Bang ft. Ariana Grande, Nicki Minaj	youtube	t
SXiSVQZLje8	2020-01-25 18:29:04.449157-05	2020-01-25 18:29:04.449157-05	\N	238000000	Ariana Grande - Side To Side ft. Nicki Minaj	youtube	t
ALZHF5UqnU4	2020-01-25 18:29:35.296186-05	2020-01-25 18:29:35.296186-05	\N	200000000	Marshmello - Alone (Official Music Video)	youtube	t
wnJ6LuUFpMo	2020-01-25 18:29:54.89642-05	2020-01-25 18:29:54.89642-05	\N	186000000	J Balvin, Willy William - Mi Gente (Official Video)	youtube	t
LsoLEjrDogU	2020-01-25 18:30:23.610127-05	2020-01-25 18:30:23.610127-05	\N	223000000	Bruno Mars - Finesse (Remix) (feat. Cardi B] [Official Video]	youtube	t
papuvlVeZg8	2020-01-25 18:31:03.625711-05	2020-01-25 18:31:03.625711-05	\N	254000000	Clean Bandit - Rockabye (feat. Sean Paul & Anne-Marie) [Official Video]	youtube	f
3AtDnEC4zak	2020-01-25 18:31:22.812136-05	2020-01-25 18:31:22.812136-05	\N	231000000	Charlie Puth - We Don't Talk Anymore (feat. Selena Gomez) [Official Video]	youtube	f
xTlNMmZKwpA	2020-01-25 18:31:39.364856-05	2020-01-25 18:31:39.364856-05	\N	257000000	Cardi B, Bad Bunny & J Balvin - I Like It [Official Music Video]	youtube	f
34Na4j8AVgA	2020-01-25 18:32:04.307727-05	2020-01-25 18:32:04.307727-05	\N	273000000	The Weeknd - Starboy (official) ft. Daft Punk	youtube	t
-MsvER1dpjM	2020-01-25 18:32:29.191941-05	2020-01-25 18:32:29.191941-05	\N	230000000	Demi Lovato - Sorry Not Sorry	youtube	f
P_SlAzsXa7E	2020-01-25 18:33:29.288758-05	2020-01-25 18:33:29.288758-05	\N	248000000	Miike Snow - Genghis Khan (Official Video)	youtube	t
E7aWOkNMcbo	2020-01-25 19:25:00.340647-05	2020-01-25 19:25:00.340647-05	\N	208000000	Daddy Yankee - Que Tire Pa' 'Lante (Letra/Lyrics)	youtube	f
FxxbYGk8pXg	2020-01-25 19:25:13.509657-05	2020-01-25 19:25:13.509657-05	\N	243000000	Daddy Yankee - Llamado De Emergencia	youtube	f
iNSqksOSmnU	2020-01-25 19:25:24.71125-05	2020-01-25 19:25:24.71125-05	\N	204000000	Becky G - Mayores ft. Bad Bunny (lyrics/letra)	youtube	f
D7FBIP30sg0	2020-01-25 19:45:22.376016-05	2020-01-25 19:45:22.376016-05	\N	114000000	O Kazakhstan!	youtube	t
ePQ9_re7f1A	2020-01-25 19:45:48.418205-05	2020-01-25 19:45:48.418205-05	\N	124000000	Borat's Rant And National Anthem At Rodeo	youtube	t
Gha3TGmoOBQ	2020-01-25 19:46:00.33722-05	2020-01-25 19:46:00.33722-05	\N	133000000	Kazakhstan National Anthem "movie Borat"	youtube	t
IdKm5lBb2ek	2020-01-25 19:52:27.710427-05	2020-01-25 19:52:27.710427-05	\N	246000000	THE DICTATOR - Official Clip - "Helicopter Ride"	youtube	t
qctO1duelq8	2020-01-25 19:53:09.440069-05	2020-01-25 19:53:09.440069-05	\N	102000000	The Dictator - Opening Scene (2012) Sacha Baron Cohen Movie HD	youtube	t
q6A1PzmGy_s	2020-01-25 20:29:05.32485-05	2020-01-25 20:29:05.32485-05	\N	143000000	Eminem feat. D12 - My Salsa (Music Video)	youtube	f
antonio-belando-650817665/el-chombo-dame-tu-cosita-antonio-colana-2018-edit	2020-01-25 20:34:36.151983-05	2020-01-25 20:34:36.151983-05	\N	187106000	El Chombo - Dame Tu Cosita (Antonio Colaña 2018 Edit)	soundcloud	f
loleegee/some-shitty-au-where-popoy-is-papyrus-ay-dame-tu-cosita	2020-01-25 20:35:15.241529-05	2020-01-25 20:35:15.241529-05	\N	105257000	[Some Shitty Au Where Popoy Is Papyrus] - Ay! + Dame Tu Cosita	soundcloud	f
pMxJgBoosU0	2020-01-25 20:36:51.16689-05	2020-01-25 20:36:51.16689-05	\N	197000000	Shakira - Chantaje (Audio) ft. Maluma	youtube	f
liamemethemailman/dame-tu-cosita-gang-ft-lil-pump	2020-01-25 20:36:51.995069-05	2020-01-25 20:36:51.995069-05	\N	138643000	Dame Tu Cosita Gang Ft. Lil Pump	soundcloud	f
sycriththesquid-rebirth/dame-tu-cosita-2	2020-01-25 20:37:13.753569-05	2020-01-25 20:37:13.753569-05	\N	58100000	DAME TU COSITA 2	soundcloud	f
bruh-de-la-boi/have-i-uploaded-any-autotuned-tracks-on-my-account-yet	2020-01-25 20:38:40.879881-05	2020-01-25 20:38:40.879881-05	\N	164820000	Have I uploaded any autotuned tracks on my account yet?	soundcloud	f
retro-gamig/sans-dancing-we-no-speak-megalovanio-2-2	2020-01-25 20:50:19.442202-05	2020-01-25 20:50:19.442202-05	\N	158472000	sans dancing we no speak megalovanio 2: 2	soundcloud	f
theguy-v3-because-why/epic-crazy-slamalovania	2020-01-25 20:55:29.307293-05	2020-01-25 20:55:29.307293-05	\N	139428000	epically 🔥L I T , F A M !🔥 👌💯🅱️ crazy slamalovania	soundcloud	f
mrsandman7337/it-was-acceptable-for-waluigi	2020-01-25 20:55:38.264956-05	2020-01-25 20:55:38.264956-05	\N	213360000	It Was Acceptable For Waluigi	soundcloud	f
glitchswitch/get-this-on-everyones-soundcloud-feed-before-2016-ends	2020-01-25 20:56:04.007316-05	2020-01-25 20:56:04.007316-05	\N	229793000	Get this on everyone's Soundcloud feed before 2016 ends	soundcloud	f
KIAZWfSmNOU	2020-01-25 21:08:38.098878-05	2020-01-25 21:08:38.098878-05	\N	211000000	Aaron Smith - Dancin (KRONO Remix) - Lyrics	youtube	f
user-863529421/undersea-revenge	2020-01-25 21:11:02.085597-05	2020-01-25 21:11:02.085597-05	\N	127985000	Undersea Revenge	soundcloud	f
el_senva/crazy-noisy-bizarre-one	2020-01-25 21:11:32.063476-05	2020-01-25 21:11:32.063476-05	\N	182665000	Crazy Noisy Bizarre One	soundcloud	f
8O7rIMJVNjY	2020-01-25 21:13:00.415855-05	2020-01-25 21:13:00.415855-05	\N	157000000	[Vinesauce] Joel - Robert Cop ( Music Video )	youtube	f
tpose/t004	2020-01-25 21:14:15.369818-05	2020-01-25 21:14:15.369818-05	\N	222321000	׉	soundcloud	f
itz-hi/walkin-on-the-sans	2020-01-25 21:14:46.050714-05	2020-01-25 21:14:46.050714-05	\N	189482000	Walkin' On The Sans	soundcloud	f
theguys-fourth-archive/sponge-halation	2020-01-25 21:23:24.433401-05	2020-01-25 21:23:24.433401-05	\N	249806000	Sponge Halation	soundcloud	f
jacks3rdaccount/jackhoetings-song-3-3	2020-01-25 21:23:29.964003-05	2020-01-25 21:23:29.964003-05	\N	273892000	deltarune knuckles	soundcloud	f
waxxy-431180293/we-are-number-one-but-its-despacito-and-not-pitch-shifted	2020-01-25 21:33:17.432768-05	2020-01-25 21:33:17.432768-05	\N	202832000	We are number One But It's Despacito and not pitch shifted	soundcloud	f
arthurmcbarthur/what-are-hopes-and-dreams-1	2020-01-25 21:33:29.392539-05	2020-01-25 21:33:29.392539-05	\N	169289000	What Are Hopes And Dreams	soundcloud	f
another-fucking-mimikyu/party-rock-groove	2020-01-25 21:33:50.605624-05	2020-01-25 21:33:50.605624-05	\N	203669000	an idea some guy on discord had	soundcloud	f
knightofgames3/the-court-revolving	2020-01-25 21:33:57.01663-05	2020-01-25 21:33:57.01663-05	\N	207090000	THE COURT REVOLVING (Quad City DJ's VS. Toby Fox)	soundcloud	f
sprump/kkb-flamingo-in-the-smw-soundfont	2020-01-25 21:35:27.996774-05	2020-01-25 21:35:27.996774-05	\N	185720000	KKB-Flamingo in the SMW soundfont	soundcloud	f
user-28257691/i-formally-apologize-to-everyone-who-listens-to-this-1	2020-01-25 21:35:38.223174-05	2020-01-25 21:35:38.223174-05	\N	161817000	I Formally Apologize To Everyone Who Listens To This	soundcloud	f
shyabeetus/castlovania	2020-01-25 21:53:20.587387-05	2020-01-25 21:53:20.587387-05	\N	128090000	Castlovania	soundcloud	f
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

