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
bequiet	2020-01-25 23:08:39.60832-05	2020-01-25 23:08:39.60832-05	\N	3710000000	Please Be Quiet!	internal	f
pluffaduff/turn-down-for-net	2020-01-25 23:08:43.946973-05	2020-01-25 23:08:43.946973-05	\N	176316000	Turn Down For Net	soundcloud	f
YHnUSZhhOxU	2020-01-25 23:08:46.467651-05	2020-01-25 23:08:46.467651-05	\N	19000000	cbt	youtube	f
j0lN0w5HVT8	2020-01-25 23:08:47.738301-05	2020-01-25 23:08:47.738301-05	\N	158000000	Welcome To The Cum Zone [Official Music Video]	youtube	f
buc64u6Q_oA	2020-01-25 23:09:47.183757-05	2020-01-25 23:09:47.183757-05	\N	36000000	acquire the sire	youtube	t
FMN3AtsXqA0	2020-01-25 23:10:14.078829-05	2020-01-25 23:10:14.078829-05	\N	193000000	Pitbull x El Chombo x Karol G - Dame Tu Cosita feat. Cutty Ranks (Prod. by Afro Bros) [Ultra Music]	youtube	t
eCoz060WXQw	2020-01-25 23:11:16.880289-05	2020-01-25 23:11:16.880289-05	\N	9000000	Quagmire turns into a fucking toilet	youtube	t
3NQHCGG27IE	2020-01-25 23:11:33.056469-05	2020-01-25 23:11:33.056469-05	\N	32000000	Family Guy - Quagmire Discovers Internet Porn	youtube	t
WA_djlZ0uhs	2020-01-25 23:11:35.647739-05	2020-01-25 23:11:35.647739-05	\N	210000000	u got hat	youtube	t
cPJUBQd-PNM	2020-01-25 23:12:02.436523-05	2020-01-25 23:12:02.436523-05	\N	265000000	"Revenge" - A Minecraft Parody of Usher's DJ Got Us Fallin' In Love (Music Video)	youtube	t
PvJODtiPnvg	2020-01-25 23:13:08.11942-05	2020-01-25 23:13:08.11942-05	\N	52000000	South Park mr hat vs mr Mackey fight	youtube	t
waxxy-431180293/we-are-number-one-but-its-despacito-and-not-pitch-shifted	2020-01-25 23:18:30.403022-05	2020-01-25 23:18:30.403022-05	\N	202832000	We are number One But It's Despacito and not pitch shifted	soundcloud	f
keno9988v-official/surfcito	2020-01-25 23:20:10.860711-05	2020-01-25 23:20:10.860711-05	\N	151601000	surfcito	soundcloud	f
9DbXmreD_go	2020-01-25 23:20:34.593096-05	2020-01-25 23:20:34.593096-05	\N	144000000	Sex - Steve Harvey	youtube	f
cPCLFtxpadE	2020-01-26 00:36:19.090986-05	2020-01-26 00:36:19.090986-05	\N	516000000	Roundabout (2008 Remastered Version)	youtube	f
GvtaG-n_Olo	2020-01-26 01:02:41.193066-05	2020-01-26 01:02:41.193066-05	\N	264000000	Sono Chi No Sadame but the singer got kicked in the nuts	youtube	f
bG2utZB3zCk	2020-01-26 01:11:42.189089-05	2020-01-26 01:11:42.189089-05	\N	53000000	『Literally Me Stando』	youtube	t
tAZMDz2Y7Nk	2020-01-26 01:14:22.701936-05	2020-01-26 01:14:22.701936-05	\N	14000000	meowth ascends	youtube	t
1P4EP5TI574	2020-01-26 01:14:41.570222-05	2020-01-26 01:14:41.570222-05	\N	177000000	ASSGORE (Fingerfückung)	youtube	f
IJiHDmyhE1A	2020-01-26 01:14:22.682006-05	2020-01-26 01:14:22.682006-05	\N	215000000	Christopher Tin - Baba Yetu (Official Music Video)	youtube	t
_6BXEK-kI6k	2020-01-26 01:16:13.785885-05	2020-01-26 01:16:13.785885-05	\N	76000000	『One more Time Stando』	youtube	t
RXHOr9DjY4M	2020-01-26 01:19:47.360062-05	2020-01-26 01:19:47.360062-05	\N	9000000	『Literally Me』 『One More Time』	youtube	t
9EI2cd5wfR0	2020-01-26 01:20:24.318061-05	2020-01-26 01:20:24.318061-05	\N	91000000	Tom's Theme「ONE MORE TIME」	youtube	t
US3VTVDRbjE	2020-01-26 01:21:28.137632-05	2020-01-26 01:21:28.137632-05	\N	244000000	Snail's House - Snailchan Adventure (Official MV)	youtube	t
KeM_b3O8kNQ	2020-01-26 01:25:04.909253-05	2020-01-26 01:25:04.909253-05	\N	641000000	Every Prequel Meme In Less Than 11 Minutes	youtube	t
vKZOKkUovvQ	2020-01-26 01:25:47.537244-05	2020-01-26 01:25:47.537244-05	\N	79000000	Gravity is Unbreakable Official Opening (JJBA OP 5 Parody)	youtube	t
zk35CVPoZsM	2020-01-26 01:30:08.771702-05	2020-01-26 01:30:08.771702-05	\N	185000000	The Dooo: Ascend (new guitar)	youtube	t
8bitofftopic/rock-my-despito	2020-01-26 01:41:13.676-05	2020-01-26 01:41:13.676-05	\N	186791000	Rock My Despito	soundcloud	f
snailymitch/the-price-of-despacito	2020-01-26 01:41:31.288661-05	2020-01-26 01:41:31.288661-05	\N	199280000	The Price Of DESPACITO	soundcloud	f
retro-gamig/sans-dancing-we-no-speak-megalovanio-2-2	2020-01-26 01:41:44.821351-05	2020-01-26 01:41:44.821351-05	\N	158472000	sans dancing we no speak megalovanio 2: 2	soundcloud	f
nativeorange/robbie-rotten-goes-to-russia	2020-01-26 01:52:38.592668-05	2020-01-26 01:52:38.592668-05	\N	142406000	Robbie Rotten Goes to RUSSIA	soundcloud	f
SMRg9mKcyhM	2020-01-26 02:01:57.459161-05	2020-01-26 02:01:57.459161-05	\N	10000000	STONKS	youtube	f
yte5dX3g5ms	2020-01-26 12:53:21.136755-05	2020-01-26 12:53:21.136755-05	\N	263000000	Toco - Zum Zum	youtube	f
IIdyAa7fMyY	2020-01-26 14:39:28.032005-05	2020-01-26 14:39:28.032005-05	\N	259000000	Marcianito 100% Real No Feik [SDLG Remix]	youtube	f
VkcgqdvJm-U	2020-01-26 14:41:40.90958-05	2020-01-26 14:41:40.90958-05	\N	147000000	Doctore Beatz - Marcianito 100% real no fake [ELECTRO REMIX]	youtube	f
Lbg4TSP44yU	2020-01-26 14:48:26.615683-05	2020-01-26 14:48:26.615683-05	\N	389000000	Hildegard von Bingen - Ave generosa	youtube	f
IRY9hF-NyXs	2020-01-26 14:48:30.818782-05	2020-01-26 14:48:30.818782-05	\N	429000000	O Euchari	youtube	f
Mh07WlB46Gw	2020-01-26 15:32:24.182675-05	2020-01-26 15:32:24.182675-05	\N	96000000	Equal Rights - The Lonely Island (feat. Pink) [Popstar version]	youtube	f
TptoloClwns	2020-01-26 15:37:35.253904-05	2020-01-26 15:37:35.253904-05	\N	103000000	Despacito Combined with Numb by LINKIN PARK Mashup (2017)	youtube	f
dvxVQp2-qCk	2020-01-26 15:38:33.235184-05	2020-01-26 15:38:33.235184-05	\N	188000000	R I C A R D O F L I C K	youtube	f
u43VAge_h6U	2020-01-26 15:45:44.694735-05	2020-01-26 15:45:44.694735-05	\N	134000000	Icono Viviente - SiIvaGunner: King for Another Day	youtube	f
IFhVkE8ftmI	2020-01-26 15:45:48.137805-05	2020-01-26 15:45:48.137805-05	\N	116000000	Cumbiote Bien Gaton - SiIvaGunner: King for Another Day	youtube	f
Z-VMmWoxQCQ	2020-01-26 15:45:58.811894-05	2020-01-26 15:45:58.811894-05	\N	123000000	Conga de los Alienígenas - SiIvaGunner: King for Another Day	youtube	f
KIAZWfSmNOU	2020-01-26 15:47:51.876707-05	2020-01-26 15:47:51.876707-05	\N	211000000	Aaron Smith - Dancin (KRONO Remix) - Lyrics	youtube	f
qTUnDV3MgVQ	2020-01-26 15:54:59.6731-05	2020-01-26 15:54:59.6731-05	\N	195000000	VULFPECK /// Animal Spirits	youtube	t
u8fWZ9FjIK4	2020-01-26 15:57:26.769809-05	2020-01-26 15:57:26.769809-05	\N	198000000	VULFPECK /// 1 for 1, DiMaggio	youtube	t
_aKuVAtYgv4	2020-01-26 15:57:41.976116-05	2020-01-26 15:57:41.976116-05	\N	552000000	EXTREME MEME MUSIC MEGAMASHUP	youtube	t
ndiNMhM9f7I	2020-01-26 15:57:46.244724-05	2020-01-26 15:57:46.244724-05	\N	564000000	EXTREME MEME MUSIC MEGAMASHUP 2	youtube	t
le0BLAEO93g	2020-01-26 15:58:04.13335-05	2020-01-26 15:58:04.13335-05	\N	213000000	VULFPECK /// Dean Town	youtube	t
SaJz1cEiNVA	2020-01-26 15:58:04.160801-05	2020-01-26 15:58:04.160801-05	\N	711000000	EXTREME MEME MUSIC MEGAMASHUP 3	youtube	t
dEcTdl9AspE	2020-01-26 16:01:01.581788-05	2020-01-26 16:01:01.581788-05	\N	181000000	Absolute proof that Smash Mouth All Star works with literally any song	youtube	f
fGgOzxg2lRI	2020-01-26 16:01:05.911106-05	2020-01-26 16:01:05.911106-05	\N	171000000	All Star But It's 24 Cartoon Impressions	youtube	f
w5x7956gchI	2020-01-26 16:21:09.507483-05	2020-01-26 16:21:09.507483-05	\N	227000000	Ooh Nah Nah - SiIvaGunner: King for Another Day	youtube	f
z_n-CJCsFAg	2020-01-26 16:23:57.63319-05	2020-01-26 16:23:57.63319-05	\N	162000000	PANDA PARODY (AFRICAN VERSION)	youtube	f
VFR6LtEKBVY	2020-01-26 16:30:48.920008-05	2020-01-26 16:30:48.920008-05	\N	240000000	Gunther   oh you touch my tralala ooh my ding ding dong	youtube	f
2UByXynZDUw	2020-01-26 16:34:41.758031-05	2020-01-26 16:34:41.758031-05	\N	290000000	O-Zone - Dragostea din tei	youtube	f
N_x72hA7_SY	2020-01-26 16:35:40.404651-05	2020-01-26 16:35:40.404651-05	\N	215000000	O-Zone -Dragostea Din Tei- Lyrics (numa numa)	youtube	f
EWMPVn1kgIQ	2020-01-26 16:36:07.944512-05	2020-01-26 16:36:07.944512-05	\N	165000000	Enormous Penis	youtube	f
5Ik24nAYUzc	2020-01-26 16:39:56.561046-05	2020-01-26 16:39:56.561046-05	\N	116000000	you sucky sucky me cocky cocky	youtube	t
MADvxFXWvwE	2020-01-26 16:48:19.858676-05	2020-01-26 16:48:19.858676-05	\N	409000000	Ram Ranch	youtube	f
mponcCyeOb0	2020-01-26 16:48:30.511373-05	2020-01-26 16:48:30.511373-05	\N	110000000	Old town road but it's ram ranch	youtube	f
XPHDiibNiCM	2020-01-26 16:48:50.852536-05	2020-01-26 16:48:50.852536-05	\N	234000000	Ram Ranch (emotional piano cover)	youtube	f
8jJJM_WYEx0	2020-01-26 17:21:07.954559-05	2020-01-26 17:21:07.954559-05	\N	124000000	Mr. Krabs' Smallest Violin (HARDCORE REMIX)	youtube	f
_xQfw2E0Jto	2020-01-26 17:22:06.003353-05	2020-01-26 17:22:06.003353-05	\N	128000000	Ram Ranch Hip Hop/Trap Beat (Prod. Purple River)	youtube	f
ZbM6WbUw7Bs	2020-01-26 17:23:59.822941-05	2020-01-26 17:23:59.822941-05	\N	87000000	Japanese Donald Trump Commercialトランプ2016	youtube	f
suE0kDUSQS0	2020-01-26 17:24:37.84576-05	2020-01-26 17:24:37.84576-05	\N	142000000	Galvao Bueno - Brasil é tetra campeao mundial de futebol	youtube	t
jf4Nj77PIcg	2020-01-26 17:25:47.952976-05	2020-01-26 17:25:47.952976-05	\N	200000000	Pillar Block Theme (Awaken/Pillar Men Theme Noteblock Cover)	youtube	t
LDU_Txk06tM	2020-01-26 17:26:15.037053-05	2020-01-26 17:26:15.037053-05	\N	192000000	Noisestorm - Crab Rave [Monstercat Release]	youtube	f
6STy1q3ptN0	2020-01-26 17:26:48.079799-05	2020-01-26 17:26:48.079799-05	\N	1170000000	Crab Rave Meme Compilation	youtube	t
oTyxJPaQg3A	2020-01-26 17:28:17.29867-05	2020-01-26 17:28:17.29867-05	\N	90000000	Sonic The Hedgehog Improved Trailer	youtube	t
4crTzfkmZK4	2020-01-26 17:29:12.236972-05	2020-01-26 17:29:12.236972-05	\N	84000000	Here Comes Pacman but it's trap remixed	youtube	f
vE2ETqUGj6Q	2020-01-26 17:35:25.475602-05	2020-01-26 17:35:25.475602-05	\N	120000000	SpongeBob Trap Remix "Krusty Krab"	youtube	f
WzucpFgi7Xk	2020-01-26 17:35:33.841366-05	2020-01-26 17:35:33.841366-05	\N	32000000	Flight of the Bumblebee on 101 Bottles!	youtube	t
m90R7j3D3DM	2020-01-26 17:36:17.403863-05	2020-01-26 17:36:17.403863-05	\N	26000000	Spongebob Burned His Hand - AT NIGHT	youtube	t
p7qWEbvur2I	2020-01-26 17:37:07.672298-05	2020-01-26 17:37:07.672298-05	\N	15000000	Russian Push Ups Meme	youtube	t
3eRBFkxgG7g	2020-01-26 17:38:02.44998-05	2020-01-26 17:38:02.44998-05	\N	74000000	Gypsy kid dancing at club can't be bothered. 1997.	youtube	t
1dKkLK6HjMQ	2020-01-26 17:38:23.77418-05	2020-01-26 17:38:23.77418-05	\N	13000000	S stands for syka blyat	youtube	t
IIqr94NDeTE	2020-01-26 17:38:57.512694-05	2020-01-26 17:38:57.512694-05	\N	21000000	Russian Gopnik Tank with Hardbass	youtube	t
xADcMXHT3HA	2020-01-26 17:41:06.642505-05	2020-01-26 17:41:06.642505-05	\N	41000000	Little russian girl harvesting carrots and saying blyat	youtube	t
Gha3TGmoOBQ	2020-01-26 17:41:46.474927-05	2020-01-26 17:41:46.474927-05	\N	133000000	Kazakhstan National Anthem "movie Borat"	youtube	t
7cAkZXKHOVQ	2020-01-26 17:44:41.262291-05	2020-01-26 17:44:41.262291-05	\N	191000000	LUVORATORRRRRY! (Alternate Version) - Hatsune Miku: Project DIVA X	youtube	f
EvTaE99vfIw	2020-01-26 17:47:28.3208-05	2020-01-26 17:47:28.3208-05	\N	109000000	Touhou Anime PVD5 #3 - Candy Powder【東方PVD5】(C85)	youtube	t
WQYN2P3E06s	2020-01-26 18:26:23.436223-05	2020-01-26 18:26:23.436223-05	\N	239000000	Christopher Tin - Sogno di Volare ("The Dream of Flight") (Civilization VI Main Theme)	youtube	t
WSDn1y1THPY	2020-01-26 18:27:15.097669-05	2020-01-26 18:27:15.097669-05	\N	93000000	【Sans Undertale MMD】Chikatto Chika Chikattsu	youtube	t
Sr3hyvjNp94	2020-01-26 18:32:38.705059-05	2020-01-26 18:32:38.705059-05	\N	239000000	『初音ミク』千本桜『オリジナル曲PV』 中文字幕	youtube	t
slazi2PpYUo	2020-01-26 18:33:39.540897-05	2020-01-26 18:33:39.540897-05	\N	175000000	Kill Me Baby ED (Full)	youtube	t
p-o_bMkzOW0	2020-01-26 18:35:43.858678-05	2020-01-26 18:35:43.858678-05	\N	205000000	LUVORATORRRRRY! ver れをる feat.nqrse	youtube	t
KtvNU4hH_Gc	2020-01-26 18:36:31.293221-05	2020-01-26 18:36:31.293221-05	\N	106000000	【Touhou Fanmade Anime OP】 Touhou Hakureisou 【東方アニメ  SOUNDHOLIC】	youtube	t
PWeH_CcTq_8	2020-01-26 18:36:54.875404-05	2020-01-26 18:36:54.875404-05	\N	822000000	[Touhou 3D] Subterranean Stars	youtube	t
Qb3DkYZvzjU	2020-01-26 17:35:35.118261-05	2020-01-26 17:35:35.118261-05	\N	36036000000	"S" stands for "suka blyat" 10 Hours	youtube	t
y90yaLFoYoA	2020-01-26 17:38:02.881268-05	2020-01-26 17:38:02.881268-05	\N	71000000	Russia Hardbass Crazy Dance	youtube	t
ooOELrGMn14	2020-01-26 17:39:10.533444-05	2020-01-26 17:39:10.533444-05	\N	74000000	Why are you Gay - Funniest African interview ever! Link to full interview below	youtube	t
mc0APynwIhQ	2020-01-26 17:41:06.551812-05	2020-01-26 17:41:06.551812-05	\N	26000000	Raging Russian Kid in Minecraft "BLYAAAAAAAAT"	youtube	t
ePQ9_re7f1A	2020-01-26 17:41:46.440337-05	2020-01-26 17:41:46.440337-05	\N	124000000	Borat's Rant And National Anthem At Rodeo	youtube	t
gwvaU_zeEg8	2020-01-26 17:51:44.279444-05	2020-01-26 17:51:44.279444-05	\N	270000000	【第11回東方ニコ童祭】Variable Mystery/紺碧studio【東方ヴォーカルPV】	youtube	t
TPjAsus_bZo	2020-01-26 17:54:58.440185-05	2020-01-26 17:54:58.440185-05	\N	294000000	【東方ヴォーカルPV】無間嫉妬劇場『666』【森羅万象公式】	youtube	t
gMrYfJGm7kM	2020-01-26 17:55:20.590683-05	2020-01-26 17:55:20.590683-05	\N	230000000	Dean - What 2 Do ft. Crush, Jeff Bernat (Official Video)	youtube	t
m_vux8N4dy4	2020-01-26 18:00:51.084026-05	2020-01-26 18:00:51.084026-05	\N	90000000	JoJo's Bizarre Adventure OP1 Sono Chi no Sadame SFX	youtube	t
OpUbnLjexTc	2020-01-26 18:02:05.097908-05	2020-01-26 18:02:05.097908-05	\N	89000000	JoJo OP2 「BLOODY STREAM」 with SFX	youtube	t
2b9vCJuofo8	2020-01-26 18:14:15.270764-05	2020-01-26 18:14:15.270764-05	\N	250000000	Former Hell Funk - SiIvaGunner: King for Another Day	youtube	f
MajvPsoCrYo	2020-01-26 18:20:51.624876-05	2020-01-26 18:20:51.624876-05	\N	130000000	(1080p60)【東方】現夢 - うつつのゆめ -【PV】	youtube	t
lFVcaso9MO0	2020-01-26 18:49:55.990369-05	2020-01-26 18:49:55.990369-05	\N	20000000	A rescue helicopter has fallen into the river in lego city!	youtube	f
sSYoz0JmnZo	2020-01-26 18:56:44.862397-05	2020-01-26 18:56:44.862397-05	\N	192000000	【Kagamine Rin・Len】Electric Angel "えれくとりっく・えんじぇぅ"【VOCALOID-PV】	youtube	t
6HGLeUqoUf8	2020-01-26 18:59:54.944676-05	2020-01-26 18:59:54.944676-05	\N	217000000	+♂ ver れをる	youtube	t
2auo4lkBvZ4	2020-01-26 19:01:03.536068-05	2020-01-26 19:01:03.536068-05	\N	201000000	〔オリジナル〕 ギガンティックO.T.N ver れをる	youtube	t
UC_qla6FQwM	2020-01-26 19:05:11.474904-05	2020-01-26 19:05:11.474904-05	\N	256000000	[MV] REOL - ヒビカセ / Hibikase	youtube	t
PUZgiz3ktdU	2020-01-26 19:05:44.026454-05	2020-01-26 19:05:44.026454-05	\N	262000000	Hibikase feat. Rena 【Intense Symphonic Metal Cover】	youtube	f
24AK2jhHcJo	2020-01-26 19:10:56.797206-05	2020-01-26 19:10:56.797206-05	\N	180000000	Reach for the Moon, Immortal Smoke - METAL COVER - Touhou IN (Fujiwara no Mokou)	youtube	t
i7ouv9AyB_o	2020-01-26 19:15:14.172575-05	2020-01-26 19:15:14.172575-05	\N	284000000	Don't you want me (feat. Such)	youtube	t
ABYnHjc08wI	2020-01-26 19:23:47.353233-05	2020-01-26 19:23:47.353233-05	\N	217000000	DUCKWRTH - MICHUUL.	youtube	f
IHNzOHi8sJs	2020-01-26 19:25:28.813861-05	2020-01-26 19:25:28.813861-05	\N	215000000	BLACKPINK - ‘뚜두뚜두 (DDU-DU DDU-DU)’ M/V	youtube	t
M9J49EOAc0Q	2020-01-26 19:25:45.317813-05	2020-01-26 19:25:45.317813-05	\N	147000000	Renekton (Parodia League of Legends) J. Balvin - Reggaeton	youtube	t
cmlCuzn_mqI	2020-01-26 19:26:21.435847-05	2020-01-26 19:26:21.435847-05	\N	156000000	Nightcore - Bad boy	youtube	f
1_TdnPG5-0o	2020-01-26 19:26:44.782967-05	2020-01-26 19:26:44.782967-05	\N	158000000	Nightcore - 21st Century Digital Girl	youtube	f
fastfouriertransform/tuva-mongolian-style-hip-hop-beat	2020-01-26 19:27:25.877061-05	2020-01-26 19:27:25.877061-05	\N	64052000	Tuva - Mongolian Style Hip Hop Beat	soundcloud	f
fastfouriertransform/astro	2020-01-26 19:27:29.518185-05	2020-01-26 19:27:29.518185-05	\N	83331000	astro	soundcloud	f
fastfouriertransform/undertale-waterfall-ost-remix	2020-01-26 19:27:50.000843-05	2020-01-26 19:27:50.000843-05	\N	109767000	Undertale Waterfall OST - Remix	soundcloud	f
slushiimusic/jotaro?in=fastfouriertransform/sets/p1	2020-01-26 19:28:16.81976-05	2020-01-26 19:28:16.81976-05	\N	201736000	Phiso- Jotaro (Slushii Flip)	soundcloud	f
dubstep/xilent-kill-me?in=fastfouriertransform/sets/p1	2020-01-26 19:28:20.711145-05	2020-01-26 19:28:20.711145-05	\N	222530000	Xilent - Kill Me	soundcloud	f
vV71CEm-svU	2020-01-26 19:29:36.732647-05	2020-01-26 19:29:36.732647-05	\N	185000000	Duckwrth - I'M DEAD	youtube	f
UuV2BmJ1p_I	2020-01-26 19:29:49.316442-05	2020-01-26 19:29:49.316442-05	\N	247000000	[MV] ZICO(지코) _ Any song(아무노래)	youtube	f
ZsUoefdaoo0	2020-01-26 19:30:33.603287-05	2020-01-26 19:30:33.603287-05	\N	153000000	Patty Power	youtube	t
9eyyhtOrKPI	2020-01-26 19:35:44.938832-05	2020-01-26 19:35:44.938832-05	\N	227000000	[MV] REOL - drop pop candy	youtube	t
iA-_M0FfAtM	2020-01-26 19:36:30.818649-05	2020-01-26 19:36:30.818649-05	\N	245000000	Touhou 8 IN - Lunatic Eyes ~ Invisible Full Moon 【Intense Symphonic Metal Cover】	youtube	f
ZWkO_M6vWBw	2020-01-26 19:37:01.670977-05	2020-01-26 19:37:01.670977-05	\N	145000000	Nightcore - Ready or not	youtube	f
dreyvibez/ongoing-sleep-wiz-khalifa-20syl?in=fastfouriertransform/sets/p22	2020-01-26 19:40:49.295425-05	2020-01-26 19:40:49.295425-05	\N	220755000	Drey Vibez - Ongoing Sleep (Wiz Khalifa & 20syl)	soundcloud	f
ty-garcia-151899984/lil-nas-x-carry-on	2020-01-26 19:41:36.197169-05	2020-01-26 19:41:36.197169-05	\N	183683000	Lil Nas X - Carry On	soundcloud	f
HI-mXMr8glQ	2020-01-26 19:42:20.342993-05	2020-01-26 19:42:20.342993-05	\N	398000000	Migos - Stir Fry (Official Video)	youtube	f
0ffGuajCdwg	2020-01-26 19:43:33.689382-05	2020-01-26 19:43:33.689382-05	\N	318000000	Undertale - Death by Glamour (Mettaton EX) 【Intense Symphonic Metal Cover】	youtube	f
khdKclxSyjY	2020-01-26 19:47:23.082448-05	2020-01-26 19:47:23.082448-05	\N	248000000	Senbonzakura - Hatsune Miku: Project Mirai DX	youtube	f
p5kc8hJ3GcA	2020-01-26 20:24:10.338873-05	2020-01-26 20:24:10.338873-05	\N	269000000	Goose House - Hikaru Nara [Lyrics][EnglishTranslation]	youtube	t
UZ1NEomJ6hw	2020-01-26 20:29:43.680245-05	2020-01-26 20:29:43.680245-05	\N	173000000	星野源-ドラえもん	youtube	t
W9a9xdWgU5I	2020-01-26 20:32:50.112136-05	2020-01-26 20:32:50.112136-05	\N	135000000	Are You a Real Villain? ~ We Are Number One [Commission]	youtube	f
bMCkrXaXFCM	2020-01-26 20:36:44.862785-05	2020-01-26 20:36:44.862785-05	\N	217000000	Despacitouhou	youtube	f
YlxRyvO2Yek	2020-01-26 20:36:55.188248-05	2020-01-26 20:36:55.188248-05	\N	198000000	Old Town Road (Touhou Style)	youtube	f
i8KfrZjjLqw	2020-01-26 20:37:49.499206-05	2020-01-26 20:37:49.499206-05	\N	115000000	UFO Nazrin's theme: A Tiny, Tiny, Tiny, Tiny, Tiny, Tiny, Tiny, Tiny, Tiny, Tiny, Tiny, Tiny, Tiny	youtube	t
-DwN8eqUArQ	2020-01-26 20:39:03.520434-05	2020-01-26 20:39:03.520434-05	\N	452000000	Touhou 東方14 DDC OST #6: Kobito of the Shining Needle~Little Princess (Shinmyoumaru Sukuna's Theme)	youtube	f
dbSeAm6DrBc	2020-01-26 20:39:23.113988-05	2020-01-26 20:39:23.113988-05	\N	242000000	【Touhou Orchestra】 Kobito of the Shining Needle ~ Little Princess	youtube	f
7tdozf19aWU	2020-01-26 20:40:07.951151-05	2020-01-26 20:40:07.951151-05	\N	291000000	[東方自作アレンジ] ゆらぐもの [原曲:フォールオブフォール ～ 秋めく滝]	youtube	t
juu-SSciqWA	2020-01-26 20:44:01.507262-05	2020-01-26 20:44:01.507262-05	\N	251000000	【東方爆音ジャズ12】輝く針の小人族【東京アクティブNEETs】	youtube	t
qwpPr5EARVg	2020-01-26 20:45:19.924184-05	2020-01-26 20:45:19.924184-05	\N	177000000	Kobito of the Shining Needle / Shinmyoumaru Sukuna's Theme (Touhou 14) - Metal Cover	youtube	t
oXVK_Od9dyE	2020-01-26 20:46:08.839467-05	2020-01-26 20:46:08.839467-05	\N	261000000	【東方フィル10秘】生演奏オーケストラによる『童祭 ～ Innocent Treasures』【交響アクティブNEETs】	youtube	t
jm1hCslst5Y	2020-01-26 20:48:23.785792-05	2020-01-26 20:48:23.785792-05	\N	255000000	【東方ボーカル】死蝶 -Swallowtail-【SOUND HOLIC】	youtube	f
VU1oa46YX2E	2020-01-26 20:54:00.766738-05	2020-01-26 20:54:00.766738-05	\N	90000000	【MAD】Touhou × Nichijou OP2 【東方x幻想郷の日常Ⅱ 】HD	youtube	t
h-mUGj41hWA	2020-01-26 20:55:54.025656-05	2020-01-26 20:55:54.025656-05	\N	378000000	NOMA - Brain Power - LYRICS!	youtube	t
Y5tjtUFL0j4	2020-01-26 20:58:00.619794-05	2020-01-26 20:58:00.619794-05	\N	166000000	just a regular crab rave, nothing to see here folks	youtube	t
jtH_nLso2Gg	2020-01-26 20:58:56.531226-05	2020-01-26 20:58:56.531226-05	\N	240000000	【東方ボーカル】 「色は情へと誘う」 【幽閉サテライト】	youtube	f
y3Born_SJhM	2020-01-26 20:59:15.128332-05	2020-01-26 20:59:15.128332-05	\N	430000000	【東方ボーカル】 【凋叶棕】 ヒメゴトクラブ	youtube	f
i1W49jOiDGw	2020-01-26 21:00:29.737062-05	2020-01-26 21:00:29.737062-05	\N	288000000	【Vocal】 【TUMENECO】Recover the Future (Rock Style)	youtube	f
8LwT1molXgQ	2020-01-26 21:02:16.933013-05	2020-01-26 21:02:16.933013-05	\N	272000000	【東方アレンジ】Fluye Constantemente【フォールオブフォール～秋めく滝】	youtube	f
kx6mNWNq1hI	2020-01-26 21:03:08.400381-05	2020-01-26 21:03:08.400381-05	\N	285000000	k-waves LAB - 芥川龍之介の河童	youtube	f
0WW_mfCNc-Y	2020-01-26 21:03:38.987418-05	2020-01-26 21:03:38.987418-05	\N	245000000	k-waves LAB - 狂気の瞳	youtube	f
XUhVCoTsBaM	2020-01-26 23:36:35.408157-05	2020-01-26 23:36:35.408157-05	\N	202000000	Jojo's Bizarre Adventure- Awaken(Pillar Men Theme)	youtube	f
fCmvXCgZr74	2020-01-27 00:25:24.814277-05	2020-01-27 00:25:24.814277-05	\N	33000000	apple bottom jeans, boots with the	youtube	f
Yz16mKptpRo	2020-01-27 00:27:27.044561-05	2020-01-27 00:27:27.044561-05	\N	132000000	JoJo Pose TikTok Song - Apollo Fresh (Official Audio)	youtube	f
LB871SVYMhI	2020-01-27 00:44:20.62882-05	2020-01-27 00:44:20.62882-05	\N	67000000	Jimmy Neutron Happy Family Happy Hour	youtube	t
893N2JCt2ko	2020-01-27 02:21:19.205299-05	2020-01-27 02:21:19.205299-05	\N	11000000	berd being disappointed in your actions and walking away (ASMR)	youtube	t
WROI5WYBU_A	2020-01-27 11:14:14.809313-05	2020-01-27 11:14:14.809313-05	\N	205000000	Transistor Original Soundtrack - Signals	youtube	f
f9O2Rjn1azc	2020-01-27 11:14:28.958212-05	2020-01-27 11:14:28.958212-05	\N	180000000	Transistor Original Soundtrack - We All Become	youtube	f
DuL5sEQJwJ4	2020-01-27 12:29:48.915713-05	2020-01-27 12:29:48.915713-05	\N	15000000	I am a dancer	youtube	t
8-6tfOK47uc	2020-01-27 12:31:28.159192-05	2020-01-27 12:31:28.159192-05	\N	211000000	Black Clover Opening 10 Full『Vickeblanka - Black Catcher』	youtube	f
U5P80jYKwko	2020-01-27 15:24:13.150842-05	2020-01-27 15:24:13.150842-05	\N	271000000	Más Gasolina - SiIvaGunner: King for Another Day	youtube	f
sVZpHFXcFJw	2020-01-27 15:24:45.167194-05	2020-01-27 15:24:45.167194-05	\N	198000000	True Damage - GIANTS (ft. Becky G, Keke Palmer, SOYEON, DUCKWRTH, Thutmose) | League of Legends	youtube	f
uR8Mrt1IpXg	2020-01-27 15:25:06.927416-05	2020-01-27 15:25:06.927416-05	\N	216000000	Red Velvet 레드벨벳 'Psycho' MV	youtube	f
emojapaweeb/i-write-villains-not-tragedies	2020-01-27 15:25:11.091029-05	2020-01-27 15:25:11.091029-05	\N	182848000	I Write Villains Not Tragedies	soundcloud	f
slaffie/konga-conga-beach	2020-01-27 15:25:13.278371-05	2020-01-27 15:25:13.278371-05	\N	155102000	Konga Conga Beach	soundcloud	f
shitpostsupply/cha-cha-slider	2020-01-27 15:25:19.74888-05	2020-01-27 15:25:19.74888-05	\N	219135000	Cha Cha Slider	soundcloud	f
qweryuiopp/an-outbreak-of-ligma-in-lazytown	2020-01-27 15:25:30.071133-05	2020-01-27 15:25:30.071133-05	\N	127070000	An Outbreak Of Ligma In Lazytown	soundcloud	f
bruh-de-la-boi/its-a-sin-that-this-mashup-works	2020-01-27 15:25:33.378148-05	2020-01-27 15:25:33.378148-05	\N	132400000	It's a sin that this mashup works.	soundcloud	f
arthurmcbarthur/livin-la-despacito	2020-01-27 15:25:47.940059-05	2020-01-27 15:25:47.940059-05	\N	222191000	Livin La Despacito	soundcloud	f
lammirai/500nauticalmiles	2020-01-27 15:26:16.053124-05	2020-01-27 15:26:16.053124-05	\N	149851000	500 Nautical Miles	soundcloud	f
dashiup/club-penguin-free-membership-working-2010-download-now-free-no-download	2020-01-27 15:58:18.694207-05	2020-01-27 15:58:18.694207-05	\N	193977000	club penguin free membership WORKING 2010 DOWNLOAD NOW FREE NO DOWNLOAD	soundcloud	f
two-ty-mcexplosion/bout-ta-hop	2020-01-27 16:03:57.780949-05	2020-01-27 16:03:57.780949-05	\N	175610000	Bout Ta Hop	soundcloud	f
lefaguette/cursedwav	2020-01-27 16:04:39.642098-05	2020-01-27 16:04:39.642098-05	\N	261719000	cursed.wav	soundcloud	f
sgnm3/we-are-pumped-up-kicks	2020-01-27 16:12:34.102747-05	2020-01-27 16:12:34.102747-05	\N	144757000	We Are Pumped Up Kicks	soundcloud	f
little-memer/ievan-cositta	2020-01-27 16:12:50.484111-05	2020-01-27 16:12:50.484111-05	\N	149355000	Ievan Cositta	soundcloud	f
drricarde1/pokemon-verde-marcianito-100-real-no-fake	2020-01-27 16:13:31.229855-05	2020-01-27 16:13:31.229855-05	\N	251739000	Pokémon Verde Marcianito 100% Real No Fake	soundcloud	f
younsu-hotape/gumi-100-real-no-fake	2020-01-27 16:13:45.819396-05	2020-01-27 16:13:45.819396-05	\N	28058000	Gumi 100% real no fake	soundcloud	f
musicoscinicos/marciano	2020-01-27 16:13:59.752122-05	2020-01-27 16:13:59.752122-05	\N	75421000	la cumbia orquestal del marcianito	soundcloud	f
monogiraffe/some-mouths	2020-01-27 16:15:10.02338-05	2020-01-27 16:15:10.02338-05	\N	273475000	Some Mouths	soundcloud	f
thesqrtminus3/everyone-in-the-gregg-gettin-tipsy	2020-01-27 16:43:16.476075-05	2020-01-27 16:43:16.476075-05	\N	221617000	Everyone In The Gregg Gettin Tipsy	soundcloud	f
el_senva/same-bpm-and-key-joke	2020-01-27 16:43:26.86689-05	2020-01-27 16:43:26.86689-05	\N	211245000	same BPM and key joke	soundcloud	f
renim_g/if-this-works-im-gonna-jump-off-my-roof	2020-01-27 16:43:54.703862-05	2020-01-27 16:43:54.703862-05	\N	405091000	i've had this idea since 2015 and never made it because its stupid	soundcloud	f
manfredvarg97/gascube	2020-01-27 16:44:23.176019-05	2020-01-27 16:44:23.176019-05	\N	268144999	GASCUBE	soundcloud	f
mrsandman7337/it-was-acceptable-for-waluigi	2020-01-27 16:44:37.723344-05	2020-01-27 16:44:37.723344-05	\N	213360000	It Was Acceptable For Waluigi	soundcloud	f
crystalforce/how-to-be-a-lawyer-number-one	2020-01-27 16:45:33.002245-05	2020-01-27 16:45:33.002245-05	\N	136397000	How to be a Lawyer Number One	soundcloud	f
ryatt246/vs-britney	2020-01-27 16:48:26.577082-05	2020-01-27 16:48:26.577082-05	\N	147605000	Vs. Britney	soundcloud	f
gamerat101/we-are-number-one-but-its-actually-spider-dance	2020-01-27 16:49:02.906849-05	2020-01-27 16:49:02.906849-05	\N	150766000	We Are Number One but it's actually Spider Dance	soundcloud	f
jRKR8fDaLZo	2020-01-27 17:03:31.664829-05	2020-01-27 17:03:31.664829-05	\N	37000000	We No Speak Americano (Alpha Mix) - DJ Hero 2	youtube	t
bagelboy-305309012/super-smash-mouth-walkin-on-the-character-select	2020-01-27 17:03:43.824992-05	2020-01-27 17:03:43.824992-05	\N	158630000	Walkin' On The Character Select	soundcloud	f
GT9V89rbrWQ	2020-01-27 17:04:40.983638-05	2020-01-27 17:04:40.983638-05	\N	68000000	Beloved Tomboyish Girl (Beta Mix) - Touhou 6: the Embodiment of Scarlet Devil	youtube	t
bjWFF5i_lAo	2020-01-27 17:07:00.050012-05	2020-01-27 17:07:00.050012-05	\N	252000000	Main Theme - Epic Same 174 BPM lmao	youtube	f
user-871947641/why-hasnt-this-been-done-already	2020-01-27 17:13:19.712697-05	2020-01-27 17:13:19.712697-05	\N	142798000	Why hasn't this been done already?	soundcloud	f
czechquors/starvivemp3	2020-01-27 17:13:27.563836-05	2020-01-27 17:13:27.563836-05	\N	147813000	starvive.mp3	soundcloud	f
radioactium/being-athletic-in-the-90s	2020-01-27 17:14:57.836206-05	2020-01-27 17:14:57.836206-05	\N	133967999	Being Athletic In The 90s	soundcloud	f
thomas-evoy/toxic-skeletons	2020-01-27 17:15:04.222532-05	2020-01-27 17:15:04.222532-05	\N	182350000	Toxic Skeletons	soundcloud	f
dj-gaspadorius/we-are-cruel-angels	2020-01-27 17:19:20.357049-05	2020-01-27 17:19:20.357049-05	\N	142380000	We Are Cruel Angels	soundcloud	f
alexmashup/gaskau	2020-01-27 17:23:00.631588-05	2020-01-27 17:23:00.631588-05	\N	36026000	Gaskau	soundcloud	f
alexmashup/spongebobs-perfect-training-video	2020-01-27 17:23:16.617481-05	2020-01-27 17:23:16.617481-05	\N	128324000	Spongebob's Perfect Training Video	soundcloud	f
BRpkYOZ_iTU	2020-01-27 17:35:30.197515-05	2020-01-27 17:35:30.197515-05	\N	230000000	Hatsune Miku - Senbonzakura (HQ Audio)	youtube	f
DJfg39WkMvE	2020-01-27 17:49:30.0682-05	2020-01-27 17:49:30.0682-05	\N	93000000	Blend W	youtube	t
IZ1t7CwfvEc	2020-01-27 18:20:30.948135-05	2020-01-27 18:20:30.948135-05	\N	210000000	GOT7 "Never Ever" M/V	youtube	f
3coc-hngvPE	2020-01-27 18:28:26.257399-05	2020-01-27 18:28:26.257399-05	\N	55000000	ＬＵＩＧＩ＇Ｓ ＲＡＣＩＳＴ ＣＨＩＮＥＳＥ ＣＯＷＢＯＹ ＩＭＰＲＥＳＳＩＯＮ	youtube	t
qJXcBEsJ-WQ	2020-01-27 19:48:17.769318-05	2020-01-27 19:48:17.769318-05	\N	212000000	BLACKPINK vs Daler Mehndi - 뚜두뚜두 (TU-NAK TU-NAK) (feat. Party Favor & Nymz) (J.E.B Mashup)	youtube	f
alliestarr/what-if-drop-made-marcianito-100-real-bailando-cumbiawmv	2020-01-27 20:02:07.159131-05	2020-01-27 20:02:07.159131-05	\N	41250000	what if drop made Marcianito 100% Real Bailando Cumbia.wmv	soundcloud	f
naokistrashcan/marcianito-vaporwave	2020-01-27 20:03:05.352694-05	2020-01-27 20:03:05.352694-05	\N	193298000	Marcianito Vaporwave	soundcloud	f
PxctBMjtees	2020-01-27 20:03:44.148092-05	2020-01-27 20:03:44.148092-05	\N	258000000	[Undertale Au-World Wide Breakdown]Realidad/Reality	youtube	f
_T_SIDKGRjs	2020-01-27 20:19:04.936848-05	2020-01-27 20:19:04.936848-05	\N	270000000	Elvis Crespo - Suavemente (Cover Audio)	youtube	f
YVkUvmDQ3HY	2020-01-27 20:52:38.748521-05	2020-01-27 20:52:38.748521-05	\N	299000000	Eminem - Without Me (Official Video)	youtube	f
monogiraffe/enormous-pizza-a-secret-course	2020-01-27 20:52:45.655505-05	2020-01-27 20:52:45.655505-05	\N	164611000	Enormous Pizza (A Secret Course)	soundcloud	f
ePBjUMEeqBw	2020-01-27 21:35:30.260068-05	2020-01-27 21:35:30.260068-05	\N	198000000	ねむるまち feat.yama  (Official Video)	youtube	t
l0GN40EL1VU	2020-01-27 21:36:00.070131-05	2020-01-27 21:36:00.070131-05	\N	242000000	Joe Hisaishi - Summer	youtube	f
YX4L-vPnIJs	2020-01-27 21:36:24.752975-05	2020-01-27 21:36:24.752975-05	\N	229000000	ID:INVADED Ending Full - 『Other side』by MIYAVI	youtube	t
3bNITQR4Uso	2020-01-27 21:37:11.441276-05	2020-01-27 21:37:11.441276-05	\N	476000000	Mariya Takeuchi 竹内 まりや Plastic Love	youtube	t
79LHxkJE3fg	2020-01-27 21:37:31.644949-05	2020-01-27 21:37:31.644949-05	\N	235000000	TK - unravel HQ [Tokyo Ghoul] FULL	youtube	t
f4D0lY6A3nU	2020-01-27 21:38:22.660231-05	2020-01-27 21:38:22.660231-05	\N	279000000	TK from 凛として時雨 『katharsis』 / “東京喰種トーキョーグール:re” 最終章OP	youtube	t
0YF8vecQWYs	2020-01-27 21:38:42.523938-05	2020-01-27 21:38:42.523938-05	\N	253000000	美波「カワキヲアメク」MV	youtube	t
2Ac9IpjukdQ	2020-01-27 21:39:02.600256-05	2020-01-27 21:39:02.600256-05	\N	246000000	Black Clover Opening 3 Full『Black Rover』by Vickeblanka	youtube	t
h2dJ-JUzhVs	2020-01-27 22:03:52.484808-05	2020-01-27 22:03:52.484808-05	\N	140000000	No cock Like horse cock   Pepper Coyote lyrics	youtube	f
3ejAMB3g_b8	2020-01-27 22:04:35.446715-05	2020-01-27 22:04:35.446715-05	\N	210000000	Finger Eleven - Paralyzer lyrics	youtube	f
TBLVkZYgspM	2020-01-27 22:28:40.410138-05	2020-01-27 22:28:40.410138-05	\N	232000000	Seven Nation Army (Pre-Release) (Complete)	youtube	f
mWVmu17ySuk	2020-01-27 22:49:50.513418-05	2020-01-27 22:49:50.513418-05	\N	207000000	Tones and I - Dance Monkey (Lyrics)	youtube	f
J2LBttJgCTk	2020-01-27 22:51:01.485472-05	2020-01-27 22:51:01.485472-05	\N	119000000	Tones and I - Dance Monkey 🎧	youtube	t
pvuN_WvF1to	2020-01-27 22:51:38.205464-05	2020-01-27 22:51:38.205464-05	\N	431000000	Lil Dicky - Earth (Official Music Video)	youtube	t
qCTMq7xvdXU	2020-01-27 22:52:56.516486-05	2020-01-27 22:52:56.516486-05	\N	246000000	Billie Eilish - everything i wanted (Audio)	youtube	t
xFeJU2fIKlY	2020-01-28 00:16:42.331911-05	2020-01-28 00:16:42.331911-05	\N	233000000	Pickle Rock Anthem	youtube	t
oEkGC2HV7rc	2020-01-28 00:20:38.648259-05	2020-01-28 00:20:38.648259-05	\N	235000000	Giga - '劣等上等'(BRING IT ON) ft.鏡音リン・レン【MV】	youtube	t
hyV4qGAPKac	2020-01-28 00:21:48.398925-05	2020-01-28 00:21:48.398925-05	\N	268000000	[60fps Full風]Butterfly on My(Your) Right Shoulder 右肩の蝶 -Kagamine Len Rin 鏡音レン リン DIVA English romaji	youtube	t
iG1o5xLqqcY	2020-01-28 00:24:43.829544-05	2020-01-28 00:24:43.829544-05	\N	263000000	marcianito 100% real bailando cumbia full version	youtube	t
ruQxoi3laao	2020-01-28 00:34:05.682566-05	2020-01-28 00:34:05.682566-05	\N	279000000	ANTONIO RIOS - NUNCA ME FALTES (Metal Cover)	youtube	t
4VviHFvQ1ts	2020-01-28 14:29:12.255279-05	2020-01-28 14:29:12.255279-05	\N	291000000	[동방 어레인지] A-One - Recover the Future (Eurobeat Style) [자막]	youtube	f
R4i0T49Y790	2020-01-28 14:35:36.502167-05	2020-01-28 14:35:36.502167-05	\N	95000000	Caught in the Worldwide Spotlight - SiIvaGunner: King for Another Day	youtube	f
Gw0CCLjG9Pc	2020-01-28 14:59:10.697552-05	2020-01-28 14:59:10.697552-05	\N	305000000	【A-One×TUMENECO】Uncover the Universe (Eurobeat Style)【東方ボーカル Eurobeat】	youtube	f
PbWzda2L8wA	2020-01-28 15:09:30.465768-05	2020-01-28 15:09:30.465768-05	\N	249000000	【東方ボーカル】 TatshMusicCircle - 蛍火	youtube	f
Ov_7xPEjfKQ	2020-01-28 15:16:35.794864-05	2020-01-28 15:16:35.794864-05	\N	313000000	【東方ボーカル】 「愛憎EGOIST」 【C-CLAYS】	youtube	f
Fk_XlA7BqWM	2020-01-28 15:20:34.622672-05	2020-01-28 15:20:34.622672-05	\N	281000000	【東方ボーカル】 「クロニクルの懺悔」 【C-CLAYS】	youtube	f
W46_t-Myk4w	2020-01-28 15:26:01.377113-05	2020-01-28 15:26:01.377113-05	\N	248000000	【東方Vocal／Techno Pop】 I don't wanna say "It's too late" 「C-CLAYS」	youtube	f
jwPw7jgD1Aw	2020-01-28 15:31:49.742121-05	2020-01-28 15:31:49.742121-05	\N	240000000	Elvis Crespo Eats His Oatmeal	youtube	f
qziK5Z6RhQk	2020-01-28 15:34:30.028602-05	2020-01-28 15:34:30.028602-05	\N	296000000	【東方Vocal／Electro Rock】 HEAVENLY NOTE 「SOUND HOLIC」	youtube	f
a7gW74TCqd8	2020-01-28 15:49:05.184021-05	2020-01-28 15:49:05.184021-05	\N	270000000	【東方ボーカル】 「中道」 【幽閉サテライト】	youtube	f
0c0AvIeSfS0	2020-01-28 15:57:27.941035-05	2020-01-28 15:57:27.941035-05	\N	280000000	【東方Orchestral／Symphonic】 Dream of Arcadia 「Melodic Taste」	youtube	f
cGLCqxPfdjY	2020-01-28 16:14:45.04061-05	2020-01-28 16:14:45.04061-05	\N	269000000	【東方Vocal／Electro House】 LAST DAY GOOD NIGHT 「ZYTOKINE」	youtube	f
4lRWYRlzlT8	2020-01-28 16:30:38.539673-05	2020-01-28 16:30:38.539673-05	\N	282000000	【東方ボーカル】 「マーメイド幻想 ～Mermaid Fantasy～」 【あ～るの～と】	youtube	f
3hDrIStazPw	2020-01-28 16:43:35.454212-05	2020-01-28 16:43:35.454212-05	\N	291000000	【東方ボーカル】 「Lunatic Kaleidoscope」 【GET IN THE RING】	youtube	f
Zs3iLHWTfek	2020-01-28 16:46:03.471221-05	2020-01-28 16:46:03.471221-05	\N	210000000	Momoland (모모랜드) & El Chombo - Baam & Dame Tu Cosita (Mashup Video)	youtube	f
man_bag/the-living-mm-discorgetti	2020-01-28 17:17:56.258688-05	2020-01-28 17:17:56.258688-05	\N	195570000	The Living M&M : Discorgetti	soundcloud	f
asleep_droid/propane-shop	2020-01-28 17:18:04.721964-05	2020-01-28 17:18:04.721964-05	\N	229585000	Propane Shop	soundcloud	f
thelaxone/problem_set_03pdf	2020-01-28 17:18:10.070541-05	2020-01-28 17:18:10.070541-05	\N	157977000	problem_set_03.pdf	soundcloud	f
DUCQJgBcXLs	2020-01-28 17:19:46.274121-05	2020-01-28 17:19:46.274121-05	\N	135000000	2oatmEal	youtube	f
mirefixtape/i-got-it-from-my-bee	2020-01-28 17:20:13.474748-05	2020-01-28 17:20:13.474748-05	\N	232170000	I Got it from my Bee	soundcloud	f
radioactium/did-someone-say-matching-bpm	2020-01-28 17:20:24.341522-05	2020-01-28 17:20:24.341522-05	\N	189221000	Did Someone Say Matching Bpm	soundcloud	f
doughknot-lump/lavender-shake	2020-01-28 17:20:30.822219-05	2020-01-28 17:20:30.822219-05	\N	235306000	Lavender Shake	soundcloud	f
thesqrtminus2/you-reposted-in-the-wrong-century	2020-01-28 17:21:02.028679-05	2020-01-28 17:21:02.028679-05	\N	148128000	You Reposted In The Wrong Century	soundcloud	f
dabunky/soundcloud-2015-halloween-spooktacular	2020-01-28 17:21:23.618688-05	2020-01-28 17:21:23.618688-05	\N	132713000	Soundcloud 2015 Halloween Spooktacular	soundcloud	f
shnabubula/playing-super-mario-world-while-taking-mushrooms	2020-01-28 17:21:39.346355-05	2020-01-28 17:21:39.346355-05	\N	546401000	Playing Super Mario World While Taking Mushrooms	soundcloud	f
KsvPJJv4ysg	2020-01-28 17:26:05.160986-05	2020-01-28 17:26:05.160986-05	\N	145000000	Nunca Me Das Cositas - SiIvaGunner: King for a Day Tournament	youtube	f
botanicsage/let-it-go-waluigi	2020-01-28 17:40:20.362284-05	2020-01-28 17:40:20.362284-05	\N	244501000	Let It Go, Waluigi	soundcloud	f
vari-music/a-secret-course-was-her-super-mario-sunshine	2020-01-28 17:40:26.889194-05	2020-01-28 17:40:26.889194-05	\N	127097000	A Secret Course Was Her? - Super Mario Sunshine	soundcloud	f
nutellafrenchtoast/like-the-legend-of-the-ho-oh	2020-01-28 17:40:35.154541-05	2020-01-28 17:40:35.154541-05	\N	229507000	Like The Legend of The Ho-Oh	soundcloud	f
5VGLPP70Xtw	2020-01-28 21:56:03.602831-05	2020-01-28 21:56:03.602831-05	\N	265000000	Billie Jean But Every Instrument Is A Spring Door Stopper	youtube	f
oayu297xrns	2020-01-28 22:06:11.665593-05	2020-01-28 22:06:11.665593-05	\N	184000000	UFO Stage 1 Boss - Nazrin's Theme - A Tiny, Tiny, Clever Commander	youtube	f
XDNsk2UXYE4	2020-01-28 22:07:26.517695-05	2020-01-28 22:07:26.517695-05	\N	372000000	UFO Stage 5 Boss - Shou Toramaru's Theme - The Tiger-Patterned Vaisravana	youtube	f
4syvy2vjvQY	2020-01-28 22:08:11.168333-05	2020-01-28 22:08:11.168333-05	\N	295000000	SA Extra Stage Boss - Koishi Komeiji's Theme - Hartmann's Youkai Girl	youtube	f
Uxd0VGA0EYQ	2020-01-28 22:12:28.816243-05	2020-01-28 22:12:28.816243-05	\N	93000000	Bloody Stream - Otamatone Cover	youtube	t
16K3EZ-1H_w	2020-01-28 22:14:54.478202-05	2020-01-28 22:14:54.478202-05	\N	83000000	Giorno's Theme - Otamatone Cover	youtube	t
yzzW7KmAalg	2020-01-28 22:15:09.163537-05	2020-01-28 22:15:09.163537-05	\N	57000000	sans monkey	youtube	t
NznDn6tU2Xk	2020-01-28 22:17:07.067004-05	2020-01-28 22:17:07.067004-05	\N	155000000	Cruel Angel's Thesis - Neon Genesis Evangelion OP on recorder	youtube	t
mdStVYPLkTQ	2020-02-11 20:54:04.316619-05	2020-02-11 20:54:04.316619-05	\N	324000000	Zanies and Fools	youtube	f
twhF6SM0KyY	2020-02-21 01:00:31.927476-05	2020-02-21 01:00:31.927476-05	\N	223000000	Peaks Police	youtube	t
0nWhQO6joQs	2020-01-28 22:19:07.284199-05	2020-01-28 22:19:07.284199-05	\N	90000000	Communism Anime Opening	youtube	t
6e9dzDe6_t0	2020-01-28 22:19:10.150037-05	2020-01-28 22:19:10.150037-05	\N	97000000	September on recorder	youtube	t
7McxaVSRYrs	2020-01-28 22:15:26.072318-05	2020-01-28 22:15:26.072318-05	\N	116000000	Dance Monkey - Otamatone Cover	youtube	t
6F5azNTnaOI	2020-01-28 22:25:44.611139-05	2020-01-28 22:25:44.611139-05	\N	175000000	MMD - Sans Undertale x Nagito Komaeda (fingers in his ass)	youtube	t
kReUY-cQvfg	2020-01-28 22:25:51.853984-05	2020-01-28 22:25:51.853984-05	\N	104000000	Bring Me To Life - Otamatone Cover	youtube	t
ZOKnvcG3dlw	2020-01-28 22:26:05.927032-05	2020-01-28 22:26:05.927032-05	\N	47000000	The Bee Movie but it's Danganronpa	youtube	t
mfI2byQD30k	2020-01-28 22:29:29.007037-05	2020-01-28 22:29:29.007037-05	\N	262000000	Golden Girls but it's a Danganronpa Class Trial	youtube	t
RBxMpJRYySI	2020-01-28 22:29:59.846647-05	2020-01-28 22:29:59.846647-05	\N	329000000	Down with the sickness otamatone - DISTURBED	youtube	t
bnb0CldCNtA	2020-01-28 22:30:21.305651-05	2020-01-28 22:30:21.305651-05	\N	91000000	Revenge - Otamatone Cover	youtube	t
YXjJdWxshwo	2020-01-29 00:12:38.039343-05	2020-01-29 00:12:38.039343-05	\N	129000000	Shooting Stars - Otamatone Cover	youtube	t
bQJU82Lk79g	2020-01-29 00:14:07.476661-05	2020-01-29 00:14:07.476661-05	\N	114000000	Despacito - Otamatone Cover	youtube	t
_xt5ZjsJIhg	2020-01-29 00:15:58.789368-05	2020-01-29 00:15:58.789368-05	\N	104000000	Mr. Blue Sky - Otamatone Cover	youtube	t
3Kw1BT6hY9Q	2020-01-29 00:18:20.451657-05	2020-01-29 00:18:20.451657-05	\N	67000000	USSR Anthem - Otamatone Cover	youtube	t
uWn0FHImVFU	2020-01-29 00:30:14.233963-05	2020-01-29 00:30:14.233963-05	\N	194000000	Steamed Hams but it's a Danganronpa Class Trial	youtube	t
n-QtsAf9xyU	2020-01-29 00:33:17.239856-05	2020-01-29 00:33:17.239856-05	\N	360000000	Steamed Hams But It's Ace Attorney	youtube	t
1uC3cC4gG9Q	2020-01-29 00:37:13.506367-05	2020-01-29 00:37:13.506367-05	\N	198000000	Steamed Hams but it's LA Noire	youtube	t
3kqHyprQCR8	2020-01-29 01:00:33.428966-05	2020-01-29 01:00:33.428966-05	\N	295000000	Dire Dire Despito - Super Despacito 64	youtube	f
JtOy2gf_JrA	2020-01-29 01:02:52.337446-05	2020-01-29 01:02:52.337446-05	\N	51000000	Video Killed the Radio Star - Otamatone Cover	youtube	t
TjiHA9IeA1k	2020-01-29 01:03:13.983097-05	2020-01-29 01:03:13.983097-05	\N	90000000	Sweet Dreams (Are Made Of This) - Otamatone Cover	youtube	t
NLCF8SF5h1s	2020-01-29 01:25:26.224376-05	2020-01-29 01:25:26.224376-05	\N	205000000	JoJo's Bizarre Adventure - Awaken (feat. Rena) 【Intense Symphonic Metal Cover】	youtube	f
htDB8SuLrng	2020-01-29 01:30:47.453705-05	2020-01-29 01:30:47.453705-05	\N	204000000	Avalon	youtube	f
d--wQ6ozveA	2020-01-29 01:45:46.603982-05	2020-01-29 01:45:46.603982-05	\N	230000000	【東方Orchestral／Epic】 信仰は儚き人間の為に 「Melodic Taste」	youtube	f
gibdJ_3Dew4	2020-01-29 01:45:59.455315-05	2020-01-29 01:45:59.455315-05	\N	293000000	【東方Orchestral／Symphonic】 神さびた古戦場  「Melodic Taste」	youtube	f
fA9QWJlbJag	2020-01-29 02:05:18.944895-05	2020-01-29 02:05:18.944895-05	\N	118000000	Brain Power (Beta Mix) - SOUND VOLTEX II -infinite infection-	youtube	f
zo9SBBSjRKg	2020-01-29 02:27:13.431161-05	2020-01-29 02:27:13.431161-05	\N	623000000	Baby I'm Back IV	youtube	f
0hEvBW2NFQU	2020-01-29 10:26:52.923628-05	2020-01-29 10:26:52.923628-05	\N	294000000	SPEED OF KIRB 10.0	youtube	t
6zB6lvWLDXQ	2020-01-29 13:47:22.687243-05	2020-01-29 13:47:22.687243-05	\N	151000000	when Gaston was a lad he ate 4 doz. eggs every morning to help him get barge.	youtube	t
xqjdVlV8yyA	2020-01-29 13:49:03.542958-05	2020-01-29 13:49:03.542958-05	\N	56000000	Still Dre na organach kościelnych / Stil Dre on church organ	youtube	t
r5dNcKTcnPA	2020-01-29 15:17:54.414311-05	2020-01-29 15:17:54.414311-05	\N	245000000	Panic! At The Disco: LA Devotee [OFFICIAL VIDEO]	youtube	t
_0nS_ha9rjY	2020-01-29 16:28:54.349525-05	2020-01-29 16:28:54.349525-05	\N	171000000	Mr. Krabs Rave - SiIvaGunner: King for Another Day	youtube	f
BdVCfDioTcY	2020-01-29 17:04:29.113188-05	2020-01-29 17:04:29.113188-05	\N	65000000	Arnold Schwarzenegger is cumming! "Pumping Iron"	youtube	t
IVK_KPTC7xc	2020-01-29 19:04:03.012235-05	2020-01-29 19:04:03.012235-05	\N	170000000	RUSH D	youtube	t
McQ58nhhpHM	2020-01-29 19:04:48.591567-05	2020-01-29 19:04:48.591567-05	\N	19000000	THINGS ALEX JONES LIKES	youtube	f
uhM20tZ5HaM	2020-01-29 19:36:27.945512-05	2020-01-29 19:36:27.945512-05	\N	119000000	ASDFMovie 12 But Vocoded	youtube	t
840D3AcTmcM	2020-01-29 19:36:48.368751-05	2020-01-29 19:36:48.368751-05	\N	601000000	Taiwanese Castella Cake Recipe |台湾カステラの作り方| Emojoie Cuisine	youtube	t
RG9TMn1FJzc	2020-01-29 19:37:06.931198-05	2020-01-29 19:37:06.931198-05	\N	232000000	The incredible ibex defies gravity and climbs a dam | Forces of Nature with Brian Cox - BBC	youtube	t
_8dRZ3atLW8	2020-01-29 19:43:08.220376-05	2020-01-29 19:43:08.220376-05	\N	34000000	Here Comes Pacman	youtube	f
UyDG6y08YOA	2020-01-29 19:43:58.423103-05	2020-01-29 19:43:58.423103-05	\N	34000000	here comes pac man 4k	youtube	t
-h5WrWncDZw	2020-01-29 19:44:48.673298-05	2020-01-29 19:44:48.673298-05	\N	462000000	100 ACCURATE LIFE HACKS	youtube	t
l7BM5yADRfo	2020-01-29 19:45:54.267184-05	2020-01-29 19:45:54.267184-05	\N	61000000	The Krusty Krab Commercial (Big Bill Hell’s Version)	youtube	t
BQvqXw2ZmWM	2020-01-29 19:47:33.245144-05	2020-01-29 19:47:33.245144-05	\N	27000000	No dude, this is iodized table salt	youtube	t
ry4aAqL8PcI	2020-01-29 19:49:46.106066-05	2020-01-29 19:49:46.106066-05	\N	11000000	send this video without context	youtube	t
Zyqhsfl1zFo	2020-01-29 19:54:29.323609-05	2020-01-29 19:54:29.323609-05	\N	162000000	King of the Hill Hank Hill I'm Gonna Kick Your Ass Compilation	youtube	t
g2mPdlTsdLI	2020-01-29 19:57:34.35772-05	2020-01-29 19:57:34.35772-05	\N	166000000	Enormous PINGAS! da "Cartoon Low's Q&A"	youtube	t
GC3kJya-p4U	2020-01-29 19:58:54.541466-05	2020-01-29 19:58:54.541466-05	\N	60000000	Clouds?	youtube	t
_naArkkHMMs	2020-01-29 21:56:59.20665-05	2020-01-29 21:56:59.20665-05	\N	238000000	Amy Winehouse - Valerie	youtube	f
zC2SZOY80Dk	2020-01-29 22:00:02.508479-05	2020-01-29 22:00:02.508479-05	\N	226000000	Amy Winehouse - Valerie ft. Mark Ronson (Audio)	youtube	f
4ji-0swWIUM	2020-01-29 23:51:33.846074-05	2020-01-29 23:51:33.846074-05	\N	90000000	Bloody Stream but every note of the vocals is pitchshifted to G	youtube	f
7WkmaeYFcgg	2020-01-29 23:52:17.421017-05	2020-01-29 23:52:17.421017-05	\N	420000000	Phantom Tendency: Stardust is Golden (Jonathan/Joseph/Jotaro/Josuke/Giorno theme mixup)	youtube	t
j7ZslzVGvLo	2020-01-29 23:53:00.094695-05	2020-01-29 23:53:00.094695-05	\N	90000000	Bloody Stream but wait for it	youtube	t
-XgNFLo5WOI	2020-01-29 23:53:36.235924-05	2020-01-29 23:53:36.235924-05	\N	202000000	el sonidito (ruidito) hechizeros band	youtube	f
Rre3zgL7eMk	2020-01-29 23:54:06.86673-05	2020-01-29 23:54:06.86673-05	\N	84000000	One Note Song - Tenacious D	youtube	t
e4VjBs9I9cE	2020-01-30 00:14:20.882884-05	2020-01-30 00:14:20.882884-05	\N	279000000	Sans Ranch (Ram Ranch x Megalovania)	youtube	f
Rtqkxkt7Hyg	2020-01-30 00:14:32.371222-05	2020-01-30 00:14:32.371222-05	\N	218000000	Rick Astley - Ram Ranch	youtube	f
nLPTNumhyAY	2020-01-30 15:25:00.912787-05	2020-01-30 15:25:00.912787-05	\N	198000000	Panic! At The Disco - Crazy = Genius (Official Audio)	youtube	f
KuliCkN2oic	2020-01-30 15:25:07.408602-05	2020-01-30 15:25:07.408602-05	\N	209000000	Panic! At The Disco - House of Memories (Official Audio)	youtube	f
6i7hIUegbQs	2020-01-30 15:25:14.703651-05	2020-01-30 15:25:14.703651-05	\N	161000000	Panic! At The Disco - King Of The Clouds (Official Audio)	youtube	f
Nu55xS1TdoU	2020-01-30 15:25:41.533653-05	2020-01-30 15:25:41.533653-05	\N	172000000	Panic! At The Disco - The Good, The Bad and The Dirty (Official Audio)	youtube	f
7qFF2v8VsaA	2020-01-30 15:25:49.029151-05	2020-01-30 15:25:49.029151-05	\N	219000000	Panic! At The Disco: Emperor's New Clothes [OFFICIAL VIDEO]	youtube	f
Vh6GSAO04dM	2020-01-30 15:25:54.396264-05	2020-01-30 15:25:54.396264-05	\N	197000000	Panic! At The Disco: LA Devotee (Audio)	youtube	f
TbuP2ypiTRc	2020-01-30 15:47:13.145125-05	2020-01-30 15:47:13.145125-05	\N	207000000	[MV] MOMOLAND(모모랜드) _ Thumbs Up	youtube	f
EBhFHJMVfiI	2020-01-30 16:05:06.792494-05	2020-01-30 16:05:06.792494-05	\N	382000000	Undertale OST: 071 - Undertale	youtube	f
o8CCw7K_lyU	2020-01-30 16:13:05.757444-05	2020-01-30 16:13:05.757444-05	\N	56000000	Title Theme (Alpha Mix) - Jeopardy! (Genesis)	youtube	f
SOpkR3y8Jhs	2020-01-30 16:13:49.695086-05	2020-01-30 16:13:49.695086-05	\N	167000000	Main Theme (Beta Mix) - Papers, Please	youtube	f
dqX6d7fPmzY	2020-01-30 16:14:28.394219-05	2020-01-30 16:14:28.394219-05	\N	110000000	Minecraft con Gadget ft. Pitbull - SiIvaGunner: King for Another Day	youtube	f
t-ZQJFwOpjg	2020-02-16 14:18:48.254465-05	2020-02-16 14:18:48.254465-05	\N	27000000	二度漬け禁止	youtube	t
0pPyM-Phf1E	2020-01-30 16:14:43.912927-05	2020-01-30 16:14:43.912927-05	\N	128000000	The Father Also Resurrects - SiIvaGunner: King for Another Day	youtube	f
qFEB7pczc7o	2020-01-30 16:14:51.125815-05	2020-01-30 16:14:51.125815-05	\N	116000000	Atrévete-Te-Te - SiIvaGunner: King for Another Day	youtube	f
ye5BuYf8q4o	2020-01-30 16:27:15.943953-05	2020-01-30 16:27:15.943953-05	\N	300000000	Lynyrd Skynyrd - Sweet Home Alabama	youtube	f
TZCfydWF48c	2020-01-30 16:34:09.609039-05	2020-01-30 16:34:09.609039-05	\N	563000000	Antonio Vivaldi - Winter (Full) - The Four Seasons	youtube	f
nheev87nOHw	2020-01-30 16:34:49.524078-05	2020-01-30 16:34:49.524078-05	\N	665000000	Vivaldi Violin Concerto in E minor, RV281 | Fabio Biondi Europa Galante	youtube	f
7E-RTI-H2oI	2020-01-30 16:35:06.263718-05	2020-01-30 16:35:06.263718-05	\N	575000000	Vivaldi - Concerto for Two Violins in A Minor RV522	youtube	f
q6A1PzmGy_s	2020-01-30 17:22:17.19946-05	2020-01-30 17:22:17.19946-05	\N	143000000	Eminem feat. D12 - My Salsa (Music Video)	youtube	f
V0PbiHBjidk	2020-01-30 18:15:50.00669-05	2020-01-30 18:15:50.00669-05	\N	745000000	Despacito Fusion Collab	youtube	t
S5Gm-6b9wE4	2020-01-30 18:20:02.911608-05	2020-01-30 18:20:02.911608-05	\N	305000000	Scatman's World Fusion Collab	youtube	t
ESScWj_9eTo	2020-01-30 18:21:13.59275-05	2020-01-30 18:21:13.59275-05	\N	182000000	Slider Fusion Collab	youtube	t
tx2LXzM-Q2A	2020-01-30 18:32:45.789002-05	2020-01-30 18:32:45.789002-05	\N	24000000	turnip turns up	youtube	t
vsWkXGMonKg	2020-01-30 16:40:40.293856-05	2020-01-30 16:40:40.293856-05	\N	1554000000	Astor Piazzolla - The Four Seasons of Buenos Aires	youtube	f
7v8zxoEoA_Q	2020-01-30 16:41:18.903157-05	2020-01-30 16:41:18.903157-05	\N	570000000	Vivaldi : La Follia	youtube	f
I_izvAbhExY	2020-01-30 16:47:12.497259-05	2020-01-30 16:47:12.497259-05	\N	250000000	Bee Gees - Stayin' Alive (Official Video)	youtube	f
c0-VnkgeLiY	2020-01-30 17:09:59.941388-05	2020-01-30 17:09:59.941388-05	\N	215000000	Lil Jon’s Bizarre Adventure: Golden Shots	youtube	f
NAbC-4RNDtg	2020-01-30 17:24:37.558495-05	2020-01-30 17:24:37.558495-05	\N	85000000	Here comes Pacman Remix	youtube	f
user-209448905/dont-doubt-ur-vibe	2020-01-31 23:01:14.978259-05	2020-01-31 23:01:14.978259-05	\N	241972000	Don't Doubt ur Vibe	soundcloud	f
EDF4VJXUJE0	2020-01-31 23:09:53.941995-05	2020-01-31 23:09:53.941995-05	\N	180000000	SpongeBob Music Remix | Grass Skirt Chase - [RUDE E9 REMIX]	youtube	f
nr0HyLlEA-A	2020-01-31 23:34:36.146885-05	2020-01-31 23:34:36.146885-05	\N	94000000	Grass Skirt Crowdkill - SiIvaGunner: King for Another Day	youtube	f
wXf7AWiV7S8	2020-01-31 23:39:23.741797-05	2020-01-31 23:39:23.741797-05	\N	262000000	Love Regenerator, Calvin Harris - Hypnagogic (I Can't Wait)	youtube	t
jrMjN50Jr_8	2020-02-01 00:06:31.847594-05	2020-02-01 00:06:31.847594-05	\N	182000000	Delfino Plaza Theme Intro Loop	youtube	t
I-oY8ZZ78LY	2020-02-01 01:23:16.514125-05	2020-02-01 01:23:16.514125-05	\N	84000000	sad kiwi hours	youtube	t
3rw36-ea1TQ	2020-02-01 01:25:54.305919-05	2020-02-01 01:25:54.305919-05	\N	172000000	Bon Voyage, Amigo - MOTHER 3	youtube	f
qatmJtIJAPw	2020-02-01 01:26:54.304397-05	2020-02-01 01:26:54.304397-05	\N	140000000	BATMETAL	youtube	t
I53HDr0-Qew	2020-02-01 01:27:14.379917-05	2020-02-01 01:27:14.379917-05	\N	247000000	BATMETAL RETURNS	youtube	t
SDea7laHD4E	2020-02-01 01:27:24.799048-05	2020-02-01 01:27:24.799048-05	\N	380000000	BATMETAL FOREVER	youtube	t
l_DfCFHOD9E	2020-02-01 01:52:15.622124-05	2020-02-01 01:52:15.622124-05	\N	173000000	Halo Theme Kazoo Orchestra (ft. my desk)	youtube	f
eH1pvzEHkjs	2020-02-01 02:37:47.801364-05	2020-02-01 02:37:47.801364-05	\N	13000000	Circus 3 - Madagascar 3: The Video Game	youtube	f
JcuVqiwsiGY	2020-02-01 12:24:49.166437-05	2020-02-01 12:24:49.166437-05	\N	135000000	Ditto's Daycare Dance ♩ ♪ ♫ ♬ Star Coin Collector Remix by @MyNewSoundtrack	youtube	t
RNq973isnK8	2020-02-01 15:43:16.945979-05	2020-02-01 15:43:16.945979-05	\N	110000000	Blue (Da Ba Dee) - Otamatone Cover	youtube	t
o2HTBApfWOM	2020-02-01 15:46:52.504221-05	2020-02-01 15:46:52.504221-05	\N	129000000	Old Town Road - Otamatone Cover	youtube	t
prYrizLYFEw	2020-02-01 15:51:17.179871-05	2020-02-01 15:51:17.179871-05	\N	80000000	Running in the 90s - Otamatone Cover	youtube	t
XejVB_fba04	2020-02-01 15:51:49.760899-05	2020-02-01 15:51:49.760899-05	\N	220000000	Jonas Brothers - What A Man Gotta Do (Official Video)	youtube	f
y-OEr_ur3D0	2020-02-01 15:52:36.69123-05	2020-02-01 15:52:36.69123-05	\N	188000000	Dean Lewis ~ Stay Awake (Lyrics)	youtube	f
Xt3m04Tscc8	2020-02-01 15:53:18.960084-05	2020-02-01 15:53:18.960084-05	\N	159000000	Surfaces - Sunday Best [Official Audio]	youtube	f
dhYOPzcsbGM	2020-02-01 15:53:38.18058-05	2020-02-01 15:53:38.18058-05	\N	217000000	Alan Walker, Sabrina Carpenter & Farruko  - On My Way	youtube	f
32eaZsPRpTY	2020-02-01 15:53:48.377485-05	2020-02-01 15:53:48.377485-05	\N	308000000	Sicko Mode but Drake's verse is Dicko Mode and the song is mashed up with Lavender Town	youtube	f
oygrmJFKYZY	2020-02-01 15:53:59.023336-05	2020-02-01 15:53:59.023336-05	\N	181000000	Dua Lipa - Don't Start Now (Official Music Video)	youtube	f
2H5rusicEnc	2020-02-01 15:58:22.363799-05	2020-02-01 15:58:22.363799-05	\N	376000000	Schubert - Ave Maria	youtube	f
3UzEuGJ4MXE	2020-02-01 17:01:31.15859-05	2020-02-01 17:01:31.15859-05	\N	143000000	F. Chopin : Etude op. 25 no. 1 in A flat major (Pollini)	youtube	f
YeHP5n2lCXE	2020-02-01 17:02:47.259776-05	2020-02-01 17:02:47.259776-05	\N	167000000	Chopin: Etude in A flat major op. 25 no. 1	youtube	f
DtKCNJmARF0	2020-02-01 17:33:03.784284-05	2020-02-01 17:33:03.784284-05	\N	220000000	Diana Boncheva feat. BanYa - Beethoven Virus Full Version	youtube	f
apVpwM8LvrI	2020-02-01 17:46:27.267394-05	2020-02-01 17:46:27.267394-05	\N	39000000	dumb shit i made for my friend	youtube	f
GBBlLeqKaf4	2020-02-01 20:33:51.457137-05	2020-02-01 20:33:51.457137-05	\N	189000000	Dire Dire Docks Acapella - Super Mario 64	youtube	t
Va_Dz0J7ePE	2020-02-01 20:37:04.528764-05	2020-02-01 20:37:04.528764-05	\N	234000000	Ride on Time - SiIvaGunner: King for Another Day	youtube	f
2878zAgClhQ	2020-02-01 20:41:28.185892-05	2020-02-01 20:41:28.185892-05	\N	167000000	Miku-nyan’s Groove - SiIvaGunner: King for Another Day	youtube	f
JQRsCXY5MGA	2020-02-01 20:41:36.68242-05	2020-02-01 20:41:36.68242-05	\N	203000000	Kobaryo - Pumpin' Junkies (Kobaryo's FTN-Remix)	youtube	f
JHeKhyg14-U	2020-02-01 20:41:41.664409-05	2020-02-01 20:41:41.664409-05	\N	185000000	Plastic Love (DJ DVD RIP Edit) - SiIvaGunner: King for Another Day	youtube	f
RlBJbvnDV2k	2020-02-01 20:42:16.587591-05	2020-02-01 20:42:16.587591-05	\N	225000000	NiTE CRUiSiNG feat. Numb'n'dub	youtube	f
bozH0O_cVhY	2020-02-01 20:44:02.553424-05	2020-02-01 20:44:02.553424-05	\N	247000000	Stevie Wonder - Lately	youtube	f
l5aZJBLAu1E	2020-02-01 20:52:12.398986-05	2020-02-01 20:52:12.398986-05	\N	294000000	The Weather Girls - It's Raining Men (Video)	youtube	f
110-percent/teen-drinking-is-very-bad	2020-02-01 21:19:24.809208-05	2020-02-01 21:19:24.809208-05	\N	171221000	Teen Drinking is Very Bad	soundcloud	f
teMdjJ3w9iM	2020-02-01 21:21:11.533603-05	2020-02-01 21:21:11.533603-05	\N	264000000	きゃりーぱみゅぱみゅ - にんじゃりばんばん,Kyary Pamyu Pamyu - Ninja Re Bang Bang	youtube	f
yzC4hFK5P3g	2020-02-01 21:21:15.282382-05	2020-02-01 21:21:15.282382-05	\N	255000000	きゃりーぱみゅぱみゅ - PONPONPON , Kyary Pamyu Pamyu - PONPONPON	youtube	f
yeh708tybpM	2020-02-01 21:24:32.064703-05	2020-02-01 21:24:32.064703-05	\N	704000000	We Are Number One but every one is replaced with Mike Wazowski getting Slammed each time 20% slower	youtube	f
dogonalt/tipsy-but-everytime-time-theres-a-clap-it-skips-to-the-next-beat	2020-02-01 21:40:17.716862-05	2020-02-01 21:40:17.716862-05	\N	94153000	Tipsy but everytime time theres a clap it skips to the next beat	soundcloud	f
zukesers/holy-fuck-these-are-the-same-bpm	2020-02-01 21:40:23.366416-05	2020-02-01 21:40:23.366416-05	\N	175088000	Viva La Vowlow	soundcloud	f
0VCD1GraOAs	2020-02-01 21:56:28.630725-05	2020-02-01 21:56:28.630725-05	\N	369000000	AY BICAM SONAM - Oficial	youtube	t
vNXgknozyhw	2020-02-01 22:22:45.392185-05	2020-02-01 22:22:45.392185-05	\N	2146000000	Best of   Russian Hard Bass House   Mix 2016   XS Project	youtube	f
A1PAO3jgmXY	2020-02-01 22:24:18.668186-05	2020-02-01 22:24:18.668186-05	\N	152000000	Soviet Army dancing to Hard Bass	youtube	t
byMXyw7c3lM	2020-02-01 22:24:47.491821-05	2020-02-01 22:24:47.491821-05	\N	229000000	Hard Bass Narkotik Kal!	youtube	t
2tch4J_pP9o	2020-02-01 22:25:42.001853-05	2020-02-01 22:25:42.001853-05	\N	192000000	DJ Blyatman - Gopnik	youtube	t
nraKxjjY2Ks	2020-02-01 22:27:22.24983-05	2020-02-01 22:27:22.24983-05	\N	214000000	Hard Bass School - Slav (Official Video Clip)	youtube	t
z8Caay8T2sI	2020-02-02 13:01:27.801204-05	2020-02-02 13:01:27.801204-05	\N	12000000	i must apologize	youtube	t
3f8UIXukrYs	2020-02-02 13:04:44.893494-05	2020-02-02 13:04:44.893494-05	\N	307000000	Krabby Patty Remix Compilation	youtube	t
rB7XFQgJHBI	2020-02-02 13:34:14.334755-05	2020-02-02 13:34:14.334755-05	\N	351000000	タイニーリトル・アジアンタム	youtube	f
o_TIdWRuixo	2020-02-02 13:44:53.846876-05	2020-02-02 13:44:53.846876-05	\N	214000000	Yasuha - Flyday Chinatown	youtube	f
spN2_Tuw9hE	2020-02-02 13:50:03.915159-05	2020-02-02 13:50:03.915159-05	\N	300000000	Mariya Takeuchi 竹内まりや - Shiawase no Monosashi (VANTAGE// Edit)	youtube	f
4A77BcZFhC4	2020-02-02 14:21:09.95836-05	2020-02-02 14:21:09.95836-05	\N	246000000	Bad Apple!! Traditional Japanese Version 【Hyuman Remix】	youtube	f
Rz9518jiCbw	2020-02-02 14:21:57.961924-05	2020-02-02 14:21:57.961924-05	\N	163000000	BATTLE AGAINST A TRUE SAMURAI	youtube	f
HtykvO8VKi4	2020-02-02 14:22:10.986986-05	2020-02-02 14:22:10.986986-05	\N	170000000	JAPANLOVANIA 2	youtube	f
dXZnLPAQScQ	2020-02-02 14:23:03.827222-05	2020-02-02 14:23:03.827222-05	\N	90000000	We Are Number One But It's a Jojo OP	youtube	f
35YXCbyTOrw	2020-02-02 14:34:30.94323-05	2020-02-02 14:34:30.94323-05	\N	194000000	Touhou 4: LLS Stage 3 Theme - Bad Apple!!	youtube	f
y0LeVwGOuqU	2020-02-02 14:42:56.344193-05	2020-02-02 14:42:56.344193-05	\N	172000000	[Mashup] We Are Number One Except It's a Mashup with 「Great Days」	youtube	t
92Gq_mG-cQY	2020-02-02 15:07:40.316086-05	2020-02-02 15:07:40.316086-05	\N	317000000	Bad Apple Bottom Jeans - Flo Rida × Alstroemeria Records	youtube	f
lboNXmh25Cs	2020-02-02 15:08:51.218971-05	2020-02-02 15:08:51.218971-05	\N	130000000	Gourmet Race (Beta Mix) - Kirby Super Star Ultra	youtube	f
AULG4MoYxQk	2020-02-02 15:19:22.065372-05	2020-02-02 15:19:22.065372-05	\N	264000000	DJ Okawari - Flower Dance - 2010	youtube	f
cVnmyIusX7o	2020-02-02 15:29:31.792407-05	2020-02-02 15:29:31.792407-05	\N	283000000	【東方Instrumental／Folk】 Reverse Ideology 「k-waves LAB」	youtube	f
dV6xEZxkNNE	2020-02-02 15:43:37.429071-05	2020-02-02 15:43:37.429071-05	\N	318000000	【東方ボーカル】 「忘却のレトロスペクティブ」 【幽閉サテライト】	youtube	f
rxvGCdfkpp0	2020-02-02 15:47:04.693649-05	2020-02-02 15:47:04.693649-05	\N	264000000	[Touhou Vocal] [Yuuhei Satellite] The Capital of You in My Imagination (spanish & english subtitles)	youtube	f
jQAliyNOVUo	2020-02-02 16:07:02.960017-05	2020-02-02 16:07:02.960017-05	\N	480000000	PCB Stage 4 - The capital city of flowers in the sky	youtube	f
YmvfFKPn-xQ	2020-02-02 18:20:38.815111-05	2020-02-02 18:20:38.815111-05	\N	14000000	A Lego City Commercial but its in Alphabetical Order	youtube	t
1dhb_spVyzc	2020-02-03 00:29:20.122736-05	2020-02-03 00:29:20.122736-05	\N	34000000	kermit loses all hope in humanity	youtube	t
6nDrD2WNSJU	2020-02-03 14:58:36.332182-05	2020-02-03 14:58:36.332182-05	\N	278000000	【東方ボーカル】 「仮面のエモーション」 【あ～るの～と】	youtube	f
zZvDhxDRUW0	2020-02-03 16:23:16.422196-05	2020-02-03 16:23:16.422196-05	\N	78000000	Lego City Hey in various songs	youtube	f
0_yzFAUzfxE	2020-02-03 16:28:32.2227-05	2020-02-03 16:28:32.2227-05	\N	76000000	A MAN HAS FALLEN INTO VARIOUS SONGS IN LEGO CITY	youtube	f
MN2jB-5uhZc	2020-02-03 16:44:54.07046-05	2020-02-03 16:44:54.07046-05	\N	225000000	NaPoM x Zhang Ze | Temple	youtube	f
wO_L6gp3EXo	2020-02-03 16:57:28.459393-05	2020-02-03 16:57:28.459393-05	\N	80000000	MR. KRABS WALKING TYPE BEAT	youtube	f
3QqDfEPePnE	2020-02-03 16:57:44.71856-05	2020-02-03 16:57:44.71856-05	\N	286000000	Gene Shinozaki | Never Give Up	youtube	f
bRtHdZPAwrE	2020-02-03 17:01:02.610062-05	2020-02-03 17:01:02.610062-05	\N	180000000	NaPoM x Zhang Ze | What You Think?	youtube	f
XA72-mzHkAY	2020-02-03 17:11:57.725502-05	2020-02-03 17:11:57.725502-05	\N	277000000	REEPS ONE x DUB FX  "STARS''	youtube	f
uyMDhryLSBs	2020-02-03 17:12:21.458931-05	2020-02-03 17:12:21.458931-05	\N	158000000	Lung Shan | Gene & Bataco @Taiwan | Beatbox Art	youtube	f
6dJyLaHI5FE	2020-02-03 17:18:04.21536-05	2020-02-03 17:18:04.21536-05	\N	141000000	Mad Twinz - Reason	youtube	f
ev7VcqflK3Y	2020-02-03 17:55:50.002818-05	2020-02-03 17:55:50.002818-05	\N	211000000	「Nightcore」→ Not Alone - (Lyrics)	youtube	f
vsyPb7TF964	2020-02-03 17:56:40.063674-05	2020-02-03 17:56:40.063674-05	\N	280000000	小夜子 ♦ Sayoko | Acoustic Cover by Fokushi	youtube	f
SX_ViT4Ra7k	2020-02-03 17:58:24.655322-05	2020-02-03 17:58:24.655322-05	\N	274000000	米津玄師  MV「Lemon」	youtube	f
kDG2X-uBD90	2020-02-03 18:06:39.102737-05	2020-02-03 18:06:39.102737-05	\N	310000000	[Flaming June] Maeda Jun x yanagi nagi [Kooru Yume] - English translation	youtube	f
gMU7JK0zCGE	2020-02-03 18:07:11.36429-05	2020-02-03 18:07:11.36429-05	\N	234000000	Guilty Crown - Euterpe (with lyrics) full	youtube	f
grillabeats/gaudy	2020-02-03 18:28:10.038309-05	2020-02-03 18:28:10.038309-05	\N	217698000	Gaudy	soundcloud	f
qHpyWAy9gEs	2020-02-03 18:36:58.907554-05	2020-02-03 18:36:58.907554-05	\N	300000000	Honestly / Honestly (Encore) - Official Lyrics - Gabbie Hanna	youtube	f
6yqKAblvqnc	2020-02-03 19:09:31.644259-05	2020-02-03 19:09:31.644259-05	\N	314000000	sicko mode but every other 4 beats it switches to dicko mode and back	youtube	f
AXnqkVTFUqY	2020-02-03 19:33:52.146385-05	2020-02-03 19:33:52.146385-05	\N	219000000	Jon Bellion - All Time Low (Official Music Video)	youtube	f
DC_TrsY7U3A	2020-02-03 19:44:15.090667-05	2020-02-03 19:44:15.090667-05	\N	229000000	AJR - Sober Up (feat. Rivers Cuomo) [OFFICIAL VIDEO]	youtube	f
Dzdg-0vldW4	2020-02-03 19:45:45.589885-05	2020-02-03 19:45:45.589885-05	\N	600000000	10 minutes of silence	youtube	f
eSH7QSzkhQg	2020-02-03 19:49:29.948482-05	2020-02-03 19:49:29.948482-05	\N	681000000	cute songs to help you cope with depression	youtube	f
eCOdMdWbP_4	2020-02-03 20:14:20.165116-05	2020-02-03 20:14:20.165116-05	\N	124000000	Imagine Cats - Believer 🎧	youtube	f
plEP89rKDhg	2020-02-03 20:16:56.65328-05	2020-02-03 20:16:56.65328-05	\N	107000000	Bongo 5 - Meowmories 🎧	youtube	f
73afc3UOipk	2020-02-03 20:19:41.905634-05	2020-02-03 20:19:41.905634-05	\N	140000000	Bongo Cat - Counting Moews 🎧	youtube	f
EHtsQ9thkIY	2020-02-03 20:19:55.237863-05	2020-02-03 20:19:55.237863-05	\N	167000000	Gene Shinozaki & Bigman | Get Lucky (Beatbox Cover)	youtube	f
SlPhMPnQ58k	2020-02-03 20:20:18.871326-05	2020-02-03 20:20:18.871326-05	\N	195000000	Maroon 5 - Memories (Official Video)	youtube	f
rXMB5WSCVks	2020-02-03 20:25:59.54267-05	2020-02-03 20:25:59.54267-05	\N	88000000	Bongo Cat - bad moew 🎧	youtube	f
grillabeats/trippy	2020-02-03 21:43:32.577576-05	2020-02-03 21:43:32.577576-05	\N	183266000	Trippy	soundcloud	f
grillabeats/drunk	2020-02-03 21:44:00.434503-05	2020-02-03 21:44:00.434503-05	\N	243536000	Drunk	soundcloud	f
grillabeats/gila	2020-02-03 21:44:07.785319-05	2020-02-03 21:44:07.785319-05	\N	232276000	Gila	soundcloud	f
grillabeats/keren	2020-02-03 21:44:14.976042-05	2020-02-03 21:44:14.976042-05	\N	220049000	Keren	soundcloud	f
mKpMuy5m9Qc	2020-02-03 21:46:49.683995-05	2020-02-03 21:46:49.683995-05	\N	211000000	Young Thug - Diamonds ft. Gunna [Official Audio]	youtube	f
4zqe4IzqAdo	2020-02-03 21:48:37.98067-05	2020-02-03 21:48:37.98067-05	\N	265000000	APES**T	youtube	f
PItO1YQ89Hg	2020-02-03 21:50:37.592981-05	2020-02-03 21:50:37.592981-05	\N	163000000	Gene | Redbone (Beatbox Cover)	youtube	f
QitQxaDPqWs	2020-02-03 22:12:40.134249-05	2020-02-03 22:12:40.134249-05	\N	204000000	Gene Shinozaki | Hear You Say	youtube	f
opHiaZLCCL8	2020-02-11 00:54:17.599877-05	2020-02-11 00:54:17.599877-05	\N	310000000	fripSide - Prominence-Version 2007-	youtube	f
C9YEud_Db6o	2020-02-11 00:55:28.942644-05	2020-02-11 00:55:28.942644-05	\N	10000000	Blend B	youtube	f
3MteSlpxCpo	2020-02-11 16:18:44.399596-05	2020-02-11 16:18:44.399596-05	\N	295000000	[Official Video] Daft Punk - Pentatonix	youtube	f
eXOpDDCMwsY	2020-02-11 16:22:49.876081-05	2020-02-11 16:22:49.876081-05	\N	135000000	Paralyzer John - Finger Eleven & Scatman Ski | RaveDj	youtube	f
lPMEm0T6cRc	2020-02-11 17:37:55.082468-05	2020-02-11 17:37:55.082468-05	\N	118000000	Gucci Gang but it's in alphabetical order	youtube	f
VpKBVmn1nm8	2020-02-11 17:38:02.451826-05	2020-02-11 17:38:02.451826-05	\N	149000000	[Ganon] 初音ミク Hatsune Miku - Ievan Polkka SSB4 Remix スマブラ	youtube	f
KId6eunoiWk	2020-02-11 17:38:40.033217-05	2020-02-11 17:38:40.033217-05	\N	248000000	LiSA - Crossing Field	youtube	f
cHPaKzPgFNo	2020-02-11 17:58:53.205068-05	2020-02-11 17:58:53.205068-05	\N	194000000	Lifelight at Ram Ranch	youtube	f
8POcQ88ZV68	2020-02-11 18:10:26.952657-05	2020-02-11 18:10:26.952657-05	\N	324000000	Patrick Dancing in space listening to Fly Me to The Moon.	youtube	t
DUxCILPC10U	2020-02-11 18:13:54.89676-05	2020-02-11 18:13:54.89676-05	\N	198000000	Big Time Rush - Big Time Rush (Original Studio Recording)	youtube	f
9aofoBrFNdg	2020-02-11 18:44:22.363192-05	2020-02-11 18:44:22.363192-05	\N	279000000	Biz Markie - Just A Friend (Official Music Video)	youtube	f
ySw5jtLDWUs	2020-02-11 18:51:04.420537-05	2020-02-11 18:51:04.420537-05	\N	112000000	Brain Power (OST Version) - SOUND VOLTEX II -infinite infection-	youtube	t
fbiD4i_4kU0	2020-02-11 18:53:35.90517-05	2020-02-11 18:53:35.90517-05	\N	332000000	JoJo's Bizarre Adventure: il vento d'oro (Golden Wind) || Cover by RichaadEB & Friends	youtube	t
nQwQliXY_rw	2020-02-11 19:52:38.72868-05	2020-02-11 19:52:38.72868-05	\N	319000000	Pink Day - 1, 2, Guns	youtube	f
_LjN3UclYzU	2020-02-11 20:04:00.854101-05	2020-02-11 20:04:00.854101-05	\N	97000000	The Missile Knows Where it is (Remix)	youtube	f
kN-toMliXT0	2020-02-11 20:40:57.443633-05	2020-02-11 20:40:57.443633-05	\N	111000000	shofu - Woke Up In Pallet Town (Official Audio)	youtube	f
GJDNkVDGM_s	2020-02-11 20:41:57.800685-05	2020-02-11 20:41:57.800685-05	\N	54000000	there is no need to be upset	youtube	f
DBYjZTdrJlA	2020-02-11 20:43:10.352311-05	2020-02-11 20:43:10.352311-05	\N	153000000	Hot Butter- Popcorn Song	youtube	f
nhTAJYpIkHU	2020-02-11 20:46:52.464714-05	2020-02-11 20:46:52.464714-05	\N	170000000	Let Me Clear My Wallet	youtube	f
DVkkYlQNmbc	2020-02-11 20:49:57.885062-05	2020-02-11 20:49:57.885062-05	\N	284000000	Chance the Rapper ft. 2 Chainz & Lil Wayne - No Problem (Official Video)	youtube	f
be37-T72DNk	2020-02-11 20:50:12.849246-05	2020-02-11 20:50:12.849246-05	\N	263000000	Chance the Rapper - Same Drugs (Official Video)	youtube	f
eedeXTWZUn8	2020-02-11 20:51:29.088606-05	2020-02-11 20:51:29.088606-05	\N	213000000	Chance The Rapper ft. Saba - Angels	youtube	t
AInvP6dn7qw	2020-02-11 21:28:49.049807-05	2020-02-11 21:28:49.049807-05	\N	205000000	Crazy Noisy Last Surprise (JoJo X Persona)	youtube	f
-PfjDc4prm8	2020-02-12 15:41:08.799022-05	2020-02-12 15:41:08.799022-05	\N	15000000	but aren't you a girl	youtube	t
0q0HsCRjPlo	2020-02-12 15:42:17.311103-05	2020-02-12 15:42:17.311103-05	\N	98000000	xcoom 2: dakooters dlc (feat. jon bailey)	youtube	t
qJqd3W8_sD8	2020-02-12 15:42:58.409687-05	2020-02-12 15:42:58.409687-05	\N	10000000	angry cat (feat. korreva)	youtube	t
QsR8zBh6EdE	2020-02-12 15:43:48.472814-05	2020-02-12 15:43:48.472814-05	\N	22000000	congrats	youtube	t
d4AFc65fl0I	2020-02-12 15:44:28.805182-05	2020-02-12 15:44:28.805182-05	\N	60000000	princess little piddles	youtube	t
NdNlGQ3GFF0	2020-02-12 15:45:50.760812-05	2020-02-12 15:45:50.760812-05	\N	109000000	gelbooru comments	youtube	t
6xaOixsixRI	2020-02-12 15:46:51.623845-05	2020-02-12 15:46:51.623845-05	\N	33000000	Mario/Nicki Minaj - I'm Out	youtube	f
7YgCdiTS5_Y	2020-02-12 15:47:45.400083-05	2020-02-12 15:47:45.400083-05	\N	400000000	how to ride a bike	youtube	t
nRTBM4UwnBs	2020-02-12 15:56:17.118374-05	2020-02-12 15:56:17.118374-05	\N	164000000	Nicki Minaj - Starships ("Pachelbel - Canon in D" Version)	youtube	f
2TRIWkJpFbw	2020-02-12 15:56:32.228822-05	2020-02-12 15:56:32.228822-05	\N	90000000	Ram Ranch Clean Ver. (18 Happy Friends at a Slumber Party)	youtube	f
jpTbAFlec58	2020-02-12 15:57:34.978073-05	2020-02-12 15:57:34.978073-05	\N	53000000	{YTP} ~ LEGO™ River™	youtube	t
7glemDT52FM	2020-02-12 16:03:32.068689-05	2020-02-12 16:03:32.068689-05	\N	37000000	Here Sails Pac-Man	youtube	t
PO73mcmFgBU	2020-02-12 16:03:57.231403-05	2020-02-12 16:03:57.231403-05	\N	34000000	Here comes Pacman from another dimension	youtube	t
vAZbd9mscQs	2020-02-12 16:04:43.81437-05	2020-02-12 16:04:43.81437-05	\N	359000000	Here Comes Pacman But It's On VHS (Full Movie with Previews 2001 version)	youtube	t
tOghvK_FeAs	2020-02-12 16:19:55.890041-05	2020-02-12 16:19:55.890041-05	\N	255000000	Crank Dat Super Mario!	youtube	t
3oCD5Bwotr0	2020-02-12 16:22:08.588962-05	2020-02-12 16:22:08.588962-05	\N	232000000	【東方ボーカル】 「ドリームワールド」 【森羅万象】	youtube	f
OHcqElGaRbA	2020-02-12 16:33:08.100187-05	2020-02-12 16:33:08.100187-05	\N	217000000	Nico Nico Douga Stole Your Precious Soul - SiIvaGunner: King for Another Day	youtube	f
6Fjxtz8kOvg	2020-02-12 16:37:14.227235-05	2020-02-12 16:37:14.227235-05	\N	260000000	High School Musical 3 but it's Megalovania	youtube	t
n-Xex_hZVAE	2020-02-12 16:38:32.957544-05	2020-02-12 16:38:32.957544-05	\N	135000000	Mr. Game and Whamuu (Awaken ✕ 9!)	youtube	t
tnLQnX7BPeU	2020-02-12 16:45:39.562447-05	2020-02-12 16:45:39.562447-05	\N	161000000	Field of Hopes And Dreams - Deltarune OST	youtube	f
yJsepBWOjak	2020-02-12 16:50:47.197853-05	2020-02-12 16:50:47.197853-05	\N	233000000	Convictor Yamaxanadu! - SiIvaGunner: King for Another Day	youtube	f
tLBL4M55tJU	2020-02-12 16:57:57.65924-05	2020-02-12 16:57:57.65924-05	\N	76000000	Dr. Eggman has an Announcement to Make	youtube	t
xQOS2OxraRc	2020-02-12 16:58:04.813468-05	2020-02-12 16:58:04.813468-05	\N	146000000	Eggman's Announcement but every word is from a song	youtube	t
p6agFmXcyMI	2020-02-12 17:06:32.640287-05	2020-02-12 17:06:32.640287-05	\N	230000000	Nightcore - What Hurts the most	youtube	f
IEj3dVJBVwQ	2020-02-12 17:06:41.557381-05	2020-02-12 17:06:41.557381-05	\N	119000000	Age Pee   When The Rain Begins To Fall Nightcore Mix	youtube	f
A1E6inabYnw	2020-02-12 17:06:58.635102-05	2020-02-12 17:06:58.635102-05	\N	180000000	Cascada - Why You Had To Leave (Nightcore Mix)	youtube	f
90SGLQywYwY	2020-02-12 17:07:16.529742-05	2020-02-12 17:07:16.529742-05	\N	144000000	Nightcore - Dangerous	youtube	f
5HGcKpYroQY	2020-02-12 17:13:43.118268-05	2020-02-12 17:13:43.118268-05	\N	360000000	Blue Salami - I've Fallen And I Can't Get Up (Music Video)	youtube	t
ASW38HVbZls	2020-02-12 17:19:21.138069-05	2020-02-12 17:19:21.138069-05	\N	226000000	It's This Again - S3RL ft Jamie-Rose	youtube	f
XJA5IhsDD9M	2020-02-12 17:20:32.632803-05	2020-02-12 17:20:32.632803-05	\N	180000000	R4V3 B0Y - S3RL feat Krystal	youtube	t
0KmBV1j5UMI	2020-02-12 17:23:54.299351-05	2020-02-12 17:23:54.299351-05	\N	823000000	Chick Corea  &  Hiromi　　上原ひろみ＆チックコリア	youtube	f
Qu_OzBsgRcI	2020-02-12 18:07:40.075662-05	2020-02-12 18:07:40.075662-05	\N	236000000	【東方Vocal／Electro Pop】 Real or Fake 「ShinRa-Bansho」[JP Subs]	youtube	f
BxitjYqUexI	2020-02-12 18:37:57.236759-05	2020-02-12 18:37:57.236759-05	\N	191000000	Drowning Pool - Bodies But it’s the Drake and Josh Theme Song	youtube	f
BjFWk0ncr70	2020-02-12 19:05:54.669267-05	2020-02-12 19:05:54.669267-05	\N	211000000	Catchit - S3RL	youtube	t
ChWgl-7PRa8	2020-02-12 19:06:31.795946-05	2020-02-12 19:06:31.795946-05	\N	248000000	Friendzoned - S3RL feat Mixie Moon	youtube	t
JQN0AOFzuj8	2020-02-12 19:31:26.921976-05	2020-02-12 19:31:26.921976-05	\N	210000000	Gfriend  - HERE WE ARE  (Color-coded Lyrics)	youtube	f
wphTAEQusLk	2020-02-12 20:51:00.074067-05	2020-02-12 20:51:00.074067-05	\N	22000000	⚠ A MAN HAS BEEN SPOTTED PROTESTING IN LEGO CITY ⚠	youtube	t
metAnljcFM8	2020-02-12 20:51:31.654098-05	2020-02-12 20:51:31.654098-05	\N	23000000	A MAN IS SICK IN LEGO CHINA CITY	youtube	t
i5fYorCmyX8	2020-02-12 20:52:32.245706-05	2020-02-12 20:52:32.245706-05	\N	156000000	PARALYZER | "Paralyzer" by finger eleven in style of "MEGALOVANIA"	youtube	f
qRK29Yv6Ldc	2020-02-12 20:54:05.437024-05	2020-02-12 20:54:05.437024-05	\N	123000000	I Love It 2 (Official Video)	youtube	t
9oRAbFwxLsA	2020-02-12 20:54:14.188967-05	2020-02-12 20:54:14.188967-05	\N	132000000	Sucko Mode 2 (Official Video)	youtube	t
W3GrSMYbkBE	2020-02-12 20:54:21.8041-05	2020-02-12 20:54:21.8041-05	\N	124000000	Despacito 2 (Parody Video)	youtube	t
6cmg75bgkkg	2020-02-12 20:54:37.956626-05	2020-02-12 20:54:37.956626-05	\N	169000000	This Is America 2	youtube	t
W6pLqcTJ2yc	2020-02-12 20:55:32.678231-05	2020-02-12 20:55:32.678231-05	\N	97000000	Trump Speech: A man has fallen into the river of Lego City	youtube	t
6VI54jmIw3g	2020-02-12 20:56:40.616992-05	2020-02-12 20:56:40.616992-05	\N	222000000	WHY A Man Has Fallen Into The River In LEGO City (ANSWERED!)	youtube	t
iCeL-2MP47M	2020-02-12 20:57:08.612543-05	2020-02-12 20:57:08.612543-05	\N	55000000	A MAN HAS FARTED INTO THE RIVER IN LEGO CITY	youtube	t
6THe7MP7psk	2020-02-12 20:57:17.985341-05	2020-02-12 20:57:17.985341-05	\N	55000000	A Man Has Fallen Into the River in LEGO City but nobody rescues him	youtube	t
complete_shit/watchmojocom-top-10-anime-openings	2020-02-12 21:16:33.627226-05	2020-02-12 21:16:33.627226-05	\N	182063000	WatchMojo.com - Top 10 Anime Openings	soundcloud	f
phazonelite/crawling-lights	2020-02-12 21:16:57.572302-05	2020-02-12 21:16:57.572302-05	\N	212080000	Crawling Lights	soundcloud	f
tpose/t011	2020-02-12 21:17:39.991701-05	2020-02-12 21:17:39.991701-05	\N	181985000	׉	soundcloud	f
thesoundclowncriminal/this-is-lazy-town	2020-02-12 21:17:47.74434-05	2020-02-12 21:17:47.74434-05	\N	168661000	This Is Lazy Town	soundcloud	f
ombogle/hotel-fire-and-flames	2020-02-12 21:25:50.268816-05	2020-02-12 21:25:50.268816-05	\N	224960000	Hotel California vs Through The Fire And The Flames	soundcloud	f
neilcic/smooth	2020-02-12 21:26:08.418323-05	2020-02-12 21:26:08.418323-05	\N	259707000	Smooth	soundcloud	f
user-618970548/two-door-mystery-shack	2020-02-12 21:26:42.067378-05	2020-02-12 21:26:42.067378-05	\N	162000000	Two Door Mystery Shack	soundcloud	f
how2bepic/some-night-zone	2020-02-12 21:27:04.309543-05	2020-02-12 21:27:04.309543-05	\N	128638000	Some Night Zone	soundcloud	f
otherlink/baby-im-sans	2020-02-12 21:27:41.814907-05	2020-02-12 21:27:41.814907-05	\N	214537000	Baby, I'm Sans	soundcloud	f
renim_g/when-can-we-rooftop-run-again	2020-02-12 21:27:53.919424-05	2020-02-12 21:27:53.919424-05	\N	167068000	When can we Rooftop Run again?	soundcloud	f
princessrosalina/warios-bizzare-adventure	2020-02-12 21:28:01.855911-05	2020-02-12 21:28:01.855911-05	\N	258583000	Wario's Bizarre Adventure	soundcloud	f
blvkarot/billie-stream-ft-jotaro-jackson	2020-02-12 21:28:07.537576-05	2020-02-12 21:28:07.537576-05	\N	262267000	Billie Stream ft. Jotaro Jackson	soundcloud	f
peridarren/jon-halation	2020-02-12 21:28:31.328119-05	2020-02-12 21:28:31.328119-05	\N	245547000	we'll be back after these messages	soundcloud	f
deeyaywob/shantae-and-the-gucci-gang	2020-02-12 21:28:52.362813-05	2020-02-12 21:28:52.362813-05	\N	151601000	Shantae And The Gucci Gang	soundcloud	f
coldssss2/miispy	2020-02-12 21:29:00.677307-05	2020-02-12 21:29:00.677307-05	\N	292623000	MiiSpy	soundcloud	f
fahrenheits_trash/aint-nuttin-but-a-plastic-thang	2020-02-12 21:29:38.089313-05	2020-02-12 21:29:38.089313-05	\N	231361000	Ain't Nuttin but a Plastic Thang	soundcloud	f
iamjemboy/the-album	2020-02-12 21:31:23.642176-05	2020-02-12 21:31:23.642176-05	\N	227547000	R'Olli Out (Pokemon Sun & Moon vs. Ludacris)	soundcloud	f
DPgE7PNzXag	2020-02-17 01:24:20.326549-05	2020-02-17 01:24:20.326549-05	\N	385000000	Non-Stop	youtube	f
IxOwO2TslQI	2020-02-12 23:55:26.518829-05	2020-02-12 23:55:26.518829-05	\N	113000000	Touhou Anime PVD5 #1 - Disunified Field Theory of Magic 【東方PVD5】(C85)	youtube	t
Rz_OSxXSLxo	2020-02-12 23:58:09.498573-05	2020-02-12 23:58:09.498573-05	\N	95000000	Touhou × To Aru Kagaku no Railgun OVA OP【東方】ᴴᴰ720p	youtube	t
_VH91mivTUw	2020-02-13 00:01:13.073255-05	2020-02-13 00:01:13.073255-05	\N	269000000	【東方ヴォーカルPV】悪戯センセーション【森羅万象公式】	youtube	t
g4gU18TjR0Q	2020-02-13 00:06:03.687032-05	2020-02-13 00:06:03.687032-05	\N	282000000	【東方ヴォーカルPV】チルノは覚醒サマーデイズ！【森羅万象公式】	youtube	t
4O3xPxwaj7k	2020-02-13 00:17:45.635664-05	2020-02-13 00:17:45.635664-05	\N	286000000	【東方ボーカル】 「狂響のフォーチュネットポルカ」 【森羅万象】 【Subbed】	youtube	f
xOIAwKqBK_c	2020-02-13 00:18:22.157896-05	2020-02-13 00:18:22.157896-05	\N	299000000	【東方Vocal／Electropop】 ヨスズメロディハート 「Shinra-Bansho」	youtube	f
V263ad2e2uk	2020-02-13 00:19:40.57193-05	2020-02-13 00:19:40.57193-05	\N	68000000	National Bruh Moment Alert:	youtube	t
6ydxGwD2dZo	2020-02-13 00:27:07.724797-05	2020-02-13 00:27:07.724797-05	\N	285000000	【東方ボーカル】 「サイハテハーバリウム」 【森羅万象】	youtube	f
u6iDRQS7O_I	2020-02-13 00:38:29.447874-05	2020-02-13 00:38:29.447874-05	\N	62000000	moyai 🗿	youtube	t
P3fuBorXwBI	2020-02-13 00:40:41.378422-05	2020-02-13 00:40:41.378422-05	\N	13000000	anal (feat. trapstef)	youtube	t
-ZVtluWFy5E	2020-02-13 00:41:25.987361-05	2020-02-13 00:41:25.987361-05	\N	10000000	uber dwiver	youtube	t
y9q1uEGKMGk	2020-02-13 00:42:07.306953-05	2020-02-13 00:42:07.306953-05	\N	58000000	the truth about sex	youtube	t
1fjuaBZQtOI	2020-02-13 00:44:42.957068-05	2020-02-13 00:44:42.957068-05	\N	14000000	fine dining	youtube	t
JzkkXFWqtZ8	2020-02-13 00:45:52.475651-05	2020-02-13 00:45:52.475651-05	\N	32000000	oops	youtube	t
BMGgVYxw4TU	2020-02-13 13:41:25.605233-05	2020-02-13 13:41:25.605233-05	\N	299000000	someBODY	youtube	f
46GuzqUKpOk	2020-02-13 14:10:58.332268-05	2020-02-13 14:10:58.332268-05	\N	54000000	レロレロが歌う5部処刑用BGM	youtube	t
2XR6AytE1fE	2020-02-13 14:14:28.989852-05	2020-02-13 14:14:28.989852-05	\N	267000000	【東方ボーカル】 「悪戯センセーション 〜 Another Sensation」 【森羅万象】	youtube	f
AjkwOiSrt0Y	2020-02-13 14:23:14.932908-05	2020-02-13 14:23:14.932908-05	\N	235000000	Shake It Easy Breezy - Eizouken vs. Taylor Swift	youtube	t
MnA3RFNY8Qw	2020-02-13 16:13:44.40106-05	2020-02-13 16:13:44.40106-05	\N	18000000	fortnite initial d battle royale real gamer hours gone wild not clickbait	youtube	t
kmBGlNmwzo0	2020-02-13 16:16:05.717989-05	2020-02-13 16:16:05.717989-05	\N	464000000	The Quality of SoundCloud - Part 1	youtube	t
A5-zlMhcYes	2020-02-13 16:21:55.960981-05	2020-02-13 16:21:55.960981-05	\N	640000000	The Quality of SoundCloud - Part 2	youtube	t
ogMNV33AhCY	2020-02-13 16:26:09.607148-05	2020-02-13 16:26:09.607148-05	\N	236000000	Pendulum - Witchcraft (Official Video)	youtube	t
g-sgw9bPV4A	2020-02-13 16:48:56.66719-05	2020-02-13 16:48:56.66719-05	\N	80000000	Kazoo Kid - Trap Remix	youtube	t
zQrdKtPJxI0	2020-02-13 16:51:08.736857-05	2020-02-13 16:51:08.736857-05	\N	135000000	Hail Mary Mallon - Whales (Official Video)	youtube	f
2MtOpB5LlUA	2020-02-13 16:51:09.689776-05	2020-02-13 16:51:09.689776-05	\N	292000000	JoJo's Bizarre Adventure:Golden Wind OST: ~Giorno's Theme~ "Il vento d'oro" (Main Theme)	youtube	f
pkox8x1LxQ4	2020-02-13 16:53:52.651752-05	2020-02-13 16:53:52.651752-05	\N	133000000	Undertale Temmie get money for colege(Better than my last video)	youtube	t
jDMGv3hNMes	2020-02-13 17:03:29.260451-05	2020-02-13 17:03:29.260451-05	\N	267000000	Super Ponybeat — Discord [The Original!] by Eurobeat Brony	youtube	f
LaQgCnqJv-k	2020-02-13 17:04:49.695402-05	2020-02-13 17:04:49.695402-05	\N	182000000	CARAMELLGASSIN'	youtube	t
p0kwM-LikuY	2020-02-13 17:06:46.907416-05	2020-02-13 17:06:46.907416-05	\N	272000000	【東方ボーカルENG SUB】Remorse【A-ONE】	youtube	f
b9NT0asj4Bc	2020-02-13 17:16:06.877347-05	2020-02-13 17:16:06.877347-05	\N	154000000	Super High School Level Bad Guy -  Billie Ellish vs. Danganronpa	youtube	f
GLz9EWq1RX4	2020-02-13 17:24:29.100785-05	2020-02-13 17:24:29.100785-05	\N	121000000	Futatsuiwa from Sado - Touhou 13: Ten Desires	youtube	f
q7mVzgBibaU	2020-02-13 17:25:49.233603-05	2020-02-13 17:25:49.233603-05	\N	181000000	Wind God Girl - Touhou 9: Phantasmagoria of Flower View	youtube	f
4THFRpw68oQ	2020-02-13 18:20:58.544744-05	2020-02-13 18:20:58.544744-05	\N	175000000	AJR - BANG! (Official Video)	youtube	f
VkXYjy6sZ2A	2020-02-13 18:24:54.862475-05	2020-02-13 18:24:54.862475-05	\N	224000000	AJR - I'm Not Famous (OFFICIAL MUSIC VIDEO)	youtube	f
Yrhba7q78iI	2020-02-13 20:09:38.931282-05	2020-02-13 20:09:38.931282-05	\N	171000000	Bang!	youtube	f
78aObomjeVQ	2020-02-13 20:17:01.375787-05	2020-02-13 20:17:01.375787-05	\N	245000000	Karma	youtube	f
rblcWUjFx9E	2020-02-13 20:17:22.997414-05	2020-02-13 20:17:22.997414-05	\N	201000000	Let the Games Begin	youtube	f
M2LDh1m4C_g	2020-02-13 20:17:58.359968-05	2020-02-13 20:17:58.359968-05	\N	213000000	100 Bad Days	youtube	f
pQCGV5euvgM	2020-02-13 20:18:25.429016-05	2020-02-13 20:18:25.429016-05	\N	227000000	The Good Part	youtube	f
tk0DpND0vgA	2020-02-13 20:20:00.413063-05	2020-02-13 20:20:00.413063-05	\N	261000000	AJR - No Grass Today (Official Audio)	youtube	f
pWKU6DRC7kI	2020-02-13 20:59:11.012369-05	2020-02-13 20:59:11.012369-05	\N	194000000	From Up On Poppy Hill - Hatsukoi no Koro (When I Was First in Love) 初恋の頃	youtube	f
UwxatzcYf9Q	2020-02-13 21:02:45.60355-05	2020-02-13 21:02:45.60355-05	\N	309000000	Howl's Moving Castle [OST - Theme Song]	youtube	f
VbRmFSQYeac	2020-02-13 21:03:01.838791-05	2020-02-13 21:03:01.838791-05	\N	231000000	The Sixth Station (Spirited Away)	youtube	f
n4qIQ_1cDew	2020-02-13 23:59:15.40068-05	2020-02-13 23:59:15.40068-05	\N	283000000	【東方ヴォーカルPV】全力ハッピーライフ【森羅万象公式】	youtube	t
AFixDCGmP-U	2020-02-14 00:12:05.672096-05	2020-02-14 00:12:05.672096-05	\N	167000000	Victorious but it's a Danganronpa Execution	youtube	t
OhAI0XrSlh8	2020-02-14 00:23:54.834546-05	2020-02-14 00:23:54.834546-05	\N	263000000	【東方ボーカルENG SUB】LOUD FAITH【A-ONE】	youtube	f
EDLhMf6voq8	2020-02-14 00:40:51.153433-05	2020-02-14 00:40:51.153433-05	\N	160000000	Baby I'm Yours - Arctic Monkeys with Lyrics	youtube	f
VU67lBrUhpo	2020-02-14 00:42:27.051541-05	2020-02-14 00:42:27.051541-05	\N	202000000	Baby I'm Yours [MEME MASHUP]	youtube	t
8j741TUIET0	2020-02-14 10:02:16.888606-05	2020-02-14 10:02:16.888606-05	\N	194000000	X Ambassadors - Renegades (Lyric Video)	youtube	f
sSH_sVChY4Y	2020-02-14 10:04:34.823811-05	2020-02-14 10:04:34.823811-05	\N	246000000	BTS j-hope - Chicken Noodle Soup (feat. Becky G) (Lyrics Eng/Rom/Han/Esp/가사)	youtube	f
KBtk5FUeJbk	2020-02-14 10:13:09.539932-05	2020-02-14 10:13:09.539932-05	\N	219000000	Sub Urban - Cradles [OFFICIAL MUSIC VIDEO]	youtube	f
wXhTHyIgQ_U	2020-02-14 10:23:04.077174-05	2020-02-14 10:23:04.077174-05	\N	226000000	Post Malone - Circles	youtube	f
m-j-n-XJ-Tg	2020-02-14 10:27:19.755135-05	2020-02-14 10:27:19.755135-05	\N	224000000	OneRepublic - Love Runs Out (Lyric Video)	youtube	f
8OiXinljqhw	2020-02-14 10:38:25.879576-05	2020-02-14 10:38:25.879576-05	\N	208000000	Apologize	youtube	f
zPqYVBFtBkw	2020-02-14 11:28:40.37174-05	2020-02-14 11:28:40.37174-05	\N	198000000	Big Time Rush	youtube	f
nc9uMZiEYes	2020-02-14 13:35:01.741305-05	2020-02-14 13:35:01.741305-05	\N	230000000	Livin' la Vida Loca - Shrek 2	youtube	f
wbgInLJ81eY	2020-02-14 14:27:56.121637-05	2020-02-14 14:27:56.121637-05	\N	642000000	Beethoven Like You've Never Heard Before	youtube	f
pgul67PqOkg	2020-02-14 14:57:43.529321-05	2020-02-14 14:57:43.529321-05	\N	209000000	Friends Halation - The Rembrandts vs. Love Live!	youtube	t
vW4u-kyyB48	2020-02-14 15:01:56.181391-05	2020-02-14 15:01:56.181391-05	\N	350000000	【東方ボーカル】 「幻想浪漫綺行(is the limit.)」 【凋叶棕】【Subbed】	youtube	f
PMTHGjI4CCg	2020-02-14 16:45:50.903706-05	2020-02-14 16:45:50.903706-05	\N	75000000	TVアニメ「学園ハンサム」OPED（ノンテロップver）	youtube	t
rjmUbZ3Aumw	2020-02-14 17:00:30.937245-05	2020-02-14 17:00:30.937245-05	\N	478000000	Chopin: Scherzo Op.39 No.3 In C Sharp Minor (Pogorelich)	youtube	t
KHGd624HzDc	2020-02-14 17:01:27.466908-05	2020-02-14 17:01:27.466908-05	\N	356000000	Rachmaninoff: Prelude Op.32 No.10 in B Minor (Berezovsky)	youtube	t
Ue3O7Y5rVcc	2020-02-14 18:35:12.324102-05	2020-02-14 18:35:12.324102-05	\N	369000000	Mr. Monokuma's Swing Lesson - SiIvaGunner: King for Another Day	youtube	f
QuFTCirwmoM	2020-02-14 19:21:28.580531-05	2020-02-14 19:21:28.580531-05	\N	202000000	BRITNEY SPEARS - TOXIC - SHITTYFLUTED	youtube	f
yb2HR47npEU	2020-02-14 19:26:02.179093-05	2020-02-14 19:26:02.179093-05	\N	358000000	Misty Mountains - Peter Hollens feat. Tim Foust	youtube	f
hqbS7O9qIXE	2020-02-14 19:28:05.317856-05	2020-02-14 19:28:05.317856-05	\N	195000000	The Witcher Soundtrack - Toss A Coin To Your Witcher Lyrics	youtube	f
dX_1B0w7Hzc	2020-02-14 19:39:35.023603-05	2020-02-14 19:39:35.023603-05	\N	209000000	Barack Obama vs Mitt Romney. Epic Rap Battles Of History	youtube	f
E3tkgU0pQmQ	2020-02-14 20:22:01.589495-05	2020-02-14 20:22:01.589495-05	\N	178000000	Delfino Plaza - Super Mario Sunshine [OST]	youtube	f
0PRl3DUWo4s	2020-02-14 20:22:49.946479-05	2020-02-14 20:22:49.946479-05	\N	218000000	Crawling in my Crawl (Full Version)	youtube	f
znwZp6nCSek	2020-02-14 20:23:45.144658-05	2020-02-14 20:23:45.144658-05	\N	231000000	[♫] [Fort Minor x Everything Soundclown] Remember the Meme	youtube	f
n52MADpXYT8	2020-02-14 21:04:03.807208-05	2020-02-14 21:04:03.807208-05	\N	73000000	[Reupload] Run Run Bodywash	youtube	t
LQj--Kjn0z8	2020-02-14 21:10:48.389288-05	2020-02-14 21:10:48.389288-05	\N	206000000	Smash Mouth - Walkin' On The Sun (Official Music Video)	youtube	f
feA64wXhbjo	2020-02-14 21:17:19.147952-05	2020-02-14 21:17:19.147952-05	\N	232000000	Bag Raiders - Shooting Stars (Official Video)	youtube	t
yUhcDVA-Iuk	2020-02-14 21:44:03.52316-05	2020-02-14 21:44:03.52316-05	\N	274000000	【MV】Royal Scandal「ビーストインザビューティ」/luz-Beast in the Beauty	youtube	t
JiDnB-CrrNs	2020-02-14 21:44:17.287727-05	2020-02-14 21:44:17.287727-05	\N	245000000	Killswitch Engage - The End Of Heartache	youtube	f
iPW9AbRMwFU	2020-02-14 21:44:26.159247-05	2020-02-14 21:44:26.159247-05	\N	244000000	Killswitch Engage - My Curse [OFFICIAL VIDEO]	youtube	f
oR_iQomHOZQ	2020-02-14 21:44:34.946077-05	2020-02-14 21:44:34.946077-05	\N	166000000	Set It Off - Kill The Lights (Lyric Video)	youtube	f
N7ZcSu8qtNs	2020-02-14 21:44:43.21394-05	2020-02-14 21:44:43.21394-05	\N	324000000	Illusion Of Bliss	youtube	f
KH6ZwnqZ7Wo	2020-02-14 21:44:52.186671-05	2020-02-14 21:44:52.186671-05	\N	373000000	EXO-K 엑소케이 'MAMA' MV (Korean ver.)	youtube	f
DWaB4PXCwFU	2020-02-14 21:44:58.233146-05	2020-02-14 21:44:58.233146-05	\N	208000000	Breaking Benjamin - The Diary of Jane (Official Video)	youtube	f
_qtA4tg_4G4	2020-02-14 21:45:06.544286-05	2020-02-14 21:45:06.544286-05	\N	442000000	Machine Head - Darkness Within [OFFICIAL VIDEO]	youtube	f
Gd9OhYroLN0	2020-02-14 21:45:15.371924-05	2020-02-14 21:45:15.371924-05	\N	217000000	Crawling (Official Video) - Linkin Park	youtube	f
eVTXPUF4Oz4	2020-02-14 21:45:36.490112-05	2020-02-14 21:45:36.490112-05	\N	218000000	In The End (Official Video) - Linkin Park	youtube	f
cEaEdLQbAFM	2020-02-14 21:45:59.708909-05	2020-02-14 21:45:59.708909-05	\N	354000000	Guilty All The Same (Official Lyric Video) - Linkin Park (feat. Rakim)	youtube	f
icXUkIfZxyg	2020-02-14 21:46:09.065925-05	2020-02-14 21:46:09.065925-05	\N	294000000	Pierce The Veil - King for a Day ft. Kellin Quinn	youtube	f
_UwWYtLWEZg	2020-02-14 21:46:59.770913-05	2020-02-14 21:46:59.770913-05	\N	250000000	Sleeping With Sirens - If You Can't Hang (Official Music Video)	youtube	f
OFjqEexH0Tg	2020-02-15 15:09:31.175192-05	2020-02-15 15:09:31.175192-05	\N	41000000	[Carole & Tuesday] Mermaid Sisters Song	youtube	t
W6dxEk_2Hdo	2020-02-15 15:09:56.394303-05	2020-02-15 15:09:56.394303-05	\N	120000000	Galactic Mermaid (The Fucking Bullshit Song) - Full Version	youtube	f
J3K3V36mlLM	2020-02-15 15:13:44.403395-05	2020-02-15 15:13:44.403395-05	\N	245000000	LEO - Eve MV	youtube	t
N7M5dfe4oMs	2020-02-15 15:14:46.827313-05	2020-02-15 15:14:46.827313-05	\N	327000000	・・・・・・・・・／「ねぇ」	youtube	f
1XYgvvu5U3A	2020-02-15 15:16:54.720547-05	2020-02-15 15:16:54.720547-05	\N	180000000	Mr. Blue Sky | Electric Light Orchestra | VoicePlay Cover	youtube	t
idGvKFbYgI4	2020-02-15 15:18:02.818664-05	2020-02-15 15:18:02.818664-05	\N	334000000	Maynard Ferguson - Birdland	youtube	f
PvzBWFGEz8M	2020-02-15 15:21:53.890208-05	2020-02-15 15:21:53.890208-05	\N	254000000	トーキョーゲットー - Eve MV	youtube	t
UOjXWKNWQDw	2020-02-15 15:40:23.442811-05	2020-02-15 15:40:23.442811-05	\N	453000000	Count Bubba	youtube	f
bangingdonk/sick-airshot?in=lordmau5/sets/quality-of-soundcloud-part-2	2020-02-15 16:05:42.991181-05	2020-02-15 16:05:42.991181-05	\N	60609000	sick airshot	soundcloud	f
-bWqcKzbQBY	2020-02-15 16:09:41.682606-05	2020-02-15 16:09:41.682606-05	\N	156000000	Aladdin Ngawur - A Whole New World versi Arab Full Qolqolah | 3way Asiska (cover)	youtube	t
Cdn02MjPsxU	2020-02-15 16:15:00.268748-05	2020-02-15 16:15:00.268748-05	\N	61000000	Marcianito 100% real invade mi NES con su cumbia en 8BITS [NO FAKE] [1 LINK] [CRACK 2017]	youtube	t
XB7TsvBQUMQ	2020-02-15 16:27:46.696738-05	2020-02-15 16:27:46.696738-05	\N	370000000	FIGHTCLUB CHINATOWN - SiIvaGunner: King for Another Day	youtube	f
zWIGYnpbsO4	2020-02-15 16:28:12.197013-05	2020-02-15 16:28:12.197013-05	\N	157000000	Fly Flushin' - SiIvaGunner: King for Another Day	youtube	f
6P26Sl7BEaY	2020-02-15 16:28:29.641809-05	2020-02-15 16:28:29.641809-05	\N	261000000	I.C.U. - SiIvaGunner: King for Another Day	youtube	f
5E9xio-CMw8	2020-02-15 16:28:37.739822-05	2020-02-15 16:28:37.739822-05	\N	239000000	Rootin-Tootin Love - SiIvaGunner: King For Another Day	youtube	f
in0gQBjnfqw	2020-02-15 16:42:18.420716-05	2020-02-15 16:42:18.420716-05	\N	140000000	Mix shows what I've done in 2009-2019, in very short (2:20)	youtube	t
Z3J3ADqDopk	2020-02-15 16:44:57.087398-05	2020-02-15 16:44:57.087398-05	\N	287000000	ベースラインやってる？笑 (feat. ななひら)	youtube	f
33eUSJxMR1Y	2020-02-15 16:45:28.414991-05	2020-02-15 16:45:28.414991-05	\N	349000000	GHOST	youtube	f
wbfBGnULUJ4	2020-02-15 16:48:20.51528-05	2020-02-15 16:48:20.51528-05	\N	257000000	【Kagamine Len and Rin】The Straight-Faced Science Girl 理系女子は笑わない PV (English Subs)	youtube	f
Xq1Q_SVYqAw	2020-02-15 17:28:35.541833-05	2020-02-15 17:28:35.541833-05	\N	229000000	THE BLUE HEARTS   TRAIN TRAIN	youtube	f
yvTP4mjRA48	2020-02-16 13:16:46.108144-05	2020-02-16 13:16:46.108144-05	\N	18000000	🍎	youtube	t
ncTCuZaidT0	2020-02-16 13:17:28.628868-05	2020-02-16 13:17:28.628868-05	\N	33000000	トイレ詰まり	youtube	t
ihgaopaSfb0	2020-02-16 13:17:49.713699-05	2020-02-16 13:17:49.713699-05	\N	7000000	Helium balloons 🎈🎈🎈	youtube	t
ejE2wWvjTx8	2020-02-16 13:18:04.710154-05	2020-02-16 13:18:04.710154-05	\N	7000000	I'm Liberian	youtube	t
8kgMdEBmLeQ	2020-02-16 13:18:34.207793-05	2020-02-16 13:18:34.207793-05	\N	27000000	踏切セッション	youtube	t
V6CAFKPkYRg	2020-02-16 13:19:01.61662-05	2020-02-16 13:19:01.61662-05	\N	28000000	夏の自動販売機	youtube	t
PvRD2AStNIw	2020-02-16 13:19:33.464487-05	2020-02-16 13:19:33.464487-05	\N	17000000	march 20, 2020	youtube	t
H19jxzM27xo	2020-02-16 13:20:22.085604-05	2020-02-16 13:20:22.085604-05	\N	18000000	射的	youtube	t
PWgvGjAhvIw	2020-02-16 13:24:07.160796-05	2020-02-16 13:24:07.160796-05	\N	303000000	OutKast - Hey Ya! (Official Music Video)	youtube	t
7PoTf1QFHpo	2020-02-16 13:24:08.725025-05	2020-02-16 13:24:08.725025-05	\N	13000000	レジの扱いをよく分かってない猫	youtube	t
YHP9IOkhRis	2020-02-16 13:25:26.994728-05	2020-02-16 13:25:26.994728-05	\N	236000000	Demon Slayer: Kimetsu no Yaiba Opening Full『LiSA - Gurenge』【ENG Sub】	youtube	f
XXP70-yXIlI	2020-02-16 13:25:37.712199-05	2020-02-16 13:25:37.712199-05	\N	278000000	Demon Slayer: Kimetsu no Yaiba Ending Full『FictionJunction feat. LiSA - from the edge』	youtube	f
CLwum8JCxag	2020-02-16 13:33:05.8172-05	2020-02-16 13:33:05.8172-05	\N	236000000	Gurenge Paralyzer - finger eleven vs. Demon Slayer: Kimetsu no Yaiba	youtube	f
Y1So82y91Yw	2020-02-16 13:47:32.918394-05	2020-02-16 13:47:32.918394-05	\N	57000000	Im. Scatman	youtube	t
Hy8kmNEo1i8	2020-02-16 13:51:55.869257-05	2020-02-16 13:51:55.869257-05	\N	211000000	Scatman (ski-ba-bop-ba-dop-bop) Official Video HD -Scatman John	youtube	t
wzCJobeRHfs	2020-02-16 14:00:35.000656-05	2020-02-16 14:00:35.000656-05	\N	61000000	Chargeman Ken! - Opening | チャージマン研！ by Hibari Children Chorus	youtube	t
9QF2hiU_KXI	2020-02-16 14:06:10.271019-05	2020-02-16 14:06:10.271019-05	\N	163000000	Best JoJo Engrish『HD』	youtube	t
wFcwRfywJVQ	2020-02-16 14:06:47.872292-05	2020-02-16 14:06:47.872292-05	\N	12000000	Mr Sansman	youtube	t
cOxHwZuLcIU	2020-02-16 14:12:46.849714-05	2020-02-16 14:12:46.849714-05	\N	145000000	Mr. Sandman, but the opening clapping is uncomfortably meaty and plays throughout the whole song	youtube	f
TTnfWVbFkTo	2020-02-16 14:13:44.533572-05	2020-02-16 14:13:44.533572-05	\N	36000000	ポップコーン	youtube	t
L-xi8orqmu8	2020-02-16 14:14:58.03515-05	2020-02-16 14:14:58.03515-05	\N	162000000	the only time i make a dame tu cosita mashup	youtube	t
Mqps4anhz0Q	2020-02-16 14:15:29.456002-05	2020-02-16 14:15:29.456002-05	\N	245000000	[1080P Full風] 千本桜 Senbonzakura "One Thousand Cherry Trees"- 初音ミク Hatsune Miku DIVA English Romaji	youtube	t
Tlwda9S58Lg	2020-02-16 14:18:56.268991-05	2020-02-16 14:18:56.268991-05	\N	7000000	I have the power of god and anime on my side	youtube	t
bB0cZHPhuQo	2020-02-16 14:22:28.364174-05	2020-02-16 14:22:28.364174-05	\N	277000000	[FULL] Amadare No Uta (+ movie) 雨だれの歌 Shoujo Shuumatsu Ryokou-	youtube	t
DrjKg5RJvJI	2020-02-16 14:25:01.57854-05	2020-02-16 14:25:01.57854-05	\N	269000000	Shoujo Shuumatsu Ryoukou (Girls Last Tour) - Insert Song - Amadare no Uta | Pizza EX AMV	youtube	t
7ybhLXebppU	2020-02-16 14:27:47.396678-05	2020-02-16 14:27:47.396678-05	\N	221000000	少女終末旅行 / Shoujo Shuumatsu Ryokou Ending FULL - More One Night	youtube	f
oGFXbLyK0e0	2020-02-16 14:37:15.434828-05	2020-02-16 14:37:15.434828-05	\N	36000000	Pollo Pollo Cocodrilo	youtube	t
itesFi0wMOc	2020-02-16 14:39:15.60177-05	2020-02-16 14:39:15.60177-05	\N	37000000	A Man Has Fallen Into The River In Minecraft City (EarthMC.net)	youtube	t
k5Is_ifpzDE	2020-02-16 14:39:42.112462-05	2020-02-16 14:39:42.112462-05	\N	195000000	Фермерские животные / animales de granja y sus crías se transforman en animales salvajes	youtube	t
Em_ntdAGIRE	2020-02-16 14:46:49.130377-05	2020-02-16 14:46:49.130377-05	\N	241000000	C.R.E.E.P.E.R. - pluffaduff	youtube	t
94fUqnG9JQs	2020-02-16 14:49:09.302817-05	2020-02-16 14:49:09.302817-05	\N	77000000	creepers tryna hit all those notes again	youtube	t
kZX0srAgvko	2020-02-16 14:50:58.917866-05	2020-02-16 14:50:58.917866-05	\N	105000000	Hige Driver join. SELEN - Dadadadadadadadadada (Indian friendly version)	youtube	f
oY2nVQNlUB8	2020-02-16 15:03:01.069056-05	2020-02-16 15:03:01.069056-05	\N	210000000	Best Volleyball Blocks Ever with Scott Sterling	youtube	t
8F9jXYOH2c0	2020-02-16 15:05:54.102331-05	2020-02-16 15:05:54.102331-05	\N	317000000	Top Soccer Shootout Ever With Scott Sterling (Original)	youtube	t
sy4UybOB9rA	2020-02-16 18:29:59.748931-05	2020-02-16 18:29:59.748931-05	\N	34000000	Attention all JoJo fans: Giorno Giovanna needs your help!	youtube	t
djOsXKiz7Gg	2020-02-16 18:31:48.82855-05	2020-02-16 18:31:48.82855-05	\N	545000000	bOne(r) ... ON REAL GUITAR??	youtube	t
VyX6akEAE1s	2020-02-16 18:32:32.692275-05	2020-02-16 18:32:32.692275-05	\N	35000000	Attention all Touhou Gamers	youtube	t
iZqGU8BHwJg	2020-02-16 18:42:57.3904-05	2020-02-16 18:42:57.3904-05	\N	180000000	poopity scoop	youtube	t
lHPDP-q3EIY	2020-02-16 18:45:27.531698-05	2020-02-16 18:45:27.531698-05	\N	331000000	SICKO MODE but I don't think I got the right version	youtube	t
Te5g1KEcYjc	2020-02-16 18:47:05.408242-05	2020-02-16 18:47:05.408242-05	\N	416000000	Random CS:GO Bullshittery (part 5)	youtube	t
hSXGRZ0lcj4	2020-02-16 19:06:24.625627-05	2020-02-16 19:06:24.625627-05	\N	209000000	Mario Galaxy: Rosalina's Comet Observatory Lo-fi Hip Hop || insaneintherainmusic (feat. DJ Cutman)	youtube	f
QbdLWb4r8YM	2020-02-16 19:06:41.440077-05	2020-02-16 19:06:41.440077-05	\N	359000000	Gusty Garden Galaxy Medley Jazz Arrangement || insaneintherainmusic	youtube	f
ctG-n-Sj2TY	2020-02-16 19:22:24.764183-05	2020-02-16 19:22:24.764183-05	\N	210000000	Don't Stop Me Now	youtube	f
Yk3jsz8EcTk	2020-02-16 19:23:42.793056-05	2020-02-16 19:23:42.793056-05	\N	263000000	Wii Shop Theme - Jazz Cover || insaneintherainmusic (feat. 8BitBrigadier & Kenny Stern)	youtube	f
WDzGGHNaoV8	2020-02-16 19:32:35.061567-05	2020-02-16 19:32:35.061567-05	\N	415000000	Zelda Ocarina of Time: Song of Storms Jazz Cover || insaneintherainmusic	youtube	f
YYob4uDjEKI	2020-02-16 19:32:49.841481-05	2020-02-16 19:32:49.841481-05	\N	235000000	Transforming the Thomas the Tank Engine Theme Into Fast Bebop Jazz (with 3 Saxophones)	youtube	f
xarlable/final-soundclown-destination	2020-02-16 19:40:03.760007-05	2020-02-16 19:40:03.760007-05	\N	175428000	Final Soundclown Destination	soundcloud	f
skim94/careless-run-away	2020-02-16 20:03:36.261204-05	2020-02-16 20:03:36.261204-05	\N	136189000	Careless Run Away	soundcloud	f
the-death-of-comedy/hotel-califireandflames	2020-02-16 20:03:48.74757-05	2020-02-16 20:03:48.74757-05	\N	220598000	hotel califireandflames	soundcloud	f
llama-lamp/ice-ice-polkka	2020-02-16 20:03:55.068527-05	2020-02-16 20:03:55.068527-05	\N	151340000	Ice Ice Polkka	soundcloud	f
rabalogy1/sweet-sweet-eminem	2020-02-16 20:15:02.976091-05	2020-02-16 20:15:02.976091-05	\N	193428000	Sweet Sweet Eminem	soundcloud	f
botanicsage/peanut-bonus-jammy-time	2020-02-16 20:16:23.073666-05	2020-02-16 20:16:23.073666-05	\N	237970000	Peanut Bonus Jammy Time	soundcloud	f
c0bb/going-low-on-corneria	2020-02-16 20:16:47.241726-05	2020-02-16 20:16:47.241726-05	\N	178040000	Going Low on Corneria	soundcloud	f
shokkbutt/mighty-pizzahut-force	2020-02-16 20:17:43.004174-05	2020-02-16 20:17:43.004174-05	\N	170987000	Mighty Pizzahut Force	soundcloud	f
dogonalt/i-will-accept-no-excuses-saying-this-was-a-mistake	2020-02-16 20:18:18.99805-05	2020-02-16 20:18:18.99805-05	\N	133810000	i will accept no excuses saying this was a mistake	soundcloud	f
digi/konga-conga-kunta	2020-02-16 20:36:52.774879-05	2020-02-16 20:36:52.774879-05	\N	132870000	Konga Conga Kunta	soundcloud	f
xe-28521977/fly-on-my-wayward-battery	2020-02-16 20:37:56.857938-05	2020-02-16 20:37:56.857938-05	\N	209547000	Fly On My Wayward Battery	soundcloud	f
7ycaidWoIWY	2020-02-16 21:23:49.232657-05	2020-02-16 21:23:49.232657-05	\N	251000000	Araburu Kisetsu no Otome-domo yo FULL OP -「Otome-domo yo」by CHiCO with HoneyWorks	youtube	f
GNkPJvVEm0s	2020-02-16 21:38:17.411177-05	2020-02-16 21:38:17.411177-05	\N	244000000	【MV】 鹿乃 「Stella-rium」 【OFFICIAL】	youtube	f
M-rhzt-FW70	2020-02-16 21:38:59.10317-05	2020-02-16 21:38:59.10317-05	\N	215000000	Kano - Sukisuki Zecchou Shou	youtube	f
xuCn8ux2gbs	2020-02-16 21:48:18.360402-05	2020-02-16 21:48:18.360402-05	\N	1166000000	history of the entire world, i guess	youtube	t
Mh5LY4Mz15o	2020-02-16 22:11:37.943059-05	2020-02-16 22:11:37.943059-05	\N	540000000	history of japan	youtube	t
xD2AzRxssvo	2020-02-16 22:12:51.283147-05	2020-02-16 22:12:51.283147-05	\N	361000000	The History of JaYTPan	youtube	t
piRTESFe2Jw	2020-02-16 22:16:27.748333-05	2020-02-16 22:16:27.748333-05	\N	809000000	YTP - This Video Has NO Education Value I Hope That's Okay	youtube	t
dMapmlUwerw	2020-02-16 22:31:56.503103-05	2020-02-16 22:31:56.503103-05	\N	325000000	{YTP} ~ Wow! It's Made!	youtube	t
QbeBhdjW1_w	2020-02-16 22:47:23.748808-05	2020-02-16 22:47:23.748808-05	\N	46000000	Nani!?	youtube	t
S8sgbPYaAnQ	2020-02-16 23:01:55.15119-05	2020-02-16 23:01:55.15119-05	\N	148000000	I'm Keeping Your Poop (In a Jar) (Official Music Video) - Hayseed Dixie	youtube	t
URJ_qSXruW0	2020-02-16 23:21:43.463103-05	2020-02-16 23:21:43.463103-05	\N	1323000000	Space Station 13 Review | AHELP: Clown Grief Pls Ban He™	youtube	t
mwTcMbNQ8ok	2020-02-16 23:58:39.184442-05	2020-02-16 23:58:39.184442-05	\N	192000000	Giorno's Theme in the style of Ludovico Einaudi	youtube	t
riqkZbqkJI0	2020-02-17 00:02:53.533267-05	2020-02-17 00:02:53.533267-05	\N	55000000	When two rocks look identical	youtube	t
TQFlMnNkmS4	2020-02-17 00:03:43.734082-05	2020-02-17 00:03:43.734082-05	\N	10000000	beep boop music	youtube	t
u1QEg8YsGb4	2020-02-17 00:05:17.367475-05	2020-02-17 00:05:17.367475-05	\N	67000000	Gaming	youtube	t
fqWZJnEjkR0	2020-02-17 00:05:45.48118-05	2020-02-17 00:05:45.48118-05	\N	31000000	Curb Your Fixer Upper	youtube	t
t3FIuRjggQ4	2020-02-17 00:07:12.03359-05	2020-02-17 00:07:12.03359-05	\N	275000000	Brent Morin - High School (Stand Up Comedy)	youtube	t
QqeoDFaC1Tc	2020-02-17 00:10:20.427763-05	2020-02-17 00:10:20.427763-05	\N	22000000	Foolish reporter dares to film shrek in his natural habitat	youtube	t
6YDTfEhChgw	2020-02-17 00:14:08.460321-05	2020-02-17 00:14:08.460321-05	\N	542000000	JIm Gaffigan - Mr. Universe - "McDonald's"	youtube	t
Cmp5e_orPLs	2020-02-17 00:21:11.323029-05	2020-02-17 00:21:11.323029-05	\N	139000000	Sandwiches	youtube	f
0h2I8Dlu3_U	2020-02-17 00:48:03.900637-05	2020-02-17 00:48:03.900637-05	\N	128000000	The Reynolds Pamphlet	youtube	f
2JNRo7OipYc	2020-02-17 00:48:32.702894-05	2020-02-17 00:48:32.702894-05	\N	237000000	What'd I Miss	youtube	f
InupuylYdcY	2020-02-17 00:52:40.175541-05	2020-02-17 00:52:40.175541-05	\N	329000000	Satisfied	youtube	f
_lKi_aTN5Rg	2020-02-17 00:59:05.902455-05	2020-02-17 00:59:05.902455-05	\N	167000000	When the Going Gets Tough	youtube	f
dSYW61XQZeo	2020-02-17 01:05:44.771889-05	2020-02-17 01:05:44.771889-05	\N	215000000	Cabinet Battle #1	youtube	f
_jWVKYjy7E8	2020-02-17 01:06:27.568213-05	2020-02-17 01:06:27.568213-05	\N	143000000	Cabinet Battle #2	youtube	f
WySzEXKUSZw	2020-02-17 01:08:55.898396-05	2020-02-17 01:08:55.898396-05	\N	318000000	The Room Where It Happens	youtube	f
DcD9ADx_Rh4	2020-02-17 01:15:07.602276-05	2020-02-17 01:15:07.602276-05	\N	322000000	Right Hand Man	youtube	f
eKFN-aqPJH8	2020-02-17 01:18:26.262356-05	2020-02-17 01:18:26.262356-05	\N	208000000	You'll Be Back	youtube	f
dIn13M4W6Uo	2020-02-17 03:29:40.196374-05	2020-02-17 03:29:40.196374-05	\N	398000000	【東方ボーカル】 「タイド・コラプション」 【凋叶棕】	youtube	f
VkRi59oa5Eg	2020-02-17 03:37:41.435816-05	2020-02-17 03:37:41.435816-05	\N	259000000	【東方ヴォーカルPV】Sci-Fi ROMANCE TRAVELER【暁Records公式】	youtube	t
YtcmRLcfeDk	2020-02-17 03:54:55.51365-05	2020-02-17 03:54:55.51365-05	\N	307000000	[Touhou Vocal] [TUMENECO] Genmu (spanish & english subtitles)	youtube	f
6x_zyXg_fx4	2020-02-17 09:49:47.180156-05	2020-02-17 09:49:47.180156-05	\N	194000000	Ayo & Teo - Lit Right Now (PROD. BL$$D)	youtube	f
CX45pYvxDiA	2020-02-17 10:07:18.167369-05	2020-02-17 10:07:18.167369-05	\N	143000000	Mr. Sandman - The Chordettes	youtube	f
A46bLj6iigE	2020-02-17 12:21:26.95603-05	2020-02-17 12:21:26.95603-05	\N	372000000	k-waves LAB - フォールオブフォール	youtube	f
eDEFolvLn0A	2020-02-17 12:26:39.028485-05	2020-02-17 12:26:39.028485-05	\N	218000000	IZ*ONE (아이즈원) - 'FIESTA' MV	youtube	f
DXAMJ4leZE4	2020-02-17 12:29:23.030544-05	2020-02-17 12:29:23.030544-05	\N	187000000	k-waves LAB - 妖怪の山	youtube	f
sPTOQd9E6gE	2020-02-17 12:32:32.175542-05	2020-02-17 12:32:32.175542-05	\N	162000000	Aya's Theme - The Youkai Mountain ~ Mysterious Mountain	youtube	f
_i2tJRudG8E	2020-02-17 13:39:12.612672-05	2020-02-17 13:39:12.612672-05	\N	181000000	【東方】Touhou MoF - Youkai Mountain ~ Mysterious Mountain (Launchpad cover)	youtube	t
NbVZPu_JM6I	2020-02-17 13:39:31.391766-05	2020-02-17 13:39:31.391766-05	\N	177000000	Sonic - Green Hill Zone Acapella	youtube	f
t4W12k0MYC0	2020-02-17 13:40:21.731141-05	2020-02-17 13:40:21.731141-05	\N	181000000	UNDERTALE - Megalovania Acapella	youtube	f
c6uVnR9B2vY	2020-02-17 13:40:22.774675-05	2020-02-17 13:40:22.774675-05	\N	169000000	Sonic 2 - Chemical Plant Zone Acapella	youtube	f
ndiD8V7zpAs	2020-02-17 13:41:17.523241-05	2020-02-17 13:41:17.523241-05	\N	200000000	Super Mario World - Overworld Theme Acapella	youtube	f
YXwYJyrKK5A	2020-02-17 14:15:43.295075-05	2020-02-17 14:15:43.295075-05	\N	192000000	TWO DOOR CINEMA CLUB  | WHAT YOU KNOW	youtube	t
ZdV8CumRB5c	2020-02-17 14:50:55.960282-05	2020-02-17 14:50:55.960282-05	\N	262000000	Power Glove - Knife Party (Official)	youtube	f
3Vj_kdRggbM	2020-02-17 14:54:49.062092-05	2020-02-17 14:54:49.062092-05	\N	315000000	rejection (feat. Such) - Signal	youtube	f
NrJEFrth27Q	2020-02-17 14:56:12.916959-05	2020-02-17 14:56:12.916959-05	\N	249000000	Mariah Carey - Emotions	youtube	f
YLIqYiQGSJM	2020-02-17 14:56:27.361123-05	2020-02-17 14:56:27.361123-05	\N	285000000	Hello (feat. Jae Soto)	youtube	f
zOhdvRVAXck	2020-02-17 15:30:10.448243-05	2020-02-17 15:30:10.448243-05	\N	333000000	Camellia - σ:For The Delta	youtube	f
rKveAXCVrSc	2020-02-17 15:35:24.40487-05	2020-02-17 15:35:24.40487-05	\N	118000000	Megaraph Fortress (Stage 16) - Spark the Electric Jester	youtube	t
JAMklwx_ZzM	2020-02-17 15:37:14.279449-05	2020-02-17 15:37:14.279449-05	\N	444000000	【東方ボーカル】 「からくれなゐの影」 【凋叶棕】 【Subbed】	youtube	f
kMlLz7stjwc	2020-02-17 15:47:19.684666-05	2020-02-17 15:47:19.684666-05	\N	209000000	Mining - Minecraft Parody of Drowning Lyrics	youtube	f
Dmi44tOGl1s	2020-02-17 15:51:31.91338-05	2020-02-17 15:51:31.91338-05	\N	411000000	【東方ボーカル】 「鳥よ」 【凋叶棕】	youtube	f
oE56g61mW44	2020-02-17 16:26:02.192547-05	2020-02-17 16:26:02.192547-05	\N	199000000	Isn't She Lovely	youtube	f
Ic7NqP_YGlg	2020-02-17 16:26:26.44151-05	2020-02-17 16:26:26.44151-05	\N	333000000	My Shot	youtube	f
U5WhKIkYmtY	2020-02-17 19:04:09.903633-05	2020-02-17 19:04:09.903633-05	\N	230000000	Krab Borg Remix Compilation	youtube	f
gXSb_M4P8zw	2020-02-17 19:22:06.650775-05	2020-02-17 19:22:06.650775-05	\N	145000000	Maggie Lindemann - Human (Lyrics | Lyric Video)	youtube	f
R3BPJstxExk	2020-02-17 19:31:38.641493-05	2020-02-17 19:31:38.641493-05	\N	154000000	VULFPECK /// The Speedwalker	youtube	t
Bn1Ca8izXto	2020-02-17 19:37:58.648432-05	2020-02-17 19:37:58.648432-05	\N	229000000	Rock the Casbah - The Clash {lyrics}	youtube	f
_03wQecDt4U	2020-02-17 20:45:25.691785-05	2020-02-17 20:45:25.691785-05	\N	202000000	5 Seconds of Summer ‒ Teeth (Lyrics)	youtube	f
WPbeEtjo70g	2020-02-18 11:39:22.689122-05	2020-02-18 11:39:22.689122-05	\N	320000000	Pendulum - Propane Nightmares (Official Video)	youtube	t
nBV7qycbG8A	2020-02-18 15:11:57.24376-05	2020-02-18 15:11:57.24376-05	\N	213000000	5 Seconds Of Summer - Babylon (Official Audio)	youtube	f
NPlvqbbiMBQ	2020-02-18 15:25:28.198352-05	2020-02-18 15:25:28.198352-05	\N	240000000	Nightcore - Indestructible [HD]	youtube	f
aWxBrI0g1kE	2020-02-18 15:28:34.101694-05	2020-02-18 15:28:34.101694-05	\N	271000000	Disturbed - Indestructible [Official Music Video]	youtube	f
SRbhLtjOiRc	2020-02-18 16:16:47.268316-05	2020-02-18 16:16:47.268316-05	\N	317000000	Initial D - Night Of Fire	youtube	f
atuFSv2bLa8	2020-02-18 16:28:59.45742-05	2020-02-18 16:28:59.45742-05	\N	272000000	Manuel - Gas Gas Gas	youtube	f
dXZMH2CiSQk	2020-02-18 16:30:46.768025-05	2020-02-18 16:30:46.768025-05	\N	256000000	CRAZY LITTLE LOVE - NUAGE	youtube	f
GNVcMTsNl-k	2020-02-18 16:36:53.923893-05	2020-02-18 16:36:53.923893-05	\N	257000000	Nuage - Crazy Little Love (High Quality Audio)	youtube	f
englishnarwhal/im-gonna-cum-in-your-ass	2020-02-18 16:36:57.90659-05	2020-02-18 16:36:57.90659-05	\N	250384000	Initial Meme - Ass Ass Ass	soundcloud	f
0tjdo2ntvHA	2020-02-18 16:46:09.821172-05	2020-02-18 16:46:09.821172-05	\N	265000000	【東方Vocal／Eurobeat】 夜乃風車 「Crazy Beats」	youtube	f
Ez0RzS-CA_I	2020-02-18 16:50:43.536957-05	2020-02-18 16:50:43.536957-05	\N	264000000	【東方Vocal／Eurobeat】 Lunatic Voice 「Crazy Beats」	youtube	f
-OqrcUvrbRY	2020-02-18 16:58:57.916897-05	2020-02-18 16:58:57.916897-05	\N	175000000	Anderson .Paak - Come Down (Official Video)	youtube	f
wEyyQl1W5wc	2020-02-18 16:59:20.568179-05	2020-02-18 16:59:20.568179-05	\N	188000000	AJR - The Entertainment's Here (Official Audio)	youtube	f
wzKTtoMC-uY	2020-02-18 16:59:34.599698-05	2020-02-18 16:59:34.599698-05	\N	181000000	Alec Benjamin - The Boy In The Bubble (Lyrics)	youtube	f
kFewUrC7pB4	2020-02-18 16:59:47.752641-05	2020-02-18 16:59:47.752641-05	\N	243000000	【東方Vocal／Eurobeat】 Monster Melody 「Crazy Beats」【JPN Subtitle】	youtube	f
cmHaPphM6w4	2020-02-18 17:00:09.574033-05	2020-02-18 17:00:09.574033-05	\N	292000000	【東方Vocal／Eurobeat】 INVISIBLE HERO 「Crazy Beats」【JPN Subtitle】	youtube	f
ClP8oHdRygE	2020-02-18 17:16:50.526313-05	2020-02-18 17:16:50.526313-05	\N	250000000	【東方ボーカル】 「夕立、君と隠れ処」 【幽閉サテライト】 【Subbed】	youtube	f
S0kowDBIdc8	2020-02-18 17:17:01.545654-05	2020-02-18 17:17:01.545654-05	\N	233000000	【東方Vocal／Rock】 〇✕△□ 「Shinra-Bansho」	youtube	f
-F3_Cj-fMWw	2020-02-18 21:40:19.396801-05	2020-02-18 21:40:19.396801-05	\N	401000000	MoF Stage 4 - Fall of Fall ~ Autumnal Waterfall	youtube	f
ZufwRWceXlc	2020-02-18 21:49:50.744432-05	2020-02-18 21:49:50.744432-05	\N	213000000	Golden Sins	youtube	f
JDCB3_k-RBY	2020-02-18 22:08:46.232364-05	2020-02-18 22:08:46.232364-05	\N	80000000	Hypnospace Outlaw - Granny Cream's Hot Butter Ice Cream	youtube	t
pZamZh5z-PE	2020-02-18 23:34:23.918357-05	2020-02-18 23:34:23.918357-05	\N	61000000	"Into the Unknown" (Frozen 2) feat. Liam Fennecken, Brendan Jacob Smith and Jim Hogan	youtube	f
Xs_d5kwYqX8	2020-02-19 00:19:55.309557-05	2020-02-19 00:19:55.309557-05	\N	257000000	Amy Winehouse - You Know I'm No Good (Audio)	youtube	f
yQ9tRcP666Y	2020-02-19 15:34:10.834271-05	2020-02-19 15:34:10.834271-05	\N	60000000	Fur Elise/Still D.R.E. Piano Cover	youtube	f
nEFIlGrJUpg	2020-02-19 15:35:03.91414-05	2020-02-19 15:35:03.91414-05	\N	143000000	Kanye West - Lift Yourself (Mega Ran Remix)	youtube	f
tjHRHkoUv8U	2020-02-19 15:43:31.49742-05	2020-02-19 15:43:31.49742-05	\N	200000000	Aesop Rock - Toxic Coffee (Britney Spears Mashup)	youtube	f
q6GyTBVAF4w	2020-02-19 15:45:31.649604-05	2020-02-19 15:45:31.649604-05	\N	234000000	Run The Jewels - Close Your Eyes And Count To F*ck feat. Zack De La Rocha (from Run The Jewels 2)	youtube	f
5ORsi33z2_U	2020-02-19 15:45:47.827486-05	2020-02-19 15:45:47.827486-05	\N	210000000	Run The Jewels - Kill Your Masters  [Bass Boosted]	youtube	f
nIrYjzHAEp0	2020-02-19 16:52:19.825038-05	2020-02-19 16:52:19.825038-05	\N	344000000	supercell - My Dearest (Music Video)	youtube	t
jlxzZ1ZeshE	2020-02-19 17:33:46.335811-05	2020-02-19 17:33:46.335811-05	\N	282000000	Fall Breaks - SiIvaGunner: King for Another Day	youtube	f
m1-rpd3S-48	2020-02-19 17:34:11.58894-05	2020-02-19 17:34:11.58894-05	\N	197000000	[OFFICIAL VIDEO] Attention - Pentatonix	youtube	f
LF6CG2jGjQ0	2020-02-19 18:51:32.528759-05	2020-02-19 18:51:32.528759-05	\N	307000000	Dicko-nara Mode - Unfunny Sayo-nara Mashups in 2019: The Game	youtube	f
2IUI9UX0PH0	2020-02-19 19:20:14.880294-05	2020-02-19 19:20:14.880294-05	\N	258000000	Feryquitous feat. Aitsuki Nakuru - Kairikou	youtube	f
wlQY35lt_4Y	2020-02-19 19:25:39.410215-05	2020-02-19 19:25:39.410215-05	\N	272000000	Yuikonnu - Chikyuu Saigo no Kokuhaku wo	youtube	f
C05dv_wFhQo	2020-02-20 00:02:16.749405-05	2020-02-20 00:02:16.749405-05	\N	336000000	[Touhou Vocal] [TUMENECO] Mugen (spanish & english subtitles)	youtube	f
6k0HtHvGpy0	2020-02-20 00:02:30.758849-05	2020-02-20 00:02:30.758849-05	\N	254000000	[Future House] Camellia feat. Nanahira - Seashore on the moon	youtube	f
0DNdXNHZO6w	2020-02-20 00:12:09.743434-05	2020-02-20 00:12:09.743434-05	\N	167000000	Nichijou Songs - Zzz （Acappella Version）	youtube	f
hRQrHydqAi0	2020-02-20 00:18:05.861587-05	2020-02-20 00:18:05.861587-05	\N	236000000	DCappella - All I Want for Christmas Is You	youtube	f
sugUX1PtUc4	2020-02-20 00:19:29.175419-05	2020-02-20 00:19:29.175419-05	\N	264000000	JoJo Sono Chi No Sadame Full	youtube	f
cKKrHkddiyU	2020-02-20 00:19:45.713964-05	2020-02-20 00:19:45.713964-05	\N	266000000	【東方ボーカル】 「Invisible Survive」 【Alstroemeria Records】	youtube	f
QslJYDX3o8s	2020-02-20 00:31:05.294082-05	2020-02-20 00:31:05.294082-05	\N	211000000	Red Velvet 레드벨벳 '러시안 룰렛 (Russian Roulette)' MV	youtube	f
Pywx3APwEBw	2020-02-20 00:32:32.66435-05	2020-02-20 00:32:32.66435-05	\N	290000000	【東方Vocal／House】 Letter By Letter 「Alstroemeria Records」	youtube	f
JKU8UKgaY7Q	2020-02-20 00:32:39.619171-05	2020-02-20 00:32:39.619171-05	\N	276000000	UNDEAD CORPORATION - No Antidote MV	youtube	f
KOOhPfMbuIQ	2020-02-20 15:42:42.196229-05	2020-02-20 15:42:42.196229-05	\N	256000000	half•alive - still feel. [VIDEO]	youtube	f
R03cqGg40GU	2020-02-20 18:47:56.002061-05	2020-02-20 18:47:56.002061-05	\N	213000000	Panic! At The Disco: Death Of A Bachelor [OFFICIAL VIDEO]	youtube	f
pr22oejkxTI	2020-02-20 18:54:13.273798-05	2020-02-20 18:54:13.273798-05	\N	1846000000	Labrinth, Sia & Diplo Present... LSD (Full Album)	youtube	f
o2DXt11SMNI	2020-02-20 19:27:19.810034-05	2020-02-20 19:27:19.810034-05	\N	185000000	Maroon 5 - Memories (Lyrics)	youtube	f
HfiWZH1dFBg	2020-02-20 19:51:11.437253-05	2020-02-20 19:51:11.437253-05	\N	268000000	JoJo ~Sono Chi no Sadame~ (feat. Rena) 【Intense Symphonic Metal Cover】	youtube	f
KjGZ-a5eJOo	2020-02-20 20:03:01.096349-05	2020-02-20 20:03:01.096349-05	\N	370000000	【東方Vocal／Acoustic Rock】 空に近い場所 「凋叶棕」	youtube	f
TlJdaY0LjqE	2020-02-20 20:03:40.353704-05	2020-02-20 20:03:40.353704-05	\N	343000000	[Touhou Vocal] [RD-Sounds] Unprivileged Access (spanish & english subtitles)	youtube	f
aQRomSdhVL4	2020-02-20 21:55:15.032306-05	2020-02-20 21:55:15.032306-05	\N	631000000	10 Minute Compilation of "Hey Medic" Memes	youtube	t
OjNpRbNdR7E	2020-02-20 21:57:07.477371-05	2020-02-20 21:57:07.477371-05	\N	374000000	mao zedong propaganda music Red Sun in the Sky	youtube	f
TGMFXAbEKEY	2020-02-20 21:57:29.795228-05	2020-02-20 21:57:29.795228-05	\N	86000000	1924	youtube	t
paiQRSpg4Aw	2020-02-20 21:58:31.090969-05	2020-02-20 21:58:31.090969-05	\N	191000000	Dschinghis Khan - Moskau 1979 (High Quality)	youtube	t
eAEUrp2V4ss	2020-02-20 22:08:19.474836-05	2020-02-20 22:08:19.474836-05	\N	216000000	Eurovision 1979   Germany   Dschinghis Khan   Dschinghis Khan HQ SUBTITLED	youtube	t
whiffy5-1/here-comes-the-pacman	2020-02-20 22:11:44.989608-05	2020-02-20 22:11:44.989608-05	\N	15830000	Here Comes The Pacman	soundcloud	f
circlesarepointless2/i-had-high-hopes-for-the-super-bowl-and-the-nfl-soiled-it	2020-02-20 22:11:53.190528-05	2020-02-20 22:11:53.190528-05	\N	227390000	i had high hopes for the super bowl and the NFL soiled it	soundcloud	f
circlesarepointless3/die-young-in-la	2020-02-20 22:12:53.69269-05	2020-02-20 22:12:53.69269-05	\N	229219000	die young in LA	soundcloud	f
pxfd-lPqDw8	2020-02-20 22:14:05.525221-05	2020-02-20 22:14:05.525221-05	\N	42000000	here comes pacman, but it's lo-fi hip hop	youtube	t
stan-michals-601520399/without-the-bad-guy	2020-02-20 22:18:49.548841-05	2020-02-20 22:18:49.548841-05	\N	140525000	WITHOUT THE BAD GUY (bad guy + Without Me)	soundcloud	f
user-332315828/snail-and-boujee-2	2020-02-20 22:18:59.983559-05	2020-02-20 22:18:59.983559-05	\N	235829000	Snail And Boujee 2	soundcloud	f
jbroadwaymusic/coconut-mall	2020-02-20 22:19:34.053686-05	2020-02-20 22:19:34.053686-05	\N	145801000	Coconut Mall	soundcloud	f
curiosity_killedthecat/yoshis-island	2020-02-20 22:26:30.051224-05	2020-02-20 22:26:30.051224-05	\N	146926000	Yoshi's Island	soundcloud	f
jacks3rdaccount/badboujee-x-coconut-mall	2020-02-20 22:29:55.240103-05	2020-02-20 22:29:55.240103-05	\N	126730000	bad & boujee at coconut mall	soundcloud	f
user-143389915/this-is-minecraft-minecraft-parody-of-this-is-america	2020-02-20 22:30:41.403982-05	2020-02-20 22:30:41.403982-05	\N	165710000	THIS IS MINECRAFT  MINECRAFT PARODY OF THIS IS AMERICA	soundcloud	f
user-241097898/big-chungus-mode	2020-02-20 22:34:58.248565-05	2020-02-20 22:34:58.248565-05	\N	154920000	Big CHUNGUS MODE	soundcloud	f
user-870554289/sheck-wes-mo-bamba-minecraft-parody-prod-hennedy	2020-02-20 22:35:16.111218-05	2020-02-20 22:35:16.111218-05	\N	146847000	SHECK WES - "MO BAMBA" MINECRAFT PARODY (Prod. Hennedy)	soundcloud	f
anthonypardi/easy-being-green-feat-kermit-the-frog	2020-02-20 22:37:31.784464-05	2020-02-20 22:37:31.784464-05	\N	189015000	Easy Being Green (feat. Kermit The Frog)	soundcloud	f
guseperickson/reeses-puffs-vs-treasure	2020-02-20 22:40:26.148041-05	2020-02-20 22:40:26.148041-05	\N	183579000	Reeses Puffs VS Treasure	soundcloud	f
2ZIpFytCSVc	2020-02-20 23:16:59.030898-05	2020-02-20 23:16:59.030898-05	\N	1000000	Bruh Sound Effect #2	youtube	f
h6CHZ0rFWQ4	2020-02-20 23:28:57.900677-05	2020-02-20 23:28:57.900677-05	\N	264000000	あき - SUMMER ENERGY	youtube	f
cJw1QA49V8w	2020-02-20 23:30:00.872712-05	2020-02-20 23:30:00.872712-05	\N	253000000	Ikouze☆Paradise - Ishuzoku Reviewers	youtube	f
sxlHQBqkFiM	2020-02-20 23:47:59.904169-05	2020-02-20 23:47:59.904169-05	\N	194000000	Discordlovania (TheLivingTombSans Remix) - Eurobeat Brony	youtube	f
G4eP9OO53CY	2020-02-20 23:50:59.812381-05	2020-02-20 23:50:59.812381-05	\N	193000000	Tame Impala - The Less I Know The Better (HQ Audio)	youtube	f
YnmEePUXLRs	2020-02-20 23:54:21.760971-05	2020-02-20 23:54:21.760971-05	\N	217000000	Tame Impala - The Less I Know The Better	youtube	f
en2Erz9i98g	2020-02-20 23:55:15.518246-05	2020-02-20 23:55:15.518246-05	\N	252000000	Reality In Motion	youtube	f
igH3lbZ81Ao	2020-02-20 23:55:42.526788-05	2020-02-20 23:55:42.526788-05	\N	29000000	Talk Dirty to Sans Undertale	youtube	t
7YnF2nLu99Y	2020-02-21 00:03:25.845745-05	2020-02-21 00:03:25.845745-05	\N	161000000	Complete Darkness (No) - Touhoutale	youtube	f
kEvHfLmih2c	2020-02-21 00:04:47.689645-05	2020-02-21 00:04:47.689645-05	\N	230000000	Shawn Mendes and Camila Cabello – Señorita (HQ Audio)	youtube	f
xNvG7XoTGb0	2020-02-21 00:06:58.493579-05	2020-02-21 00:06:58.493579-05	\N	22000000	The Grimoire of Alice - Touhou 5: Mystic Square	youtube	t
O2_cBFr1lCM	2020-02-21 00:07:27.812965-05	2020-02-21 00:07:27.812965-05	\N	231000000	Coda - Bloody Stream (HQ Audio)	youtube	t
grL3ApPhvXU	2020-02-21 00:10:22.848906-05	2020-02-21 00:10:22.848906-05	\N	245000000	UiNA, Occhoko Bunny - Aa Kenran no Yume ga Gotoku (Epsilon Remix 2018)	youtube	f
SDnaxXIW_Rs	2020-02-21 00:11:10.267313-05	2020-02-21 00:11:10.267313-05	\N	146000000	party rockers in the underground tonight	youtube	f
JQuV6PTduKk	2020-02-21 00:12:03.138979-05	2020-02-21 00:12:03.138979-05	\N	117000000	CENSORED!! - SOUND VOLTEX III GRAVITY WARS	youtube	f
kHP9SFjppoM	2020-02-21 00:12:34.056959-05	2020-02-21 00:12:34.056959-05	\N	160000000	Sweet Sweet Victory (2019 Superbowl Version) - Spongebob Squarepants	youtube	f
hhaoqq2BQkc	2020-02-21 00:14:35.138563-05	2020-02-21 00:14:35.138563-05	\N	17000000	Crazy Backup Dancers - Touhou 16: Hidden Star in Four Seasons	youtube	t
s6CdryaYwcM	2020-02-21 00:17:06.550636-05	2020-02-21 00:17:06.550636-05	\N	272000000	Am I Wrong Vs. Suavemente (Fahren Mashup)	youtube	f
YoMlOL9xl78	2020-02-21 00:26:52.415312-05	2020-02-21 00:26:52.415312-05	\N	257000000	ＤＥＳＰＡＣＩＴＯ　ＲＥＳＯＮＡＮＣＥ	youtube	f
zR4GkZcPF_o	2020-02-21 00:27:06.676981-05	2020-02-21 00:27:06.676981-05	\N	51000000	Despito (cursed eurobeat mix) - INITIAL Despacito	youtube	f
vEprdsDg08A	2020-02-21 00:28:16.687077-05	2020-02-21 00:28:16.687077-05	\N	251000000	009 Sound System Bad Dreamscape - Touhou XP: Unregistered Hypercam 2	youtube	f
MTJN9D-GTeg	2020-02-21 00:32:03.920214-05	2020-02-21 00:32:03.920214-05	\N	142000000	We Are Number 1, 2, Oatmeal	youtube	f
M5iX6RPKzuw	2020-02-21 00:46:25.722917-05	2020-02-21 00:46:25.722917-05	\N	178000000	Paralyzer (finger eleven) - Wii Music	youtube	t
4sZuN0xXWLc	2020-02-21 00:52:10.705936-05	2020-02-21 00:52:10.705936-05	\N	60000000	Big Bill Hell's	youtube	t
1uHPn51tC20	2020-02-21 00:58:30.614152-05	2020-02-21 00:58:30.614152-05	\N	65000000	Boneless Pizza [SFM]	youtube	t
twq3SF8Yf-0	2020-02-21 01:00:00.600077-05	2020-02-21 01:00:00.600077-05	\N	60000000	Big Bill Hell's Cars [SFM]	youtube	t
IC6Z9tKYCf4	2020-02-21 01:00:41.058656-05	2020-02-21 01:00:41.058656-05	\N	20000000	IF SHE BREATHES [SFM]	youtube	t
0aW62jeSvu8	2020-02-21 01:20:26.454452-05	2020-02-21 01:20:26.454452-05	\N	129000000	【Touhou TETLAPOT x IOSYS】Cirno's Perfect Math Class: The ⑨ Anniversary Edition 【東方】English Subs	youtube	t
D1HAsA0_tBQ	2020-02-21 01:20:54.451125-05	2020-02-21 01:20:54.451125-05	\N	137000000	【東方MV】患部で止まってすぐ溶ける～狂気の優曇華院【IOSYS】	youtube	t
shmAGOTo824	2020-02-21 01:23:19.701463-05	2020-02-21 01:23:19.701463-05	\N	122000000	【東方MV】魔理沙は大変なものを盗んでいきました【IOSYS】	youtube	t
7g2btL9wrYQ	2020-02-21 01:25:26.282215-05	2020-02-21 01:25:26.282215-05	\N	184000000	【Touhou IOSYS PV】 USATEI 2011 "ウサテイ2011"【東方 c80】	youtube	t
fmzuD2bwits	2020-02-21 01:25:53.031951-05	2020-02-21 01:25:53.031951-05	\N	141000000	【東方MV】エンドレス・てゐマパーク【IOSYS】	youtube	t
vR5HJp_xXRs	2020-02-21 01:29:17.380206-05	2020-02-21 01:29:17.380206-05	\N	122000000	Jordan Stole The Precious Slam	youtube	t
i1jeappvEYs	2020-02-21 01:32:57.961484-05	2020-02-21 01:32:57.961484-05	\N	130000000	jojo part 4 but everyone is fortnite dancers	youtube	t
8apD9WWDy4s	2020-02-21 01:34:07.95814-05	2020-02-21 01:34:07.95814-05	\N	17000000	jojo part 5 but its a mafia city ad	youtube	t
HovSXayfad0	2020-02-21 15:14:52.08852-05	2020-02-21 15:14:52.08852-05	\N	216000000	She's Kinda Hot - 5SOS Lyrics	youtube	f
zQ4LiyFF8RU	2020-02-21 18:46:18.187858-05	2020-02-21 18:46:18.187858-05	\N	40000000	dorime.	youtube	t
195XntreoMc	2020-02-21 01:38:32.490008-05	2020-02-21 01:38:32.490008-05	\N	329000000	Yukari's Theme - Necrofantasia	youtube	f
FrG4TEcSuRg	2020-02-21 16:50:00.21213-05	2020-02-21 16:50:00.21213-05	\N	245000000	PSY - DADDY(feat. CL of 2NE1) M/V	youtube	f
XFLOh44P5z0	2020-02-21 16:50:12.708567-05	2020-02-21 16:50:12.708567-05	\N	188000000	Wizards in Winter - Trans-Siberian Orchestra	youtube	f
a46QJ_u8Ll8	2020-02-21 18:49:02.538249-05	2020-02-21 18:49:02.538249-05	\N	325000000	PSYQUI - Origin	youtube	f
8x-M7AkTvrQ	2020-02-22 12:34:27.867982-05	2020-02-22 12:34:27.867982-05	\N	278000000	Disclosure - You & Me (Flume Remix) [Official Video]	youtube	t
szj59j0hz_4	2020-02-22 12:34:50.233541-05	2020-02-22 12:34:50.233541-05	\N	227000000	Galantis - Runaway (U & I) [Premiere]	youtube	t
kkKqQhnGtOc	2020-02-22 12:35:11.30297-05	2020-02-22 12:35:11.30297-05	\N	183000000	XYLØ - Yes & No	youtube	t
PSrjX96dTcs	2020-02-22 12:41:41.714989-05	2020-02-22 12:41:41.714989-05	\N	137000000	Miguel - Funeral (Audio)	youtube	f
7WLhiR6ROsA	2020-02-22 12:46:41.850588-05	2020-02-22 12:46:41.850588-05	\N	212000000	SF9 - NOW OR NEVER (질렀어) LYRICS (Color Coded Eng/Rom/Han/가사)	youtube	f
oCTqcTe1lIA	2020-02-22 12:54:35.59437-05	2020-02-22 12:54:35.59437-05	\N	226000000	[MV] 문별(MOONBYUL) - 달이 태양을 가릴 때(Eclipse)	youtube	f
pu7Se3XWNtM	2020-02-22 12:55:52.365332-05	2020-02-22 12:55:52.365332-05	\N	229000000	PENTAGON - 'Dr. BeBe' (Dr. 베베) Lyrics [Color Coded_Han_Rom_Eng]	youtube	f
JaPf-MRKITg	2020-02-22 13:04:01.458251-05	2020-02-22 13:04:01.458251-05	\N	167000000	star wars cantina	youtube	f
GKzsktuqwyU	2020-02-22 13:22:04.322864-05	2020-02-22 13:22:04.322864-05	\N	246000000	Knife Party - Centipede	youtube	f
SeIJmciN8mo	2020-02-22 13:27:28.338243-05	2020-02-22 13:27:28.338243-05	\N	261000000	Nicki Minaj - Starships (Explicit)	youtube	f
4JipHEz53sU	2020-02-22 13:27:51.307561-05	2020-02-22 13:27:51.307561-05	\N	218000000	Nicki Minaj - Super Bass	youtube	f
XpqqjU7u5Yc	2020-02-22 13:53:05.02318-05	2020-02-22 13:53:05.02318-05	\N	240000000	Bee Gees - How Deep Is Your Love (1977)	youtube	f
ccenFp_3kq8	2020-02-22 13:53:16.56199-05	2020-02-22 13:53:16.56199-05	\N	254000000	Daryl Hall & John Oates - I Can't Go For That (No Can Do) (Official Video)	youtube	f
B3MFbhwfEXU	2020-02-22 13:53:26.761848-05	2020-02-22 13:53:26.761848-05	\N	247000000	Off The Wall - MICHAEL JACKSON '1979	youtube	f
oIAkRVBS-0U	2020-02-22 14:00:20.698008-05	2020-02-22 14:00:20.698008-05	\N	145000000	Hall and Oates -- Rich Girl	youtube	f
5X-Mrc2l1d0	2020-02-22 14:03:23.591977-05	2020-02-22 14:03:23.591977-05	\N	203000000	Michael Jackson - Rock With You (Official Video)	youtube	f
M9wHYiicY5I	2020-02-22 14:54:51.144666-05	2020-02-22 14:54:51.144666-05	\N	277000000	The Prismriver's Theme - Phantom Ensemble	youtube	f
xi_ZC_Hyhmo	2020-02-22 14:55:27.284975-05	2020-02-22 14:55:27.284975-05	\N	217000000	Youmu's Theme - Hiroari Shoots a Strange Bird ~ Till When?	youtube	f
bif5xgLR8Gk	2020-02-22 15:10:30.766142-05	2020-02-22 15:10:30.766142-05	\N	179000000	IN Stage 3 - Nostalgic Blood of the East ~ Old World	youtube	f
01skyPMeeoc	2020-02-22 15:10:55.418412-05	2020-02-22 15:10:55.418412-05	\N	190000000	EoSD Stage 5 Boss - Sakuya Izayoi's Theme - Lunar Clock ~ Luna Dial	youtube	f
4-QacmltD4g	2020-02-22 15:13:08.67817-05	2020-02-22 15:13:08.67817-05	\N	367000000	SA Stage 5 - Lullaby of Deserted Hell	youtube	f
Zis2TtxdFjQ	2020-02-22 15:13:33.910779-05	2020-02-22 15:13:33.910779-05	\N	272000000	Yuyuko's Theme - Border of Life	youtube	f
69jezLrwbU4	2020-02-22 15:28:32.212884-05	2020-02-22 15:28:32.212884-05	\N	117000000	Yuyuko's Final Theme - Border of Life	youtube	f
h4FVKSHjg-0	2020-02-22 15:28:49.473152-05	2020-02-22 15:28:49.473152-05	\N	184000000	EoSD Stage 3 Boss - Hong Meiling's Theme - Shanghai Alice of Meiji 17	youtube	f
ckETJHE6RPA	2020-02-22 15:30:32.660198-05	2020-02-22 15:30:32.660198-05	\N	327000000	UFO Stage 5 - Provincial Makai City Esoteria	youtube	f
Xy_-7OXophY	2020-02-22 15:31:24.66647-05	2020-02-22 15:31:24.66647-05	\N	346000000	SA Stage 6 Boss - Utsuho Reiuji's Theme - Solar Sect of Mystic Wisdom ~ Nuclear Fusion	youtube	f
n0jbvJjTXPw	2020-02-22 15:35:39.49366-05	2020-02-22 15:35:39.49366-05	\N	224000000	Alice in Wonderland - Mystic Square	youtube	f
6B9umDBE-78	2020-02-22 15:36:10.967194-05	2020-02-22 15:36:10.967194-05	\N	194000000	the Grimoire of Alice - Mystic Square	youtube	f
Yw8rakubinA	2020-02-22 15:43:13.508496-05	2020-02-22 15:43:13.508496-05	\N	205000000	【東方Techno／Trance】 Dance with Fairy 「OTOMEKAN」	youtube	f
vJvV0LoEmM0	2020-02-22 16:52:34.284026-05	2020-02-22 16:52:34.284026-05	\N	296000000	[Touhou Vocal] [SOUND HOLIC] ForgoTTen World (spanish & english subtitles)	youtube	f
D75ZuaSR8nQ	2020-02-22 17:18:02.463101-05	2020-02-22 17:18:02.463101-05	\N	747000000	A Robot Shoots Me When I Get Shot in Fortnite	youtube	t
cIMpVunf5Co	2020-02-22 17:19:35.925536-05	2020-02-22 17:19:35.925536-05	\N	47000000	Mario Pissing REUPLOAD	youtube	t
qUcPeyABDzk	2020-02-22 17:23:58.939873-05	2020-02-22 17:23:58.939873-05	\N	93000000	pawn berds	youtube	t
CMOc8X0gx-Q	2020-02-22 17:25:02.974153-05	2020-02-22 17:25:02.974153-05	\N	158000000	A Hughstoric Battle	youtube	t
pE39KdptM40	2020-02-22 18:04:05.014451-05	2020-02-22 18:04:05.014451-05	\N	492000000	Scream Powered Microwave	youtube	t
c2gq4IwIc_s	2020-02-22 18:11:50.806794-05	2020-02-22 18:11:50.806794-05	\N	697000000	A Robot That Picks Tomatoes Out of Your Salad	youtube	t
B0eSPogdaHs	2020-02-22 18:21:36.962435-05	2020-02-22 18:21:36.962435-05	\N	646000000	If You Can't Drink Fast Enough This Cup Tazes You	youtube	t
9q3_8N4YZRI	2020-02-22 18:31:02.108981-05	2020-02-22 18:31:02.108981-05	\N	534000000	Tazer Tag	youtube	t
d5d02U5YYfk	2020-02-22 18:39:07.162228-05	2020-02-22 18:39:07.162228-05	\N	585000000	A Robot That Shoots Energy Drink at You When You Get Tired	youtube	t
nw6EkI_AHDA	2020-02-22 22:45:58.683594-05	2020-02-22 22:45:58.683594-05	\N	285000000	Undertale: Death by Glamour - Jazz Cover || insaneintherainmusic (ft. The Consouls)	youtube	t
h_FT2OLu2rA	2020-02-23 00:34:40.036591-05	2020-02-23 00:34:40.036591-05	\N	146000000	Do You Remember? (September Megamashup)	youtube	t
THpt6ugy_8E	2020-02-23 00:35:20.557372-05	2020-02-23 00:35:20.557372-05	\N	280000000	Mcbaise - She's a Big Boy	youtube	f
O1Th42pA17c	2020-02-23 01:58:42.226778-05	2020-02-23 01:58:42.226778-05	\N	216000000	AKMU (악동뮤지션) - FREEDOM (Color Coded Lyrics Eng/Rom/Han)	youtube	f
IxMyUf16tN8	2020-02-23 13:38:40.329136-05	2020-02-23 13:38:40.329136-05	\N	236000000	【東方ボーカル】 幽閉サテライト - ふたり、桜の下	youtube	f
ERbRjDFPFbw	2020-02-23 13:38:49.060572-05	2020-02-23 13:38:49.060572-05	\N	310000000	【東方ボーカル】 幽閉サテライト - 胸の中で誰かが	youtube	f
d63GbD_3ugg	2020-02-23 13:46:53.848935-05	2020-02-23 13:46:53.848935-05	\N	256000000	【東方ボーカル】 幽閉サテライト - 宵の華	youtube	f
HjhLhwWhVuw	2020-02-23 13:49:48.653645-05	2020-02-23 13:49:48.653645-05	\N	291000000	東方Touhou [Vocal/Electronic] The Young Descendant of Tepes	youtube	f
JEj-AeciF7A	2020-02-23 13:57:05.274299-05	2020-02-23 13:57:05.274299-05	\N	206000000	Lost Painting (Castlevania: SotN) [New Remix] - Super Smash Bros. Ultimate Soundtrack	youtube	f
ceoJnIJO1zM	2020-02-23 14:05:39.510293-05	2020-02-23 14:05:39.510293-05	\N	261000000	【東方ボーカル】 「ニヒル神楽」 【幽閉サテライト】【Subbed】	youtube	f
FQcCZG8YTf4	2020-02-23 14:10:47.38041-05	2020-02-23 14:10:47.38041-05	\N	365000000	【東方ボーカル】 「最果てのコトバ」 【幽閉サテライト】 【Subbed】	youtube	f
_qbw-KDvMPQ	2020-02-23 14:13:33.212987-05	2020-02-23 14:13:33.212987-05	\N	275000000	【東方ボーカル】 「月に叢雲華に風」 【幽閉サテライト】【Subbed】	youtube	f
9m7z-cWegpE	2020-02-23 14:16:20.747374-05	2020-02-23 14:16:20.747374-05	\N	294000000	【東方ボーカル】 「今を愛せるよ」 【幽閉サテライト】	youtube	f
9sptkG-4cgA	2020-02-23 14:25:28.980943-05	2020-02-23 14:25:28.980943-05	\N	288000000	fripSide - distant moon-version2005-	youtube	f
EC-zdHuns9Y	2020-02-23 14:31:25.111959-05	2020-02-23 14:31:25.111959-05	\N	307000000	【東方ボーカル】Sakura Dreams【SOUND HOLIC】	youtube	f
o6t67YhSpCA	2020-02-23 14:44:48.173063-05	2020-02-23 14:44:48.173063-05	\N	285000000	【東方ボーカル】 「零次元エクスプレス」 【SOUND HOLIC】	youtube	f
1_D7kiOR9fA	2020-02-23 14:45:02.631241-05	2020-02-23 14:45:02.631241-05	\N	440000000	【東方Vocal／Traditional Rock】 「心綺楼」 「凋叶棕」 【ENG Subs】	youtube	f
SDjFpNDPLZU	2020-02-23 14:54:30.351002-05	2020-02-23 14:54:30.351002-05	\N	192000000	【東方ボーカル】 「万華鏡」 【幽閉サテライト】	youtube	f
cN5S-fHGhAA	2020-02-23 14:54:43.802719-05	2020-02-23 14:54:43.802719-05	\N	263000000	【東方ボーカル】 「THRILL HUNTER」 【SOUND HOLIC】	youtube	f
RlitYwYU3UI	2020-02-23 14:54:59.981142-05	2020-02-23 14:54:59.981142-05	\N	301000000	【東方ボーカル】 「冥き神の地へ」 【SOUND HOLIC】	youtube	f
pe3Ad3TI2R4	2020-02-23 15:06:19.965101-05	2020-02-23 15:06:19.965101-05	\N	283000000	【東方ボーカル】 「郷愁千夜物語」 【SOUND HOLIC】	youtube	f
waVV5RA4Qgw	2020-02-23 15:06:27.121386-05	2020-02-23 15:06:27.121386-05	\N	226000000	【東方ボーカル】 少女フラクタル - 地より謳う	youtube	f
2psgFJNuVmw	2020-02-23 15:19:38.727512-05	2020-02-23 15:19:38.727512-05	\N	321000000	【東方ボーカル】 「Bad Apple!! feat.nomico (豚乙女 Ver.)」 【Alstroemeria Records】【Subbed】	youtube	f
QmHXtMHiUhI	2020-02-23 15:19:58.798978-05	2020-02-23 15:19:58.798978-05	\N	225000000	【東方ボーカル】 「夜のサーカス」 【Liz Triangle】 【Subbed】	youtube	f
7q_6gChBmD4	2020-02-23 15:25:41.046543-05	2020-02-23 15:25:41.046543-05	\N	251000000	【東方ボーカル】 「ハレーション・リモーション」 【Liz Triangle】	youtube	f
fBO8T2PLrrY	2020-02-23 15:25:57.713955-05	2020-02-23 15:25:57.713955-05	\N	263000000	【公式】【東方Vocal】幽閉サテライト / 零れずの願いゴト 【FullMV】(原曲：砕月)	youtube	t
AscL48KP0Mg	2020-02-23 15:28:48.341512-05	2020-02-23 15:28:48.341512-05	\N	507000000	【東方ボーカル】 「MyonMyonMyonMyonMyon!」 【ShibayanRecords】【Subbed】	youtube	f
2de2MHIzNbg	2020-02-23 15:32:52.830064-05	2020-02-23 15:32:52.830064-05	\N	340000000	【東方ボーカル】 「MyonMyonMyonMyonMyonMyon!」 【ShibayanRecords】【Subbed】	youtube	f
ctFaFckpAD4	2020-02-23 15:33:47.253286-05	2020-02-23 15:33:47.253286-05	\N	354000000	【東方ボーカル】 「Heart Of Glass」 【Liz Triangle】	youtube	f
9q2CXx1CQNQ	2020-02-23 15:41:00.203234-05	2020-02-23 15:41:00.203234-05	\N	276000000	【東方ボーカル】 「ユメミル」 【Liz Triangle】【Subbed】	youtube	t
awLS4Ot3gr0	2020-02-23 15:41:51.95847-05	2020-02-23 15:41:51.95847-05	\N	238000000	【東方Vocal】 Concert of the Kappa 「Liz Triangle」	youtube	f
WRoYiX67cOk	2020-02-23 15:44:22.957974-05	2020-02-23 15:44:22.957974-05	\N	290000000	【東方大空魔術】 Liz Triangle -⎾月へ、幻想へ⏌ 【kaztora】	youtube	f
E65yJ8GNPXw	2020-02-23 15:44:24.807847-05	2020-02-23 15:44:24.807847-05	\N	277000000	【東方ボーカル】 「エーテルの海」 【Liz Triangle】	youtube	f
uRuaz3GSLoc	2020-02-23 15:56:05.024067-05	2020-02-23 15:56:05.024067-05	\N	338000000	【東方ボーカル】 「虚言」 【Liz Triangle】	youtube	f
th78gXEi_04	2020-02-23 15:56:18.261551-05	2020-02-23 15:56:18.261551-05	\N	325000000	【東方ボーカル】 「メロウ」 【Liz Triangle】	youtube	f
7LVCTryTjLw	2020-02-23 15:56:23.079167-05	2020-02-23 15:56:23.079167-05	\N	248000000	「東方 Vocal」 念仏磔刑／ウソマコト 「Liz Triangle」	youtube	f
vHliUAqnqHs	2020-02-23 16:14:29.449338-05	2020-02-23 16:14:29.449338-05	\N	306000000	【東方ボーカル】 「 電解質の世界」 【Liz Triangle】	youtube	f
Kkb6_AYPXwk	2020-02-23 16:14:37.958272-05	2020-02-23 16:14:37.958272-05	\N	298000000	【東方Vocal／Rock】 花の記憶 「Liz Triangle」	youtube	f
y4CouaE5TVU	2020-02-23 16:14:51.585274-05	2020-02-23 16:14:51.585274-05	\N	314000000	[Touhou PV] [Liz Triangle] Little Dreamer (spanish & english subtitles)	youtube	t
mXPxhgpObPY	2020-02-23 16:19:36.957511-05	2020-02-23 16:19:36.957511-05	\N	252000000	【東方ボーカル】 「レイズ」 【Liz Triangle】	youtube	f
7ltt-4fPSk4	2020-02-23 16:22:27.769461-05	2020-02-23 16:22:27.769461-05	\N	390000000	[東方 Vocal] [Liz Triangle]  ありがとう	youtube	f
q_hqe-Rbx_A	2020-02-23 16:25:36.154773-05	2020-02-23 16:25:36.154773-05	\N	301000000	【東方ボーカル】 「さよならバイバイ、また明日」 【Liz Triangle】	youtube	f
X0p4GlLyRX0	2020-02-23 16:31:20.908723-05	2020-02-23 16:31:20.908723-05	\N	233000000	【東方Vocal (Pop)】 Liz Triangle - 星を飛び越えて	youtube	f
6fbcepNigK4	2020-02-23 16:35:06.809359-05	2020-02-23 16:35:06.809359-05	\N	287000000	[Touhou Vocal] [Liz Triangle] Pandemic (spanish & english subtitles)	youtube	f
XhCpb_Cr2ug	2020-02-23 16:41:26.673117-05	2020-02-23 16:41:26.673117-05	\N	383000000	【星蓮船 ボーカル】Liz Triangle - White Lotus	youtube	f
lpltIGATgws	2020-02-23 21:22:35.248096-05	2020-02-23 21:22:35.248096-05	\N	93000000	【東方】 Touhou IN - Deaf to all but the Song (Launchpad cover)	youtube	t
bruhmru/sheck-wes-mo-bamba-genius-verified-version	2020-02-23 21:57:37.13959-05	2020-02-23 21:57:37.13959-05	\N	105282000	Sheck Wes - Mo Bamba (Genius Verified Version)	soundcloud	f
lilw00dy/home-depot-lil-w00dy-trap-remix	2020-02-23 21:59:20.630577-05	2020-02-23 21:59:20.630577-05	\N	79752000	Home Depot (Lil w00dy Trap Remix)	soundcloud	f
henryfilms/pornhub-intro-remix	2020-02-23 21:59:44.85445-05	2020-02-23 21:59:44.85445-05	\N	121793000	Pornhub Intro Remix	soundcloud	f
guardivn2/beanos	2020-02-23 22:02:25.41545-05	2020-02-23 22:02:25.41545-05	\N	61601000	beanos (guʌrdiʌn remix)	soundcloud	f
856x2xIpoZM	2020-02-23 22:02:51.731246-05	2020-02-23 22:02:51.731246-05	\N	225000000	Bottoms Upalovania (Full Version) (Megalovania)	youtube	t
tvisbeefy/beanonsans	2020-02-23 22:06:21.59128-05	2020-02-23 22:06:21.59128-05	\N	39212000	BEANONSANS	soundcloud	f
cinder-mina/gumi-englishrevenge-minecraft-parodyvocaloid-cover	2020-02-23 22:10:04.883791-05	2020-02-23 22:10:04.883791-05	\N	220153000	【Gumi English】Revenge (Minecraft Parody)【VOCALOID Cover】	soundcloud	f
matrixmariox/fuck	2020-02-23 22:14:45.603768-05	2020-02-23 22:14:45.603768-05	\N	226920000	fuck	soundcloud	f
napemango2/babys-first-psy-meme	2020-02-23 22:15:08.758411-05	2020-02-23 22:15:08.758411-05	\N	264488000	I Got It From My Батя	soundcloud	f
lemonwars/leek-drop	2020-02-23 22:17:30.033153-05	2020-02-23 22:17:30.033153-05	\N	229245000	Leek Drop	soundcloud	f
chickensuitgamer/mambo-halation	2020-02-23 22:20:22.101374-05	2020-02-23 22:20:22.101374-05	\N	258976000	Mambo Halation	soundcloud	f
b48U3oG8Ids	2020-02-23 22:37:00.951707-05	2020-02-23 22:37:00.951707-05	\N	489000000	01 - The Legend of Zelda 25th Anniversary Medley - Legend of Zelda 25th Anniversary Orchestra	youtube	f
KMICyNq2-hI	2020-02-23 22:38:25.187088-05	2020-02-23 22:38:25.187088-05	\N	631000000	03 - The Windwaker Symphonic Movement - Legend of Zelda 25th Anniversary Special Orchestra	youtube	f
989-7xsRLR4	2020-02-24 00:05:14.444669-05	2020-02-24 00:05:14.444669-05	\N	249000000	Vitas - The 7th Element	youtube	t
Lg_fWxGILlA	2020-02-24 01:17:55.195151-05	2020-02-24 01:17:55.195151-05	\N	2517000000	Akane — The Winter of My Heart [FULL ALBUM]	youtube	f
kUPZednnSJA	2020-02-24 02:12:13.41985-05	2020-02-24 02:12:13.41985-05	\N	2781000000	Akane — The Music Escape [FULL ALBUM]	youtube	f
QoCcDi8zH8M	2020-02-24 12:59:40.173171-05	2020-02-24 12:59:40.173171-05	\N	85000000	whomst.mp4	youtube	t
gvFHvotIO_4	2020-02-24 13:39:09.644222-05	2020-02-24 13:39:09.644222-05	\N	177000000	Hotel Luigi - Booty Quest	youtube	t
j0Sp9g47728	2020-02-24 13:42:49.178532-05	2020-02-24 13:42:49.178532-05	\N	181000000	Squid Pride	youtube	t
eViS-dUIdQI	2020-02-24 13:43:08.234009-05	2020-02-24 13:43:08.234009-05	\N	98000000	No Squid November	youtube	t
n5AaUie9Rrg	2020-02-24 13:49:36.969692-05	2020-02-24 13:49:36.969692-05	\N	31000000	BRUH NYE THE SCIENCE GUY	youtube	t
nN-ekLaHyuI	2020-02-24 13:53:54.498276-05	2020-02-24 13:53:54.498276-05	\N	41000000	boomer gf	youtube	t
CXArovLJ60A	2020-02-24 13:56:03.577212-05	2020-02-24 13:56:03.577212-05	\N	45000000	nice opinion	youtube	t
LCZPR79Xpuw	2020-02-24 13:59:44.832431-05	2020-02-24 13:59:44.832431-05	\N	16000000	pushup	youtube	f
ff__bkqyjVw	2020-02-24 14:06:26.602193-05	2020-02-24 14:06:26.602193-05	\N	44000000	jotaro vs dio but slap slap slap	youtube	t
v2NFl86LX3Q	2020-02-24 14:08:48.952016-05	2020-02-24 14:08:48.952016-05	\N	273000000	Bloodhound Gang - Mope (Official Video)	youtube	t
kSU0w7KwRIw	2020-02-16 19:06:57.392183-05	2020-02-16 19:06:57.392183-05	\N	401000000	DELTARUNE: Field of Hopes and Dreams Jazz Cover	youtube	t
-TkSkptsyuY	2020-02-24 14:37:51.387184-05	2020-02-24 14:37:51.387184-05	\N	146000000	Interstellar Docking Scene PARODY	youtube	t
c4KNd0Yv6d0	2020-02-24 14:40:39.420191-05	2020-02-24 14:40:39.420191-05	\N	24000000	penis music	youtube	t
8sH0EpNlGGM	2020-02-24 14:42:30.619019-05	2020-02-24 14:42:30.619019-05	\N	214000000	The Tiger-Patterned Vaisravana - Touhou 12: Undefined Fantastic Object	youtube	f
zSR9lupZVNo	2020-02-24 15:05:07.937857-05	2020-02-24 15:05:07.937857-05	\N	204000000	Battle! (Uxie/Mesprit/Azelf) - Pokémon Diamond & Pearl	youtube	f
UeZgPcbC-aE	2020-02-24 15:05:30.414798-05	2020-02-24 15:05:30.414798-05	\N	88000000	Mii Channel Theme but you descend further into oblivion	youtube	f
itz-hi/at-dooms-gate-doom	2020-02-26 18:21:52.223748-05	2020-02-26 18:21:52.223748-05	\N	120096000	At Doom's Gate - Doom	soundcloud	f
3dhlPI9r5KQ	2020-02-24 16:36:36.539534-05	2020-02-24 16:36:36.539534-05	\N	274000000	【公式】【東方Vocal】少女フラクタル / 不可測的メトロポリス【FullMV】（原曲：ビーストメトロポリス）	youtube	t
zOmbs-UMwx0	2020-02-24 16:41:36.993156-05	2020-02-24 16:41:36.993156-05	\N	254000000	【東方ヴォーカルPV】有頂天ドリーマーズ【森羅万象公式】	youtube	t
ibRNgo2Qhug	2020-02-24 16:46:48.968579-05	2020-02-24 16:46:48.968579-05	\N	262000000	【公式】【東方Vocal】少女フラクタル / 夢色プレリュード【FullMV】(原曲：セラフィックチキン)	youtube	t
eHcHjcV8SNY	2020-02-24 16:52:44.781799-05	2020-02-24 16:52:44.781799-05	\N	293000000	【東方ヴォーカルPV】無意識レクイエム 【森羅万象公式】※閲覧注意	youtube	t
ZSubhUiNg3w	2020-02-24 17:07:29.786648-05	2020-02-24 17:07:29.786648-05	\N	536000000	【東方ヴォーカルPV】First Memory/Next Memory【暁Records公式】	youtube	t
jO2_3pVd5k0	2020-02-24 17:21:17.881807-05	2020-02-24 17:21:17.881807-05	\N	216000000	Panic! At The Disco: This Is Gospel (Piano Version)	youtube	t
j9demg_WFg8	2020-02-24 20:02:30.562955-05	2020-02-24 20:02:30.562955-05	\N	33000000	Here comes pacman but pacman voice is normal,the voices of that guys is in helium	youtube	t
NFxtE-6m9i4	2020-02-24 20:03:39.429762-05	2020-02-24 20:03:39.429762-05	\N	36000000	Here comes pacman live	youtube	t
s9F0J29geoM	2020-02-24 20:05:18.550919-05	2020-02-24 20:05:18.550919-05	\N	349000000	Meme Impala - The More I Mash the Better	youtube	t
tyneiz9FRMw	2020-02-24 20:06:19.864849-05	2020-02-24 20:06:19.864849-05	\N	301000000	アカリがやってきたぞっ	youtube	t
FeChyDhuqPQ	2020-02-24 20:07:57.46334-05	2020-02-24 20:07:57.46334-05	\N	203000000	Neil Cicierega - Who (Music Video)	youtube	t
BpHSm0KcW7o	2020-02-24 21:17:36.534569-05	2020-02-24 21:17:36.534569-05	\N	258000000	Raise your Kappa! (Forsen edition, cancer music)	youtube	f
lZ84crMLmsA	2020-02-24 21:24:33.010775-05	2020-02-24 21:24:33.010775-05	\N	170000000	リズムがない	youtube	t
Pm1SBkFaTL8	2020-02-24 21:25:59.487027-05	2020-02-24 21:25:59.487027-05	\N	166000000	ファビュラス	youtube	t
4f-cdU7vUn4	2020-02-24 21:28:39.96977-05	2020-02-24 21:28:39.96977-05	\N	126000000	カモノハシに支配されてる	youtube	t
WIopr3GAqP0	2020-02-24 21:29:47.163306-05	2020-02-24 21:29:47.163306-05	\N	57000000	フィニアスとファーブ　OP　歌詞つき	youtube	t
oRa_c9zfZh0	2020-02-24 21:34:11.827403-05	2020-02-24 21:34:11.827403-05	\N	319000000	SICKO BAMBA	youtube	f
XcrBNBF6SDs	2020-02-24 21:34:50.911173-05	2020-02-24 21:34:50.911173-05	\N	108000000	パンツにリスがいるんだよ	youtube	t
qzSpqKWkICE	2020-02-25 01:44:11.658674-05	2020-02-25 01:44:11.658674-05	\N	221000000	G-Friend (여자친구) - Me Gustas Tu (오늘부터 우리는) (Color Coded Han|Rom|Eng Lyrics) | by YankaT	youtube	t
HiEmCTpkc9s	2020-02-25 01:52:04.193088-05	2020-02-25 01:52:04.193088-05	\N	249000000	Mope in the Nexus - Promare vs. Bloodhound Gang	youtube	f
6lIqNjC1RKU	2020-02-25 17:02:19.929507-05	2020-02-25 17:02:19.929507-05	\N	250000000	Killer Mike - "Reagan" (Official Music Video)	youtube	t
mjd5fSPjZLQ	2020-02-25 17:24:05.58524-05	2020-02-25 17:24:05.58524-05	\N	158000000	JPEGMAFIA - Jesus Forgive Me, I Am A Thot	youtube	f
alyssa-nicole-mcdevitt/the-greatest-reggaeton	2020-02-25 17:25:01.009774-05	2020-02-25 17:25:01.009774-05	\N	16197000	The Greatest Reggaeton	soundcloud	f
seal_of_approval/despacito	2020-02-25 17:26:01.553404-05	2020-02-25 17:26:01.553404-05	\N	186427000	despacito	soundcloud	f
7gKfQkAXzO8	2020-02-25 17:46:11.284335-05	2020-02-25 17:46:11.284335-05	\N	62000000	Super Mario Bros. Music - Underwater	youtube	f
GqT5shNfTk0	2020-02-25 17:46:48.808201-05	2020-02-25 17:46:48.808201-05	\N	90000000	Overworld - Super Mario Bros. 2	youtube	f
0Rm5JXTdZlg	2020-02-25 17:48:10.42026-05	2020-02-25 17:48:10.42026-05	\N	66000000	Above Ground BGM - Super Mario Bros. 3	youtube	f
WT5nfQJP40Y	2020-02-25 17:48:53.93247-05	2020-02-25 17:48:53.93247-05	\N	76000000	Athletic BGM - Super Mario Bros. 3	youtube	f
E3HGRbq2FCE	2020-02-25 17:49:44.264012-05	2020-02-25 17:49:44.264012-05	\N	67000000	Underwater Theme - Super Mario Bros 3	youtube	f
qEpaZR2Dvlg	2020-02-25 17:51:05.36749-05	2020-02-25 17:51:05.36749-05	\N	92000000	Title Theme - Super Mario World	youtube	f
kVn8KwTrT3o	2020-02-25 17:52:11.23025-05	2020-02-25 17:52:11.23025-05	\N	34000000	Donut Plains - Super Mario World	youtube	f
rEcOzjg7vBU	2020-02-25 17:53:37.320493-05	2020-02-25 17:53:37.320493-05	\N	107000000	Athletic Theme (PAL Version) - Super Mario World	youtube	f
tAaGKo4XVvM	2020-02-25 17:54:18.365936-05	2020-02-25 17:54:18.365936-05	\N	182000000	Overworld Theme - Super Mario: World	youtube	f
OcSv2wJGQy8	2020-02-25 17:55:46.183976-05	2020-02-25 17:55:46.183976-05	\N	169000000	Athletic Theme - Super Mario World | Super Smash Bros. Ultimate	youtube	f
-GK41pLUuP0	2020-02-25 17:58:50.671672-05	2020-02-25 17:58:50.671672-05	\N	181000000	Overworld Theme - New Super Mario Bros.	youtube	f
6rvMRbcqTfk	2020-02-25 17:59:45.672841-05	2020-02-25 17:59:45.672841-05	\N	155000000	Athletic Theme - New Super Mario Bros.	youtube	f
wLg8oUE4H9E	2020-02-25 18:03:32.073587-05	2020-02-25 18:03:32.073587-05	\N	180000000	Overworld Theme - New Super Mario Bros. Wii	youtube	f
xsp3nhSzdVQ	2020-02-25 18:33:04.861714-05	2020-02-25 18:33:04.861714-05	\N	121000000	Last Surprise - Otamatone Cover	youtube	t
fU3jfk-O7L0	2020-02-25 19:07:47.966226-05	2020-02-25 19:07:47.966226-05	\N	129000000	SPICETALE	youtube	t
2PlZGCMD_VM	2020-02-25 21:43:35.427452-05	2020-02-25 21:43:35.427452-05	\N	5473000000	Rihanna, Ed Sheeran, Katy Perry, Maroon 5, Bruno mars, Charlie Puth, Sam Smith | Pop Hits 2019	youtube	f
7w4Udbys4O4	2020-02-25 21:51:15.278935-05	2020-02-25 21:51:15.278935-05	\N	186000000	Sabrina Carpenter - Sue Me	youtube	f
YmInQy4TZyk	2020-02-25 21:51:58.548951-05	2020-02-25 21:51:58.548951-05	\N	189000000	COIN | Talk Too Much  (lyrics)	youtube	f
k5C1Bt4k-iA	2020-02-25 21:52:26.758894-05	2020-02-25 21:52:26.758894-05	\N	204000000	Saint Motel -  My Type	youtube	f
8twpQTna_9w	2020-02-25 21:53:03.814228-05	2020-02-25 21:53:03.814228-05	\N	207000000	Bleachers - I Wanna Get Better (Official Audio)	youtube	f
e5Pc4EX_AR4	2020-02-25 21:53:34.871186-05	2020-02-25 21:53:34.871186-05	\N	263000000	Fall Out Boy: I Wanna Dance With Somebody (Who Loves Me) Cover	youtube	f
X8ZHVLXe45A	2020-02-25 21:53:50.552618-05	2020-02-25 21:53:50.552618-05	\N	196000000	Judah & the Lion - Over my head	youtube	f
UL_EXAyGCkw	2020-02-25 21:54:27.456168-05	2020-02-25 21:54:27.456168-05	\N	219000000	Sheppard - Geronimo	youtube	f
pLieCdRHS6o	2020-02-25 21:54:54.601221-05	2020-02-25 21:54:54.601221-05	\N	217000000	Fitz and the Tantrums - Roll Up [Official Video]	youtube	f
ozEI3dEV95w	2020-02-25 21:55:40.133436-05	2020-02-25 21:55:40.133436-05	\N	173000000	Jon Bellion - Overwhelming	youtube	f
AZ1MdRgU7Hw	2020-02-25 21:56:08.126463-05	2020-02-25 21:56:08.126463-05	\N	181000000	I'm Eighteen	youtube	f
axKguLdeMEY	2020-02-25 21:56:25.916787-05	2020-02-25 21:56:25.916787-05	\N	221000000	Jon Bellion - Woke The F*ck Up (Official Audio)	youtube	f
Jcvi0iHiWnw	2020-02-25 21:57:33.130451-05	2020-02-25 21:57:33.130451-05	\N	136000000	MAX - Checklist (feat. Chromeo) (Official Audio)	youtube	f
s2_YDtKmsVA	2020-02-25 21:58:06.693138-05	2020-02-25 21:58:06.693138-05	\N	210000000	MAX - Gibberish (feat. Hoodie Allen) [Official Music Video - YTMAs]	youtube	f
CJu6Fh1FSEo	2020-02-25 22:00:02.916275-05	2020-02-25 22:00:02.916275-05	\N	206000000	RITA ORA - Poison (Lyric Video)	youtube	f
-wiBRhX_QTU	2020-02-25 22:00:31.912377-05	2020-02-25 22:00:31.912377-05	\N	217000000	BORNS | "Electric Love" (Audio) | Interscope	youtube	f
qAeybdD5UoQ	2020-02-25 22:04:20.72703-05	2020-02-25 22:04:20.72703-05	\N	170000000	Shawn Wasabi - Marble Soda (Original Song)	youtube	f
xof7PkoggbM	2020-02-25 22:04:56.123848-05	2020-02-25 22:04:56.123848-05	\N	146000000	Shawn Wasabi - MARBLE TEA (Official Music Video)	youtube	f
unx9er0sG6o	2020-02-25 22:05:17.795931-05	2020-02-25 22:05:17.795931-05	\N	292000000	Shawn Wasabi - Mac n' Cheese (live mashup)	youtube	f
Cj2eUpt3MVE	2020-02-25 22:05:48.768318-05	2020-02-25 22:05:48.768318-05	\N	194000000	Shawn Wasabi - OTTER POP (ft. Hollis) (Original Song)	youtube	f
GOJTG8E0bwU	2020-02-25 22:08:36.408012-05	2020-02-25 22:08:36.408012-05	\N	260000000	Shawn Wasabi - HOTTO DOGU (live original stuff)	youtube	f
NzGGL0VpKUI	2020-02-25 22:08:57.577516-05	2020-02-25 22:08:57.577516-05	\N	188000000	Shawn Wasabi - SPICY BOYFRIEND (Original Song)	youtube	f
UnyLfqpyi94	2020-02-25 22:12:12.438173-05	2020-02-25 22:12:12.438173-05	\N	212000000	AJR - Burn The House Down [Official Video]	youtube	f
JwB-iVAfnMo	2020-02-25 22:12:47.27558-05	2020-02-25 22:12:47.27558-05	\N	215000000	Tongue Tied by Grouplove	youtube	f
TJGaG6q_TDo	2020-02-25 22:13:05.01342-05	2020-02-25 22:13:05.01342-05	\N	186000000	Marshmello x YUNGBLUD x blackbear - Tongue Tied (Official Lyric Video)	youtube	f
ALZHF5UqnU4	2020-02-25 22:14:45.821631-05	2020-02-25 22:14:45.821631-05	\N	200000000	Marshmello - Alone (Official Music Video)	youtube	f
JePnQ1gSagc	2020-02-25 22:15:42.43364-05	2020-02-25 22:15:42.43364-05	\N	228000000	Marshmello - Together (Official Music Video)	youtube	f
lPDw1QexVy4	2020-02-25 22:16:39.692633-05	2020-02-25 22:16:39.692633-05	\N	253000000	Marshmello - Rescue Me ft. A Day To Remember (Official Music Video)	youtube	f
cycUHgg0zzU	2020-02-25 22:25:50.252947-05	2020-02-25 22:25:50.252947-05	\N	250000000	Logic - 1-800-273-8255 ft. Alessia Cara & Khalid (Official Audio)	youtube	f
x3bfa3DZ8JM	2020-02-25 22:27:20.442675-05	2020-02-25 22:27:20.442675-05	\N	251000000	Khalid - Better (Official Video)	youtube	f
hE2Ira-Cwxo	2020-02-25 22:27:44.323033-05	2020-02-25 22:27:44.323033-05	\N	193000000	Khalid - Talk (Official Video)	youtube	f
IPfJnp1guPc	2020-02-25 22:27:54.298025-05	2020-02-25 22:27:54.298025-05	\N	247000000	Khalid - Young Dumb & Broke (Official Music Video)	youtube	f
V1Pl8CzNzCw	2020-02-25 22:28:35.783729-05	2020-02-25 22:28:35.783729-05	\N	201000000	Billie Eilish, Khalid - lovely	youtube	f
tk36ovCMsU8	2020-02-25 22:29:19.385688-05	2020-02-25 22:29:19.385688-05	\N	187000000	Marshmello ft. Khalid - Silence (Official Lyric Video)	youtube	f
by3yRdlQvzs	2020-02-25 22:37:00.790628-05	2020-02-25 22:37:00.790628-05	\N	222000000	Khalid - Location (Official Music Video)	youtube	f
ApXoWvfEYVU	2020-02-25 22:38:26.908875-05	2020-02-25 22:38:26.908875-05	\N	162000000	Post Malone, Swae Lee - Sunflower (Spider-Man: Into the Spider-Verse)	youtube	f
1egwdCGi_dA	2020-02-25 22:39:11.239836-05	2020-02-25 22:39:11.239836-05	\N	155000000	Vampire Weekend - Hold You Now (Official Audio) ft. Danielle Haim	youtube	f
IlkTVMMkCP4	2020-02-25 22:39:35.728488-05	2020-02-25 22:39:35.728488-05	\N	318000000	Vampire Weekend - Harmony Hall (Official Video)	youtube	f
KIGNNOZ0948	2020-02-25 22:41:04.787051-05	2020-02-25 22:41:04.787051-05	\N	269000000	Vampire Weekend - This Life (Official Audio)	youtube	t
Un1ik6U-gmQ	2020-02-25 22:41:53.67655-05	2020-02-25 22:41:53.67655-05	\N	213000000	Vampire Weekend - How Long? (Official Audio)	youtube	f
R76f5AzYJK0	2020-02-25 22:43:02.432547-05	2020-02-25 22:43:02.432547-05	\N	138000000	Vampire Weekend - Sunflower ft. Steve Lacy (Official Audio)	youtube	f
uxgGmqyHEqk	2020-02-25 22:43:42.547745-05	2020-02-25 22:43:42.547745-05	\N	239000000	Vampire Weekend - Flower Moon (Official Audio) ft. Steve Lacy	youtube	f
Yqw4ZeEAEJI	2020-02-25 22:44:59.480699-05	2020-02-25 22:44:59.480699-05	\N	176000000	Vampire Weekend - Jerusalem, New York, Berlin (Official Audio)	youtube	f
P_i1xk07o4g	2020-02-25 22:45:57.023308-05	2020-02-25 22:45:57.023308-05	\N	219000000	Vampire Weekend - Oxford Comma	youtube	f
_XC2mqcMMGQ	2020-02-25 22:46:49.142253-05	2020-02-25 22:46:49.142253-05	\N	141000000	Vampire Weekend - A-Punk	youtube	f
eOIkmOkNo9s	2020-02-25 23:10:44.914631-05	2020-02-25 23:10:44.914631-05	\N	7000000	4WD	youtube	f
GFsy4ZXpRM0	2020-02-25 23:14:00.141468-05	2020-02-25 23:14:00.141468-05	\N	196000000	James Acaster - Pancake day!	youtube	t
gxRD3wgOgjA	2020-02-25 23:29:39.405422-05	2020-02-25 23:29:39.405422-05	\N	955000000	SpongeBob Band Geeks Reanimated Collab	youtube	t
OFDKTZo0IHM	2020-02-25 23:35:37.994654-05	2020-02-25 23:35:37.994654-05	\N	25000000	Main Theme - Bill Clinton	youtube	f
W_xjgL3Hx6c	2020-02-25 23:47:22.017431-05	2020-02-25 23:47:22.017431-05	\N	31000000	zora gets nerfed to jojo music	youtube	t
TSJg22M34tI	2020-02-25 23:53:56.202207-05	2020-02-25 23:53:56.202207-05	\N	6000000	Eggman has his own announcement	youtube	t
ts5af0aFcuw	2020-02-25 23:56:24.05961-05	2020-02-25 23:56:24.05961-05	\N	73000000	Doug Dimmadome, Owner of the Dimmsdale Dimmadome but Timmy Turner can't get his name right	youtube	t
cTi_KmWYE4E	2020-02-25 23:56:48.352325-05	2020-02-25 23:56:48.352325-05	\N	55000000	覚悟して	youtube	t
cZvfCYZUmLQ	2020-02-25 23:57:57.390851-05	2020-02-25 23:57:57.390851-05	\N	206000000	君はこころの友	youtube	t
oy8kRRuA-Mg	2020-02-25 23:58:56.514676-05	2020-02-25 23:58:56.514676-05	\N	6000000	Baljeet Is Tech Support (Phineas And Ferb Meme)	youtube	t
m9nlOXaHWYQ	2020-02-25 23:59:49.051017-05	2020-02-25 23:59:49.051017-05	\N	326000000	Top 10 Best Pokémon (Official)	youtube	t
dTd6uUBr8JU	2020-02-26 00:03:10.382293-05	2020-02-26 00:03:10.382293-05	\N	128000000	悪は成績のため	youtube	t
Nt5AuDn6BwE	2020-02-26 00:04:53.641764-05	2020-02-26 00:04:53.641764-05	\N	56000000	Phineas and Ferb - Theme song (Latin Spanish)	youtube	t
bCh64eAlDjE	2020-02-26 00:09:33.720052-05	2020-02-26 00:09:33.720052-05	\N	95000000	そう武器だー	youtube	t
mykKT3We5Mo	2020-02-26 00:11:52.978428-05	2020-02-26 00:11:52.978428-05	\N	56000000	フィニアスとファーブ　OP	youtube	t
Ryq9_r0zTTk	2020-02-26 00:15:59.792151-05	2020-02-26 00:15:59.792151-05	\N	187000000	Put Luigi in Smash	youtube	t
OmX4UPiVS-w	2020-02-26 00:16:41.248667-05	2020-02-26 00:16:41.248667-05	\N	230000000	100 gecs - ringtone (remix) [feat. Charli XCX, Rico Nasty, Kero Kero Bonito]  {VISUALIZER}	youtube	t
beQMZ9-Ovs4	2020-02-26 00:56:53.904039-05	2020-02-26 00:56:53.904039-05	\N	63000000	top 5 bruh moments	youtube	t
lY_KORpQPdI	2020-02-26 14:04:34.505414-05	2020-02-26 14:04:34.505414-05	\N	248000000	Reisen's Theme - Lunatic Eyes ~ Invisible Full Moon	youtube	f
24oZx-MTy68	2020-02-26 14:54:15.12897-05	2020-02-26 14:54:15.12897-05	\N	441000000	【東方Vocal】 Shining Needle 「Hero of Justice」 「Diao ye zong」 【Subbed】	youtube	f
ExK0bK-HKp4	2020-02-26 15:02:35.002626-05	2020-02-26 15:02:35.002626-05	\N	500000000	【東方ボーカル】 【凋叶棕】 うつろわざるもの　～True Conclusion	youtube	f
syaSQja8TEQ	2020-02-26 15:41:02.272911-05	2020-02-26 15:41:02.272911-05	\N	344000000	【東方ボーカル】 「四番目物： 奈落唱」 【凋叶棕】 【Subbed】	youtube	t
EvxeYYCbR74	2020-02-26 15:52:29.557434-05	2020-02-26 15:52:29.557434-05	\N	262000000	【東方Vocal／Rock】 UNDERWORLD GATE 「SOUND HOLIC」	youtube	f
xlXcvM20xak	2020-02-26 15:55:21.726396-05	2020-02-26 15:55:21.726396-05	\N	314000000	【東方ボーカル】 「NUCLEAR PHOENIX」 【SOUND HOLIC】	youtube	f
Iy7zJFNGLQk	2020-02-26 15:55:52.601473-05	2020-02-26 15:55:52.601473-05	\N	209000000	【東方Piano】 ピアノソナタ第00番 -蓬莱- 「SOUND HOLIC」	youtube	f
4jfObTSpYDM	2020-02-26 16:04:03.881525-05	2020-02-26 16:04:03.881525-05	\N	35000000	Bob esponja con el marcianito 100% real no fake	youtube	t
FYYDOFwUwzU	2020-02-26 16:04:34.832965-05	2020-02-26 16:04:34.832965-05	\N	126000000	UN SHO MAS  La cumbia del marcianito 100%real no fake	youtube	t
pFYp6GWfj2k	2020-02-26 16:06:01.88754-05	2020-02-26 16:06:01.88754-05	\N	227000000	【東方Vocal／Metal】 SOUL REVERSER 「SOUND HOLIC」	youtube	f
qGWCwsDjy9g	2020-02-26 16:15:41.382823-05	2020-02-26 16:15:41.382823-05	\N	46000000	El Marcianito 100% Real No Fake Tocado En Un Teclado De $2 USD	youtube	t
giaqlsHUK2s	2020-02-26 16:16:04.096199-05	2020-02-26 16:16:04.096199-05	\N	258000000	【東方ボーカル】 「THE MISSING WORLD」 【SOUND HOLIC】	youtube	f
QDBkA44lDnI	2020-02-26 16:18:27.742055-05	2020-02-26 16:18:27.742055-05	\N	72000000	Marcianito 100% Real No Fake en Los Simpsons	youtube	t
4AYBDdepQ9Q	2020-02-26 16:22:15.293262-05	2020-02-26 16:22:15.293262-05	\N	260000000	【東方Vocal／Digi Rock】 MAHOROBAGRAPHIE 「SOUND HOLIC」	youtube	f
zlGS7-TmhWo	2020-02-26 16:27:47.397864-05	2020-02-26 16:27:47.397864-05	\N	299000000	【東方ボーカル】 「psychedelic psychologic」 【SOUND HOLIC】	youtube	f
FVovq9TGBw0	2020-02-26 16:26:43.563718-05	2020-02-26 16:26:43.563718-05	\N	250000000	OZZY OSBOURNE - "Crazy Train" (Official Video)	youtube	t
KcI_ssZOqJU	2020-02-26 16:35:18.022435-05	2020-02-26 16:35:18.022435-05	\N	238000000	【東方永夜抄】 SIREN「SOUND HOLIC」【Vietsub／Engsub】	youtube	t
irEZQSH6KWQ	2020-02-26 16:45:09.317128-05	2020-02-26 16:45:09.317128-05	\N	291000000	【東方ボーカル】 「LIGHT OF DESIRE」 【SOUND HOLIC】	youtube	f
Ys2p_bXOaAc	2020-02-26 16:50:38.734439-05	2020-02-26 16:50:38.734439-05	\N	269000000	【東方Vocal／Trance】 WHITE TRAVELER 「SOUND HOLIC」	youtube	f
c4cErkTY9xQ	2020-02-26 16:56:41.151112-05	2020-02-26 16:56:41.151112-05	\N	401000000	Halozy — K.O.K.O.R.O + S.A.T.O.R.A.R.E	youtube	f
dingowalley/blue-creeper	2020-02-26 17:30:01.391707-05	2020-02-26 17:30:01.391707-05	\N	216967000	Blue Creeper	soundcloud	f
lugitaro/play-deltarune-one-more-time	2020-02-26 17:34:37.296964-05	2020-02-26 17:34:37.296964-05	\N	192591000	Play Deltarune One More Time [Field of Hopes and Dreams x Daft Punk]	soundcloud	f
X-4WL6UO6Tc	2020-02-26 18:20:53.909042-05	2020-02-26 18:20:53.909042-05	\N	295000000	【東方ボーカル】 「拝啓、100年後の私に。」 【森羅万象】	youtube	f
daymanoursavior_moved/eminem-is-trying-to-tell-us-something?in=steve-harvey-277342701/sets/bread	2020-02-26 18:25:39.911717-05	2020-02-26 18:25:39.911717-05	\N	22676000	Eminem Is Trying To Tell Us Something	soundcloud	f
thesqrtminus3/doo	2020-02-26 18:26:06.310169-05	2020-02-26 18:26:06.310169-05	\N	132217999	DO	soundcloud	f
yifffcker/it-was-acceptable-in-2008	2020-02-26 18:28:41.205361-05	2020-02-26 18:28:41.205361-05	\N	205576000	it was acceptable in 2008	soundcloud	f
lZKkfTgmHfM	2020-02-26 18:46:26.590721-05	2020-02-26 18:46:26.590721-05	\N	144000000	Complete Darkness (SC-55) - Touhou 2: Story of Eastern Wonderland	youtube	f
trenedey/lil-pulp-fiction	2020-02-26 20:38:28.648253-05	2020-02-26 20:38:28.648253-05	\N	111605000	Lil Pulp Fiction (TODD)	soundcloud	f
Dc1g-zhaZ2g	2020-02-26 21:55:25.17563-05	2020-02-26 21:55:25.17563-05	\N	243000000	WHY YOU ASKING ALL THEM QUESTIONS? By: SpokenReasons & Emmanuel Hudson	youtube	f
nk68vsQMlnc	2020-02-27 00:10:57.32447-05	2020-02-27 00:10:57.32447-05	\N	249000000	Psy vs Ke$ha vs LMFAO vs Big Time Rush	youtube	f
xiFQm80N5ak	2020-02-27 00:11:38.844163-05	2020-02-27 00:11:38.844163-05	\N	196000000	Big Time Rush - City Is Ours (Audio)	youtube	f
roushmiata2/biscuit-eater	2020-02-27 00:12:05.844374-05	2020-02-27 00:12:05.844374-05	\N	241367000	Biscuit Eater	soundcloud	f
VlzbZFCxbP4	2020-02-27 01:12:31.532533-05	2020-02-27 01:12:31.532533-05	\N	105000000	Nunca Me Faltes Japones	youtube	f
93ASUImTedo	2020-02-27 17:23:16.140812-05	2020-02-27 17:23:16.140812-05	\N	257000000	Disclosure - Latch feat. Sam Smith  (Official Video)	youtube	f
2a3vWP9wv30	2020-02-27 17:23:19.267688-05	2020-02-27 17:23:19.267688-05	\N	291000000	【東方ボーカル】 「マヨナカトリップ」 【森羅万象】	youtube	f
u6fCqtrF3ic	2020-02-27 19:17:26.156744-05	2020-02-27 19:17:26.156744-05	\N	255000000	【東方ボーカル】 C-CLAYS - UKIYO	youtube	f
hPhpyNN0548	2020-02-27 19:26:38.88191-05	2020-02-27 19:26:38.88191-05	\N	332000000	【東方ボーカル】 「Marks of Sin」 【凋叶棕】	youtube	f
iVvW4SqqXaw	2020-02-27 20:26:08.347933-05	2020-02-27 20:26:08.347933-05	\N	436000000	【東方ボーカル】 「the music I hate」 【凋叶棕】	youtube	f
lIaDtfplmyQ	2020-02-27 22:52:02.188776-05	2020-02-27 22:52:02.188776-05	\N	218000000	Talking to the Moon	youtube	f
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

