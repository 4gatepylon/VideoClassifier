--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;
CREATE ROLE prismriver;
ALTER ROLE prismriver WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'md5e584266e176bc422ee1932a89b32a81b';






--
-- Database creation
--

CREATE DATABASE prismriver WITH TEMPLATE = template0 OWNER = postgres;
GRANT ALL ON DATABASE prismriver TO prismriver;
REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


\connect postgres

SET default_transaction_read_only = off;

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
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- PostgreSQL database dump complete
--

\connect prismriver

SET default_transaction_read_only = off;

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
    type text NOT NULL
);


ALTER TABLE public.media OWNER TO prismriver;

--
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: prismriver
--

COPY public.media (id, created_at, updated_at, deleted_at, length, title, type) FROM stdin;
kJQP7kiw5Fk	2019-01-11 17:31:14.428531-05	2019-01-11 17:31:14.428531-05	\N	282000000000	Luis Fonsi - Despacito ft. Daddy Yankee	youtube
dSy2DcATYUo	2019-01-11 17:59:06.592783-05	2019-01-11 17:59:06.592783-05	\N	204000000000	Mo-Do - Eins Zwei Polizei (Official Video)	youtube
tfrIXiemYqo	2019-01-11 18:00:28.890377-05	2019-01-11 18:00:28.890377-05	\N	399000000000	[Black MIDI] "Tau" τ/6.28 MILLION (6,283,185) ~ HDSQ | Piano from Above	youtube
Aqc3VTpz9HQ	2019-01-11 18:04:59.079883-05	2019-01-11 18:04:59.079883-05	\N	223000000000	You Give Love A Bad Name	youtube
skjwbyJ6Kjg	2019-01-11 18:06:14.635893-05	2019-01-11 18:06:14.635893-05	\N	167000000000	Benjamin Booker - Violent Shiver (AUDIO)	youtube
kR0gOEyK6Tg	2019-01-11 18:07:28.498106-05	2019-01-11 18:07:28.498106-05	\N	223000000000	Neil Cicierega - Crocodile Chop	youtube
mk6lDkTO0Nw	2019-01-11 18:08:22.910963-05	2019-01-11 18:08:22.910963-05	\N	298000000000	Neil Cicierega - Piss	youtube
JIGUHqV-aH8	2019-01-11 18:10:02.789239-05	2019-01-11 18:10:02.789239-05	\N	249000000000	Neil Cicierega - Shit	youtube
ydPYNo8o-lI	2019-01-11 18:16:01.875643-05	2019-01-11 18:16:01.875643-05	\N	251000000000	Imagine Dragons, Khalid - Thunder / Young Dumb & Broke (Medley/Audio)	youtube
wY24RTEmwRM	2019-01-11 18:22:45.413846-05	2019-01-11 18:22:45.413846-05	\N	125000000000	Classic Ocean - Mario Sports Mix	youtube
5mOszRap0Og	2019-01-11 18:24:51.721526-05	2019-01-11 18:24:51.721526-05	\N	82000000000	Chocobo Rhythm - Mario Sports Mix	youtube
W3GrSMYbkBE	2019-01-11 20:45:15.463524-05	2019-01-11 20:45:15.463524-05	\N	124000000000	Despacito 2 (Parody Video)	youtube
Qu_OzBsgRcI	2019-01-11 20:57:04.655991-05	2019-01-11 20:57:04.655991-05	\N	236000000000	【東方Vocal／Electro Pop】 Real or Fake 「ShinRa-Bansho」[JP Subs]	youtube
_qYR55QcBdI	2019-01-11 21:13:47.571404-05	2019-01-11 21:13:47.571404-05	\N	215000000000	【東方Vocal／Metalcore】 Hollow Hope 「Takamachi Walk」【ENG Subs】	youtube
_bBV8nqmPrc	2019-01-11 21:14:16.180577-05	2019-01-11 21:14:16.180577-05	\N	233000000000	かめりあ feat.  ななひら [HD] 「ませまてぃっく♥ま＋ま＝まじっく！ ＬＯＮＧ」	youtube
EOLdgxLX8SE	2019-01-11 21:29:27.889527-05	2019-01-11 21:29:27.889527-05	\N	327000000000	【東方ボーカル】 「ははうさぎ」 【森羅万象】	youtube
bequiet	2019-01-12 00:28:41.230606-05	2019-01-12 00:28:41.230606-05	\N	3710000000	Please Be Quiet!	internal
7KCse6HDu08	2019-01-12 02:39:01.65131-05	2019-01-12 02:39:01.65131-05	\N	231000000000	[Buta-Otome] Fantasy Satellite (spanish & english subtitles)	youtube
C05dv_wFhQo	2019-01-12 02:43:27.032372-05	2019-01-12 02:43:27.032372-05	\N	336000000000	[Touhou Vocal] [TUMENECO] Mugen (spanish & english subtitles)	youtube
3jh63PHA2lE	2019-01-12 02:45:43.835641-05	2019-01-12 02:45:43.835641-05	\N	182000000000	GUMI - Mousou Kajitsu // Fancies Fruit	youtube
R2tyWz-D4Eo	2019-01-12 02:45:58.858886-05	2019-01-12 02:45:58.858886-05	\N	239000000000	[Eng Sub] Moonshine -Tsukiakari- [GUMI]	youtube
QqfFieDY14E	2019-01-12 02:46:15.49288-05	2019-01-12 02:46:15.49288-05	\N	248000000000	Hatsune Miku & GUMI - The Fox's Wedding (狐の嫁入り)	youtube
UC_qla6FQwM	2019-01-12 02:47:13.465358-05	2019-01-12 02:47:13.465358-05	\N	256000000000	[MV] REOL - ヒビカセ / Hibikase	youtube
6HGLeUqoUf8	2019-01-12 02:50:15.460946-05	2019-01-12 02:50:15.460946-05	\N	217000000000	+♂ ver れをる	youtube
p-o_bMkzOW0	2019-01-12 02:50:29.342775-05	2019-01-12 02:50:29.342775-05	\N	205000000000	LUVORATORRRRRY! ver れをる feat.nqrse	youtube
JES55S-l5RM	2019-01-12 02:50:38.346673-05	2019-01-12 02:50:38.346673-05	\N	199000000000	〔れをる〕 一心不乱 〔feat ill.bell,nqrse〕	youtube
lyzQL5EjKhM	2019-01-12 02:55:55.50979-05	2019-01-12 02:55:55.50979-05	\N	345000000000	[Eng Sub] Tokio Funka [GUMI]	youtube
z7aPocCfsI4	2019-01-12 02:55:58.404887-05	2019-01-12 02:55:58.404887-05	\N	218000000000	Gumi, Kagamine Rin - Reincarnation (リンカーネイション)	youtube
vXSpdipuiFs	2019-01-12 02:56:02.02574-05	2019-01-12 02:56:02.02574-05	\N	218000000000	【HD】 インビジブル 【GUMI・鏡音リン】- KEMU VOXX	youtube
UquPv9WpuB4	2019-01-12 02:56:05.209536-05	2019-01-12 02:56:05.209536-05	\N	221000000000	[Official] cosMo＠暴走P/ R.I.P.ゴシップの海 feat.GUMI	youtube
2NkN_QpmnFM	2019-01-12 02:56:15.733873-05	2019-01-12 02:56:15.733873-05	\N	206000000000	【公式】 マネマネサイコトロピック - かいりきベア feat.GUMI	youtube
ccxQO6cMydY	2019-01-12 02:56:22.344712-05	2019-01-12 02:56:22.344712-05	\N	311000000000	Gumi - EAT ME - English/Romaji Sub	youtube
QpTO2PJpyIU	2019-01-12 02:56:25.540327-05	2019-01-12 02:56:25.540327-05	\N	290000000000	OSTER Project feat. GUMI - Mathematics Girl【VOCALOID MMD-PV】	youtube
9n_CTyKwzR8	2019-01-12 02:58:36.495594-05	2019-01-12 02:58:36.495594-05	\N	151000000000	【第10回MMD杯本選】Masked bitcH【モーション配布】	youtube
4Ohpj2GDbRQ	2019-01-12 02:58:39.47093-05	2019-01-12 02:58:39.47093-05	\N	248000000000	【みきとP/ mikitoP】GUMI／「バレリーコ」GUMI	youtube
PzeOSXS171I	2019-01-12 03:01:40.186675-05	2019-01-12 03:01:40.186675-05	\N	255000000000	少女ゼッキョウ。/ GUMI [初産][ver.S-VHS]	youtube
1HLjnNEaD2A	2019-01-12 03:01:43.427464-05	2019-01-12 03:01:43.427464-05	\N	238000000000	【みきとP/ mikitoP】【GUMI・Rin Kagamine／鏡音リン】12funclub／いーあるふぁんくらぶ	youtube
V8sM-xsxTgM	2019-01-12 03:01:48.532004-05	2019-01-12 03:01:48.532004-05	\N	264000000000	【GUMI】 The Magic of Massacre 【UtsuP】【オリジナルMV】	youtube
XI8SE48UO4o	2019-01-12 03:03:28.287204-05	2019-01-12 03:03:28.287204-05	\N	291000000000	Gumi - On an Empty Morning (何でもない朝に) English Sub	youtube
qnX2CdOBcDI	2019-01-12 03:03:39.280978-05	2019-01-12 03:03:39.280978-05	\N	210000000000	ハチ MV「ドーナツホール」HACHI / DONUT HOLE	youtube
Jq56fg3Hd6E	2019-01-12 03:03:43.850565-05	2019-01-12 03:03:43.850565-05	\N	213000000000	Mop Heroism - Gumi	youtube
TKddYUauh0Y	2019-01-12 03:03:47.478887-05	2019-01-12 03:03:47.478887-05	\N	300000000000	【VOCALOID】デカフェガール【GUMI】	youtube
Vwz8qnsWJaA	2019-01-12 03:03:53.418733-05	2019-01-12 03:03:53.418733-05	\N	256000000000	Ayalis - Ai o Chikaishi Hime Kazari	youtube
KAZrYGGOyqU	2019-01-12 03:04:00.085202-05	2019-01-12 03:04:00.085202-05	\N	224000000000	Gumi - Twilight Ticket (黄昏切符)	youtube
AcN-f6hK7DE	2019-01-12 03:04:04.443976-05	2019-01-12 03:04:04.443976-05	\N	260000000000	GUMI - Everyone's Selfish (NfN) English/Romaji Sub	youtube
3Mo1sEJN47c	2019-01-12 13:35:40.622449-05	2019-01-12 13:35:40.622449-05	\N	226000000000	Undead Corporation - 紅染の鬼が哭く - Yoru Naku Usagi wa Yume wo Miru [192kpbs]	youtube
dory2tga9WU	2019-01-12 13:37:29.641823-05	2019-01-12 13:37:29.641823-05	\N	318000000000	【東方Vocal／Electronic】 Retrospective of Oblivion 「Yuuhei Satellite」	youtube
sKk2GxvO9NA	2019-01-12 13:38:54.691509-05	2019-01-12 13:38:54.691509-05	\N	242000000000	Camellia feat. kradness, Nanahira and yukacco - Mazare Party	youtube
cMiEgWG9Hk0	2019-01-12 13:39:57.736822-05	2019-01-12 13:39:57.736822-05	\N	251000000000	【東方Vocal／Rock】 さかさまレジスタンス 「Shinra-Bansho」	youtube
4O3xPxwaj7k	2019-01-12 13:41:17.613152-05	2019-01-12 13:41:17.613152-05	\N	286000000000	【東方ボーカル】 「狂響のフォーチュネットポルカ」 【森羅万象】 【Subbed】	youtube
qziK5Z6RhQk	2019-01-12 13:42:19.533804-05	2019-01-12 13:42:19.533804-05	\N	296000000000	【東方Vocal／Electro Rock】 HEAVENLY NOTE 「SOUND HOLIC」	youtube
LyuB6PWUPz8	2019-01-12 13:44:28.70477-05	2019-01-12 13:44:28.70477-05	\N	287000000000	【東方Vocal／Eurobeat】 WANNA BE CRAZY PRINCESS 「SOUND HOLIC」	youtube
QjzhZKNOuLU	2019-01-12 13:45:04.790698-05	2019-01-12 13:45:04.790698-05	\N	265000000000	【東方Nu Metal】 LITTLE RESISTANCE 「SOUND HOLIC」	youtube
B2hrIbUy9bk	2019-01-12 13:45:29.263017-05	2019-01-12 13:45:29.263017-05	\N	311000000000	【東方Vocal／Eurobeat】 GUERRILLA GAME 「SOUND HOLIC」	youtube
pFYp6GWfj2k	2019-01-12 13:45:36.326279-05	2019-01-12 13:45:36.326279-05	\N	227000000000	【東方Vocal／Metal】 SOUL REVERSER 「SOUND HOLIC」	youtube
62lpLoCX4aI	2019-01-12 13:45:43.564034-05	2019-01-12 13:45:43.564034-05	\N	341000000000	【東方Vocal／Eurobeat】 Drive Your Fire 「A-ONE」【JPN Subtitle】	youtube
q2iuL9-uV3g	2019-01-12 13:46:39.419874-05	2019-01-12 13:46:39.419874-05	\N	233000000000	【東方Vocal／Jazz Rock】 CRYSTALLIZED 「SOUND HOLIC」	youtube
nOjzHfdkMzU	2019-01-12 13:54:32.971752-05	2019-01-12 13:54:32.971752-05	\N	240000000000	【東方ボーカル】 「DOUBLE WINGS」 【SOUND HOLIC】	youtube
1_D7kiOR9fA	2019-01-12 13:54:42.452484-05	2019-01-12 13:54:42.452484-05	\N	440000000000	【東方Vocal／Traditional Rock】 「心綺楼」 「凋叶棕」 【ENG Subs】	youtube
4AYBDdepQ9Q	2019-01-12 13:55:01.149859-05	2019-01-12 13:55:01.149859-05	\N	260000000000	【東方Vocal／Digi Rock】 MAHOROBAGRAPHIE 「SOUND HOLIC」	youtube
zc-U1vbhx2U	2019-01-12 13:59:55.823631-05	2019-01-12 13:59:55.823631-05	\N	253000000000	【東方ボーカル】 「廃獄ドリームランド」 【SOUND HOLIC】	youtube
mj-v6zCnEaw	2019-01-12 15:09:09.539771-05	2019-01-12 15:09:09.539771-05	\N	368000000000	NOMA - Brain Power	youtube
hjGZLnja1o8	2019-01-12 15:17:20.68768-05	2019-01-12 15:17:20.68768-05	\N	147000000000	Nightcore - Rockefeller Street	youtube
atuFSv2bLa8	2019-01-12 15:17:28.291015-05	2019-01-12 15:17:28.291015-05	\N	272000000000	Manuel - Gas Gas Gas	youtube
SRbhLtjOiRc	2019-01-12 15:17:36.408447-05	2019-01-12 15:17:36.408447-05	\N	317000000000	Initial D - Night Of Fire	youtube
hpIdjzfx-Dk	2019-01-12 15:17:56.556498-05	2019-01-12 15:17:56.556498-05	\N	216000000000	【東方Vocal】 Amanojaku 「Yuuhei Satellite」	youtube
hph_SaFbC1o	2019-01-12 15:19:18.158001-05	2019-01-12 15:19:18.158001-05	\N	248000000000	【東方Vocal／Rock】 アンプリファイア 「Yuuhei Satellite」	youtube
XCiDuy4mrWU	2019-01-12 15:19:41.592464-05	2019-01-12 15:19:41.592464-05	\N	285000000000	Initial D - Running in The 90s	youtube
ZbuXJvvjBi4	2019-01-12 15:19:57.846446-05	2019-01-12 15:19:57.846446-05	\N	252000000000	Initial D 5th Stage Soundtrack - Speedy Runner	youtube
NkM_1G6KviU	2019-01-12 15:20:51.189411-05	2019-01-12 15:20:51.189411-05	\N	260000000000	Initial D 5th Stage Soundtrack - I Won't Fall Apart	youtube
dK36vthr32M	2019-01-12 15:20:57.082813-05	2019-01-12 15:20:57.082813-05	\N	244000000000	Hotblade - Manifold Love (High Quality Audio)	youtube
omNhsOZVqHY	2019-01-12 15:21:17.605007-05	2019-01-12 15:21:17.605007-05	\N	313000000000	【東方ボーカル】 「ハイペリオン」 【幽閉サテライト】	youtube
3hDrIStazPw	2019-01-12 15:21:50.972024-05	2019-01-12 15:21:50.972024-05	\N	291000000000	【東方ボーカル】 「Lunatic Kaleidoscope」 【GET IN THE RING】	youtube
GJlGYmPAV3Q	2019-01-12 15:25:38.95828-05	2019-01-12 15:25:38.95828-05	\N	190000000000	Alison Wonderland - Church	youtube
I6KF0PwjSjM	2019-01-12 15:26:03.302739-05	2019-01-12 15:26:03.302739-05	\N	177000000000	Alison Wonderland - High ft. Trippie Redd	youtube
PiDB4L-m6FQ	2019-01-12 15:26:19.23347-05	2019-01-12 15:26:19.23347-05	\N	221000000000	Alison Wonderland - Cry (Rynx Remix)	youtube
F5MMV5qULV0	2019-01-12 15:26:42.866538-05	2019-01-12 15:26:42.866538-05	\N	245000000000	Alison Wonderland - U Don't Know ft. Wayne Coyne	youtube
YLCm9lP-3Uk	2019-01-12 15:26:53.53335-05	2019-01-12 15:26:53.53335-05	\N	213000000000	Alison Wonderland - I Want U (Official Video)	youtube
SqNlLDeZcSc	2019-01-12 15:27:04.893144-05	2019-01-12 15:27:04.893144-05	\N	233000000000	Alison Wonderland - Easy	youtube
Qc-aNL6egpY	2019-01-12 15:27:13.710428-05	2019-01-12 15:27:13.710428-05	\N	220000000000	Alison Wonderland - Run (Official Video)	youtube
16UGgYekYl0	2019-01-12 15:27:21.988646-05	2019-01-12 15:27:21.988646-05	\N	242000000000	Alison Wonderland - No (Audio)	youtube
iyyU7e2JgUc	2019-01-12 15:27:28.75366-05	2019-01-12 15:27:28.75366-05	\N	202000000000	Alison Wonderland & SLUMBERJACK - Sometimes Love	youtube
So54Khf7bB8	2019-01-12 15:30:06.216762-05	2019-01-12 15:30:06.216762-05	\N	292000000000	Jojo´s Bizarre Adventure Golden Wind- Giorno theme	youtube
rGfAyOFUdEY	2019-01-12 15:30:30.891162-05	2019-01-12 15:30:30.891162-05	\N	285000000000	Невероятные Приключения ДжоДжо Часть 5: Золотой Ветер OP - Fighting Gold / Coda [Full] Rus sub	youtube
MVishyl483A	2019-01-12 15:33:49.253377-05	2019-01-12 15:33:49.253377-05	\N	141000000000	Невероятные Приключения ДжоДжо : Золотой Ветер OST - Canzoni Preferite	youtube
NFjE5A4UAJI	2019-01-12 16:04:33.928098-05	2019-01-12 16:04:33.928098-05	\N	308000000000	JoJo's Bizarre Adventure: Stardust Crusaders OST - Stardust Crusaders	youtube
rY-FJvRqK0E	2019-01-12 19:11:40.490617-05	2019-01-12 19:11:40.490617-05	\N	197000000000	Kero Kero Bonito - Flamingo	youtube
3Gz5pNLQAGg	2019-01-12 20:28:43.371041-05	2019-01-12 20:28:43.371041-05	\N	209000000000	【東方Vocal／Eurobeat】 PRESERVED VAMPIRE 「SOUND HOLIC」 【Subbed】	youtube
2de2MHIzNbg	2019-01-12 20:36:02.26096-05	2019-01-12 20:36:02.26096-05	\N	340000000000	【東方ボーカル】 「MyonMyonMyonMyonMyonMyon!」 【ShibayanRecords】【Subbed】	youtube
rBDe8R0MoMk	2019-01-12 20:36:34.229731-05	2019-01-12 20:36:34.229731-05	\N	505000000000	【東方Vocal】・－・・ －－－ ・・・－ ・（Love）「ShibayanRecords」	youtube
JwWMpspzcg8	2019-01-12 20:37:35.027174-05	2019-01-12 20:37:35.027174-05	\N	563000000000	【東方ボーカル】 「Fall In The Dark」 【ShibayanRecords】【Subbed】	youtube
n-Eq5hehTNE	2019-01-12 20:38:45.224098-05	2019-01-12 20:38:45.224098-05	\N	378000000000	[Touhou] [Halozy] Monosugoi Space Shuttle de Koishi ga Monosugoi uta (spanish & english subtitles)	youtube
Pywx3APwEBw	2019-01-12 20:40:15.129152-05	2019-01-12 20:40:15.129152-05	\N	290000000000	【東方Vocal／House】 Letter By Letter 「Alstroemeria Records」	youtube
YIC1aK6CleE	2019-01-12 20:45:25.831142-05	2019-01-12 20:45:25.831142-05	\N	260000000000	Sabrepulse - Close To Me (HD)	youtube
65uNCLBTje0	2019-01-12 20:45:43.91055-05	2019-01-12 20:45:43.91055-05	\N	45000000000	Super Mario Brothers Super Show Credits - Do the Mario!	youtube
-2bhsVv4mKI	2019-01-13 03:56:54.178642-05	2019-01-13 03:56:54.178642-05	\N	217000000000	【Amateras Records】 「Hotaru」 Indomitable Spirit	youtube
aGjF8qWrJog	2019-01-13 03:59:05.692205-05	2019-01-13 03:59:05.692205-05	\N	243000000000	【東方ボーカル】 New World [Eris's Full of Stars mix] 【FELT】	youtube
pWVrb1WjoxU	2019-01-13 13:18:57.016806-05	2019-01-13 13:18:57.016806-05	\N	125000000000	ぺのれり - Baby Sherry	youtube
GzM-hwpQ-jk	2019-01-13 13:19:00.877258-05	2019-01-13 13:19:00.877258-05	\N	264000000000	Zenmai Koi Tokei (T.E.B Summer Mix) 【Touhou Eurobeat】	youtube
bCvh-_m7vj0	2019-01-13 13:19:03.943788-05	2019-01-13 13:19:03.943788-05	\N	208000000000	Reol - Gigantic O.T.N -Big Death Edition-	youtube
LkkwnihziP0	2019-01-14 00:36:14.461254-05	2019-01-14 00:36:14.461254-05	\N	376000000000	【東方萃夢想】絶対的一方通行　～ Unreachable Message  『凋叶棕』【Subbed】	youtube
KjGZ-a5eJOo	2019-01-14 00:37:58.47167-05	2019-01-14 00:37:58.47167-05	\N	370000000000	【東方Vocal／Acoustic Rock】 空に近い場所 「凋叶棕」	youtube
bmQpC7Gmdl0	2019-01-14 00:38:12.92951-05	2019-01-14 00:38:12.92951-05	\N	343000000000	【東方Vocal／Rock】 嘔吐、又。 「凋叶棕」【Subbed】	youtube
Nsdy1oKDy8w	2019-01-14 00:38:40.793609-05	2019-01-14 00:38:40.793609-05	\N	340000000000	【東方Vocal／Rock】 ―丑の三つ―　オールド・モチーフ 「凋叶棕」	youtube
naHcJ4R_McA	2019-01-14 00:38:53.59936-05	2019-01-14 00:38:53.59936-05	\N	340000000000	[Touhou Vocal] [RD-Sounds] left behind (spanish & english subtitles)	youtube
dIn13M4W6Uo	2019-01-14 00:44:02.973806-05	2019-01-14 00:44:02.973806-05	\N	398000000000	【東方ボーカル】 「タイド・コラプション」 【凋叶棕】	youtube
3yKdxLuat6A	2019-01-14 00:44:21.858458-05	2019-01-14 00:44:21.858458-05	\N	272000000000	【東方ボーカル】 「MERMAiD」 【幽閉サテライト】	youtube
c85P5iWD-fA	2019-01-14 00:45:18.321342-05	2019-01-14 00:45:18.321342-05	\N	240000000000	【東方ボーカル】 「また会える日まで...」 【TatshMusicCircle】	youtube
mMT-_x045ws	2019-01-14 00:45:46.932669-05	2019-01-14 00:45:46.932669-05	\N	230000000000	【東方Vocal／Rock】 MIST LAKE LOVE 「SOUND HOLIC」	youtube
7OqOY1kZhL0	2019-01-14 00:49:38.745405-05	2019-01-14 00:49:38.745405-05	\N	156000000000	Sir Pelo Mogolovonio (Underpants) + Original Toby Fox Megalovania	youtube
npWHi732DP8	2019-01-14 00:51:59.994852-05	2019-01-14 00:51:59.994852-05	\N	249000000000	AFRICA and ALL STAR never sounded so good together on the piano	youtube
llDikI2hTtk	2019-01-14 01:03:05.817686-05	2019-01-14 01:03:05.817686-05	\N	256000000000	Nero - Promises	youtube
3m1V5RVN1W0	2019-01-14 02:08:14.591101-05	2019-01-14 02:08:14.591101-05	\N	240000000000	[Dubstep] - PIXL - Promises (feat. Nessakay) [Sugar Rush EP]	youtube
cP8VlYUeP0g	2019-01-14 02:09:38.939539-05	2019-01-14 02:09:38.939539-05	\N	240000000000	PIXL - Promises (Ft. Nessakay)	youtube
eUfrlVpGY34	2019-01-14 02:54:30.34986-05	2019-01-14 02:54:30.34986-05	\N	262000000000	【東方Metal／Dubstep】 Catadioptric 「Jerico's Law」	youtube
K_LDm-HiB10	2019-01-14 02:55:56.623693-05	2019-01-14 02:55:56.623693-05	\N	306000000000	[Touhou Vocal] [Buta-Otome] Koishi ni (spanish & english subtitles)	youtube
sC0cvwnG0Ik	2019-03-31 18:33:13.826631-04	2019-03-31 18:33:13.826631-04	\N	230000000	Crazy Bus Title Screen	youtube
TlJdaY0LjqE	2019-01-14 03:01:12.440341-05	2019-01-14 03:01:12.440341-05	\N	343000000000	[Touhou Vocal] [RD-Sounds] Unprivileged Access (spanish & english subtitles)	youtube
2psgFJNuVmw	2019-01-14 03:01:29.446212-05	2019-01-14 03:01:29.446212-05	\N	321000000000	【東方ボーカル】 「Bad Apple!! feat.nomico (豚乙女 Ver.)」 【Alstroemeria Records】【Subbed】	youtube
dokbuwfmmCw	2019-01-14 03:10:20.713007-05	2019-01-14 03:10:20.713007-05	\N	220000000000	[Touhou Vocal] [Buta-Otome] Mamorubeki Mono (spanish & english subtitles)	youtube
-weElQj_2jE	2019-01-14 03:20:00.391817-05	2019-01-14 03:20:00.391817-05	\N	194000000000	[Touhou Vocal] [Buta-Otome] Oitekebori banka (spanish & english subtitles)	youtube
i2iOkDXG9jA	2019-01-14 03:21:00.019601-05	2019-01-14 03:21:00.019601-05	\N	293000000000	Touhou Remix E.153 (Vocal)  The Sealed Cloud Route & Beware the Umbrella Left There Forever	youtube
6zC6w9exVAk	2019-01-14 03:21:53.73559-05	2019-01-14 03:21:53.73559-05	\N	206000000000	[Touhou PV] [Buta-Otome] Yurara Kamishibai (spanish & english subtitles)	youtube
tlsmMu3bX-Y	2019-01-14 03:23:25.963861-05	2019-01-14 03:23:25.963861-05	\N	265000000000	[Buta-Otome] King of the Crows (spanish & english subtitles)	youtube
KKRRWQq5f5E	2019-01-14 03:24:02.758549-05	2019-01-14 03:24:02.758549-05	\N	263000000000	[Breaks] - Noisestorm - Barracuda [Monstercat Release]	youtube
LKALcthKSwA	2019-01-14 03:24:16.415285-05	2019-01-14 03:24:16.415285-05	\N	328000000000	[Breaks] - Noisestorm - Sentinel [Monstercat Release]	youtube
9Q31J3mkCKY	2019-01-14 03:27:52.781682-05	2019-01-14 03:27:52.781682-05	\N	237000000000	[Electro] - Noisestorm - Surge (Original Mix) [Monstercat EP Release]	youtube
usXhiWE2Uc0	2019-01-14 17:07:38.740346-05	2019-01-14 17:07:38.740346-05	\N	271000000000	[Glitch Hop or 110BPM] - Tristam - Till It's Over [Monstercat Release]	youtube
IZd_ikQKvHg	2019-01-14 17:13:12.962682-05	2019-01-14 17:13:12.962682-05	\N	285000000000	【東方ボーカル】 Midnight Boogie 【FELT】【Subbed】	youtube
DHecSyTjzg8	2019-01-14 17:14:14.400771-05	2019-01-14 17:14:14.400771-05	\N	258000000000	【東方ボーカル】 「Grip & Break down !! - DJ Command Remix-」 【SOUND HOLIC】【Subbed】	youtube
INwfj4ay40w	2019-01-14 17:15:28.300606-05	2019-01-14 17:15:28.300606-05	\N	25000000000	Cruel Angel Thesis (Epic same BPM lmao) - Neon Genesis Evangelion	youtube
AMvldbxvKVg	2019-01-14 17:15:57.494203-05	2019-01-14 17:15:57.494203-05	\N	47000000000	Crab Rave - DESPACITO IS GONE	youtube
ZW51-9etskQ	2019-01-14 17:16:12.537914-05	2019-01-14 17:16:12.537914-05	\N	245000000000	Despacito in the Full Style Of Alan Walker	youtube
aV1IOAZhn48	2019-01-14 17:16:21.669727-05	2019-01-14 17:16:21.669727-05	\N	230000000000	Yukuriito Guaninado's Theme - Touhou 6: the Embodiment of Scarlet Devil	youtube
bMCkrXaXFCM	2019-01-14 17:16:41.663531-05	2019-01-14 17:16:41.663531-05	\N	217000000000	Despacitouhou	youtube
dQCp0TYygMk	2019-01-14 17:16:47.000848-05	2019-01-14 17:16:47.000848-05	\N	238000000000	The Pierrot of the Star-Spangled Banner - Touhou 15: Legacy of Lunatic Kingdom	youtube
YoMlOL9xl78	2019-01-14 17:16:58.328063-05	2019-01-14 17:16:58.328063-05	\N	257000000000	ＤＥＳＰＡＣＩＴＯ　ＲＥＳＯＮＡＮＣＥ	youtube
95MfBnTE5so	2019-01-14 17:17:08.196808-05	2019-01-14 17:17:08.196808-05	\N	167000000000	Despacito Valley - The Legend of Zelda: Ocarina of Fonsi	youtube
zR4GkZcPF_o	2019-01-14 17:17:25.039505-05	2019-01-14 17:17:25.039505-05	\N	51000000000	Despito (cursed eurobeat mix) - INITIAL Despacito	youtube
iciFwCnsyY4	2019-01-14 21:11:02.726125-05	2019-01-14 21:11:02.726125-05	\N	235000000000	[MV] GFRIEND(여자친구) _ Sunrise(해야)	youtube
SMGPXUSE0f0	2019-01-14 21:13:06.707206-05	2019-01-14 21:13:06.707206-05	\N	230000000000	Champagne	youtube
zmEUpMF-HLE	2019-01-14 21:58:44.3965-05	2019-01-14 21:58:44.3965-05	\N	198000000000	Kero Kero Bonito - Flamingo [mega earrape and bass boost]	youtube
HguKyrS8oWM	2019-01-14 21:58:58.438016-05	2019-01-14 21:58:58.438016-05	\N	175000000000	Childish Flamingo	youtube
99afNT72tV0	2019-01-14 21:59:17.527759-05	2019-01-14 21:59:17.527759-05	\N	224000000000	Fire Flamingos	youtube
MBdVXkSdhwU	2019-01-14 22:03:46.225006-05	2019-01-14 22:03:46.225006-05	\N	256000000000	BTS (방탄소년단) 'DNA' Official MV	youtube
ALj5MKjy2BU	2019-01-14 22:03:55.501114-05	2019-01-14 22:03:55.501114-05	\N	295000000000	[MV] BTS(방탄소년단) _ FIRE (불타오르네)	youtube
JjHKOq3E7T4	2019-01-14 22:20:30.796294-05	2019-01-14 22:20:30.796294-05	\N	275000000000	Touhou Project : Vocal ~ 愛執 [ Buta-otome ]	youtube
vIZA61figMc	2019-01-14 23:09:08.186759-05	2019-01-14 23:09:08.186759-05	\N	212000000000	【東方ボーカル】 「サイケデリック鬼桜同盟」 【SOUND HOLIC】	youtube
fQzD2G-QBK0	2019-01-14 23:10:20.019399-05	2019-01-14 23:10:20.019399-05	\N	287000000000	【東方ボーカル】 pulse 【FELT】【Subbed】	youtube
VgzWiAsH1Kw	2019-01-14 23:14:19.093141-05	2019-01-14 23:14:19.093141-05	\N	618000000000	【東方ボーカル】 「With Triangle」 【Liz Triangle】	youtube
uRuaz3GSLoc	2019-01-14 23:14:24.181837-05	2019-01-14 23:14:24.181837-05	\N	338000000000	【東方ボーカル】 「虚言」 【Liz Triangle】	youtube
q_hqe-Rbx_A	2019-01-14 23:23:04.180565-05	2019-01-14 23:23:04.180565-05	\N	301000000000	【東方ボーカル】 「さよならバイバイ、また明日」 【Liz Triangle】	youtube
8Bx1-NjlWT8	2019-01-14 23:23:23.016691-05	2019-01-14 23:23:23.016691-05	\N	304000000000	【東方Nu Metal】 POLYHEDRA 「SOUND HOLIC」	youtube
zpt3IuizeEg	2019-01-14 23:23:51.237742-05	2019-01-14 23:23:51.237742-05	\N	236000000000	【東方Vocal／Eurobeat】 SHAMAN QUEEN 「SOUND HOLIC」	youtube
G2ULQ6pTXuE	2019-01-14 23:26:31.407379-05	2019-01-14 23:26:31.407379-05	\N	284000000000	【東方Vocal／Metal】 LABORATORY CRISIS 「 SOUND HOLIC」	youtube
sV3mOulL7NM	2019-01-14 23:26:48.090236-05	2019-01-14 23:26:48.090236-05	\N	300000000000	【東方Vocal／Trance】 VANISHING DREAM 「SOUND HOLIC」	youtube
Mtu-zWlJkIE	2019-01-14 23:27:07.42066-05	2019-01-14 23:27:07.42066-05	\N	205000000000	【東方 Chiptune／DnB】「SOUND HOLIC」WA.RA.BE.	youtube
VL3zM-PaOSk	2019-01-14 23:27:25.337501-05	2019-01-14 23:27:25.337501-05	\N	273000000000	「東方 Vocal」 DESPERATE 「SOUND HOLIC」	youtube
RlitYwYU3UI	2019-01-14 23:28:02.256156-05	2019-01-14 23:28:02.256156-05	\N	301000000000	【東方ボーカル】 「冥き神の地へ」 【SOUND HOLIC】	youtube
6G3L0wxiXOQ	2019-01-14 23:29:44.9414-05	2019-01-14 23:29:44.9414-05	\N	261000000000	【東方ボーカル】 「take a shot」 【森羅万象】	youtube
ceoJnIJO1zM	2019-01-14 23:40:39.274063-05	2019-01-14 23:40:39.274063-05	\N	261000000000	【東方ボーカル】 「ニヒル神楽」 【幽閉サテライト】【Subbed】	youtube
0Da8CfbgGhs	2019-01-14 23:49:40.01036-05	2019-01-14 23:49:40.01036-05	\N	345000000000	[DiGiTAL WiNG] O-One de Circuit	youtube
9hU1gQ13YK8	2019-01-14 23:49:52.080019-05	2019-01-14 23:49:52.080019-05	\N	342000000000	(DiGiTAL WiNG) 天地有用	youtube
JDocJA7hDKY	2019-01-14 23:49:58.171482-05	2019-01-14 23:49:58.171482-05	\N	254000000000	【A-One】Break the Hierarchie【東方ボーカルEurobeat】	youtube
Y7DA8oFIMWM	2019-01-15 15:27:56.178309-05	2019-01-15 15:27:56.178309-05	\N	220000000000	GFRIEND (여자친구) - Truly Love	youtube
UHVbi3GNmiw	2019-01-15 15:32:14.698394-05	2019-01-15 15:32:14.698394-05	\N	214000000000	Gfriend (여자친구) - You Are Not Alone Color Coded Lyrics/가사 [Han|Rom|Eng]	youtube
-igYprwlM6M	2019-01-15 15:55:24.518046-05	2019-01-15 15:55:24.518046-05	\N	101000000000	THE WORLD REVOLVING - Deltarune OST	youtube
T37eZ55Hcmc	2019-01-15 15:55:45.041486-05	2019-01-15 15:55:45.041486-05	\N	154000000000	BattleBlock Theater Music: Secret Stage (+DOWNLOAD)	youtube
B1lNhNHdoPI	2019-01-15 16:00:12.975433-05	2019-01-15 16:00:12.975433-05	\N	207000000000	Hideki Naganuma - AIN'T NOTHIN' LIKE A FUNKY BEAT  [Lethal League Blaze OST]	youtube
OdWbybmHnwc	2019-01-15 16:07:17.153951-05	2019-01-15 16:07:17.153951-05	\N	253000000000	【Mashup】Hey Ya Flat Zone 2	youtube
fXeQZC3Y4pY	2019-01-15 17:03:08.778901-05	2019-01-15 17:03:08.778901-05	\N	195000000000	Gfriend (여자친구) - L.U.V [기적을 넘어] Color Coded Lyrics/가사 [Han|Rom|Eng]	youtube
xEzi-Jre6ic	2019-01-15 17:10:36.144978-05	2019-01-15 17:10:36.144978-05	\N	239000000000	It's You (겨울, 끝) | GFRIEND Lyrics [ENG+ROM]	youtube
LnRDWyhef0M	2019-01-15 17:55:31.063601-05	2019-01-15 17:55:31.063601-05	\N	205000000000	REDALiCE - ALiVE	youtube
wCRgYywmg4s	2019-01-15 18:07:12.969168-05	2019-01-15 18:07:12.969168-05	\N	249000000000	REDALiCE - HiGHER	youtube
cz8xQ6M0Jiw	2019-01-15 20:27:15.69416-05	2019-01-15 20:27:15.69416-05	\N	211000000000	[Performance MV] 몬스타엑스 (MONSTA X) - SHOOT OUT	youtube
9KT44F9WmcU	2019-01-15 21:49:40.62984-05	2019-01-15 21:49:40.62984-05	\N	175000000000	Koigokoro Primastella with Lyrics	youtube
-y5jEnh17f4	2019-01-16 00:29:23.666614-05	2019-01-16 00:29:23.666614-05	\N	226000000000	GFRIEND - 'GLOW' LYRICS COLOR CODED [HAN/ROM/ENG]	youtube
ZEnweAcN8Es	2019-01-16 00:29:39.235138-05	2019-01-16 00:29:39.235138-05	\N	209000000000	GFRIEND (여자친구) - 비밀 이야기 (Our Secret)	youtube
3mQUIWD-Q5s	2019-01-16 00:29:55.900745-05	2019-01-16 00:29:55.900745-05	\N	190000000000	Only 1 | GFRIEND Lyrics [ENG+ROM]	youtube
P0hky2PgHUo	2019-01-16 00:30:08.225234-05	2019-01-16 00:30:08.225234-05	\N	211000000000	GFRIEND (여자친구) - 보호색 (Show Up)	youtube
RQmEERvqq70	2019-01-16 16:13:22.083043-05	2019-01-16 16:13:22.083043-05	\N	223000000000	TMABird - Everybody's Circulation (Lyric Video)	youtube
Hxx8IWIvKg0	2019-01-16 17:35:33.968854-05	2019-01-16 17:35:33.968854-05	\N	459000000000	Billy Joel - Scenes from an Italian Restaurant (Audio)	youtube
__B6TzlIkDM	2019-01-16 17:42:45.109177-05	2019-01-16 17:42:45.109177-05	\N	295000000000	【東方ボーカル】ZYTOKINE - WAVE WAVE WAVE feat. itori	youtube
OTRi_G8eew4	2019-01-16 17:43:32.144462-05	2019-01-16 17:43:32.144462-05	\N	328000000000	Camellia - EXiT this Earth's Atomosphere	youtube
KW9N1pOwcSE	2019-01-16 17:43:37.374719-05	2019-01-16 17:43:37.374719-05	\N	410000000000	かめりあ - Exit This Earth's Atomosphere (かめりあ's ''PLANETARY//200STEP'' Remix)	youtube
2vO4zXQ8lnY	2019-01-16 17:46:37.293405-05	2019-01-16 17:46:37.293405-05	\N	339000000000	Shiron - Wave of Craze (2k17 Extended Edit)	youtube
oFqfLLJTvtU	2019-01-16 17:50:51.485829-05	2019-01-16 17:50:51.485829-05	\N	125000000000	Shiron - Lunartic Dial	youtube
Dy4UhqyH-SI	2019-01-16 17:51:57.189572-05	2019-01-16 17:51:57.189572-05	\N	252000000000	[Touhou Vocal] [Unlucky Morpheus] Makyoudatenroku Sariel (spanish & english subtitles)	youtube
9mpqNAwHOtY	2019-01-16 22:12:15.219418-05	2019-01-16 22:12:15.219418-05	\N	213000000000	BEAT NEW WORLD	youtube
8JhRiK7GC8c	2019-01-16 22:14:38.182946-05	2019-01-16 22:14:38.182946-05	\N	125000000000	0kash - Little princess has no identity.	youtube
XRzXKK0O9_0	2019-01-16 22:15:20.802951-05	2019-01-16 22:15:20.802951-05	\N	184000000000	Touhou - Cool & Create Usatei 2011 PV {1080p}	youtube
UOxkGD8qRB4	2019-01-16 22:15:50.02112-05	2019-01-16 22:15:50.02112-05	\N	203000000000	K/DA - POP/STARS (ft Madison Beer, (G)I-DLE, Jaira Burns) | Official Music Video - League of Legends	youtube
cKKrHkddiyU	2019-01-16 22:17:36.606171-05	2019-01-16 22:17:36.606171-05	\N	266000000000	【東方ボーカル】 「Invisible Survive」 【Alstroemeria Records】	youtube
vxZ_Og46Sf4	2019-01-16 22:24:58.245266-05	2019-01-16 22:24:58.245266-05	\N	90000000000	"Snow Halation" but Every Vocal Note is E	youtube
bCrLMOlchj4	2019-01-16 22:31:35.493289-05	2019-01-16 22:31:35.493289-05	\N	274000000000	【東方EUROBEAT】 Reason For Red 【A-One】	youtube
gqnZo5VWvbw	2019-01-16 22:32:37.796427-05	2019-01-16 22:32:37.796427-05	\N	305000000000	【東方Eurobeat ENG SUBS】TEN DESIRES【A-ONE】	youtube
7jo9UMdWxrA	2019-01-16 22:33:00.307967-05	2019-01-16 22:33:00.307967-05	\N	281000000000	【A-One】デザイア【東方ボーカルEurobeat】	youtube
0vbG2ANGI30	2019-01-16 22:43:30.19384-05	2019-01-16 22:43:30.19384-05	\N	243000000000	天狗の落とし文　ニコカラ　オンボーカル	youtube
aljsTFs78rs	2019-01-16 22:45:05.026346-05	2019-01-16 22:45:05.026346-05	\N	248000000000	【東方 Touhou Vocal】A-ONE - Lunatic Paradise	youtube
uqLY43tzF-k	2019-01-16 23:38:40.035141-05	2019-01-16 23:38:40.035141-05	\N	270000000000	[東方Eurobeat/Vocal]Believe Me	youtube
BVwAVbKYYeM	2019-01-17 00:03:29.485066-05	2019-01-17 00:03:29.485066-05	\N	257000000000	[MV] BTS(방탄소년단) _ DOPE(쩔어)	youtube
pe3Ad3TI2R4	2019-01-17 00:25:28.168112-05	2019-01-17 00:25:28.168112-05	\N	283000000000	【東方ボーカル】 「郷愁千夜物語」 【SOUND HOLIC】	youtube
USbfTgeY_tQ	2019-01-17 00:26:13.32307-05	2019-01-17 00:26:13.32307-05	\N	265000000000	【東方ボーカル】 「MASSIVE SUPER GIRL」 【SOUND HOLIC】	youtube
hDuZSi13mrw	2019-01-17 00:37:17.857532-05	2019-01-17 00:37:17.857532-05	\N	350000000000	【東方永夜抄】 幻想浪漫綺行(is the limit.) 『凋叶棕』【Subbed】	youtube
vkBtUKLwIZI	2019-01-17 00:50:12.059853-05	2019-01-17 00:50:12.059853-05	\N	276000000000	【東方ヴォーカル】Pizuya's Cell / インフィニティ・フリー【Official】	youtube
h4FVKSHjg-0	2019-01-17 00:56:53.182693-05	2019-01-17 00:56:53.182693-05	\N	184000000000	EoSD Stage 3 Boss - Hong Meiling's Theme - Shanghai Alice of Meiji 17	youtube
01skyPMeeoc	2019-01-17 00:57:04.033375-05	2019-01-17 00:57:04.033375-05	\N	190000000000	EoSD Stage 5 Boss - Sakuya Izayoi's Theme - Lunar Clock ~ Luna Dial	youtube
69jezLrwbU4	2019-01-17 01:01:30.107852-05	2019-01-17 01:01:30.107852-05	\N	117000000000	Yuyuko's Final Theme - Border of Life	youtube
P7dLp2Eb7cg	2019-01-17 01:01:45.151868-05	2019-01-17 01:01:45.151868-05	\N	344000000000	Suwako's Theme - Native Faith	youtube
pw2WQjqKpVM	2019-01-17 01:04:04.309513-05	2019-01-17 01:04:04.309513-05	\N	332000000000	Kaguya's Theme - Lunatic Princess	youtube
ETTk83qis0w	2019-01-17 01:09:33.886451-05	2019-01-17 01:09:33.886451-05	\N	356000000000	Mokou's Theme - Reach for the Moon, Immortal Smoke	youtube
ojp1tSglzdo	2019-01-17 01:09:54.828886-05	2019-01-17 01:09:54.828886-05	\N	346000000000	Sanae's Theme - Faith is for the Transient People	youtube
okDBNnAjItU	2019-01-17 01:18:19.460148-05	2019-01-17 01:18:19.460148-05	\N	365000000000	MoF Stage 5 - The Primal Scene of Japan the Girl Watched	youtube
NvdHg62n7To	2019-01-17 01:32:11.674783-05	2019-01-17 01:32:11.674783-05	\N	316000000000	Demetori - The Youkai Mountain ~ Mysterious Mountain	youtube
5T1WKj3rJEc	2019-01-17 01:33:32.512614-05	2019-01-17 01:33:32.512614-05	\N	355000000000	【東方Vocal】peЯoco - Non-Stop Carnival (DJ katsu CLUB EDIT) (DiGiTAL WiNG)	youtube
dP4rX-8UfDY	2019-01-17 01:33:49.486073-05	2019-01-17 01:33:49.486073-05	\N	312000000000	ᴴᴰ⁶⁰【東方Vocal】DiGiTAL WiNG｜CONTINUE? (Extended Version)【Vo. 野宮あゆみ】	youtube
PstSVh87n4k	2019-01-17 01:34:10.937849-05	2019-01-17 01:34:10.937849-05	\N	276000000000	[DiGiTAL WiNG] StratoSphere	youtube
h4piwx60sbw	2019-01-17 01:38:08.511707-05	2019-01-17 01:38:08.511707-05	\N	226000000000	[556mm] 君は僕の、僕は君の (EUROBEAT Remix)	youtube
BixB52RYJwc	2019-01-17 01:38:25.659277-05	2019-01-17 01:38:25.659277-05	\N	347000000000	[DiGiTAL WiNG] 乙女文楽	youtube
RePvsXyQN18	2019-01-17 01:59:02.874934-05	2019-01-17 01:59:02.874934-05	\N	324000000000	【東方ボーカル】 「ひとつよがりの逃避行」 【TUMENECO】	youtube
YtcmRLcfeDk	2019-01-17 02:12:23.034829-05	2019-01-17 02:12:23.034829-05	\N	307000000000	[Touhou Vocal] [TUMENECO] Genmu (spanish & english subtitles)	youtube
zD0S1O-9SQI	2019-01-17 02:12:42.889356-05	2019-01-17 02:12:42.889356-05	\N	277000000000	【東方Orchestral／Symphonic】 無何有の郷　～ Deep Mountain 「Melodic Taste」	youtube
oWns2HGN2Ro	2019-01-17 02:12:49.181886-05	2019-01-17 02:12:49.181886-05	\N	253000000000	【東方Orchestral／Traditional】 東方妖々夢　～ Ancient Temple 「Melodic Taste」	youtube
GxYo-xFTeAo	2019-01-17 02:12:56.145168-05	2019-01-17 02:12:56.145168-05	\N	178000000000	【東方Orchestral／Symphonic】 さくらさくら　～ Japanize Dream... 「Melodic Taste」	youtube
0c0AvIeSfS0	2019-01-17 02:28:19.032836-05	2019-01-17 02:28:19.032836-05	\N	280000000000	【東方Orchestral／Symphonic】 Dream of Arcadia 「Melodic Taste」	youtube
JwIjfseWHak	2019-01-17 02:28:27.88409-05	2019-01-17 02:28:27.88409-05	\N	275000000000	【東方Traditional／Orchestral】 威風凛然 「Hachimitsu-Lemon」	youtube
eNRSSWFRF4U	2019-01-17 02:28:34.482451-05	2019-01-17 02:28:34.482451-05	\N	280000000000	【東方Orchestral／Traditional】 Blue Sea of 53 Minutes 「Melodic Taste」	youtube
D4GthFnxn5U	2019-01-17 02:28:43.090256-05	2019-01-17 02:28:43.090256-05	\N	349000000000	【東方ボーカル】 「滲色血界、月狂ノ獄」 【EastNewSound】 【Subbed】	youtube
RQX-oors-CE	2019-01-17 02:28:51.062764-05	2019-01-17 02:28:51.062764-05	\N	345000000000	【東方Violin／Piano】 Nostalgic Blood of the East ~ Old World 「TAMUSIC」	youtube
HugLd23u1Rw	2019-01-17 02:28:58.369261-05	2019-01-17 02:28:58.369261-05	\N	288000000000	【東方Orchestral／Symphonic】 純狐 ／ピュアヒューリーズ～心の在処 「CarrotWine.」	youtube
KcBeW8W1JJM	2019-01-17 02:29:04.912082-05	2019-01-17 02:29:04.912082-05	\N	270000000000	【東方Orchestral Folk／Rock】 星空のカプリシオ 「Foxtail-Grass Studio」	youtube
zdlxra0dPdo	2019-01-17 02:29:14.260939-05	2019-01-17 02:29:14.260939-05	\N	219000000000	【東方Orchestral】 Magical Girl Crusade 「Melodic Taste」	youtube
gXHS_dtRB4Q	2019-01-17 02:29:21.276221-05	2019-01-17 02:29:21.276221-05	\N	231000000000	【東方Orchestral】 Kid's Festival ~ Innocent Treasures 「Melodic Taste」	youtube
yeZv0zR3B_U	2019-01-17 02:29:32.695681-05	2019-01-17 02:29:32.695681-05	\N	234000000000	[Buta-Otome] Love in the Shadows (spanish & english subtitles)	youtube
4byaJ9w47uU	2019-01-17 03:19:13.939872-05	2019-01-17 03:19:13.939872-05	\N	224000000000	Kizuna AI - Hello,Morning (Music Only)	youtube
TpKN8lXMSXc	2019-01-17 03:19:56.354468-05	2019-01-17 03:19:56.354468-05	\N	322000000000	TeddyLoid feat. Bonjour Suzuki - Sleeping Forest	youtube
N7M5dfe4oMs	2019-01-17 03:21:03.680642-05	2019-01-17 03:21:03.680642-05	\N	327000000000	・・・・・・・・・／「ねぇ」	youtube
cVnmyIusX7o	2019-01-17 03:33:27.497216-05	2019-01-17 03:33:27.497216-05	\N	283000000000	【東方Instrumental／Folk】 Reverse Ideology 「k-waves LAB」	youtube
-40fBKrpED4	2019-01-17 03:33:36.318007-05	2019-01-17 03:33:36.318007-05	\N	201000000000	【東方Instrumental／Folk】 Eternal Short-Lived Reign 「k-waves LAB」	youtube
iqNAlVe_Amg	2019-01-17 03:39:50.884346-05	2019-01-17 03:39:50.884346-05	\N	261000000000	k-waves LAB - 春の湊に	youtube
42yU2MWNvbQ	2019-01-17 03:39:57.913571-05	2019-01-17 03:39:57.913571-05	\N	402000000000	【東方Folk】 Wind God Girl 「k-waves LAB」	youtube
kx6mNWNq1hI	2019-01-17 03:40:05.969718-05	2019-01-17 03:40:05.969718-05	\N	285000000000	k-waves LAB - 芥川龍之介の河童	youtube
N8nGig78lNs	2019-01-17 13:23:30.811057-05	2019-01-17 13:23:30.811057-05	\N	249000000000	Snail's House - Hot Milk	youtube
trbgSWenH2o	2019-01-17 14:17:35.23318-05	2019-01-17 14:17:35.23318-05	\N	401000000000	[歌マクロス]サヨナラノツバサ Full Version MV	youtube
Yt0YfyQc8xw	2019-01-17 14:17:50.562579-05	2019-01-17 14:17:50.562579-05	\N	450000000000	Nyan Nyan Final Attack Lyrics! Sayonara no Tsubasa Final Attack	youtube
2C1Bh8FTlpY	2019-01-17 14:18:13.740007-05	2019-01-17 14:18:13.740007-05	\N	260000000000	Fire Bomber - Planet Dance	youtube
vjcrXDiha-Y	2019-01-17 14:18:58.402649-05	2019-01-17 14:18:58.402649-05	\N	306000000000	Fire Bomber 06 Sweet Fantasy (マクロス7/ macross 7/ 新世紀超時空要塞7)	youtube
y0rxpQI0ZbY	2019-01-17 14:19:22.500081-05	2019-01-17 14:19:22.500081-05	\N	486000000000	Macross Plus - Information High	youtube
9uE8l2vqYJs	2019-01-17 14:23:31.608075-05	2019-01-17 14:23:31.608075-05	\N	387000000000	リン・ミンメイ／飯島真理 マクロス 愛・おぼえていますか ～ HD	youtube
eJeeAoKkcC0	2019-01-17 16:10:18.572843-05	2019-01-17 16:10:18.572843-05	\N	218000000000	t+pazolite - Censored!! (Full ver)	youtube
MTum6trxFEQ	2019-01-17 16:21:26.17519-05	2019-01-17 16:21:26.17519-05	\N	254000000000	【東方Vocal／Future House】 Seashore On The Moon 「Alstroemeria Records」	youtube
BVGUA5vLsl8	2019-01-17 16:21:38.881291-05	2019-01-17 16:21:38.881291-05	\N	263000000000	【東方ボーカル】 「crescent moon」 【FELT】【Subbed】	youtube
I96WfHqyp1w	2019-01-17 16:24:54.63289-05	2019-01-17 16:24:54.63289-05	\N	115000000000	Hull feat.℃iel - Darkness Pleasure	youtube
RA4VtANmhuE	2019-01-17 16:28:06.76039-05	2019-01-17 16:28:06.76039-05	\N	237000000000	【東方】 岸田教団＆THE 明星ロケッツ 『DesireDrive』	youtube
DiZ3wAr_R34	2019-01-17 16:32:26.800352-05	2019-01-17 16:32:26.800352-05	\N	228000000000	[東方Vocal/Electro] Amateras Records - Flying!	youtube
AP3tB6fyg0Q	2019-01-17 16:32:40.475705-05	2019-01-17 16:32:40.475705-05	\N	239000000000	【東方】 SOUND HOLIC - Earthquake Super Shock	youtube
uaIXCIFXaAY	2019-01-17 16:33:54.555787-05	2019-01-17 16:33:54.555787-05	\N	234000000000	【東方Vocal／Uplifting Trance】 FIRE IN MY HEART (Caelum Remix) 「Spacelectro」	youtube
IXbg72Owqz4	2019-01-17 16:34:44.412828-05	2019-01-17 16:34:44.412828-05	\N	258000000000	【MV VOCALOID】トマヨイ Spacelectro feat.結月ゆかり	youtube
065tnts5ClY	2019-01-17 16:35:10.918948-05	2019-01-17 16:35:10.918948-05	\N	282000000000	【東方Vocal／Electro House】 Rabbit Saturation 「SPACELECTRO」	youtube
d4ezgmiq0cs	2019-01-17 16:37:48.782227-05	2019-01-17 16:37:48.782227-05	\N	274000000000	【東方ボーカル】 「太陽のうた」 【森羅万象】	youtube
Vz75V8_g7g0	2019-01-17 16:38:50.727053-05	2019-01-17 16:38:50.727053-05	\N	122000000000	CRAB RAVE but it sounds RUSSIAN	youtube
Qskm9MTz2V4	2019-01-17 16:39:05.661225-05	2019-01-17 16:39:05.661225-05	\N	177000000000	RUSH E	youtube
n4qIQ_1cDew	2019-01-17 16:39:46.886245-05	2019-01-17 16:39:46.886245-05	\N	283000000000	【Touhou Vocal PV】Zenryoku Happy Life (ShinRa-Bansho official)	youtube
CtIJ6J9i4A0	2019-01-17 16:45:46.559884-05	2019-01-17 16:45:46.559884-05	\N	258000000000	【Touhou Vocal PV】Happiness Egoist【Shinra-Bansho】	youtube
PrhXs9nhuwM	2019-01-17 16:46:21.52045-05	2019-01-17 16:46:21.52045-05	\N	213000000000	Tewi's Theme - Lord Usa's Elemental Flag	youtube
xi_ZC_Hyhmo	2019-01-17 16:53:06.752411-05	2019-01-17 16:53:06.752411-05	\N	217000000000	Youmu's Theme - Hiroari Shoots a Strange Bird ~ Till When?	youtube
NmlXXPVxQ3Q	2019-01-17 16:53:11.790686-05	2019-01-17 16:53:11.790686-05	\N	341000000000	Aya's Theme - Wind God Girl	youtube
lmy6rcn_v3A	2019-01-17 16:53:20.856935-05	2019-01-17 16:53:20.856935-05	\N	474000000000	UFO Stage 6 Boss - Byakuren Hijiri's Theme - Emotional Skyscraper ~ Cosmic Mind	youtube
sPTOQd9E6gE	2019-01-17 16:53:39.032799-05	2019-01-17 16:53:39.032799-05	\N	162000000000	Aya's Theme - The Youkai Mountain ~ Mysterious Mountain	youtube
xAM8MHXv7WA	2019-01-17 19:56:08.83584-05	2019-01-17 19:56:08.83584-05	\N	199000000000	Yunomi  (feat. Yuri Hinami) - Shironeko Kaizokusen	youtube
TqU2ZDFWBco	2019-01-17 19:58:52.12208-05	2019-01-17 19:58:52.12208-05	\N	259000000000	HoneyComeBear - Achillea	youtube
DU_QsQ_X-kU	2019-01-17 20:00:16.66036-05	2019-01-17 20:00:16.66036-05	\N	251000000000	HoneyComeBear - Dear	youtube
VVaNq9uSJgY	2019-01-17 20:00:53.233175-05	2019-01-17 20:00:53.233175-05	\N	197000000000	[MV] REOL - ちるちる / ChiruChiru	youtube
qiqcfMvPuTM	2019-01-17 20:01:13.362183-05	2019-01-17 20:01:13.362183-05	\N	276000000000	Neko Hacker - Night Sky (feat. Mashilo & ichika)	youtube
qdGJtlUG5cs	2019-01-17 20:02:21.304487-05	2019-01-17 20:02:21.304487-05	\N	394000000000	Most Hype Captain Falcon Combos/Plays in Smash Ultimate	youtube
vTIIMJ9tUc8	2019-01-17 20:04:39.892362-05	2019-01-17 20:04:39.892362-05	\N	256000000000	Daler Mehndi - Tunak Tunak Tun Video	youtube
ewLw3GY4FU4	2019-01-18 15:42:04.311177-05	2019-01-18 15:42:04.311177-05	\N	240000000000	「J-POP」YUC'e - Cinderella Syndrome	youtube
c4cErkTY9xQ	2019-01-18 16:20:40.464553-05	2019-01-18 16:20:40.464553-05	\N	401000000000	Halozy — K.O.K.O.R.O + S.A.T.O.R.A.R.E	youtube
iZo0cFMkmbI	2019-01-18 16:31:15.938109-05	2019-01-18 16:31:15.938109-05	\N	288000000000	[Buta-Otome] Pitch Black Snow (spanish & english subtitles)	youtube
hICwjxNsj5Y	2019-01-18 16:53:53.032963-05	2019-01-18 16:53:53.032963-05	\N	288000000000	[Buta-Otome] Dark Night Course (spanish subtitles)	youtube
D0FgqclxPzk	2019-01-18 16:54:20.774554-05	2019-01-18 16:54:20.774554-05	\N	222000000000	[KISIDA KYODAN & THE AKEBOSHI ROCKETS] Zangetsu Aria (spanish & english subtitles)	youtube
0LFb9S32AoY	2019-01-18 17:03:11.24499-05	2019-01-18 17:03:11.24499-05	\N	300000000000	[IOSYS] 04. サードアイや！	youtube
h6TH1hAnEls	2019-01-18 17:06:19.940915-05	2019-01-18 17:06:19.940915-05	\N	245000000000	【東方ボーカル】 「那由多の唄」 【森羅万象】	youtube
QxjrlhdHuvg	2019-01-18 17:12:58.635486-05	2019-01-18 17:12:58.635486-05	\N	233000000000	[Buta-Otome] My Awaited Won't Come (spanish subtitles)	youtube
nKrjIMxbXRY	2019-01-18 20:46:13.606714-05	2019-01-18 20:46:13.606714-05	\N	322000000000	【東方Vocal／Psytrance】 Sweetest Paranoia 「Amateras Records」 【JAP Subs】	youtube
bkM7tos4Vig	2019-01-18 20:48:45.475579-05	2019-01-18 20:48:45.475579-05	\N	262000000000	【東方Vocal／Eurobeat】 U-N-K-N-O-W-N 「Crazy Beats」	youtube
Efc7IrdKHVE	2019-01-18 20:48:57.533685-05	2019-01-18 20:48:57.533685-05	\N	255000000000	[東方Vocal/Eurobeat] Hunt Zing Soul! Hunt Ray Soul! 2018	youtube
Cm_MuYLI71I	2019-01-18 20:49:49.586553-05	2019-01-18 20:49:49.586553-05	\N	254000000000	【東方Vocal／Eurobeat】 トラベリング・デイズ 「Crazy Beats」	youtube
0tjdo2ntvHA	2019-01-18 20:49:58.08954-05	2019-01-18 20:49:58.08954-05	\N	265000000000	【東方Vocal／Eurobeat】 夜乃風車 「Crazy Beats」	youtube
kFewUrC7pB4	2019-01-18 20:50:09.526376-05	2019-01-18 20:50:09.526376-05	\N	243000000000	【東方Vocal／Eurobeat】 Monster Melody 「Crazy Beats」【JPN Subtitle】	youtube
cmHaPphM6w4	2019-01-18 20:50:21.419603-05	2019-01-18 20:50:21.419603-05	\N	292000000000	【東方Vocal／Eurobeat】 INVISIBLE HERO 「Crazy Beats」【JPN Subtitle】	youtube
VB6m4BdL5_I	2019-01-18 20:50:28.787851-05	2019-01-18 20:50:28.787851-05	\N	293000000000	【東方Vocal／Eurobeat】 フェイス-Behind The Mask- 「Crazy Beats」	youtube
fcoE7H5tmQY	2019-01-18 20:50:42.307941-05	2019-01-18 20:50:42.307941-05	\N	274000000000	【東方Vocal／Eurobeat】 ANGEL WiNG（頭文字T REMIX) 「Crazy Beats」	youtube
JGYqcsDXYLM	2019-01-18 20:50:59.894856-05	2019-01-18 20:50:59.894856-05	\N	226000000000	【東方Vocal／Eurobeat】 Lunatic Messenger 「Crazy Beats」【JPN Subtitle】	youtube
Ez0RzS-CA_I	2019-01-18 20:51:01.158071-05	2019-01-18 20:51:01.158071-05	\N	264000000000	【東方Vocal／Eurobeat】 Lunatic Voice 「Crazy Beats」	youtube
b7x32wX-BvQ	2019-01-18 20:52:02.67474-05	2019-01-18 20:52:02.67474-05	\N	318000000000	[東方 Eurobeat] NJK Record - Crazy Hot	youtube
jCubA3oltGM	2019-01-18 20:53:00.352113-05	2019-01-18 20:53:00.352113-05	\N	330000000000	│東方│ WARNING! │NJK Record│	youtube
LIucRfgeJTg	2019-01-18 21:47:28.940666-05	2019-01-18 21:47:28.940666-05	\N	236000000000	[Touhou Vocal] [Buta-Otome] Hi-yowa na Tooboe (spanish & english subtitles)	youtube
nYNn62YJRcI	2019-01-18 21:47:42.453915-05	2019-01-18 21:47:42.453915-05	\N	282000000000	Touhou--S.A.T.O.R.A.R.E (Halozy EUROBEAT Remix)  DiGiTAL WiNG	youtube
jxzRDKAFwPg	2019-01-18 21:54:59.066131-05	2019-01-18 21:54:59.066131-05	\N	295000000000	【東方Vocal／Pop Rock】 Chasing the Wind 「R-Note」	youtube
jruG4U_008k	2019-01-18 21:58:17.958702-05	2019-01-18 21:58:17.958702-05	\N	257000000000	【東方Vocal／Pop Rock】 Flowering Lover 「R-Note」	youtube
KnrMjSa-yQU	2019-01-18 21:58:23.637104-05	2019-01-18 21:58:23.637104-05	\N	278000000000	【東方Vocal／Rock】 恋色マジカルスター 「R-Note」	youtube
nZK-jdLHxF8	2019-01-18 21:58:28.927045-05	2019-01-18 21:58:28.927045-05	\N	307000000000	【東方Vocal／Ballad】 キミノコト 「R-Note」	youtube
Ry-nl2LDHMU	2019-01-18 21:58:33.867979-05	2019-01-18 21:58:33.867979-05	\N	319000000000	【東方Vocal／Ballad】 桜路 「R-Note」	youtube
JQYEGizWzeo	2019-01-18 22:15:03.815812-05	2019-01-18 22:15:03.815812-05	\N	279000000000	[東方Vocal/Rock] R-note - ルシフェラーゼ ～ Gostly Eyes	youtube
LfeMhQGo6lM	2019-01-18 22:15:09.66871-05	2019-01-18 22:15:09.66871-05	\N	375000000000	【東方Vocal (Pop)】 R-note - Words Are	youtube
JB_cKVsDM8E	2019-01-18 22:15:18.975205-05	2019-01-18 22:15:18.975205-05	\N	266000000000	【東方Vocal／Rock】 月と恋毒 「R-Note」	youtube
gvJOIZ7Nj44	2019-01-18 22:15:25.675822-05	2019-01-18 22:15:25.675822-05	\N	309000000000	【東方Vocal】 C・A・N・D・Y 「R-note」	youtube
3M-hVikkznY	2019-01-18 22:15:33.473943-05	2019-01-18 22:15:33.473943-05	\N	278000000000	【東方Vocal】 仮面のエモーション 「R-note」	youtube
b4HQjEiwj-c	2019-01-18 22:33:10.193773-05	2019-01-18 22:33:10.193773-05	\N	264000000000	【東方Vocal／Rock Ballad】 Mirror 「R-Note」	youtube
KeWwo495QfI	2019-01-18 22:33:17.637302-05	2019-01-18 22:33:17.637302-05	\N	232000000000	【東方Vocal／Rock Ballad】 Future Voyage 「R-Note」	youtube
4h6xmVotylw	2019-01-18 22:33:27.36463-05	2019-01-18 22:33:27.36463-05	\N	232000000000	【東方Vocal (Rock)】 あ～るの～と「R-note」 - Sweet Dreamer	youtube
iDn5jC697i0	2019-01-18 22:33:38.298891-05	2019-01-18 22:33:38.298891-05	\N	237000000000	【東方Vocal】 R-note - Lunatic smile	youtube
8ili8fQdC8o	2019-01-18 22:43:58.172131-05	2019-01-18 22:43:58.172131-05	\N	270000000000	【東方Vocal (Pop)】 あ～るの～と「R-note」 - 氷結娘 -Refined Mix-	youtube
Nb0lPLc1e-4	2019-01-18 22:44:03.492426-05	2019-01-18 22:44:03.492426-05	\N	264000000000	【東方Vocal／Rock】 メロディ・メロディ 「R-Note」	youtube
tFaBc7doGms	2019-01-18 22:44:08.681117-05	2019-01-18 22:44:08.681117-05	\N	363000000000	【東方Vocal／Chillout Ballad】 Your Love Song 「R-Note」	youtube
cCrtCJUNfXo	2019-01-18 22:44:13.848175-05	2019-01-18 22:44:13.848175-05	\N	232000000000	【東方Vocal／J-Pop】 Rain Love 「R-Note」	youtube
375OnsgF8_4	2019-01-18 23:05:47.403908-05	2019-01-18 23:05:47.403908-05	\N	254000000000	【東方Vocal／R&B】 Milk Tea 「R-Note」	youtube
JWlHkaCDbM4	2019-01-18 23:06:01.091274-05	2019-01-18 23:06:01.091274-05	\N	265000000000	【東方Vocal／Rock Ballad】 月砕くとき 「R-Note」[JP Subs]	youtube
XvMepw9602c	2019-01-18 23:06:33.98453-05	2019-01-18 23:06:33.98453-05	\N	270000000000	【東方Vocal (Pop)】 R-note - 夢 Fighter!	youtube
Xuzgv-_5828	2019-01-18 23:18:53.417154-05	2019-01-18 23:18:53.417154-05	\N	251000000000	【東方Vocal】 Please Freeze Me! 「R-note」	youtube
QcA3LjUwk7c	2019-01-18 23:19:03.275513-05	2019-01-18 23:19:03.275513-05	\N	249000000000	【東方Vocal】 R-note - 紅色のセプテット	youtube
6xaXY__Px3I	2019-01-18 23:22:24.636248-05	2019-01-18 23:22:24.636248-05	\N	245000000000	【東方Vocal／Pop】 始まりと永遠のビート 「R-Note」	youtube
tzONbayQ7u8	2019-01-18 23:22:32.749332-05	2019-01-18 23:22:32.749332-05	\N	287000000000	【東方Vocal】 Red Princess 「R-note」	youtube
XUEz1Mq0aTg	2019-01-18 23:22:45.040623-05	2019-01-18 23:22:45.040623-05	\N	378000000000	【東方Vocal／Rock Ballad】 月光 ～Eternal Ash～ 「R-Note」	youtube
9vASeLK1gJA	2019-01-18 23:23:05.206352-05	2019-01-18 23:23:05.206352-05	\N	335000000000	【東方Vocal／Ballad】 青空 「R-Note」	youtube
_ITl1RqAaZk	2019-01-18 23:23:16.826158-05	2019-01-18 23:23:16.826158-05	\N	307000000000	【東方Vocal／Ballad】 あの夏のエルフ 「R-Note」	youtube
1_2T9kj7kVA	2019-01-18 23:32:53.329998-05	2019-01-18 23:32:53.329998-05	\N	337000000000	【東方Vocal】 Red Moonlight Septet 「R-note」	youtube
N7TJjyIlCNI	2019-01-18 23:33:01.822649-05	2019-01-18 23:33:01.822649-05	\N	293000000000	【東方Vocal】 Lunatic Heart 「R-note」	youtube
INy199ZVq8Q	2019-01-18 23:47:17.67317-05	2019-01-18 23:47:17.67317-05	\N	248000000000	【東方ボーカル】 R-note  - Milk Tea	youtube
r2fUBxSnbsM	2019-01-18 23:47:30.141808-05	2019-01-18 23:47:30.141808-05	\N	317000000000	【東方Vocal】 永遠の夢 「R-note」	youtube
qo1v9oiMolM	2019-01-18 23:55:11.404504-05	2019-01-18 23:55:11.404504-05	\N	272000000000	【東方Vocal (Pop)】 R-note - ウラココロ	youtube
JAz0qdHXE5Q	2019-01-18 23:55:17.464499-05	2019-01-18 23:55:17.464499-05	\N	1969000000000	[東方] マーメイド幻想 ～Mermaid Fantasy～ - R-Note [Extended]	youtube
9FkP-wxATkk	2019-01-18 23:55:26.704824-05	2019-01-18 23:55:26.704824-05	\N	247000000000	【東方ボーカル】 「有頂天ハート」 【あ～るの～と】	youtube
2f3lv1NtcU0	2019-01-18 23:55:32.843596-05	2019-01-18 23:55:32.843596-05	\N	291000000000	【東方vocal】『Singing a Song』【R–Note】	youtube
URAUgNSarDo	2019-01-18 23:55:50.755737-05	2019-01-18 23:55:50.755737-05	\N	264000000000	【東方Vocal／Rock】 邪 Rollin' Days 「R-Note」	youtube
IE9uUZLHJrM	2019-01-19 00:04:06.051865-05	2019-01-19 00:04:06.051865-05	\N	245000000000	R-note feat. Ucchi - SAMENI-YUME	youtube
G-yhA6OnDAk	2019-01-19 00:07:22.177326-05	2019-01-19 00:07:22.177326-05	\N	246000000000	【東方Vocal (Pop)】 あ～るの～と「R-note」 - 妖 girl	youtube
soZD0HVbMxk	2019-01-19 00:10:03.288483-05	2019-01-19 00:10:03.288483-05	\N	302000000000	【東方Vocal／Rock】 AYA-KAZE ～彩風～ 「R-Note」	youtube
olQaCyWDVOg	2019-01-19 00:12:59.266998-05	2019-01-19 00:12:59.266998-05	\N	295000000000	【東方Vocal (Pop)】 R-note - 月のうた	youtube
T7uHGmc21Kw	2019-01-19 00:14:41.955663-05	2019-01-19 00:14:41.955663-05	\N	236000000000	【東方Vocal／Rock】 紅少女 「R-Note」	youtube
ewHx_reqSNU	2019-01-19 00:16:21.480257-05	2019-01-19 00:16:21.480257-05	\N	308000000000	【東方Vocal】 9th Memory 「R-note」	youtube
XpeDCMA-nog	2019-01-19 00:16:29.992974-05	2019-01-19 00:16:29.992974-05	\N	282000000000	【東方Vocal】 Fairy Dance on Ice 「R-note」	youtube
tr3OsLiYWZ0	2019-01-19 00:20:42.904182-05	2019-01-19 00:20:42.904182-05	\N	264000000000	【東方Vocal／Rock】 弦想メロディ 「R-Note」	youtube
KazE1v66pmM	2019-01-19 00:20:49.324525-05	2019-01-19 00:20:49.324525-05	\N	267000000000	【東方Vocal／Piano Ballad】  彩光の夢 「R-Note」	youtube
akuUFj6ITOs	2019-01-19 00:21:56.644738-05	2019-01-19 00:21:56.644738-05	\N	263000000000	【東方Vocal／Pops】 春のペンデュラム 「R-Note」	youtube
enr7IohBEds	2019-01-19 00:22:04.1065-05	2019-01-19 00:22:04.1065-05	\N	271000000000	[東方Vocal/Jazz] R-note - 赤い瞳の兎	youtube
0FpjH-Aa4Tw	2019-01-19 00:23:15.101089-05	2019-01-19 00:23:15.101089-05	\N	272000000000	【東方Vocal】 Inverse World 「R-note」	youtube
wEusRB8RLb4	2019-01-19 00:23:16.819009-05	2019-01-19 00:23:16.819009-05	\N	207000000000	【東方Vocal／Pop Rock】 春陽 Windy Day 「R-Note」	youtube
opHiaZLCCL8	2019-01-19 01:36:53.732739-05	2019-01-19 01:36:53.732739-05	\N	310000000000	fripSide - Prominence-Version 2007-	youtube
br_W0erNJ2g	2019-01-19 11:39:40.680214-05	2019-01-19 11:39:40.680214-05	\N	187000000000	YUC'e - Magical Mixer	youtube
VepGGEATqSM	2019-01-19 11:40:29.741239-05	2019-01-19 11:40:29.741239-05	\N	243000000000	osu!storyboard | YUC'e - Future Candy [Sugar Rush]	youtube
_G3Tvd37eGc	2019-01-19 11:41:09.685337-05	2019-01-19 11:41:09.685337-05	\N	244000000000	「Future Bass / Trap」 [YUC'e] Future Cider	youtube
NmBqXwDKS4g	2019-01-19 11:41:26.082582-05	2019-01-19 11:41:26.082582-05	\N	225000000000	【MV】Future Cαke - YUC'e	youtube
16mNjPICjb0	2019-01-19 11:41:46.150059-05	2019-01-19 11:41:46.150059-05	\N	172000000000	YUC'e - Night Club Junkie	youtube
Mhqn61HrLxM	2019-01-19 11:42:02.818157-05	2019-01-19 11:42:02.818157-05	\N	186000000000	YUC'e - macaron moon	youtube
-MqEHXDcqj	2019-01-19 14:22:56.739747-05	2019-01-19 14:22:56.739747-05	\N	0		youtube
AKfXF3wxlGw	2019-01-19 11:42:13.834963-05	2019-01-19 11:42:13.834963-05	\N	190000000000	「J-POP」YUC'e - POISON	youtube
G5bIBO81-uM	2019-01-19 11:42:27.394713-05	2019-01-19 11:42:27.394713-05	\N	203000000000	YUC'e - Sengoku HOP (c/f Athenarium)	youtube
yYFDk3MzDAQ	2019-01-19 11:42:39.59873-05	2019-01-19 11:42:39.59873-05	\N	194000000000	YUC'e - PUMP	youtube
sPq_faBWIHM	2019-01-19 11:48:10.44322-05	2019-01-19 11:48:10.44322-05	\N	210000000000	「J-POP」YUC'e - Future Candy	youtube
OeS1I33SAiU	2019-01-19 14:40:55.068221-05	2019-01-19 14:40:55.068221-05	\N	127000000000	Mario Athletic - Mario Sports Mix	youtube
qecSkaFOkls	2019-01-19 14:41:15.87838-05	2019-01-19 14:41:15.87838-05	\N	100000000000	Bloocheep Ocean - Mario Sports Mix	youtube
PrWsdxUOdNc	2019-01-19 14:41:32.724868-05	2019-01-19 14:41:32.724868-05	\N	112000000000	Chocobo Pop - Mario Sports Mix	youtube
0wXJJbALlB4	2019-01-19 14:41:52.109883-05	2019-01-19 14:41:52.109883-05	\N	125000000000	Punk Athletic - Mario Sports Mix	youtube
3PsBJwQ7Sns	2019-01-19 14:42:17.279357-05	2019-01-19 14:42:17.279357-05	\N	117000000000	Punk Ocean - Mario Sports Mix	youtube
U0WrXQ4Q5PE	2019-01-19 14:42:32.406473-05	2019-01-19 14:42:32.406473-05	\N	129000000000	Chocobo Beat - Mario Sports Mix	youtube
dVuSTmnVwew	2019-01-19 14:42:49.229402-05	2019-01-19 14:42:49.229402-05	\N	116000000000	Island Athletic - Mario Sports Mix	youtube
Fc04V5oNO58	2019-01-19 19:29:53.533751-05	2019-01-19 19:29:53.533751-05	\N	320000000000	fripside- escape (version 2008)	youtube
pSudEWBAYRE	2019-01-19 14:23:00.567029-05	2019-01-19 14:23:00.567029-05	\N	209000000000	EXO 엑소 "Love Shot" MV	youtube
-MqEHXDcqj8	2019-01-19 14:23:12.522681-05	2019-01-19 14:23:12.522681-05	\N	328000000000	FantomenK & meganeko - Crystal Tokyo	youtube
HofkzRkLXwY	2019-01-19 14:23:16.926979-05	2019-01-19 14:23:16.926979-05	\N	251000000000	Asymmetry - Reol ft. Shoriki Junpei (Vietsub) [ Original PV ]	youtube
8H4M9cTm91I	2019-01-19 14:23:32.527027-05	2019-01-19 14:23:32.527027-05	\N	169000000000	Shawn Daley - Paper Dolls (Full Track)	youtube
_XyBa8QsVQU	2019-01-19 15:27:59.172724-05	2019-01-19 15:27:59.172724-05	\N	234000000000	[MV] GFRIEND(여자친구) _ Time for the moon night(밤)	youtube
xuyLj9V-eNo	2019-01-19 15:38:21.415159-05	2019-01-19 15:38:21.415159-05	\N	181000000000	04 - Funeral For A Friend - Rookie Of The Year (Burnout 3 Takedown)	youtube
NeeYLy2xwNg	2019-01-19 15:38:28.860598-05	2019-01-19 15:38:28.860598-05	\N	186000000000	26 - My Chemical Romance - I'm Not Okay (I Promise) (Burnout 3 Takedown)	youtube
O1Y_dr10izk	2019-01-19 15:38:36.536689-05	2019-01-19 15:38:36.536689-05	\N	237000000000	23 - Local H - Everyone Alive (Burnout 3 Takedown)	youtube
U2cfju6GTNs	2019-01-19 15:41:14.5562-05	2019-01-19 15:41:14.5562-05	\N	86000000000	The Element Song by Tom Lehrer	youtube
a7gW74TCqd8	2019-01-19 19:32:06.521229-05	2019-01-19 19:32:06.521229-05	\N	270000000000	【東方ボーカル】 「中道」 【幽閉サテライト】	youtube
34QD99ABIAE	2019-01-19 19:32:36.42147-05	2019-01-19 19:32:36.42147-05	\N	224000000000	【東方Vocal】幽閉サテライト - 荒れ果てた地上の唄	youtube
8RM6dEeCtfE	2019-01-19 19:33:00.290102-05	2019-01-19 19:33:00.290102-05	\N	274000000000	Tsuki ni Murakumo Hana ni Kaze (Yuuhei Satellite)	youtube
6q29ozuPa4c	2019-01-19 19:33:31.545579-05	2019-01-19 19:33:31.545579-05	\N	274000000000	【藤原妹紅イメージ曲】 蘇る綺麗な真実 「幽閉サテライト」	youtube
jtH_nLso2Gg	2019-01-19 19:37:51.032952-05	2019-01-19 19:37:51.032952-05	\N	240000000000	【東方ボーカル】 「色は情へと誘う」 【幽閉サテライト】	youtube
BuxY_7qYiBU	2019-01-19 19:38:03.656242-05	2019-01-19 19:38:03.656242-05	\N	252000000000	【東方Orchestral】 Greenwich in the Sky 「Melodic Taste」	youtube
bm9pQ9E2pM0	2019-01-19 19:38:25.151922-05	2019-01-19 19:38:25.151922-05	\N	374000000000	【東方ボーカル】大地に咲く旋律(ぬらりひょん REMIX)【Yuuhei Satellite】	youtube
zhGz0O8GGUk	2019-01-19 19:39:15.498801-05	2019-01-19 19:39:15.498801-05	\N	288000000000	【東方Vocal／Hard Trance】 Endless Hell 「Shoujo Fractal」	youtube
jbs29QDuvfs	2019-01-19 19:39:42.509093-05	2019-01-19 19:39:42.509093-05	\N	241000000000	【東方ボーカル】 幽閉サテライト&少女フラクタル - 懐かしき君の文字	youtube
uLnzkxHB5c0	2019-01-19 19:39:52.490484-05	2019-01-19 19:39:52.490484-05	\N	264000000000	【東方ボーカル】 少女フラクタル - 果てなき風の軌跡さえ	youtube
4uBYsxxhmS0	2019-01-19 19:40:00.651024-05	2019-01-19 19:40:00.651024-05	\N	229000000000	【東方ボーカル】幽閉サテライト＆少女フラクタル - 私という好奇心	youtube
TXLtFoLhPpM	2019-01-19 19:40:38.256143-05	2019-01-19 19:40:38.256143-05	\N	226000000000	【東方Vocal／Techno Trance】 地より謳う 「Shoujo Fractal」	youtube
6BFCJj0DK4M	2019-01-19 19:41:25.429352-05	2019-01-19 19:41:25.429352-05	\N	234000000000	【東方Vocal／Trance】 オブリヴィオン 「Shoujo Fractal」	youtube
OmeYWO7-yIs	2019-01-19 19:41:28.635154-05	2019-01-19 19:41:28.635154-05	\N	322000000000	【東方Vocal／Psy-Trance】 Floral T.P.O. 「Shoujo Fractal」	youtube
SDjFpNDPLZU	2019-01-19 20:37:09.514978-05	2019-01-19 20:37:09.514978-05	\N	192000000000	【東方ボーカル】 「万華鏡」 【幽閉サテライト】	youtube
5f5OC_GYl9A	2019-01-19 20:37:59.04979-05	2019-01-19 20:37:59.04979-05	\N	276000000000	【東方Vocal/Eurobeat】Rabbit Carnival 【A-One】【C92】	youtube
u6fCqtrF3ic	2019-01-19 21:03:22.784577-05	2019-01-19 21:03:22.784577-05	\N	255000000000	【東方ボーカル】 C-CLAYS - UKIYO	youtube
Ov_7xPEjfKQ	2019-01-19 21:03:36.42895-05	2019-01-19 21:03:36.42895-05	\N	313000000000	【東方ボーカル】 「愛憎EGOIST」 【C-CLAYS】	youtube
1AiOynCRd4E	2019-01-19 21:13:14.237194-05	2019-01-19 21:13:14.237194-05	\N	251000000000	【東方ボーカル】 「冒険者」 【C-CLAYS】	youtube
Ao_iqczwqjY	2019-01-19 21:28:03.798392-05	2019-01-19 21:28:03.798392-05	\N	269000000000	[C88] 東方 Touhou Vocal - ヒソウテンソク [5150]	youtube
U0Zu1gdE6qk	2019-01-19 21:28:17.888246-05	2019-01-19 21:28:17.888246-05	\N	215000000000	【東方Vocal／Trance Rock】 可能性の化身 「幽閉サテライト」	youtube
5MFLJhrG1sc	2019-01-19 21:28:30.820304-05	2019-01-19 21:28:30.820304-05	\N	274000000000	【東方ボーカル】 Amateras Records - Confront Justice	youtube
LtrB_8CejUA	2019-01-19 22:57:35.336771-05	2019-01-19 22:57:35.336771-05	\N	235000000000	Yunomi - ジェリーフィッシュ (feat. ローラーガール)	youtube
c0qlsK38WqE	2019-01-19 23:03:40.912471-05	2019-01-19 23:03:40.912471-05	\N	210000000000	YUC'e - Cinderella Syndrome  -sweet ver.-	youtube
kRPGPAnPNa8	2019-01-19 23:59:30.85561-05	2019-01-19 23:59:30.85561-05	\N	86000000000	O Canada - National Anthem - Song & Lyrics - HQ	youtube
-7cq1AObM6g	2019-01-20 00:02:04.423994-05	2019-01-20 00:02:04.423994-05	\N	81000000000	State Song of Vermont	youtube
i5_asj1BGFs	2019-01-20 12:01:55.343629-05	2019-01-20 12:01:55.343629-05	\N	217000000000	Sweet Dreams (Are Made of This)	youtube
A9pd3M1Sxe8	2019-01-20 12:03:25.063239-05	2019-01-20 12:03:25.063239-05	\N	293000000000	Billie Jean	youtube
7-mE2ZB4wmU	2019-01-20 12:03:54.161274-05	2019-01-20 12:03:54.161274-05	\N	336000000000	In The Air Tonight	youtube
DGDyAb6pePo	2019-01-20 12:04:00.041408-05	2019-01-20 12:04:00.041408-05	\N	174000000000	7. Jackson 5 - I Want You Back	youtube
acJ-Wt3rpfc	2019-01-20 12:04:22.915873-05	2019-01-20 12:04:22.915873-05	\N	339000000000	Piano Man	youtube
U06jlgpMtQs	2019-01-20 16:24:59.205304-05	2019-01-20 16:24:59.205304-05	\N	225000000000	National Anthem of USSR	youtube
Hy1w1Rg1iuA	2019-01-20 16:25:18.445451-05	2019-01-20 16:25:18.445451-05	\N	177000000000	Civilization V OST | Haile Selassie Peace Theme | Traditional melody, Selassie's National Anthem	youtube
X1yD3_EL90Y	2019-01-20 16:25:29.429345-05	2019-01-20 16:25:29.429345-05	\N	208000000000	Civilization V OST | Casimir Peace Theme | Bóg się rodzi	youtube
kG2pSymg098	2019-01-20 16:26:02.945307-05	2019-01-20 16:26:02.945307-05	\N	388000000000	Civilization V OST | Harun al-Rashid Peace Theme | Thikriati; Hijaz Maqam	youtube
WQYN2P3E06s	2019-01-20 16:26:14.150494-05	2019-01-20 16:26:14.150494-05	\N	239000000000	Christopher Tin - Sogno di Volare ("The Dream of Flight") (Civilization VI Main Theme)	youtube
laOHHEU4m14	2019-01-20 16:26:18.353088-05	2019-01-20 16:26:18.353088-05	\N	207000000000	Civilization V OST | Pocatello Peace Theme | Shoshone Sun Dance Songs	youtube
W31QFFXWr6g	2019-01-20 16:26:26.874637-05	2019-01-20 16:26:26.874637-05	\N	315000000000	Civilization V OST | Gandhi Peace Theme | Raga Asa	youtube
u-pfAMWVV-o	2019-01-20 16:26:56.706948-05	2019-01-20 16:26:56.706948-05	\N	229000000000	Civilization V OST | Gandhi War Theme | Raga Asa	youtube
IJiHDmyhE1A	2019-01-20 16:27:11.249777-05	2019-01-20 16:27:11.249777-05	\N	215000000000	Christopher Tin - Baba Yetu (Official Music Video)	youtube
cVq4zJ1WbaQ	2019-01-20 16:27:40.846785-05	2019-01-20 16:27:40.846785-05	\N	121000000000	The Avengers - Theme Song	youtube
A-EgsuGOnh0	2019-01-20 16:28:17.674909-05	2019-01-20 16:28:17.674909-05	\N	264000000000	【東方Vocal】 NJK Record - Miracle∞Hinacle (eurobeat remix)	youtube
nh18v8B2fCs	2019-01-20 16:28:23.154677-05	2019-01-20 16:28:23.154677-05	\N	247000000000	【東方ボーカル】 「ハングオーバー」 【森羅万象】	youtube
4xc5LwYKdq0	2019-01-20 16:29:17.097863-05	2019-01-20 16:29:17.097863-05	\N	72000000000	Yakko's World but every time he names a country that was once British it gets faster	youtube
_pGaz_qN0cw	2019-01-20 16:29:54.656029-05	2019-01-20 16:29:54.656029-05	\N	175000000000	The Fellowship of the Ring Soundtrack-02-Concerning Hobbits	youtube
YY337bLiSio	2019-01-20 16:30:26.245936-05	2019-01-20 16:30:26.245936-05	\N	236000000000	The Lord of the Rings: The Return of the King Soundtrack - 05. The Steward of Gondor	youtube
09juUFppEQo	2019-01-20 16:30:44.944608-05	2019-01-20 16:30:44.944608-05	\N	208000000000	The Lord of the Rings: The Fellowship of the Ring CR - 05. Rivendell	youtube
EUtJbxYiC8s	2019-01-20 16:32:23.531115-05	2019-01-20 16:32:23.531115-05	\N	123000000000	Destiny OST Main Theme	youtube
wKcoovGKEf4	2019-01-20 16:33:07.784572-05	2019-01-20 16:33:07.784572-05	\N	276000000000	【東方Vocal・ニコカラ】虹のヒカリ【あ～るの～と】	youtube
iEhLr-tIjcU	2019-01-20 16:33:38.985966-05	2019-01-20 16:33:38.985966-05	\N	196000000000	【東方ボーカル】 河童の水恋歌 【あ～るの～と】	youtube
EvRaFLD_2bA	2019-01-20 16:36:17.353115-05	2019-01-20 16:36:17.353115-05	\N	209000000000	The Jam Slamurai -  Quad City DJ's vs Ace Attorney	youtube
kgkHO5yms3o	2019-01-20 16:59:45.658264-05	2019-01-20 16:59:45.658264-05	\N	210000000000	Dschinghis Khan - "Moskau" (English Version) With Lyrics	youtube
7i9ozy739c8	2019-01-20 17:01:22.005152-05	2019-01-20 17:01:22.005152-05	\N	188000000000	Dschinghis Khan - Genghis Khan [English Version with lyrics]	youtube
0vp51xZi36M	2019-01-20 17:02:42.296798-05	2019-01-20 17:02:42.296798-05	\N	384000000000	Will & Tim - Gerudo Valley (Zelda Theme)	youtube
Cnm3bn1ywBo	2019-01-20 17:36:46.512955-05	2019-01-20 17:36:46.512955-05	\N	263000000000	東方ヴォ―カルアレンジ　「氷結娘―ver:BEST―/藤宮 ゆき」	youtube
HoH0W7pJAOM	2019-01-20 18:00:41.504986-05	2019-01-20 18:00:41.504986-05	\N	294000000000	[RD-Sounds] Lies and Lamentations (spanish & english subtitles)	youtube
75DVZcFXa0w	2019-01-20 18:16:51.817797-05	2019-01-20 18:16:51.817797-05	\N	378000000000	【東方ボーカル】 【凋叶棕】 絶対的一方通行　～Unreachable Message	youtube
UwrdIPh261o	2019-01-20 18:17:14.339849-05	2019-01-20 18:17:14.339849-05	\N	218000000000	[Buta-Otome] Something That's Not a Dream (spanish subtitles)	youtube
49Q9TtoYIKY	2019-01-20 18:17:37.586473-05	2019-01-20 18:17:37.586473-05	\N	230000000000	[Buta-Otome] Soul-Settled Echo of Life (spanish subtitles)	youtube
5O44T0Da61k	2019-01-20 18:18:07.146193-05	2019-01-20 18:18:07.146193-05	\N	190000000000	[Buta-Otome] Living (spanish & english subtitles)	youtube
UGeNoml0OHc	2019-01-20 19:09:33.665101-05	2019-01-20 19:09:33.665101-05	\N	235000000000	Haywyre - Insight (Live Performance) [Monstercat Release]	youtube
x7zIRNtjAqE	2019-01-20 20:35:10.283984-05	2019-01-20 20:35:10.283984-05	\N	294000000000	BASS BOOSTED MR. BLUE SKY	youtube
3I4cfOd-ZgU	2019-01-20 21:17:16.303324-05	2019-01-20 21:17:16.303324-05	\N	357000000000	[Dubstep] - Au5 - Blossom [Monstercat EP Release]	youtube
JjOyl6zS-eU	2019-01-20 21:17:29.984448-05	2019-01-20 21:17:29.984448-05	\N	238000000000	Take On Me - Otamatone Cover (Full Version)	youtube
xsPeAdsh-i4	2019-01-20 21:17:42.247918-05	2019-01-20 21:17:42.247918-05	\N	306000000000	[Dubstep] - Rogue - Exogenesis [Monstercat Release]	youtube
npomRIkyU3g	2019-01-20 21:18:12.49939-05	2019-01-20 21:18:12.49939-05	\N	229000000000	[Glitch Hop or 110BPM] - Tut Tut Child - Drink Up [Monstercat Release]	youtube
ltf3abXiMjU	2019-01-20 21:21:01.945237-05	2019-01-20 21:21:01.945237-05	\N	148000000000	JoJo's Bizarre Adventure: Diamond is Unbreakable OP 2 - chase / batta	youtube
Rs0N_Lq6Gmo	2019-01-20 21:21:14.348854-05	2019-01-20 21:21:14.348854-05	\N	188000000000	JoJo's Bizarre Adventure: Diamond is Unbreakable OP 1 - Crazy Noisy Bizarre Town / THE DU	youtube
y7pi5VGTEz0	2019-01-20 21:21:30.562658-05	2019-01-20 21:21:30.562658-05	\N	335000000000	[Drumstep] - Au5 & Fractal - Blue [Monstercat EP Release]	youtube
KoY66lqmcYA	2019-01-20 21:21:41.920633-05	2019-01-20 21:21:41.920633-05	\N	262000000000	Bloody Stream	youtube
LSw7K4RpTHo	2019-01-20 21:34:28.634224-05	2019-01-20 21:34:28.634224-05	\N	291000000000	[Trap] - Slippy - Restless (feat. Anna Yvette) [Monstercat EP Release]	youtube
evNPqHf8iUI	2019-01-20 21:34:36.037654-05	2019-01-20 21:34:36.037654-05	\N	318000000000	[Trap] - Slips & Slurs - Vicimus [Restless / Vicimus EP]	youtube
ddFAIkUb7A0	2019-01-20 21:55:38.921317-05	2019-01-20 21:55:38.921317-05	\N	208000000000	[Drumstep] - Varien - Valkyrie (feat. Laura Brehm) [Monstercat Release]	youtube
3g34ZSm8PqI	2019-01-20 21:55:46.524715-05	2019-01-20 21:55:46.524715-05	\N	350000000000	[Electronic] - Varien - Valkyrie III: Atonement (feat. Laura Brehm) [Monstercat Release]	youtube
0LgpDbRmI4U	2019-01-20 21:56:16.602609-05	2019-01-20 21:56:16.602609-05	\N	260000000000	【東方Vocal／Rock】 パーフェクトエレガントとミステリアスシークレット 「GET IN THE RING」	youtube
o-r6sjCBug4	2019-01-20 21:56:27.820006-05	2019-01-20 21:56:27.820006-05	\N	255000000000	【東方ボーカル】 「traumatic」 【GET IN THE RING】	youtube
2Mz1zOrLbWY	2019-01-20 16:39:18.345376-05	2019-01-20 16:39:18.345376-05	\N	348000000000	【東方Vocal】DiGiTAL WiNG - 天地有用 (EXTENDED Ver)	youtube
Rist1V1y7D8	2019-01-20 16:41:16.332247-05	2019-01-20 16:41:16.332247-05	\N	493000000000	Barbarossa (Arabic battle music)	youtube
vDZUFrL-Fmw	2019-01-20 16:43:58.375616-05	2019-01-20 16:43:58.375616-05	\N	216000000000	【東方ボーカル】 SYNC.ART’S - Happiness Clover	youtube
SCD2tB1qILc	2019-01-20 19:15:44.654755-05	2019-01-20 19:15:44.654755-05	\N	270000000000	[DnB] - Tristam & Braken - Frame of Mind [Monstercat Release]	youtube
1dcXmkco5ko	2019-01-20 19:21:29.918974-05	2019-01-20 19:21:29.918974-05	\N	202000000000	[Drumstep] - Braken - To The Stars [Monstercat Release]	youtube
uuzUq3ZeXec	2019-01-20 19:26:43.751283-05	2019-01-20 19:26:43.751283-05	\N	261000000000	[Dubstep] - Razihel & Virtual Riot - One For All, All For One [Monstercat Release]	youtube
cj73hUrwM1s	2019-01-20 19:26:56.93316-05	2019-01-20 19:26:56.93316-05	\N	315000000000	[Electro] - Tristam - Truth [Monstercat Release]	youtube
OVMuwa-HRCQ	2019-01-20 19:27:07.384186-05	2019-01-20 19:27:07.384186-05	\N	220000000000	[Drumstep] - Tristam & Braken - Flight [Monstercat Release]	youtube
rEL-HdWvLpM	2019-01-20 19:27:24.546586-05	2019-01-20 19:27:24.546586-05	\N	212000000000	[Dubstep] - Pegboard Nerds - Here It Comes [Monstercat Release]	youtube
B88mv0dhYwc	2019-01-20 19:51:22.22971-05	2019-01-20 19:51:22.22971-05	\N	253000000000	[Electro] - Pegboard Nerds - Emergency [Monstercat Release]	youtube
DECxluN8OZM	2019-01-20 19:51:36.83556-05	2019-01-20 19:51:36.83556-05	\N	348000000000	[Dubstep] - Au5 - Snowblind (feat. Tasha Baxter) [Monstercat Release]	youtube
wqZ5iLOUOGA	2019-01-20 19:51:50.913691-05	2019-01-20 19:51:50.913691-05	\N	234000000000	[Drumstep] - Noisestorm - Breakdown VIP [Monstercat Release]	youtube
CfTsOkhFsrQ	2019-01-20 19:52:06.326538-05	2019-01-20 19:52:06.326538-05	\N	335000000000	Ata - Euphoria	youtube
VI5I3MuKJlo	2019-01-20 21:07:24.853157-05	2019-01-20 21:07:24.853157-05	\N	87000000000	Crab Rave - Otamatone Cover	youtube
nOiOaNVlUV4	2019-01-20 21:08:51.785806-05	2019-01-20 21:08:51.785806-05	\N	318000000000	【東方Vocal】FELT - MAGIC! [Eris's One Moment mix]	youtube
bQJU82Lk79g	2019-01-20 21:09:08.673138-05	2019-01-20 21:09:08.673138-05	\N	114000000000	Despacito - Otamatone Cover	youtube
LlvvThrix_k	2019-01-20 21:09:21.074906-05	2019-01-20 21:09:21.074906-05	\N	158000000000	We Are Number One - Otamatone Cover	youtube
JUh_5bRzOMU	2019-01-20 22:19:34.783182-05	2019-01-20 22:19:34.783182-05	\N	328000000000	【東方ボーカル】 「有頂天子」 【SOUND HOLIC】	youtube
azdznxtnFVc	2019-01-20 22:20:06.075333-05	2019-01-20 22:20:06.075333-05	\N	216000000000	【東方ボーカル】 「運命線上のアリア」 【森羅万象】	youtube
cR4ea7fcbG0	2019-01-20 22:20:14.797996-05	2019-01-20 22:20:14.797996-05	\N	264000000000	【東方ヴォーカルPV】Shout It Out Loud!!!【暁Records公式】	youtube
hAy-1NraoR4	2019-01-20 22:29:20.992908-05	2019-01-20 22:29:20.992908-05	\N	260000000000	【東方Eurobeat ENG SUBS】On The Moon【A-ONE】	youtube
W3P8CJkwMTg	2019-01-20 22:29:31.729362-05	2019-01-20 22:29:31.729362-05	\N	258000000000	【東方ボーカルENG SUB】Scream Out!【A-ONE】	youtube
dhRMMwjjwMA	2019-01-20 22:29:41.049587-05	2019-01-20 22:29:41.049587-05	\N	196000000000	【東方Vocal／Rock】 Scream out! -again- 「A-ONE × 暁Records」【JPN Subtitles】	youtube
8uZEVIputp4	2019-01-20 22:30:19.708531-05	2019-01-20 22:30:19.708531-05	\N	271000000000	【東方Eurobeat】 Endless Seeker 【A-One】	youtube
VkRi59oa5Eg	2019-01-20 22:32:59.455131-05	2019-01-20 22:32:59.455131-05	\N	259000000000	【東方ヴォーカルPV】Sci-Fi ROMANCE TRAVELER【暁Records公式】	youtube
ewnb5Wkjfz0	2019-01-20 22:33:16.303918-05	2019-01-20 22:33:16.303918-05	\N	359000000000	【東方Eurobeat ENG SUBS】Fantastic World【A-ONE】	youtube
N-02x7ojzq8	2019-01-21 11:36:49.686749-05	2019-01-21 11:36:49.686749-05	\N	194000000000	POP/STARS 𝐯𝐬 MEGALOVANIA ~ Instrumental Mix	youtube
xVjGkTDgbWA	2019-01-21 14:08:03.460166-05	2019-01-21 14:08:03.460166-05	\N	193000000000	succducc - me & u	youtube
dw8RBbak1Vc	2019-01-21 14:10:45.11215-05	2019-01-21 14:10:45.11215-05	\N	121000000000	succducc - azure	youtube
7PYe57MwxPI	2019-01-21 14:10:52.367529-05	2019-01-21 14:10:52.367529-05	\N	243000000000	dark cat - BUBBLE TEA (feat. juu & cinders)	youtube
7xFe0vkUJXU	2019-01-21 14:11:05.148135-05	2019-01-21 14:11:05.148135-05	\N	188000000000	dark cat - CRAZY MILK	youtube
d9LYaRuV4yo	2019-01-21 14:11:12.144387-05	2019-01-21 14:11:12.144387-05	\N	249000000000	succducc - i really like you	youtube
mXVs3uJjG6M	2019-01-21 15:41:03.417749-05	2019-01-21 15:41:03.417749-05	\N	231000000000	Billy Joel- Big Shot (Lyrics)	youtube
BLLFgK3qubE	2019-01-21 15:42:36.171317-05	2019-01-21 15:42:36.171317-05	\N	185000000000	東方 [Piano / Instrumental] Akutagawa Ryuunosuke's Kappa ~ Candid Friend 『4』【Autumn #3】	youtube
KiZtHr2dpds	2019-01-21 15:42:50.360175-05	2019-01-21 15:42:50.360175-05	\N	274000000000	【東方ボーカル】 「ONE TO ONE」 【Amateras Records】	youtube
8UOJJJbDAlU	2019-01-21 15:52:39.122402-05	2019-01-21 15:52:39.122402-05	\N	294000000000	【東方ボーカル】 「Swear By God」 【Amateras Records】	youtube
S8_ag9T4qBY	2019-01-21 15:57:23.770547-05	2019-01-21 15:57:23.770547-05	\N	247000000000	【東方ボーカル】 Amateras Records - Justice Ruler	youtube
zF1UOUP3KuU	2019-01-21 15:57:34.46339-05	2019-01-21 15:57:34.46339-05	\N	318000000000	【東方ボーカル】 「Important Lie」 【Amateras Records】	youtube
Jvppa97XPNE	2019-01-21 15:57:41.433813-05	2019-01-21 15:57:41.433813-05	\N	392000000000	【東方vocal】Amateras Records -「Indefinitely」	youtube
O3xDYqMUDzw	2019-01-21 15:57:46.833236-05	2019-01-21 15:57:46.833236-05	\N	297000000000	【東方ボーカル】 「Luv For U」 【Amateras Records】	youtube
C4unLobWfyE	2019-01-21 15:57:59.253138-05	2019-01-21 15:57:59.253138-05	\N	274000000000	【東方ニコカラ】BELIEVE YOU／A-ONE	youtube
85m03SpEXrI	2019-01-21 16:14:07.889285-05	2019-01-21 16:14:07.889285-05	\N	345000000000	【東方】 Amateras Records - 砂上のFILTER	youtube
lxc4VnPbEtc	2019-01-21 16:14:12.100539-05	2019-01-21 16:14:12.100539-05	\N	270000000000	【東方風神録 】Apparition Mountain 「 Alstroemeria Records 」	youtube
bpOSxM0rNPM	2019-01-21 16:36:34.349604-05	2019-01-21 16:36:34.349604-05	\N	266000000000	Arctic Monkeys - Do I Wanna Know? (Official Video)	youtube
sSOtIHUJbjk	2019-01-21 17:03:50.621147-05	2019-01-21 17:03:50.621147-05	\N	213000000000	Cassie - Me & U (Official Video)	youtube
zF5Ddo9JdpY	2019-01-21 17:06:09.539586-05	2019-01-21 17:06:09.539586-05	\N	208000000000	Awaken (ft. Valerie Broussard) | League of Legends Cinematic - Season 2019	youtube
W9a9xdWgU5I	2019-01-21 17:13:14.431489-05	2019-01-21 17:13:14.431489-05	\N	135000000000	Are You a Real Villain? ~ We Are Number One [Commission]	youtube
C-iSc7RxSRk	2019-01-21 17:13:32.127883-05	2019-01-21 17:13:32.127883-05	\N	250000000000	【東方Vocal／Eurobeat】 秋意浓 〜Qiū yì nóng〜 「A-ONE」【JPN Subtitle】	youtube
h2xaLfBg2rg	2019-01-21 17:13:50.174276-05	2019-01-21 17:13:50.174276-05	\N	244000000000	【東方Vocal／Eurobeat】 FLY INTO THE LAVA 「SOUND HOLIC」【JPN Subtitle】	youtube
ydD-WUphO5Y	2019-01-21 17:32:15.040359-05	2019-01-21 17:32:15.040359-05	\N	230000000000	「東方 Vocal」 ルナ・ダイアル 「岸田教団&THE明星ロケッツ」 (Subbed)	youtube
1CAW8AVz498	2019-01-21 17:37:47.532844-05	2019-01-21 17:37:47.532844-05	\N	110000000000	【東方MV】進捗どうですか？【IOSYS】	youtube
ogVOO4hzr0k	2019-01-21 17:38:27.195397-05	2019-01-21 17:38:27.195397-05	\N	225000000000	【東方Vocal／Rock】 コルネイユ 「IOSYS」	youtube
Q9JDdYLf-jM	2019-01-21 17:45:52.343216-05	2019-01-21 17:45:52.343216-05	\N	268000000000	【東方ボーカル】Say Around【A-ONE】	youtube
zVVjlJGKgjk	2019-01-21 17:57:49.515031-05	2019-01-21 17:57:49.515031-05	\N	179000000000	【東方ボーカル】 「アノ華咲クヤ」 【幽閉サテライト × 岸田教団&THE明星ロケッツ】	youtube
KwrbnWLnA_g	2019-01-21 18:02:24.385196-05	2019-01-21 18:02:24.385196-05	\N	370000000000	RD-Sounds ~ めらみぽっぷ - Cruel CRuEL 【東方remix】	youtube
f-9YmU7KypU	2019-01-21 18:02:34.307816-05	2019-01-21 18:02:34.307816-05	\N	286000000000	【東方Vocal／Rock】 作りかけのタイムマシーン 「GET IN THE RING」	youtube
Moz9jZ3xhxY	2019-01-21 18:02:41.602037-05	2019-01-21 18:02:41.602037-05	\N	243000000000	【東方Vocal／Rock】  水色花火 「BUTAOTOME」	youtube
_LYBLkzX99M	2019-01-21 18:02:47.948644-05	2019-01-21 18:02:47.948644-05	\N	287000000000	【東方Vocal (Pop)】 Liz Triangle - Pandemic	youtube
6nDrD2WNSJU	2019-01-21 18:02:53.846629-05	2019-01-21 18:02:53.846629-05	\N	278000000000	【東方ボーカル】 「仮面のエモーション」 【あ～るの～と】	youtube
uisP4EiYaTI	2019-01-21 18:02:57.786592-05	2019-01-21 18:02:57.786592-05	\N	328000000000	Demetori - 風神少女 (Wind God Girl)	youtube
vZbDkMRsM5o	2019-01-21 18:03:05.662592-05	2019-01-21 18:03:05.662592-05	\N	313000000000	【東方Vocal】 Revolving Factory 「Machikado-Mapoze」 【Subbed】	youtube
kidRr7s6zp4	2019-01-21 19:03:40.317181-05	2019-01-21 19:03:40.317181-05	\N	161000000000	Teddy Picker	youtube
P2laobokEA0	2019-01-21 19:13:24.643622-05	2019-01-21 19:13:24.643622-05	\N	250000000000	[Buta-Otome] The fear is oneself (spanish & english subtitles)	youtube
MRSfojHs0KA	2019-01-21 19:25:54.637573-05	2019-01-21 19:25:54.637573-05	\N	221000000000	【東方ボーカル】 夜の帳をこえて 【発熱巫女〜ず】	youtube
X5VJX9kYf3Q	2019-01-21 19:26:38.026603-05	2019-01-21 19:26:38.026603-05	\N	196000000000	[Drumstep] - Pegboard Nerds - Pressure Cooker [Monstercat Release]	youtube
SKDaFKlmf0s	2019-01-21 20:32:39.457501-05	2019-01-21 20:32:39.457501-05	\N	283000000000	【東方Vocal／Piano Ballad】 もう何も他にいらないはずさ 「BUTAOTOME」	youtube
4DtIj9AJG2E	2019-01-21 20:50:44.032878-05	2019-01-21 20:50:44.032878-05	\N	200000000000	【東方ボーカル】 「メイドノココロハ アヤツリドール」 【森羅万象】	youtube
RcwH1jbPI_g	2019-01-21 20:50:56.55474-05	2019-01-21 20:50:56.55474-05	\N	257000000000	【東方Vocal】汝は白狼なりや？ 原曲：Mountain of Faith.	youtube
Wr-1shBqkbc	2019-01-21 20:51:03.398443-05	2019-01-21 20:51:03.398443-05	\N	217000000000	【東方Vocal／Jazz】 Fall of Fall 「Tomato Gummy」	youtube
nUO5etZWbYM	2019-01-21 22:56:36.782603-05	2019-01-21 22:56:36.782603-05	\N	273000000000	[TOUHOU EUROBEAT/VOCAL]:kakehiki	youtube
tnFWgQT0bZQ	2019-01-22 16:18:11.984673-05	2019-01-22 16:18:11.984673-05	\N	174000000000	12th Street Rag by Euday L. Bowman ~ Aaron Robinson, piano	youtube
mRCi7JDOmmM	2019-01-22 16:18:38.766838-05	2019-01-22 16:18:38.766838-05	\N	195000000000	Ethan Uslan - You're the Cream in My Coffee - Ray Henderson	youtube
aFmHk6xgAsg	2019-01-22 16:18:42.940705-05	2019-01-22 16:18:42.940705-05	\N	163000000000	Martin Spitznagel - Tiger Rag - Jelly Roll Morton	youtube
yvlLgYOcWxE	2019-01-22 16:30:57.526922-05	2019-01-22 16:30:57.526922-05	\N	186000000000	AshCoolBro - Uptown Puffs	youtube
Vr32qgH1NQc	2019-01-22 16:36:08.37995-05	2019-01-22 16:36:08.37995-05	\N	159000000000	ís - Yoko Kanno x POP ETC	youtube
lfksYyxGRJw	2019-01-22 16:36:26.542139-05	2019-01-22 16:36:26.542139-05	\N	375000000000	Yoko Kanno feat. Arnór Dan - Von (Zankyou No Terror OST)	youtube
PXkc2GLPl6I	2019-01-22 16:36:43.518265-05	2019-01-22 16:36:43.518265-05	\N	252000000000	Ólafur Arnalds - Old Skin ft. Arnór Dan	youtube
EpPzg3_276o	2019-01-22 16:37:05.600398-05	2019-01-22 16:37:05.600398-05	\N	254000000000	YUI - Again [Official Audio]	youtube
SV4mT_mnxPk	2019-01-22 16:37:45.157159-05	2019-01-22 16:37:45.157159-05	\N	300000000000	Raj Ramayya - Strangers	youtube
8z3-DqKeFSQ	2019-01-22 16:37:59.127435-05	2019-01-22 16:37:59.127435-05	\N	196000000000	11  Underground River ft Raj Ramayya	youtube
kyUtGNIFx5c	2019-01-21 18:04:34.117679-05	2019-01-21 18:04:34.117679-05	\N	146000000000	The Quick Brown Fox - The Big Black	youtube
c15mRZqIkp8	2019-01-21 18:36:33.657423-05	2019-01-21 18:36:33.657423-05	\N	261000000000	【東方ボーカルENG SUBS】No Routine【A-ONE】	youtube
VQH8ZTgna3Q	2019-01-21 19:00:36.633169-05	2019-01-21 19:00:36.633169-05	\N	224000000000	Arctic Monkeys - R U Mine? (Official Video)	youtube
zKJrrMIsghI	2019-01-21 19:05:50.274664-05	2019-01-21 19:05:50.274664-05	\N	312000000000	Arctic Monkeys - Four Out Of Five (Official Audio)	youtube
eLYeiimWLoY	2019-01-21 19:06:00.873911-05	2019-01-21 19:06:00.873911-05	\N	183000000000	Arctic Monkeys - She Looks Like Fun (Official Audio)	youtube
kwQT4jnbAso	2019-01-21 19:06:18.098177-05	2019-01-21 19:06:18.098177-05	\N	180000000000	Arctic Monkeys - The World's First Ever Monster Truck Front Flip (Official Audio)	youtube
4icQOUpQNuE	2019-01-21 19:07:19.811897-05	2019-01-21 19:07:19.811897-05	\N	218000000000	Black Treacle	youtube
UzznHMDvybg	2019-01-21 19:12:39.581333-05	2019-01-21 19:12:39.581333-05	\N	226000000000	[Touhou Jazz Rock] Buta-Otome - 風雲～kazakumo～ (Eng Sub)	youtube
zwBV0THrdzs	2019-01-21 19:13:53.477084-05	2019-01-21 19:13:53.477084-05	\N	308000000000	[CYTOKINE] Stray Whisper Taker (spanish & english subtitles)	youtube
o846OmOLWDA	2019-01-21 19:14:23.941832-05	2019-01-21 19:14:23.941832-05	\N	306000000000	[Buta-Otome] To Death in Love (spanish & english subtitles)	youtube
qvw8zF2eFTE	2019-01-21 19:14:32.026759-05	2019-01-21 19:14:32.026759-05	\N	296000000000	【東方Piano】 To Death in Love 「BUTAOTOME」	youtube
fa5gtdVRQqU	2019-01-21 19:14:48.897434-05	2019-01-21 19:14:48.897434-05	\N	305000000000	【東方ボーカル】Electra feat. itori 「ZYTOKINE」	youtube
8-LewaeKejM	2019-01-21 19:15:07.534787-05	2019-01-21 19:15:07.534787-05	\N	181000000000	Fireside	youtube
cGLCqxPfdjY	2019-01-21 19:15:10.449314-05	2019-01-21 19:15:10.449314-05	\N	269000000000	【東方Vocal／Electro House】 LAST DAY GOOD NIGHT 「ZYTOKINE」	youtube
-zuGa6iWsDM	2019-01-21 19:39:36.739259-05	2019-01-21 19:39:36.739259-05	\N	261000000000	[東方 Touhou Vocal/Rock] めらみぽっぷ - 汝は白狼なりや？ (HD 1080p)	youtube
kf6mQzai_Vo	2019-01-21 19:51:16.367675-05	2019-01-21 19:51:16.367675-05	\N	212000000000	【東方Vocal／Jazz Rock】 ネコイズム 「BUTAOTOME」	youtube
89YSp9WoWXQ	2019-01-21 19:51:39.049909-05	2019-01-21 19:51:39.049909-05	\N	237000000000	【東方Vocal／Jazz Pop】 狂人日記 「BUTAOTOME」	youtube
jRHHwSqNM_o	2019-01-21 19:51:48.1767-05	2019-01-21 19:51:48.1767-05	\N	285000000000	【東方Vocal／Piano Ballad】 哀しそうで嬉しそうな物語 「BUTAOTOME」	youtube
X9nFyr047P8	2019-01-21 20:00:56.677704-05	2019-01-21 20:00:56.677704-05	\N	261000000000	【東方Vocal／Pop】 七回目の冬 「BUTAOTOME」	youtube
fNArY-SDxbg	2019-01-21 21:06:04.836586-05	2019-01-21 21:06:04.836586-05	\N	302000000000	【東方Vocal／Jazz Funk】 FELICIDADE 「Hatsunetsumiko's」	youtube
6pY1baQNB50	2019-01-21 21:06:11.017395-05	2019-01-21 21:06:11.017395-05	\N	145000000000	東方 Piano『Fall of Fall ~ Autumnal Waterfall #5』- 玖原イヅナ	youtube
AP_dxwJcDWs	2019-01-21 21:12:11.266347-05	2019-01-21 21:12:11.266347-05	\N	279000000000	「東方 Vocal」 マーメイド幻想 ～Mermaid Fantasy～ 「あ～るの～と」	youtube
uM2iP_3Nn5I	2019-01-21 21:12:47.998854-05	2019-01-21 21:12:47.998854-05	\N	374000000000	【あ～るの～と】Words Are	youtube
y5sNabqzAt8	2019-01-21 21:13:44.392814-05	2019-01-21 21:13:44.392814-05	\N	263000000000	【東方ボーカル】 「星になって ～Missing you～」 【あ～るの～と】	youtube
SDmr8c72wes	2019-01-21 21:13:57.277856-05	2019-01-21 21:13:57.277856-05	\N	254000000000	【東方ボーカル】 「夜桜に君を隠して」 【幽閉サテライト】  【Subbed】	youtube
fBO8T2PLrrY	2019-01-21 21:14:10.437138-05	2019-01-21 21:14:10.437138-05	\N	263000000000	[東方フルMV]幽閉サテライト / 零れずの願いゴト [C931日目東7あ20a]	youtube
7jwml0jevv0	2019-01-22 13:08:55.989317-05	2019-01-22 13:08:55.989317-05	\N	1692000000000	Richard Strauss - Metamorphosen	youtube
Legz2nbxpmc	2019-01-22 16:19:56.363133-05	2019-01-22 16:19:56.363133-05	\N	185000000000	Russell Wilson - When The Saints Go Marching In	youtube
bGbFgg-JOc8	2019-01-22 16:20:49.874829-05	2019-01-22 16:20:49.874829-05	\N	219000000000	Stephanie Trick  'Fingerbreaker'	youtube
EqkCBpeLT1Q	2019-01-22 16:21:00.630311-05	2019-01-22 16:21:00.630311-05	\N	127000000000	SpongeBob Production Music Twelfth Street Rag	youtube
RHQTpW1Zo6w	2019-01-22 16:22:19.273689-05	2019-01-22 16:22:19.273689-05	\N	48000000000	SpongeBob Music: Twelfth Street Rag with Bass	youtube
yDlBdSZdTno	2019-01-22 16:38:33.00181-05	2019-01-22 16:38:33.00181-05	\N	198000000000	Kevin Penkin & Takeshi Saitou - Hanezeve Caradhina	youtube
mgYrV-zHzac	2019-01-22 19:40:34.006682-05	2019-01-22 19:40:34.006682-05	\N	190000000000	Gatchaman Crowds OST (Full) - 04 Firebird	youtube
pJ0I9LQ2EOA	2019-01-22 19:40:45.413283-05	2019-01-22 19:40:45.413283-05	\N	233000000000	Gatchaman Crowds OST (Full) - 01 Gotchaman ~ In the name of Love	youtube
cA3wB03BKqA	2019-01-22 19:41:04.675312-05	2019-01-22 19:41:04.675312-05	\N	139000000000	Gatchaman Crowds OST (Full) - 05 Tutu	youtube
eMzsG9t66rE	2019-01-23 15:09:31.910337-05	2019-01-23 15:09:31.910337-05	\N	321000000000	【東方 Vocal / Trance】 Halozy ~ Deconstruction Star 【Comiket 77】	youtube
GSMV-Rv7C1w	2019-01-23 15:09:41.644781-05	2019-01-23 15:09:41.644781-05	\N	309000000000	Halozy - Genryuu Kaiko	youtube
lBasIGZC-JM	2019-01-23 15:09:50.701431-05	2019-01-23 15:09:50.701431-05	\N	342000000000	Halozy - Sentimental Skyscraper	youtube
R7lOxHo7Rww	2019-01-23 15:09:57.642573-05	2019-01-23 15:09:57.642573-05	\N	290000000000	Touhou Vocal「Halozy」Serenade of love VOSTFR+ROMAJI	youtube
khdKclxSyjY	2019-01-23 18:49:59.826482-05	2019-01-23 18:49:59.826482-05	\N	248000000000	Senbonzakura - Hatsune Miku: Project Mirai DX	youtube
Mqps4anhz0Q	2019-01-23 20:25:12.140918-05	2019-01-23 20:25:12.140918-05	\N	245000000000	[1080P Full風] 千本桜 Senbonzakura "One Thousand Cherry Trees"- 初音ミク Hatsune Miku DIVA English Romaji	youtube
hbe-uN6qECg	2019-01-24 16:24:33.662521-05	2019-01-24 16:24:33.662521-05	\N	224000000000	Through the Fire Flies and Flames	youtube
4x5SAseoJI4	2019-01-24 19:49:04.300985-05	2019-01-24 19:49:04.300985-05	\N	382000000000	Maaya Sakamoto feat. Steve Conte - THE GARDEN OF EVERYTHING [HQ]	youtube
AiumBwlr-CU	2019-01-24 19:49:40.171614-05	2019-01-24 19:49:40.171614-05	\N	281000000000	Steve Conte - Call Me Call Me	youtube
Q713uD7Fd7w	2019-01-24 19:49:54.960419-05	2019-01-24 19:49:54.960419-05	\N	220000000000	Could You Bite The Hand? by Steve Conte	youtube
QohmZkSPrzE	2019-01-24 19:50:25.076604-05	2019-01-24 19:50:25.076604-05	\N	315000000000	Wolf's Rain - Heaven's Not Enough	youtube
O8TEHD9Fvpw	2019-01-24 19:50:50.315658-05	2019-01-24 19:50:50.315658-05	\N	314000000000	Duvet [Acoustic]	youtube
cNplZrRSjeI	2019-01-24 19:51:01.978019-05	2019-01-24 19:51:01.978019-05	\N	302000000000	Samurai Champloo - Shiki No Uta (HQ)	youtube
_SgWum9kHYk	2019-01-24 19:51:36.676347-05	2019-01-24 19:51:36.676347-05	\N	204000000000	Duvet	youtube
41tIUr_ex3g	2019-01-24 23:32:10.222217-05	2019-01-24 23:32:10.222217-05	\N	224000000000	Transistor Original Soundtrack - The Spine	youtube
vFrjMq4aL-g	2019-01-24 23:33:56.295572-05	2019-01-24 23:33:56.295572-05	\N	271000000000	Transistor Original Soundtrack - Paper Boats	youtube
JE1Gvzxfm1E	2019-01-25 00:17:38.310438-05	2019-01-25 00:17:38.310438-05	\N	122000000000	Shawn Wasabi - BURNT RICE (Original Song)	youtube
nwJ0ofmDVo4	2019-01-25 00:46:36.129272-05	2019-01-25 00:46:36.129272-05	\N	72000000000	Globbing in the 90's	youtube
9UeB9dE3L2w	2019-01-25 17:47:14.581994-05	2019-01-25 17:47:14.581994-05	\N	159000000000	twiddy - Live from the Bowling Alley	youtube
0n7m9uOxmWQ	2019-01-25 18:05:53.992687-05	2019-01-25 18:05:53.992687-05	\N	66000000000	Kizuna AI - Fuck You !	youtube
xuCn8ux2gbs	2019-01-25 20:51:13.939063-05	2019-01-25 20:51:13.939063-05	\N	1166000000000	history of the entire world, i guess	youtube
hcTH9CCwAYs	2019-01-25 20:53:05.387536-05	2019-01-25 20:53:05.387536-05	\N	283000000000	【東方Vocal／Rock】 触れる夢 「BUTAOTOME」	youtube
hjTAakwP924	2019-01-26 02:44:28.908059-05	2019-01-26 02:44:28.908059-05	\N	234000000000	Eromanga-sensei opening Full『ClariS - Hitorigoto』	youtube
wxvCtUOZP6k	2019-01-26 02:45:47.46817-05	2019-01-26 02:45:47.46817-05	\N	261000000000	【東方Vocal／Eurobeat】 SPIRAL FLECTION 「SOUND HOLIC」	youtube
LqRC-WHfLfg	2019-01-26 02:46:26.356976-05	2019-01-26 02:46:26.356976-05	\N	587000000000	【東方ボーカル】 「MyonMyonMyonMyonMyonMyonMyon!」 【ShibayanRecords】 【Subbed】	youtube
AscL48KP0Mg	2019-01-26 02:46:41.406089-05	2019-01-26 02:46:41.406089-05	\N	507000000000	【東方ボーカル】 「MyonMyonMyonMyonMyon!」 【ShibayanRecords】【Subbed】	youtube
m4MBAaA0ZAM	2019-01-26 03:11:28.406141-05	2019-01-26 03:11:28.406141-05	\N	335000000000	私的作業用BGM Fripside - sky -	youtube
8R_saFdisRA	2019-01-26 02:47:02.618322-05	2019-01-26 02:47:02.618322-05	\N	590000000000	【東方NuDisco】 MyonMyonMyonMyonMyonMyonMyonMyon! 「ShibayanRecords」	youtube
S1_k6XdAFLc	2019-01-26 03:10:03.249032-05	2019-01-26 03:10:03.249032-05	\N	62000000000	Totally Legit Smash Bros. Roster	youtube
KkgL0mn4Aqw	2019-01-26 03:50:38.50646-05	2019-01-26 03:50:38.50646-05	\N	255000000000	【東方Vocal／Eurobeat】 呪歌 「SOUND HOLIC」	youtube
dom2gZBlx94	2019-01-26 15:35:43.500646-05	2019-01-26 15:35:43.500646-05	\N	125000000000	Salk2d - 断片Story	youtube
7LVCTryTjLw	2019-01-26 15:40:58.681639-05	2019-01-26 15:40:58.681639-05	\N	248000000000	「東方 Vocal」 念仏磔刑／ウソマコト 「Liz Triangle」	youtube
zbanmQGoDVA	2019-01-26 15:46:06.577635-05	2019-01-26 15:46:06.577635-05	\N	260000000000	【東方Vocal／Piano Pop Ballad】 薔薇と心眼 「BUTAOTOME」	youtube
_y8KPpiF7aM	2019-01-26 15:46:32.415978-05	2019-01-26 15:46:32.415978-05	\N	299000000000	【東方Vocal／Bass House】 SPIDER NET WORK - kaguraduki Remix - 「ESQUARIA」【ENG Subs】	youtube
PjBS454UAic	2019-01-26 21:32:32.852448-05	2019-01-26 21:32:32.852448-05	\N	215000000000	havanananananananananananananananananananananananananananananananananananananananananananananananana	youtube
rIA1KsTIe30	2019-01-26 21:42:55.213517-05	2019-01-26 21:42:55.213517-05	\N	31000000000	Bill Nye the Science Guy but every Bill makes it bass boost	youtube
k3jROXmy2MI	2019-01-26 21:52:55.662823-05	2019-01-26 21:52:55.662823-05	\N	229000000000	Rollie but every time they say rollie it gets bass boosted	youtube
lrMsA1JIItY	2019-01-26 21:56:42.80388-05	2019-01-26 21:56:42.80388-05	\N	121000000000	【Touhou IOSYS】 Alice Unclearly Remembered The Precious Lyrics	youtube
vR5HJp_xXRs	2019-01-26 21:56:59.548033-05	2019-01-26 21:56:59.548033-05	\N	122000000000	Jordan Stole The Precious Slam	youtube
a9UYv3ONvng	2019-01-26 21:57:22.412558-05	2019-01-26 21:57:22.412558-05	\N	182000000000	your reality but converted to midi	youtube
tQCJ594rNNs	2019-01-26 22:12:00.009044-05	2019-01-26 22:12:00.009044-05	\N	196000000000	【東方Vocal／EDM Pop】 天帝Meteor 「C-CLAYS」	youtube
-X0ku2LSP4s	2019-01-26 22:12:15.248451-05	2019-01-26 22:12:15.248451-05	\N	222000000000	【東方Vocal／Rock】 ままならない 「BUTAOTOME」 【Subbed】	youtube
5IAtdx0IZwA	2019-01-26 22:12:36.664613-05	2019-01-26 22:12:36.664613-05	\N	299000000000	[Touhou Vocal] [C-CLAYS] VaizravaNa (spanish & english subtitles)	youtube
wTxeq0qc5ag	2019-01-26 22:16:50.690812-05	2019-01-26 22:16:50.690812-05	\N	394000000000	[Shibayan Records] Eleven Point Three Candle Magic (spanish & english subtitles)	youtube
QBRI7qts0aM	2019-01-26 22:17:27.913209-05	2019-01-26 22:17:27.913209-05	\N	330000000000	[SYRUFIT] High jump love (spanish & english subtitles)	youtube
slazi2PpYUo	2019-01-26 22:25:27.05065-05	2019-01-26 22:25:27.05065-05	\N	175000000000	Kill Me Baby ED (Full)	youtube
hN5i2e5pSp4	2019-01-26 22:50:36.552239-05	2019-01-26 22:50:36.552239-05	\N	318000000000	【東方アレンジ】 CarrotWine. - How to spend winter	youtube
fJzeFl2TGo8	2019-01-26 22:51:41.28568-05	2019-01-26 22:51:41.28568-05	\N	312000000000	【東方Vocal／Eurobeat】 TOP OF THE GAME 「SOUND HOLIC」	youtube
AFfDrwaOH0k	2019-01-26 22:52:01.668106-05	2019-01-26 22:52:01.668106-05	\N	286000000000	【東方Vocal／Eurobeat】 DUAL EDGE OF FAITH 「 SOUND HOLIC」	youtube
gKsViLrju54	2019-01-26 23:07:51.152511-05	2019-01-26 23:07:51.152511-05	\N	248000000000	【東方Vocal／Eurobeat】  FUTURE FLIGHT「SOUND HOLIC」	youtube
YngbUQkt5l4	2019-01-27 00:29:36.672126-05	2019-01-27 00:29:36.672126-05	\N	232000000000	bokusatsu tenshi dokuro chan opening theme full	youtube
nybqhMbWTOI	2019-01-27 00:32:10.911814-05	2019-01-27 00:32:10.911814-05	\N	234000000000	Denkou Choujin Gridman: "Yume no Hero"-Opening Theme	youtube
4fj-E7qMhnI	2019-01-27 00:34:22.161755-05	2019-01-27 00:34:22.161755-05	\N	261000000000	SSSS Gridman 2018 OP FULL「UNION」by OxT	youtube
JIYQ-NXZ3cM	2019-01-27 00:35:11.079803-05	2019-01-27 00:35:11.079803-05	\N	278000000000	[Touhou Vocal] [SOUND HOLIC] Shin Burning Tensoku Z (spanish & english subtitles)	youtube
yP8PF-erVt8	2019-01-27 00:35:48.501713-05	2019-01-27 00:35:48.501713-05	\N	269000000000	雨だれの歌 - 少女終末旅行	youtube
WvupNifis2g	2019-01-27 00:41:48.084803-05	2019-01-27 00:41:48.084803-05	\N	272000000000	YURiKA 「鏡面の波」ミュージックビデオ／TVアニメ『宝石の国』OPテーマ	youtube
etKuJ7ibrvc	2019-01-27 00:42:01.300687-05	2019-01-27 00:42:01.300687-05	\N	230000000000	ロッテ×BUMP OF CHICKEN ベイビーアイラブユーだぜ フルバージョン	youtube
rOU4YiuaxAM	2019-01-27 00:43:16.648823-05	2019-01-27 00:43:16.648823-05	\N	262000000000	BUMP OF CHICKEN「Hello,world!」	youtube
KrHCM4xlSfM	2019-01-27 00:45:15.372192-05	2019-01-27 00:45:15.372192-05	\N	262000000000	旅路宵酔ゐ夢花火	youtube
cxxXNLfRRU0	2019-01-27 00:46:51.550051-05	2019-01-27 00:46:51.550051-05	\N	233000000000	Show By Rock!! - Have a Nice MUSIC!! (Full)	youtube
txNEZqUYsak	2019-01-27 00:50:57.810461-05	2019-01-27 00:50:57.810461-05	\N	354000000000	Shiina Ringo - Gamble （椎名林檎 － ギャンブル） [HD/FLAC]	youtube
a_UxWeBT1BY	2019-01-27 00:51:50.630555-05	2019-01-27 00:51:50.630555-05	\N	180000000000	林原めぐみ「薄ら氷心中」Music Video	youtube
9wh8FgsEtNQ	2019-01-27 00:52:00.114607-05	2019-01-27 00:52:00.114607-05	\N	215000000000	BRADIO-Flyers【TVアニメ「デス・パレード」OP曲】(OFFICIAL VIDEO)	youtube
UPdlfIhzPEo	2019-01-27 00:52:17.016377-05	2019-01-27 00:52:17.016377-05	\N	289000000000	宇多田ヒカル - 二時間だけのバカンス featuring 椎名林檎	youtube
55AalrbALAk	2019-01-27 00:58:26.175458-05	2019-01-27 00:58:26.175458-05	\N	287000000000	​Camellia (Feat. Nanahira) - Can I Friend You On Bassbook ? Lol	youtube
aQiv3AVlFqs	2019-01-27 01:11:18.219523-05	2019-01-27 01:11:18.219523-05	\N	304000000000	Red Data Girl Opening Full - Small Worldrop	youtube
UvGPWWP98AE	2019-01-27 01:11:38.297319-05	2019-01-27 01:11:38.297319-05	\N	337000000000	Kimi no Shiranai Monogatari - Bakemonogatari 化物語 [Multi-Subtitles]	youtube
qooWnw5rEcI	2019-01-27 01:12:56.532466-05	2019-01-27 01:12:56.532466-05	\N	204000000000	Mitski - Nobody (Official Video)	youtube
THH7P08zuhU	2019-01-27 02:35:40.056918-05	2019-01-27 02:35:40.056918-05	\N	30000000000	Bill Nye the Science Guy Chinese Intro	youtube
GnrwM7vFn_U	2019-01-27 02:35:58.747731-05	2019-01-27 02:35:58.747731-05	\N	164000000000	Thomas The Tank Engine Theme Song	youtube
YYob4uDjEKI	2019-01-27 02:36:25.978246-05	2019-01-27 02:36:25.978246-05	\N	235000000000	Thomas the Tank Engine Theme Jazz Arrangement	youtube
ETfiUYij5UE	2019-01-27 02:36:52.454664-05	2019-01-27 02:36:52.454664-05	\N	421000000000	Biggie Smalls feat. Thomas the Tank Engine	youtube
C0kOAV51qMw	2019-01-27 02:37:06.466909-05	2019-01-27 02:37:06.466909-05	\N	182000000000	Thomas The Tank Engine (Trap Remix)	youtube
VALJZBKFEFQ	2019-01-27 02:38:35.975865-05	2019-01-27 02:38:35.975865-05	\N	119000000000	Thomas the Tank Engine™: The Fresh Prince of Bel-Air (Remix) (V2)	youtube
j-sUUAPqa9A	2019-01-27 02:39:18.837851-05	2019-01-27 02:39:18.837851-05	\N	122000000000	The Fresh Tank Engine of Sodor (Thomas & Fresh Prince Remix) (V4)	youtube
KI8azvZDn1I	2019-01-26 03:12:24.330101-05	2019-01-26 03:12:24.330101-05	\N	325000000000	【東方Vocal／Piano】 春雲 「BUTAOTOME」	youtube
NYsopdFfPTU	2019-01-26 03:12:39.838557-05	2019-01-26 03:12:39.838557-05	\N	261000000000	【東方Vocal／Pop Piano】 不思議の月の冒険譚 「BUTAOTOME」	youtube
TDcpVp-NwTo	2019-01-26 03:14:47.230406-05	2019-01-26 03:14:47.230406-05	\N	258000000000	⁴ᴷ【東方Vocalカラオケ】響縁【豚乙女】	youtube
3oGmu6KHxck	2019-01-26 15:36:10.445784-05	2019-01-26 15:36:10.445784-05	\N	130000000000	u-z - 冥天・ヘメロカリス	youtube
-Pi5TuFhHqg	2019-01-26 21:28:44.712561-05	2019-01-26 21:28:44.712561-05	\N	176000000000	Gimme you gimme your gimme your gimme your	youtube
0tdyU_gW6WE	2019-01-26 21:37:15.695943-05	2019-01-26 21:37:15.695943-05	\N	247000000000	Bustin	youtube
_74N7KJmEj4	2019-01-26 21:39:51.213921-05	2019-01-26 21:39:51.213921-05	\N	162000000000	Working as a waitress in a cocktailbar	youtube
VdmXbdeJpts	2019-01-26 21:40:10.82196-05	2019-01-26 21:40:10.82196-05	\N	241000000000	I JUST WANT A ROLLIE ROLLIE ROLLIE ROLLIE ROLLIE ROLLIE ROLLIE ROLLIE ROLLIE ROLLIE ROLLIE ROLLIE	youtube
sOrIMOT0P1o	2019-01-26 21:41:33.940453-05	2019-01-26 21:41:33.940453-05	\N	124000000000	gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang	youtube
_kURBpWh5BQ	2019-01-26 21:55:12.342328-05	2019-01-26 21:55:12.342328-05	\N	180000000000	Your Reality but Monika missed her cue	youtube
UeZgPcbC-aE	2019-01-26 21:59:57.079952-05	2019-01-26 21:59:57.079952-05	\N	88000000000	Mii Channel Theme but you descend further into oblivion	youtube
6LLNzVHcnoI	2019-01-26 22:00:14.082035-05	2019-01-26 22:00:14.082035-05	\N	144000000000	Mii Channel but the number of doots keeps increasing	youtube
3q7oJuyy5Ac	2019-01-26 22:01:10.696876-05	2019-01-26 22:01:10.696876-05	\N	193000000000	mii channel but all the pauses are uncomfortably long	youtube
gYOEyzBFYa4	2019-01-26 22:02:10.888863-05	2019-01-26 22:02:10.888863-05	\N	244000000000	Wii Shop Bling	youtube
CF5OvSRh5EM	2019-01-26 22:02:45.625059-05	2019-01-26 22:02:45.625059-05	\N	250000000000	Nintendo Mii Channel Trap Wiimix (All That Swag Instrumental)	youtube
lg8czMcKdkI	2019-01-26 22:10:12.904997-05	2019-01-26 22:10:12.904997-05	\N	250000000000	【東方ボーカル】 暁Records - 浮珠形ノ運命線　～ White Spirit, Ultra Red	youtube
0QtGIK1fS4k	2019-01-26 22:52:15.238564-05	2019-01-26 22:52:15.238564-05	\N	215000000000	【東方Vocal／Eurobeat】 Chase Me, Catch Me！ 「SOUND HOLIC」	youtube
VzUSrcb-3fQ	2019-01-26 23:02:46.540988-05	2019-01-26 23:02:46.540988-05	\N	306000000000	【東方Vocal／Eurobeat】 HOLY NIGHT STORY 「SOUND HOLIC」	youtube
rJRITL6L7C8	2019-01-26 23:03:27.954023-05	2019-01-26 23:03:27.954023-05	\N	220000000000	【東方ボーカル】 ASTRO DREAMER 【SOUND HOLIC】	youtube
WXhUQwPTQUo	2019-01-26 23:04:03.351562-05	2019-01-26 23:04:03.351562-05	\N	266000000000	【東方ボーカル】 「ZERØISM」 【SOUND HOLIC】	youtube
1VVK3nWTR-w	2019-01-26 23:09:09.672514-05	2019-01-26 23:09:09.672514-05	\N	230000000000	【東方Eurobeat Vocal】しゅわスパ大作戦☆ [FN2 Remix]【SOUND HOLIC】	youtube
wsl8HS_lVHE	2019-01-27 00:52:42.446343-05	2019-01-27 00:52:42.446343-05	\N	292000000000	DAOKO × 岡村靖幸『ステップアップLOVE』MUSIC VIDEO	youtube
NXTO3m1B_h4	2019-01-27 00:52:53.822175-05	2019-01-27 00:52:53.822175-05	\N	230000000000	DAOKO × 中田ヤスタカ「ぼくらのネットワーク」MUSIC VIDEO	youtube
IBva7Fu0O2Q	2019-01-27 00:53:14.313332-05	2019-01-27 00:53:14.313332-05	\N	181000000000	林原めぐみ「今際の死神」Music Video	youtube
Ppoynxd2cg0	2019-01-27 00:53:26.021947-05	2019-01-27 00:53:26.021947-05	\N	196000000000	Sheena Ringo - 薄ら氷心中	youtube
nIrYjzHAEp0	2019-01-27 01:10:21.51779-05	2019-01-27 01:10:21.51779-05	\N	344000000000	supercell - My Dearest (Music Video)	youtube
2CoqwucYiXg	2019-01-27 01:25:46.055139-05	2019-01-27 01:25:46.055139-05	\N	159000000000	Joanna Wang 王若琳《Feet 腳》Official MV(1080p HD)	youtube
X6fw1LGIys4	2019-01-27 01:26:05.707461-05	2019-01-27 01:26:05.707461-05	\N	155000000000	Joanna Wang 王若琳《Teenager Statement 青少年宣言》 Official Music Video 1080p	youtube
P_XikgjUOS0	2019-01-27 01:26:40.996156-05	2019-01-27 01:26:40.996156-05	\N	273000000000	周杰倫 Jay Chou【比較大的大提琴 A Larger Cello】Official MV	youtube
utXF0PGPD3Q	2019-01-27 01:32:20.523508-05	2019-01-27 01:32:20.523508-05	\N	269000000000	Sakura Nagashi (桜流し) by Hikaru Utada (ED of Evangelion 3.0/3.33) 320kbs highest quality	youtube
KkxqALueFpE	2019-01-27 02:31:01.198844-05	2019-01-27 02:31:01.198844-05	\N	359000000000	[Touhou Vocal] [Kishida Kyoudan & The Akeboshi Rockets] Jiyuu e no Sanka (spanish & english subs)	youtube
Yme7fUAIwGs	2019-01-27 02:41:59.896099-05	2019-01-27 02:41:59.896099-05	\N	147000000000	Thomas the Tank Engine but it's actually All Star with autotune	youtube
es8ESobY92g	2019-01-27 02:42:16.076383-05	2019-01-27 02:42:16.076383-05	\N	319000000000	Thomas the Tank Engine but you slowly sink deeper into hell	youtube
Gpr7r-4hJUA	2019-01-27 02:42:31.926431-05	2019-01-27 02:42:31.926431-05	\N	76000000000	Thomas the Tank Engine but every other beat is missing	youtube
rEVghMHNL64	2019-01-27 02:42:57.122259-05	2019-01-27 02:42:57.122259-05	\N	42000000000	Thomas the Tank Engine but it's Oshaberi doubutsu	youtube
BWxwnLaPYoc	2019-01-27 02:43:22.555453-05	2019-01-27 02:43:22.555453-05	\N	184000000000	[Touhou] [Kishida Kyoudan & The Akeboshi Rockets] Emotional Skyscraper (spanish/english subtitles)	youtube
OpvzKxqWwUo	2019-01-27 02:43:57.385145-05	2019-01-27 02:43:57.385145-05	\N	258000000000	[Touhou PV] [Buta-Otome] Kyou En (spanish & english subtitles)	youtube
PhciLj5VzOk	2019-01-27 02:46:43.445351-05	2019-01-27 02:46:43.445351-05	\N	246000000000	Jump Up, Super Star! (Full Ver. Official iTunes Release) Super Mario Odyssey Main Theme	youtube
yfqybUupd2Y	2019-01-27 02:48:55.033154-05	2019-01-27 02:48:55.033154-05	\N	165000000000	Thomas the Tank Engine but it's a Jazz Standard	youtube
IvUU8joBb1Q	2019-01-27 02:49:21.456111-05	2019-01-27 02:49:21.456111-05	\N	273000000000	Wintergatan - Marble Machine (music instrument using 2000 marbles)	youtube
JEj-AeciF7A	2019-01-27 02:50:12.035572-05	2019-01-27 02:50:12.035572-05	\N	206000000000	Lost Painting (Castlevania: SotN) [New Remix] - Super Smash Bros. Ultimate Soundtrack	youtube
zvp0TOwsJv4	2019-01-27 02:51:28.5058-05	2019-01-27 02:51:28.5058-05	\N	251000000000	【東方ボーカル】 暁Records - Eternal Nova	youtube
tNvcgvEJ2F0	2019-01-27 02:56:51.552847-05	2019-01-27 02:56:51.552847-05	\N	33000000000	HAPPY 420 - Thomas The Tank Engine Weed Remix @SnoopDogg	youtube
WuxoNxDdhcI	2019-01-27 03:14:35.916237-05	2019-01-27 03:14:35.916237-05	\N	196000000000	Krewella - Surrender The Throne	youtube
fB8TyLTD7EE	2019-01-27 03:23:58.647325-05	2019-01-27 03:23:58.647325-05	\N	210000000000	RISE (ft. The Glitch Mob, Mako, and The Word Alive) | Worlds 2018 - League of Legends	youtube
JcRydoHUhE4	2019-01-27 03:45:31.233275-05	2019-01-27 03:45:31.233275-05	\N	242000000000	Lovesickness [NSF, 2a03]	youtube
u_SHOYydW6c	2019-01-27 03:46:15.616152-05	2019-01-27 03:46:15.616152-05	\N	221000000000	【東方ボーカル】 「螺旋絶望」 【豚乙女】	youtube
eLStm08iy9c	2019-01-27 03:59:24.757403-05	2019-01-27 03:59:24.757403-05	\N	212000000000	【東方ボーカル】 「遥か確か」 【豚乙女】	youtube
yqUif6o06Ok	2019-01-27 13:24:06.798968-05	2019-01-27 13:24:06.798968-05	\N	134000000000	Tsundere Twintails - lalalatte	youtube
D-dzHDFhtLs	2019-01-27 14:58:58.277132-05	2019-01-27 14:58:58.277132-05	\N	324000000000	「東方 Vocal」 明神変化 「Liz Triangle」	youtube
ClP8oHdRygE	2019-01-27 15:06:28.8016-05	2019-01-27 15:06:28.8016-05	\N	250000000000	【東方ボーカル】 「夕立、君と隠れ処」 【幽閉サテライト】 【Subbed】	youtube
duZKftWQ0Y0	2019-01-27 15:15:55.398925-05	2019-01-27 15:15:55.398925-05	\N	304000000000	【東方ボーカル】 Yonder Voice - 蒼月の懺悔詩～Universal Nemesis	youtube
TwRgy_x60O4	2019-01-27 15:16:19.38396-05	2019-01-27 15:16:19.38396-05	\N	337000000000	【東方ボーカル】 「NeGa/PoSi*ラブ/コール」 【凋叶棕】 【Subbed】	youtube
Mtnbrzlqxys	2019-01-27 15:37:35.605279-05	2019-01-27 15:37:35.605279-05	\N	315000000000	【東方ボーカル】 「炸裂アイロニー」 【幽閉サテライト】	youtube
_qbw-KDvMPQ	2019-01-27 22:13:37.886622-05	2019-01-27 22:13:37.886622-05	\N	275000000000	【東方ボーカル】 「月に叢雲華に風」 【幽閉サテライト】【Subbed】	youtube
0CbvqJAfCRc	2019-01-27 22:15:02.940315-05	2019-01-27 22:15:02.940315-05	\N	376000000000	【東方ボーカル】 「童遊」 【凋叶棕】【Subbed】	youtube
MDilndWQU6s	2019-01-27 22:18:10.528406-05	2019-01-27 22:18:10.528406-05	\N	220000000000	【東方ボーカル】 「リバーサイドパレード」 【豚乙女】	youtube
trhHAE-ovGI	2019-01-27 22:18:22.792879-05	2019-01-27 22:18:22.792879-05	\N	347000000000	【東方ボーカル】 「華鳥風月」 【幽閉サテライト】	youtube
rcivgUlpNIo	2019-01-27 22:36:22.242038-05	2019-01-27 22:36:22.242038-05	\N	250000000000	⁴ᴷ【東方Vocalカラオケ】夜ノ花～凪～【幽閉サテライト】	youtube
ME5d1cjOWQM	2019-01-27 22:48:07.599691-05	2019-01-27 22:48:07.599691-05	\N	229000000000	[Kishida Kyoudan] Shitteru? Madoushi wa donki ni mo naru no yo (spanish & english subtitles)	youtube
LskettPkHwE	2019-01-27 22:55:36.245294-05	2019-01-27 22:55:36.245294-05	\N	289000000000	[Touhou Vocal] [Akatsuki Records] ENDLESS FANTASY (spanish & english subtitles)	youtube
aT8ix3ZNlLM	2019-01-27 23:35:18.023702-05	2019-01-27 23:35:18.023702-05	\N	312000000000	Nintendo Wii - Mii Channel Theme - Jazz Cover || insaneintherainmusic (feat. Gabe N. & Chris A.)	youtube
IMNLy67ihY4	2019-01-28 11:47:01.296612-05	2019-01-28 11:47:01.296612-05	\N	195000000000	Undertale: Megalovania - Metal Cover || RichaadEB	youtube
Jp6u-c6Fr70	2019-01-28 12:11:46.875225-05	2019-01-28 12:11:46.875225-05	\N	266000000000	Impulse	youtube
wpAC1vr_pcg	2019-01-28 12:12:03.007549-05	2019-01-28 12:12:03.007549-05	\N	250000000000	Cliffs Of Dover (Instrumental)	youtube
O4irXQhgMqg	2019-01-28 12:12:11.209499-05	2019-01-28 12:12:11.209499-05	\N	226000000000	The Rolling Stones - Paint It, Black (Official Lyric Video)	youtube
9-SQGOYOjxs	2019-01-28 12:12:20.965167-05	2019-01-28 12:12:20.965167-05	\N	207000000000	Rise Against - Prayer Of The Refugee	youtube
RDuzszjrdcc	2019-01-28 12:12:34.765231-05	2019-01-28 12:12:34.765231-05	\N	232000000000	Seven Nation Army	youtube
VvOJ7o957r8	2019-01-28 12:13:36.832551-05	2019-01-28 12:13:36.832551-05	\N	175000000000	Nanobii - Rainbow Road	youtube
yMs_oYkZVwc	2019-01-28 12:43:43.50288-05	2019-01-28 12:43:43.50288-05	\N	383000000000	Close To Me (Dolby Anol Remix)	youtube
_-HulTAy1_I	2019-01-28 12:43:52.213405-05	2019-01-28 12:43:52.213405-05	\N	241000000000	Close To Me (Shirobon Remix)	youtube
ajQ967Df-kc	2019-01-28 12:44:00.35948-05	2019-01-28 12:44:00.35948-05	\N	240000000000	Close To Me (Henry Homesweet Remix)	youtube
qcW2gtVWGi8	2019-01-28 12:44:08.851971-05	2019-01-28 12:44:08.851971-05	\N	354000000000	Close To Me (Je Deviens DJ En 3 Jours Remix)	youtube
TpshjkQpVIc	2019-01-28 19:40:16.151011-05	2019-01-28 19:40:16.151011-05	\N	257000000000	Sauce Boy (Full Version)	youtube
0AegLCRZZvU	2019-01-28 19:41:08.247228-05	2019-01-28 19:41:08.247228-05	\N	57000000000	just playing some pokémon blue	youtube
J4AsWV8ZAPI	2019-01-28 21:54:57.415394-05	2019-01-28 21:54:57.415394-05	\N	143000000000	Youtube Poop: Justin Bieber Gets Pregnant	youtube
ic_iClOg34A	2019-01-28 23:59:36.344387-05	2019-01-28 23:59:36.344387-05	\N	234000000000	Harrowing: Listen To These People Talk About The First Time They Ran Out Of Radishes	youtube
JMXaJvxGAxo	2019-01-29 01:45:43.804103-05	2019-01-29 01:45:43.804103-05	\N	370000000000	UFO Extra Stage Boss - Nue Houjuu's Theme - Heian Alien	youtube
uY8bHooOVdM	2019-01-29 01:47:42.707533-05	2019-01-29 01:47:42.707533-05	\N	222000000000	Natsu matsuri - Whiteberry ( lirycs )	youtube
MLvSHB0Ij30	2019-01-29 01:48:50.943649-05	2019-01-29 01:48:50.943649-05	\N	369000000000	Touhou 12 UFO - Heian Alien (Nue Houjuu) 【Intense Symphonic Metal Cover】	youtube
tnLQnX7BPeU	2019-01-29 01:53:00.146741-05	2019-01-29 01:53:00.146741-05	\N	161000000000	Field of Hopes And Dreams - Deltarune OST	youtube
uyImJwr_9zA	2019-01-29 02:48:49.7898-05	2019-01-29 02:48:49.7898-05	\N	190000000000	[Touhou Vocal] [Buta-Otome] Shinitagari (spanish & english subtitles)	youtube
a0Aauep0VWs	2019-01-29 02:49:12.125544-05	2019-01-29 02:49:12.125544-05	\N	174000000000	[Happy Hardcore] - nanobii - Rainbow Road [Monstercat Release]	youtube
KMfQP7GjFNo	2019-01-29 21:52:59.752091-05	2019-01-29 21:52:59.752091-05	\N	126000000000	Nekomata Master - Izanami's Wail	youtube
q6v51jfkmC0	2019-01-29 21:53:03.599053-05	2019-01-29 21:53:03.599053-05	\N	284000000000	ZAQ/Serendipity ‐ Music Video	youtube
ayg2A2JoRzg	2019-01-29 21:53:06.280993-05	2019-01-29 21:53:06.280993-05	\N	141000000000	【BOFU2016】Re：End of a Dream / uma vs. モリモリあつし【BGA】	youtube
8eEIMWopA5A	2019-01-29 21:53:10.137714-05	2019-01-29 21:53:10.137714-05	\N	220000000000	婦人倶楽部「旅とフェリー」 / FUJIN CLUB - Travel & Ferry	youtube
h8CmfRgxvVQ	2019-01-29 21:53:17.727516-05	2019-01-29 21:53:17.727516-05	\N	504000000000	Ao no Kiseki OST - The Azure Arbitrator	youtube
E13jVMczRJg	2019-01-29 22:17:11.406025-05	2019-01-29 22:17:11.406025-05	\N	136000000000	三浦大知 (Daichi Miura) / EXCITE -Music Video- from "BEST" (2018/3/7 ON SALE)	youtube
1pDM6fQUfJs	2019-01-29 23:20:07.824837-05	2019-01-29 23:20:07.824837-05	\N	242000000000	IOSYS - Marisa Stole The Precious Thing (Full / 4k)	youtube
EZHw0RWRKcg	2019-01-30 00:11:43.627353-05	2019-01-30 00:11:43.627353-05	\N	253000000000	【東方ボーカル】 「MY Heart Rate」 【森羅万象】【Subbed】	youtube
Y0e6B0d9Ocs	2019-01-30 04:47:48.125698-05	2019-01-30 04:47:48.125698-05	\N	271000000000	Zankyou no Terror OST - Hanna - Yoko Kanno	youtube
6ICNfG3zCKQ	2019-01-30 12:58:36.744487-05	2019-01-30 12:58:36.744487-05	\N	245000000000	Smash Bros. Ultimate - Lifelight (Camellia's Hardstyle Bootleg)	youtube
Idb9WqAfM9E	2019-01-30 13:01:15.231692-05	2019-01-30 13:01:15.231692-05	\N	245000000000	命の灯火 (Camellia's Hardstyle Bootleg)	youtube
jy-Ogih8LVE	2019-01-30 15:53:24.243075-05	2019-01-30 15:53:24.243075-05	\N	108000000000	SNES Rainbow Road (Frontrunning)- Mario Kart 8 Deluxe OST	youtube
8avMLHvLwRQ	2019-01-30 17:24:26.686385-05	2019-01-30 17:24:26.686385-05	\N	559000000000	Wii Shop Channel Music	youtube
NaBF7qsPxWg	2019-01-30 19:10:34.355473-05	2019-01-30 19:10:34.355473-05	\N	286000000000	Luschka - Kami no Kotoba	youtube
JoKKsQCAvd0	2019-01-31 03:43:52.473596-05	2019-01-31 03:43:52.473596-05	\N	300000000000	Ikuzo Yoshi -  俺ら東京さ行ぐだ We gonna go to Tokyo - Super Euro Remix	youtube
eu-ejtZcDcA	2019-01-31 12:50:52.78145-05	2019-01-31 12:50:52.78145-05	\N	191000000000	You're Gonna Say Yeah	youtube
iUAYeN3Rp2E	2019-01-31 12:51:36.040669-05	2019-01-31 12:51:36.040669-05	\N	300000000000	Chicago - 25 Or 6 To 4 (HD)	youtube
JB6WZu8IAZg	2019-01-31 12:52:24.927033-05	2019-01-31 12:52:24.927033-05	\N	220000000000	T.Rex - 20th Century boy	youtube
YdRjNeu11Ww	2019-01-31 12:52:58.876502-05	2019-01-31 12:52:58.876502-05	\N	220000000000	Reptilia	youtube
aviGAyS9TGs	2019-01-31 12:53:21.209809-05	2019-01-31 12:53:21.209809-05	\N	207000000000	Miss Murder	youtube
bWWyKpUSDGQ	2019-01-31 12:54:38.213799-05	2019-01-31 12:54:38.213799-05	\N	232000000000	Papaoutai	youtube
SCyCDcd_6uE	2019-01-31 12:55:23.034458-05	2019-01-31 12:55:23.034458-05	\N	231000000000	Insomniac	youtube
982PKhPsIHk	2019-01-31 12:56:26.16101-05	2019-01-31 12:56:26.16101-05	\N	316000000000	Trip Lee - Sweet Victory ft. Dimitri McDowell & Leah Smith (@TripLee @ReachRecords)	youtube
ZWwPlldEiUY	2019-01-31 12:56:45.518117-05	2019-01-31 12:56:45.518117-05	\N	216000000000	Tedashii - Dum Dum - feat. Lecrae (@tedashii @lecrae @reachrecords)	youtube
o_pNTEpJqQU	2019-01-31 12:57:00.336198-05	2019-01-31 12:57:00.336198-05	\N	266000000000	Trip Lee - Manolo ft. Lecrae (@TripLee @ReachRecords)	youtube
7RWEllqh5J0	2019-01-31 12:57:12.027301-05	2019-01-31 12:57:12.027301-05	\N	230000000000	Lecrae - Don't Waste Your Life ft. Cam Video (@Lecrae @Reachrecords)	youtube
w4lb9TMg5WM	2019-01-31 12:57:29.011499-05	2019-01-31 12:57:29.011499-05	\N	212000000000	Andy Mineo - Uno Uno Seis (@AndyMineo @ReachRecords)	youtube
CR7SBRCKIuU	2019-01-31 12:57:49.32102-05	2019-01-31 12:57:49.32102-05	\N	216000000000	Lecrae - Say I Won't ft. Andy Mineo	youtube
t8PFHVdE0uI	2019-01-31 12:58:13.79181-05	2019-01-31 12:58:13.79181-05	\N	268000000000	Tedashii - Jumped Out the Whip (@Tedashii @ReachRecords)	youtube
1RTeHFxy3nM	2019-01-31 12:58:44.310584-05	2019-01-31 12:58:44.310584-05	\N	204000000000	Trip Lee - Too Cold	youtube
1aULF0MDHtU	2019-01-31 12:59:24.417453-05	2019-01-31 12:59:24.417453-05	\N	208000000000	Trip Lee - One Sixteen - Feat. KB & Andy Mineo (@triplee116 @kb_hga @AndyMineo)	youtube
Hj5crBoYvwA	2019-01-31 13:00:18.05336-05	2019-01-31 13:00:18.05336-05	\N	241000000000	The Saints by Andy Mineo ft KB & Trip Lee [LYRICS]	youtube
ab5n5IHeAW0	2019-01-31 13:00:35.012266-05	2019-01-31 13:00:35.012266-05	\N	188000000000	Trip Lee - I'm Gone	youtube
yW5oTzftgjY	2019-01-31 13:01:08.631715-05	2019-01-31 13:01:08.631715-05	\N	279000000000	Tubthumping	youtube
wHIej9j7xyM	2019-01-31 13:01:59.492463-05	2019-01-31 13:01:59.492463-05	\N	251000000000	Shawn Wasabi - Pizza Rolls (metal x EDM mashup)	youtube
LfephiFN76E	2019-01-31 14:39:31.449443-05	2019-01-31 14:39:31.449443-05	\N	246000000000	[MV] REOL - No title	youtube
YLfkgo-3_sk	2019-01-31 14:50:41.92756-05	2019-01-31 14:50:41.92756-05	\N	254000000000	椎名林檎 - 長く短い祭 from百鬼夜行	youtube
H_nCw1WMFs4	2019-01-31 14:50:52.778296-05	2019-01-31 14:50:52.778296-05	\N	182000000000	椎名林檎 - 熱愛発覚中from百鬼夜行	youtube
GDnLHd2Ei3Y	2019-01-31 14:52:37.519002-05	2019-01-31 14:52:37.519002-05	\N	202000000000	椎名林檎 – 人生は夢だらけ	youtube
72vOux51-o4	2019-01-31 17:12:00.739647-05	2019-01-31 17:12:00.739647-05	\N	403000000000	Jacob Collier feat. Jonah Nilsson - Do I Do (Live) | Montreux Jazz Festival 2017	youtube
QnkrL42R7gk	2019-01-31 19:20:58.014424-05	2019-01-31 19:20:58.014424-05	\N	375000000000	The Salt and Pepper Diner	youtube
Ga3I5DTIA-E	2019-01-31 19:25:55.991931-05	2019-01-31 19:25:55.991931-05	\N	136000000000	Tom Jones - Whats New Pussycat - Lyrics	youtube
7GNJjelL7A0	2019-02-01 22:50:32.046868-05	2019-02-01 22:50:32.046868-05	\N	372000000000	Mary Jane / Mary Lane	youtube
2PyiyhvqnYk	2019-02-02 14:44:42.314855-05	2019-02-02 14:44:42.314855-05	\N	333000000000	【東方ボーカル】 「語九十九節」 【凋叶棕】	youtube
Clo2AEHJMGg	2019-02-02 21:57:44.901684-05	2019-02-02 21:57:44.901684-05	\N	234000000000	Nekubus - ALL THAT JAZZ	youtube
an_azrkFSmE	2019-02-02 22:02:00.289547-05	2019-02-02 22:02:00.289547-05	\N	227000000000	All That Jazz - Umi no Mieru Machi / 海の見える街	youtube
YZdDKQHLu50	2019-02-02 22:02:36.490838-05	2019-02-02 22:02:36.490838-05	\N	202000000000	フレデリック「スキライズム」Music Video / frederic “Sukiraism” -2nd Full Album「フレデリズム2」2019/2/20 Release-	youtube
VjAxLbmy83E	2019-02-02 22:02:51.512577-05	2019-02-02 22:02:51.512577-05	\N	291000000000	フレデリック「リリリピート」Music Video / frederic“Rererepeat”	youtube
DT61L8hbbJ4	2019-02-02 23:34:06.719029-05	2019-02-02 23:34:06.719029-05	\N	247000000000	TheFatRat - MAYDAY feat. Laura Brehm	youtube
wO0RwUZFOqc	2019-02-02 23:53:06.840623-05	2019-02-02 23:53:06.840623-05	\N	232000000000	【音ゲーニコカラ】打打打打打打打打打打／BEMANIシリーズ	youtube
kZX0srAgvko	2019-02-02 23:58:23.37384-05	2019-02-02 23:58:23.37384-05	\N	105000000000	Hige Driver join. SELEN - Dadadadadadadadadada (Indian friendly version)	youtube
EHyT9V8rD5A	2019-02-03 00:02:34.541325-05	2019-02-03 00:02:34.541325-05	\N	186000000000	Do The Mario (Gangsta Rap Edition) (Mario Bros Parody)	youtube
gu-u6I2a968	2019-02-03 03:32:54.683153-05	2019-02-03 03:32:54.683153-05	\N	307000000000	Owari no Seraph Ending FULL - ｢scaPEGoat｣ » 終わりのセラフ ED	youtube
pQyjzmB_YeU	2019-02-03 03:33:09.010937-05	2019-02-03 03:33:09.010937-05	\N	274000000000	Guilty Crown - Departures ～ Blessing (Full Vesrion)	youtube
gMU7JK0zCGE	2019-02-03 03:33:18.605494-05	2019-02-03 03:33:18.605494-05	\N	234000000000	Guilty Crown - Euterpe (with lyrics) full	youtube
-Hq0-47hyds	2019-02-03 03:33:24.336027-05	2019-02-03 03:33:24.336027-05	\N	350000000000	EGOIST - All Alone With You	youtube
J-wFp43XOrA	2019-02-03 03:35:58.8751-05	2019-02-03 03:35:58.8751-05	\N	196000000000	[MV] SEVENTEEN(세븐틴) _ VERY NICE(아주 NICE)	youtube
eotod7O4REw	2019-02-03 03:53:34.714022-05	2019-02-03 03:53:34.714022-05	\N	188000000000	GFRIEND - Luv Star (사랑별) [Sub. Español + Hangul + Rom] Color & Picture Coded	youtube
cfo2EvQMGhQ	2019-02-03 03:58:28.496424-05	2019-02-03 03:58:28.496424-05	\N	213000000000	GFRIEND (여자친구) One-Half (이분의 일 1/2) Lyrics (Han/Rom) Colour Coded	youtube
NM_B8iQUqgw	2019-02-03 13:45:36.051988-05	2019-02-03 13:45:36.051988-05	\N	111000000000	Doctor TROLLS then DABS on patient	youtube
nCJwsWywQcs	2019-02-03 14:12:38.540912-05	2019-02-03 14:12:38.540912-05	\N	183000000000	Nutshack Theme (Dubstep Remix)	youtube
jQAliyNOVUo	2019-02-03 14:13:06.762539-05	2019-02-03 14:13:06.762539-05	\N	480000000000	PCB Stage 4 - The capital city of flowers in the sky	youtube
fBA9ngppisU	2019-02-03 14:14:02.552607-05	2019-02-03 14:14:02.552607-05	\N	56000000000	Konga Conga Kappa (with Shopkeeper) - Crypt of the NecroDancer	youtube
zdnIdRPJtpo	2019-02-03 14:14:43.273116-05	2019-02-03 14:14:43.273116-05	\N	277000000000	PCB Stage 4 Boss - Prismriver Sisters' Theme - Phantom Ensemble	youtube
hTMnoWYhqtk	2019-02-03 14:16:36.510717-05	2019-02-03 14:16:36.510717-05	\N	120000000000	The Nutshack Full 2 minute theme song (Authentic)	youtube
tglr0jXjlNU	2019-02-03 14:17:36.124689-05	2019-02-03 14:17:36.124689-05	\N	275000000000	【東方Vocal／Eurobeat】 Fly to the night with you 「Crazy Beats」	youtube
vZ0XlpHdh80	2019-02-03 14:19:11.971472-05	2019-02-03 14:19:11.971472-05	\N	185000000000	Lunar Clock - Luna Dial || Metal Cover by RichaadEB (ft. THIZZKITZ)	youtube
tpleI8jiQak	2019-02-03 14:20:48.890881-05	2019-02-03 14:20:48.890881-05	\N	278000000000	PCB Extra Stage - Charming Domination	youtube
yNVg2qaAtnI	2019-02-03 14:22:55.712427-05	2019-02-03 14:22:55.712427-05	\N	321000000000	IN Extra Stage - Extend Ash ~ Hourai Victim	youtube
Jr9Kaa1sycs	2019-02-03 14:25:44.914425-05	2019-02-03 14:25:44.914425-05	\N	164000000000	Finest Girl (Bin Laden Song) - Uncensored Version	youtube
NmV6iZyuh9Q	2019-02-03 14:26:46.081843-05	2019-02-03 14:26:46.081843-05	\N	210000000000	[Touhou Vocal] [Kishida Kyoudan & Akeboshi Rockets] Shinkuu no Melancholy (spanish & english sub)	youtube
iNp2pejx5uw	2019-02-03 14:35:33.953239-05	2019-02-03 14:35:33.953239-05	\N	219000000000	【東方ボーカル】 零度の微笑み 【幽閉サテライト】	youtube
VLnWf1sQkjY	2019-02-03 15:21:19.908823-05	2019-02-03 15:21:19.908823-05	\N	152000000000	The Lonely Island - Jizz In My Pants	youtube
LxW5dn5alcw	2019-02-03 17:23:42.651676-05	2019-02-03 17:23:42.651676-05	\N	270000000000	Scandroid - Rendezvous (Official Lyric Video)	youtube
5EXFilTUiko	2019-02-03 18:56:42.925943-05	2019-02-03 18:56:42.925943-05	\N	338000000000	Tengen Toppa Gurren Lagann OST   Sorairo Days FULL VERSION	youtube
geic-ci56xg	2019-02-03 20:07:30.306065-05	2019-02-03 20:07:30.306065-05	\N	147000000000	YouTube SchmoWind 2018 (Like Rewind, But Schmo)	youtube
ZW8AZgBaXzE	2019-02-03 21:08:31.167967-05	2019-02-03 21:08:31.167967-05	\N	68000000000	Arthur Theme Song ft. Lil Jon	youtube
jU6kU2d0MbU	2019-02-03 21:09:43.381159-05	2019-02-03 21:09:43.381159-05	\N	314000000000	K.K. Slider - Si K.K. o Mode [FULL VERSION]	youtube
Y1eryyS_BW8	2019-02-03 21:10:35.702992-05	2019-02-03 21:10:35.702992-05	\N	80000000000	What Redbone would sound like if it was sung by KK Slider	youtube
ltSQ-czeDEE	2019-02-03 21:13:24.276186-05	2019-02-03 21:13:24.276186-05	\N	50000000000	GNOME POWER	youtube
PIm54qB50b4	2019-02-03 21:23:09.82402-05	2019-02-03 21:23:09.82402-05	\N	119000000000	[Touhou]  Kitto mou hatarakanai! (Rus Subs)	youtube
PfKm9pwciCo	2019-02-03 21:28:45.565877-05	2019-02-03 21:28:45.565877-05	\N	66000000000	[SONG]キズナアイ-ふぁっくゆ～!/Kizuna Ai - FUCK YOU ! [Lyric Video]	youtube
RkoMP_ZO-_w	2019-02-03 21:29:26.083544-05	2019-02-03 21:29:26.083544-05	\N	292000000000	Touhou IOSYS Kitto Mo Hatarakanai	youtube
I_rXSDxGXBw	2019-02-04 11:05:51.018701-05	2019-02-04 11:05:51.018701-05	\N	300000000000	Kakegurui xx OP - Kono Yubi Tomare / JUNNA [Full]	youtube
dW5Kj5ZQIZM	2019-02-04 13:26:30.402344-05	2019-02-04 13:26:30.402344-05	\N	92000000000	"Pokémon Theme" A Cappella Cover	youtube
hxSg2Ioz3LM	2019-02-04 13:54:58.396068-05	2019-02-04 13:54:58.396068-05	\N	203000000000	DECO*27 - ヒバナ feat. 初音ミク	youtube
L7BxD7HHWl4	2019-02-04 13:55:35.266414-05	2019-02-04 13:55:35.266414-05	\N	237000000000	DECO*27 - 初嵐 feat. 初音ミク	youtube
VJsmMeBmmws	2019-02-04 19:08:27.289647-05	2019-02-04 19:08:27.289647-05	\N	130000000000	BASS BOOSTED x Gucci Gucci Literature Club's Not Hot (Miraie Mashup)	youtube
RMSRqD8oc8I	2019-02-04 19:11:13.314393-05	2019-02-04 19:11:13.314393-05	\N	139000000000	EXTREME BASS BOOSTED x Gucci Gucci Literature Club's Not Hot (Miraie Mashup)	youtube
cTbB703XZFM	2019-02-04 20:06:47.070364-05	2019-02-04 20:06:47.070364-05	\N	178000000000	You're Gonna Go Far, Kid	youtube
n17_EPF8dwo	2019-02-04 21:49:11.830449-05	2019-02-04 21:49:11.830449-05	\N	149000000000	Donald Trump - China (Na Na Na) - Parody of Havana by Camila Cabello	youtube
asDlYjJqzWE	2019-02-04 21:55:03.28619-05	2019-02-04 21:55:03.28619-05	\N	298000000000	Dividing By Zero/Slim Pickens Does The Right Thing And Rides The Bomb To Hell	youtube
wNQwRarYRFY	2019-02-04 21:55:37.876836-05	2019-02-04 21:55:37.876836-05	\N	207000000000	Quinn XCII - Straightjacket	youtube
YhQnrY_def8	2019-02-04 21:56:13.270807-05	2019-02-04 21:56:13.270807-05	\N	242000000000	Quinn XCII - Flare Guns (Audio)	youtube
1cLfi8p4lk0	2019-02-04 21:56:26.315434-05	2019-02-04 21:56:26.315434-05	\N	188000000000	Louis The Child, Quinn XCII - The City (Lyric Video)	youtube
0XFudmaObLI	2019-02-04 21:56:59.047736-05	2019-02-04 21:56:59.047736-05	\N	256000000000	Aaron Smith - Dancin (KRONO Remix)	youtube
gRr9E9cVqHE	2019-02-04 22:13:40.224984-05	2019-02-04 22:13:40.224984-05	\N	215000000000	[Trap] - Pegboard Nerds x MisterWives - Coffins [Monstercat FREE Release]	youtube
kHP9SFjppoM	2019-02-05 16:25:55.73691-05	2019-02-05 16:25:55.73691-05	\N	160000000000	Sweet Sweet Victory (2019 Superbowl Version) - Spongebob Squarepants	youtube
u9rj5s-nDvw	2019-02-05 16:30:34.035727-05	2019-02-05 16:30:34.035727-05	\N	109000000000	Sweet Victory - Otamatone Cover	youtube
3XjrY7AOKgs	2019-02-05 16:39:33.50673-05	2019-02-05 16:39:33.50673-05	\N	256000000000	【Liz Triangle】パラレルラビット【東方ボーカル】	youtube
I42W9RyGvF4	2019-02-05 16:40:01.507353-05	2019-02-05 16:40:01.507353-05	\N	317000000000	【東方ボーカル】 「MoonJumper」 【凋叶棕】【Subbed】	youtube
j6uqDNq22Ko	2019-02-05 17:03:35.739595-05	2019-02-05 17:03:35.739595-05	\N	239000000000	【東方Vocal (Pop)】 あ～るの～と「R-note」 - 不死鳥	youtube
Rf9PClQKOmg	2019-02-05 17:04:04.782474-05	2019-02-05 17:04:04.782474-05	\N	239000000000	It's a Cold and It's a Broken Waluigi Sorenova	youtube
k9iYm9PEAHg	2019-02-05 17:06:36.164876-05	2019-02-05 17:06:36.164876-05	\N	133000000000	SpongeBob SquarePants "Sweet Victory" Performance 🎤 Band Geeks | Nick	youtube
4FA--vqJhZs	2019-02-05 17:22:03.77217-05	2019-02-05 17:22:03.77217-05	\N	302000000000	【東方Vocal (Pop)】 あ～るの～と「R-note」 - サカアガリ	youtube
i98bKRYIZd8	2019-02-05 18:29:40.50109-05	2019-02-05 18:29:40.50109-05	\N	172000000000	Cotton Eye Joe Gregorian Chant Nightcore Hardcore Dubstep Remix	youtube
fekWiU3K_e0	2019-02-06 18:24:46.371159-05	2019-02-06 18:24:46.371159-05	\N	288000000000	Tatsuro Yamashita - Magic Ways	youtube
dx1GRwgRFIw	2019-02-06 18:24:50.372844-05	2019-02-06 18:24:50.372844-05	\N	3065000000000	Tatsuro Yamashita (山下 達郎) - FOR YOU	youtube
1HAd3hwTmAA	2019-02-06 21:52:03.509919-05	2019-02-06 21:52:03.509919-05	\N	182000000000	Inspiring! People Describe The First Time They Drank Gatorade	youtube
cQ7J7UjsRqg	2019-02-06 21:55:40.439707-05	2019-02-06 21:55:40.439707-05	\N	68000000000	Multiple Stab Wounds May Be Harmful To Monkeys	youtube
N9cSaKCuaos	2019-02-06 22:10:35.298978-05	2019-02-06 22:10:35.298978-05	\N	350000000000	DK rapsody	youtube
tgyJNXv8dGQ	2019-02-06 22:16:52.030234-05	2019-02-06 22:16:52.030234-05	\N	271000000000	Closer	youtube
LZqQLXlrhI4	2019-02-07 21:23:42.851771-05	2019-02-07 21:23:42.851771-05	\N	125000000000	Undertale – Annoying Dog Theme	youtube
RaO9g0Hmg48	2019-02-07 21:28:14.451105-05	2019-02-07 21:28:14.451105-05	\N	193000000000	【Rib】Tokyo Teddy Bear【English/Romaji Sub】	youtube
U9t-slLl30E	2019-02-07 21:31:42.775924-05	2019-02-07 21:31:42.775924-05	\N	236000000000	"SEAGULLS! (Stop It Now)" -- A Bad Lip Reading of The Empire Strikes Back	youtube
WROcJK3ZHGc	2019-02-07 21:50:11.118458-05	2019-02-07 21:50:11.118458-05	\N	313000000000	[HQ] Yousei Teikoku - Kokou no Sousei	youtube
r7Ve8ExE8YY	2019-02-07 21:52:07.756174-05	2019-02-07 21:52:07.756174-05	\N	180000000000	Black Coast - TRNDSTTR (Lucian Remix)	youtube
rAJMY8jgqXE	2019-02-07 21:54:38.939045-05	2019-02-07 21:54:38.939045-05	\N	33000000000	TRNDSTTR best remix	youtube
4S4VWOS-JXY	2019-02-07 22:18:15.196741-05	2019-02-07 22:18:15.196741-05	\N	206000000000	White Night	youtube
i0_thpTpNaw	2019-02-07 22:19:02.103351-05	2019-02-07 22:19:02.103351-05	\N	199000000000	Kagamine Len - Gigantic O.T.N. (English subs)	youtube
p9lb_2fnQ7Y	2019-02-08 13:59:58.993139-05	2019-02-08 13:59:58.993139-05	\N	193000000000	B.I.G–ichijou (Nichijou × Notorious B.I.G. Mashup) // I am Jemboy	youtube
iVMflp-n3B0	2019-02-08 18:45:34.093291-05	2019-02-08 18:45:34.093291-05	\N	16000000000	Poopy-di-Woomy	youtube
j_lOCgSNnvk	2019-02-08 18:47:02.974203-05	2019-02-08 18:47:02.974203-05	\N	237000000000	Daisy Got Back (Super Mario Land x Sir Mix-A-Lot Mashup)  // I am Jemboy	youtube
yg8C9SqIUKI	2019-02-08 18:51:02.911171-05	2019-02-08 18:51:02.911171-05	\N	189000000000	We Are Number One but its a mashup with 'Problem' by Ariana Grande	youtube
nynNODItRAA	2019-02-08 18:53:25.58672-05	2019-02-08 18:53:25.58672-05	\N	215000000000	Teach Me How to Doggie (Nintendogs vs. Cali Swag District) // I am Jemboy	youtube
sRvtSH1_H0w	2019-02-08 22:34:15.399768-05	2019-02-08 22:34:15.399768-05	\N	313000000000	【東方アレンジ】Demetori - 星条旗のピエロ ～ The MadPiero Laughs	youtube
IHNzOHi8sJs	2019-02-09 00:23:14.957435-05	2019-02-09 00:23:14.957435-05	\N	215000000000	BLACKPINK - ‘뚜두뚜두 (DDU-DU DDU-DU)’ M/V	youtube
Q159t_RYKsY	2019-02-09 00:26:18.969881-05	2019-02-09 00:26:18.969881-05	\N	216000000000	BTS (방탄소년단) Blood Sweat and Tears Lyrics (피 땀 눈물) Han|Rom|Eng Color Coded	youtube
pBuZEGYXA6E	2019-02-09 13:27:45.549609-05	2019-02-09 13:27:45.549609-05	\N	231000000000	BTS (방탄소년단) 'IDOL' Official MV	youtube
5anLPw0Efmo	2019-02-09 14:39:37.087046-05	2019-02-09 14:39:37.087046-05	\N	272000000000	Evanescence - My Immortal (Official Music Video)	youtube
pCF5fwevrKQ	2019-02-09 15:43:03.395267-05	2019-02-09 15:43:03.395267-05	\N	225000000000	DK Rap Anniversary Edition   Donkey Kong 64  on8Zpps2R0	youtube
6uJf2IT2Zh8	2019-02-09 16:21:42.148261-05	2019-02-09 16:21:42.148261-05	\N	230000000000	Red Velvet 레드벨벳 '피카부 (Peek-A-Boo)' MV	youtube
BBwrx1FX5QY	2019-02-09 16:36:10.972049-05	2019-02-09 16:36:10.972049-05	\N	223000000000	EXO - Power (Color Coded Han|Rom|Eng Lyrics) | by Yankat	youtube
gTHloFfWk4Q	2019-02-09 16:47:51.863551-05	2019-02-09 16:47:51.863551-05	\N	225000000000	【Kagamine Rin V4X】 7/8 【Cover】	youtube
RS5zxXzjpF0	2019-02-09 17:05:45.669907-05	2019-02-09 17:05:45.669907-05	\N	209000000000	WJSN (Cosmic Girls) (우주소녀) – 'Thawing (겨울잠)' Lyrics (HAN/ROM/ENG) [Color Coded]	youtube
0T6go6EOuG4	2019-02-10 18:19:37.850367-05	2019-02-10 18:19:37.850367-05	\N	111000000000	Don't Watch An Anime Called Boku - Typography	youtube
tY5e3D_wImk	2019-02-10 18:21:58.695465-05	2019-02-10 18:21:58.695465-05	\N	175000000000	K.K. CARAMELLDANSEN	youtube
S6UqgjaBt4w	2019-02-10 18:38:38.921406-05	2019-02-10 18:38:38.921406-05	\N	22000000000	Poomp the mooscles	youtube
j8nVB9FwykU	2019-02-11 18:30:35.531089-05	2019-02-11 18:30:35.531089-05	\N	623000000000	[VAPORWAVE] Red sun in the sky - Chinese Communist Music 天上太阳红衫衫	youtube
W5ZIZ6v7egU	2019-02-11 18:31:19.191438-05	2019-02-11 18:31:19.191438-05	\N	250000000000	Taneda Risa - Wareta Ringo (Shinsekai Yori Ending)	youtube
b84Z3IRg3VA	2019-02-11 18:31:47.368295-05	2019-02-11 18:31:47.368295-05	\N	237000000000	"Minecraft Style" - A Parody of PSY's Gangnam Style (Music Video)	youtube
OEpeRmPkRIU	2019-02-11 19:01:45.754277-05	2019-02-11 19:01:45.754277-05	\N	281000000000	Camellia ft. Nanahira - Senpai, Notice me	youtube
TiCEzvE0trc	2019-02-11 19:10:57.412559-05	2019-02-11 19:10:57.412559-05	\N	4445000000000	ななひら -  Force! [Full Album] (Nanahira)	youtube
4nf7HIL0QS0	2019-02-11 20:02:06.217431-05	2019-02-11 20:02:06.217431-05	\N	132000000000	はいたい七葉「ゆいまーる☆わーるど」full	youtube
d6raPbTyp7o	2019-02-12 10:48:55.518703-05	2019-02-12 10:48:55.518703-05	\N	299000000000	【東方Vocal】花たん - Who loves your world (DiGiTAL WiNG)	youtube
543Aa3Fn0y0	2019-02-12 11:40:40.365365-05	2019-02-12 11:40:40.365365-05	\N	286000000000	【東方ボーカル】 「ぐりもあ。」 【森羅万象】	youtube
5laWtutnyQI	2019-02-12 20:52:09.14084-05	2019-02-12 20:52:09.14084-05	\N	264000000000	【東方Vocal／Rock】 冥界線-Nightmare- 「Inorai」【Subbed】	youtube
H0Ea6FNb16c	2019-02-12 21:03:04.029843-05	2019-02-12 21:03:04.029843-05	\N	225000000000	Through the Fire and Despacito - Dragonfonsi (MASHUP)	youtube
PjNKiaaFtd8	2019-02-12 21:04:44.428716-05	2019-02-12 21:04:44.428716-05	\N	206000000000	⁴ᴷ【東方Vocalカラオケ】Siren【CielArc】	youtube
ICAfBw4cxEI	2019-02-12 21:09:07.525067-05	2019-02-12 21:09:07.525067-05	\N	229000000000	Owl City - Megalovania	youtube
WwSQymMj8Ro	2019-02-12 21:10:10.434946-05	2019-02-12 21:10:10.434946-05	\N	288000000000	⁴ᴷ【東方Vocalカラオケ】DUAL EDGE OF FAITH【SOUND HOLIC】	youtube
ev8o5agHe9Y	2019-02-12 21:18:50.912619-05	2019-02-12 21:18:50.912619-05	\N	319000000000	【東方】TUMENECO『たった、されど。』	youtube
X2P9zmk3s9A	2019-02-12 21:31:16.744427-05	2019-02-12 21:31:16.744427-05	\N	311000000000	【東方Vocal】【あ～るの～と】ActLICE	youtube
o1Fve0D9tQQ	2019-02-12 21:53:56.119852-05	2019-02-12 21:53:56.119852-05	\N	102000000000	Fortnite - Despacito (Extended)	youtube
P_-dPGE_dBc	2019-02-12 22:01:10.638803-05	2019-02-12 22:01:10.638803-05	\N	272000000000	【東方Vocalアレンジ】デザイアシューティング【あ～るの～と】	youtube
pu3AojC92Vc	2019-02-12 22:27:59.207715-05	2019-02-12 22:27:59.207715-05	\N	439000000000	Just Stan (Doki Doki Literature Club vs. Eminem) // I am Jemboy	youtube
etvIGyQWHWg	2019-02-13 01:14:50.580725-05	2019-02-13 01:14:50.580725-05	\N	84000000000	Luis Fonsi ft. Daddy Yankee - Despacito (Camellia Remix WIPver.)	youtube
VJFNcHgQ4HM	2019-02-13 01:20:40.980813-05	2019-02-13 01:20:40.980813-05	\N	407000000000	黒皇帝 - Galaxy Collapse	youtube
A-4vFS0gySA	2019-02-13 10:31:28.105954-05	2019-02-13 10:31:28.105954-05	\N	247000000000	dBu Music - Hiroari Shoots a Strange Bird ~ Till When	youtube
SEBUD_4T9XA	2019-02-13 10:31:55.06436-05	2019-02-13 10:31:55.06436-05	\N	269000000000	どぶウサギ - 秋に舞う椛と滝飛沫 ～ Falls in Fall	youtube
K0h8GUtql2E	2019-02-13 19:56:06.703271-05	2019-02-13 19:56:06.703271-05	\N	215000000000	Just Lose It! Yaya!!1 (Undertale x Eminem Mashup) // I am Jemboy	youtube
-R3Td7YWBzg	2019-03-31 18:38:04.503209-04	2019-03-31 18:38:04.503209-04	\N	491000000	Memetallica -- bOne(r)	youtube
mw2fh8qfDiA	2019-02-13 19:59:54.364526-05	2019-02-13 19:59:54.364526-05	\N	195000000000	Neil Cicierega - Wallspin	youtube
O96ScQVcKgc	2019-02-13 20:09:23.414086-05	2019-02-13 20:09:23.414086-05	\N	274000000000	Hope to See You Again	youtube
FCJno3ECU7w	2019-02-13 20:09:49.837553-05	2019-02-13 20:09:49.837553-05	\N	217000000000	【GUMI】「摩訶不思議」 あめのむらくもＰ	youtube
4sZuN0xXWLc	2019-02-13 20:30:49.089779-05	2019-02-13 20:30:49.089779-05	\N	60000000000	Big Bill Hell's	youtube
DJwq4OQr1_k	2019-02-13 20:32:24.650061-05	2019-02-13 20:32:24.650061-05	\N	236000000000	【ENG subs】 Reol (れをる) - 劣等上等 BRING IT ON (feat. Giga-P)	youtube
sblR0eIRW-I	2019-02-13 20:53:21.348282-05	2019-02-13 20:53:21.348282-05	\N	230000000000	Turn Down For Whammu? (The Pillar Hype Men Theme)	youtube
Pv854t5QUVs	2019-02-13 21:07:55.526016-05	2019-02-13 21:07:55.526016-05	\N	27000000000	Ah, The Scalene Triangle	youtube
0Dpw0VvH4m0	2019-02-13 21:08:33.059792-05	2019-02-13 21:08:33.059792-05	\N	132000000000	1, 2 Oatmeal	youtube
8-y9SPHUz8o	2019-02-13 21:56:55.840017-05	2019-02-13 21:56:55.840017-05	\N	29000000000	Eminem - My Name Is (John Cena Remix)	youtube
lPMEm0T6cRc	2019-02-13 22:29:45.853381-05	2019-02-13 22:29:45.853381-05	\N	118000000000	Gucci Gang but it's in alphabetical order	youtube
xD6zLZT3q5s	2019-02-13 22:47:35.903213-05	2019-02-13 22:47:35.903213-05	\N	35000000000	JonTron's Flex Tape video but only when they say flex tape	youtube
Dy-CuWLQ_6Y	2019-02-13 22:48:38.097164-05	2019-02-13 22:48:38.097164-05	\N	328000000000	Hotarubi no Mori e - OST - Natsu wo Miteita  『蛍火の杜へ 夏をみていた』	youtube
st4ZoMhFiVY	2019-02-13 22:52:48.968525-05	2019-02-13 22:52:48.968525-05	\N	222000000000	かかってこいよ / NakamuraEmi	youtube
Ag49QlzjmZo	2019-02-13 23:11:54.294181-05	2019-02-13 23:11:54.294181-05	\N	238000000000	t+pazolite ● Party in the HOLLOWood Feat. Nanahira	youtube
A46bLj6iigE	2019-02-14 01:23:09.078141-05	2019-02-14 01:23:09.078141-05	\N	372000000000	k-waves LAB - フォールオブフォール	youtube
ME6RtQgBMSI	2019-02-14 13:07:25.830807-05	2019-02-14 13:07:25.830807-05	\N	240000000000	Pierce The Veil - "King For A Day" ft. Kellin Quinn (Lyric Video)	youtube
_UwWYtLWEZg	2019-02-14 23:03:38.460547-05	2019-02-14 23:03:38.460547-05	\N	250000000000	Sleeping With Sirens - If You Can't Hang (Official Music Video)	youtube
G7kpMvoxTYE	2019-02-14 23:28:05.300486-05	2019-02-14 23:28:05.300486-05	\N	297000000000	t+pazolite - cheatreal	youtube
_05XtaUZYns	2019-02-14 23:29:16.827143-05	2019-02-14 23:29:16.827143-05	\N	343000000000	ラリリレル、リリロ、リラロ	youtube
UhMrJ6CncOk	2019-02-14 23:45:30.208894-05	2019-02-14 23:45:30.208894-05	\N	177000000000	Shoujo Shuumatsu Ryokou - More One Night (Assertive Hardcore Bootleg)	youtube
8i9OMhfRxD0	2019-02-14 23:51:44.519341-05	2019-02-14 23:51:44.519341-05	\N	249000000000	Drunk Nanahira	youtube
XKOO_RleMqA	2019-02-14 23:59:28.014282-05	2019-02-14 23:59:28.014282-05	\N	280000000000	Shoko Nakagawa - Sorairo Days (Assertive Remix)	youtube
16nFYzZ6n8s	2019-02-15 00:07:05.990266-05	2019-02-15 00:07:05.990266-05	\N	248000000000	「物凄い勢いでけーねが物凄いうた」を歌ってみた＊ななひら	youtube
AOuA6_hKWIs	2019-02-15 00:24:20.682336-05	2019-02-15 00:24:20.682336-05	\N	220000000000	Splatoon1周年ナワバリバトル中にかっこいいシオカラ節が流れた件	youtube
wQwHVjHxpx8	2019-02-15 13:58:01.941114-05	2019-02-15 13:58:01.941114-05	\N	148000000000	Way Back Home - SHAUN ( Cover by Marveluss )	youtube
tyneiz9FRMw	2019-02-15 14:29:15.751354-05	2019-02-15 14:29:15.751354-05	\N	301000000000	アカリがやってきたぞっ	youtube
siIE8i48hlg	2019-02-15 18:25:36.367211-05	2019-02-15 18:25:36.367211-05	\N	1819000000000	ボーカロイドたちが2コードくり返してﾃｯﾃｰﾃﾚｯﾃｰとか叫ぶだけ	youtube
Fl2OvKxMA0s	2019-02-15 21:19:08.544916-05	2019-02-15 21:19:08.544916-05	\N	204000000000	Death Of A Bachelor	youtube
jO2_3pVd5k0	2019-02-15 21:21:47.380279-05	2019-02-15 21:21:47.380279-05	\N	216000000000	Panic! At The Disco: This Is Gospel (Piano Version)	youtube
7dQ1xiy-4hY	2019-02-15 21:22:10.44574-05	2019-02-15 21:22:10.44574-05	\N	197000000000	LA Devotee	youtube
bLm8g1gdcPc	2019-02-15 21:22:26.687216-05	2019-02-15 21:22:26.687216-05	\N	209000000000	House Of Memories	youtube
EzzDa5TuFnc	2019-02-16 04:37:54.857526-05	2019-02-16 04:37:54.857526-05	\N	292000000000	【キズナアイ×小林幸子】千本桜　歌ってみた【バーチャルコラボ】	youtube
zua831utwMM	2019-02-16 11:34:24.435078-05	2019-02-16 11:34:24.435078-05	\N	191000000000	Flintstones - Jacob Collier	youtube
K28H04Y2IdE	2019-02-16 11:34:40.922918-05	2019-02-16 11:34:40.922918-05	\N	273000000000	Fascinating Rhythm - Jacob Collier	youtube
4v3zyPEy-Po	2019-02-16 11:34:56.391762-05	2019-02-16 11:34:56.391762-05	\N	426000000000	Hideaway – Jacob Collier	youtube
KC3GrzoQG9U	2019-02-16 11:35:22.3434-05	2019-02-16 11:35:22.3434-05	\N	283000000000	Don't Stop 'Til You Get Enough - Jacob Collier	youtube
SBxpeuxUiOA	2019-02-16 14:21:48.225237-05	2019-02-16 14:21:48.225237-05	\N	105000000000	You Reposted in the Wrong Dimmadome	youtube
EQ8ViYIeH04	2019-02-16 14:36:57.779607-05	2019-02-16 14:36:57.779607-05	\N	179000000000	Das Racist - Combination Pizza Hut And Taco Bell	youtube
gy7goQReqqY	2019-02-16 15:22:13.758436-05	2019-02-16 15:22:13.758436-05	\N	205000000000	New Super Mario Bros. U - World 7: Meringue Clouds OST	youtube
ZYLlHjzi6X0	2019-02-16 15:25:10.797961-05	2019-02-16 15:25:10.797961-05	\N	155000000000	Athletic Theme - New Super Mario Bros. U	youtube
GLIcnr7FbEM	2019-02-16 15:28:51.102135-05	2019-02-16 15:28:51.102135-05	\N	229000000000	信仰は猛き妖怪の為に by dBu	youtube
UW9StN4Mr0o	2019-02-16 15:29:10.564612-05	2019-02-16 15:29:10.564612-05	\N	193000000000	[dBu Music] 無何有の郷 ～ Snowed Mountain	youtube
GCrs2K5ZEUs	2019-02-16 15:40:03.374742-05	2019-02-16 15:40:03.374742-05	\N	293000000000	【東方ボーカル】 ShibayanRecords - 彼と彼女とわたしの話 (Subbed)	youtube
dv13gl0a-FA	2019-02-16 18:39:37.331143-05	2019-02-16 18:39:37.331143-05	\N	264000000000	Initial D - Deja Vu	youtube
TVDjMuVGKDM	2019-02-16 20:08:21.489682-05	2019-02-16 20:08:21.489682-05	\N	68000000000	Underground Theme - New Super Mario Bros. U	youtube
Ty-_czkQ5Ds	2019-02-16 20:11:28.136938-05	2019-02-16 20:11:28.136938-05	\N	269000000000	【東方】Yonder Voice『絶景エピローグ』	youtube
oV_6lwy8xxQ	2019-02-16 20:14:32.178956-05	2019-02-16 20:14:32.178956-05	\N	182000000000	Crypt of the Necrodancer OST - Styx and Stones (4-1)	youtube
P3aGk_Gwqjw	2019-02-16 20:14:40.28709-05	2019-02-16 20:14:40.28709-05	\N	256000000000	The Lone Slim Shady - Caravan Palace vs. Eminem (Mashup)	youtube
UXMG102kSvk	2019-02-16 20:14:47.365035-05	2019-02-16 20:14:47.365035-05	\N	207000000000	YACHT — I Thought The Future Would Be Cooler (4K Lyric Video)	youtube
2x_N1P6C4Wk	2019-02-16 20:31:50.740901-05	2019-02-16 20:31:50.740901-05	\N	339000000000	「Nightcore」→ Thunder ✗ Radioactive ✗ Believer ✗ Whatever It Takes and MORE (Switching Vocals)	youtube
Yx5hoMw59nc	2019-02-16 20:32:24.17531-05	2019-02-16 20:32:24.17531-05	\N	261000000000	ゴリラオンステージ「Lemon/米津玄師」	youtube
FVKctErNwFU	2019-02-16 20:32:51.123369-05	2019-02-16 20:32:51.123369-05	\N	167000000000	I Just Had Sex (Explicit)	youtube
p6agFmXcyMI	2019-02-16 20:36:41.150847-05	2019-02-16 20:36:41.150847-05	\N	230000000000	Nightcore - What Hurts the most	youtube
Oxd6pXSYkzE	2019-02-16 20:36:55.592803-05	2019-02-16 20:36:55.592803-05	\N	223000000000	Angel With a Shotgun	youtube
ECJEZVL2WuI	2019-02-16 20:38:52.995153-05	2019-02-16 20:38:52.995153-05	\N	228000000000	k-waves LAB - 神々が恋した幻想郷	youtube
fAxjH9Tgi3Y	2019-02-16 20:39:42.964701-05	2019-02-16 20:39:42.964701-05	\N	216000000000	Nightcore - One In A Million	youtube
veafl2Jv53E	2019-02-16 20:46:50.507788-05	2019-02-16 20:46:50.507788-05	\N	241000000000	Gunther Levi   Oh, you touch my Tra la la	youtube
SFO0LK4h-v8	2019-02-16 20:54:40.071977-05	2019-02-16 20:54:40.071977-05	\N	189000000000	"I Just Found Diamonds" - A Minecraft Parody of The Lonely Island's I Just Had Sex	youtube
90SGLQywYwY	2019-02-16 21:26:03.140971-05	2019-02-16 21:26:03.140971-05	\N	144000000000	Nightcore - Dangerous	youtube
d9MRwzheNQs	2019-02-16 21:35:42.688644-05	2019-02-16 21:35:42.688644-05	\N	183000000000	Nightcore - Come Clean	youtube
gLZ264vO1E0	2019-02-16 21:38:11.785236-05	2019-02-16 21:38:11.785236-05	\N	147000000000	Pokemon GSC Is What I Like	youtube
HRew2Vzx0fQ	2019-02-16 21:39:57.405112-05	2019-02-16 21:39:57.405112-05	\N	188000000000	Nightcore - Surrender	youtube
pHXDMe6QV-U	2019-02-16 21:41:03.215151-05	2019-02-16 21:41:03.215151-05	\N	196000000000	Sunstroke Project & Olia Tira - Run Away (Moldova) Live 2010 Eurovision Song Contest	youtube
H0EhhZWXTng	2019-02-16 21:41:30.568691-05	2019-02-16 21:41:30.568691-05	\N	188000000000	Guy Sebastian - Tonight Again (Australia) - LIVE at Eurovision 2015 Grand Final	youtube
HB_GnnhNz-8	2019-02-16 21:54:10.085193-05	2019-02-16 21:54:10.085193-05	\N	199000000000	maNga - We Could Be The Same (Turkey) Live 2010 Eurovision Song Contest	youtube
rvrZJ5C_Nwg	2019-02-16 22:01:40.478196-05	2019-02-16 22:01:40.478196-05	\N	360000000000	Kirin J Callinan - Big Enough (Official Video) ft. Alex Cameron, Molly Lewis, Jimmy Barnes	youtube
Blrmy5jGswE	2019-02-16 22:09:10.387532-05	2019-02-16 22:09:10.387532-05	\N	288000000000	[Touhou]- Youmu's Theme: Hiroari Shoots a Strange Bird - Till When? ~ 4º Remix	youtube
X79sXBYYgIQ	2019-02-16 22:12:48.635814-05	2019-02-16 22:12:48.635814-05	\N	174000000000	Mystery Skulls - "Hellbent" [Official Audio]	youtube
-oabzr9zWXU	2019-02-16 22:18:10.782991-05	2019-02-16 22:18:10.782991-05	\N	167000000000	Aesop Rock - Kirby (Lyrics)	youtube
g6vgF5iK9Ho	2019-02-16 22:22:57.139035-05	2019-02-16 22:22:57.139035-05	\N	365000000000	【東方】凋叶棕『Downfalling Ideology』	youtube
CAL4WMpBNs0	2019-02-16 22:27:09.697587-05	2019-02-16 22:27:09.697587-05	\N	182000000000	Doki Doki Literature Club! OST - Your Reality (Credits)	youtube
Tb1_93M8SXA	2019-02-17 02:55:41.637236-05	2019-02-17 02:55:41.637236-05	\N	188000000000	This Will Be the Day (feat. Casey Lee Williams)	youtube
ndiNMhM9f7I	2019-02-17 13:26:12.332802-05	2019-02-17 13:26:12.332802-05	\N	564000000000	EXTREME MEME MUSIC MEGAMASHUP 2	youtube
GsgrCaJ14KU	2019-02-17 13:32:07.250221-05	2019-02-17 13:32:07.250221-05	\N	130000000000	Gucci Gucci Literature Club's Not Hot (ft. Monika) [Miraie Mashup]	youtube
E8ivQhAZ8n4	2019-02-17 13:49:23.742368-05	2019-02-17 13:49:23.742368-05	\N	194000000000	K.K. BAMBA 🔥💰💸	youtube
phJvde3rXA4	2019-02-17 13:55:54.467132-05	2019-02-17 13:55:54.467132-05	\N	18000000000	I love Gnome	youtube
D9LrEXF3USs	2019-02-17 13:58:11.676259-05	2019-02-17 13:58:11.676259-05	\N	189000000000	2CELLOS - Despacito [OFFICIAL VIDEO]	youtube
73mB_Vrk9X0	2019-02-17 14:04:33.655337-05	2019-02-17 14:04:33.655337-05	\N	30000000000	Bill Nye the Science Guy but every time they say "Bill" a new effect is added to the video	youtube
3sqr2uyPTL4	2019-02-17 14:04:47.253421-05	2019-02-17 14:04:47.253421-05	\N	17000000000	Bill Nye the Science Guy but every 'Bill' makes it go faster by 10%	youtube
HuurYUlhmgg	2019-02-17 14:06:09.379478-05	2019-02-17 14:06:09.379478-05	\N	104000000000	Starboy but everytime he says "ah" it increases speed by 10 percent	youtube
v9x6OvllHZ4	2019-02-17 14:16:29.787379-05	2019-02-17 14:16:29.787379-05	\N	22000000000	what's cooler than being cool	youtube
USLJhgycyrc	2019-02-17 14:17:15.906428-05	2019-02-17 14:17:15.906428-05	\N	16000000000	whats cooler than being cool	youtube
USE8HCrR7vo	2019-02-17 14:17:35.45929-05	2019-02-17 14:17:35.45929-05	\N	26000000000	Cooler than being cool - PK Freeze	youtube
QYh6mYIJG2Y	2019-02-17 14:29:08.015029-05	2019-02-17 14:29:08.015029-05	\N	185000000000	Ariana Grande - 7 rings	youtube
UX6K7waag5Q	2019-02-17 14:32:18.381158-05	2019-02-17 14:32:18.381158-05	\N	238000000000	Wiz Khalifa - We Dem Boyz [Official Video]	youtube
JI6JfJXcUjU	2019-02-17 14:41:27.890046-05	2019-02-17 14:41:27.890046-05	\N	973000000000	Liszt: Réminiscences de Don Juan, S.418 (Okada)	youtube
kFZKgf5WG0g	2019-02-17 15:19:47.909152-05	2019-02-17 15:19:47.909152-05	\N	269000000000	Ken Ashcorp - Absolute Territory	youtube
bhfpVIEejPk	2019-02-17 15:20:39.054082-05	2019-02-17 15:20:39.054082-05	\N	253000000000	Jimmy Urine - Fighting With The Melody (The Secret Cinematic Sounds of Jimmy Urine)	youtube
Qm5JceJ52Gs	2019-02-17 15:22:13.881813-05	2019-02-17 15:22:13.881813-05	\N	228000000000	恋は戦争 [Love is War] (Dress to Kill remix) feat. IA	youtube
YnZV_6VcGcA	2019-02-17 15:22:47.976301-05	2019-02-17 15:22:47.976301-05	\N	162000000000	Yira:: Quemado [Santos Impostores]	youtube
sSvSCaIIwf8	2019-02-17 15:39:44.806817-05	2019-02-17 15:39:44.806817-05	\N	216000000000	Que Tengo Que Hacer? - Daddy Yankee (with lyrics)	youtube
uzbLUljNIy4	2019-02-17 15:41:51.53479-05	2019-02-17 15:41:51.53479-05	\N	176000000000	Pasame la botella - Letra	youtube
avaSdC0QOUM	2019-02-17 15:42:08.064772-05	2019-02-17 15:42:08.064772-05	\N	184000000000	The Lonely Island - I'm On A Boat (Explicit Version) ft. T-Pain	youtube
40qJapBsOp4	2019-02-17 15:55:59.704795-05	2019-02-17 15:55:59.704795-05	\N	235000000000	『Despacito／ゆっくりと』 (Japanese Language Vocaloid Cover) 【Hatsune Miku ft. Wyz】	youtube
keX2bExuceU	2019-02-17 15:56:16.125893-05	2019-02-17 15:56:16.125893-05	\N	253000000000	[VOCALOID4] World is Mine -Spanish version- [Hatsune Miku V4X]	youtube
tLPZmPaHme0	2019-02-17 16:01:28.647649-05	2019-02-17 16:01:28.647649-05	\N	164000000000	The Creep (feat. Nicki Minaj & John Waters)	youtube
_T_SIDKGRjs	2019-02-17 16:02:20.813421-05	2019-02-17 16:02:20.813421-05	\N	270000000000	Elvis Crespo - Suavemente (Cover Audio)	youtube
5Ulr4o-WZgM	2019-02-17 16:04:25.202242-05	2019-02-17 16:04:25.202242-05	\N	212000000000	La Mordidita	youtube
e62M-5-7ajY	2019-02-17 16:23:24.45676-05	2019-02-17 16:23:24.45676-05	\N	230000000000	Every Michael Jackson Grunt	youtube
GBghLfyFhVY	2019-02-17 16:33:36.504536-05	2019-02-17 16:33:36.504536-05	\N	247000000000	Ice Cube - Chase Down The Bully [Audio]	youtube
CTQrn3idlDM	2019-02-17 16:39:27.798874-05	2019-02-17 16:39:27.798874-05	\N	224000000000	Every Michael Jackson Grunt REVERSED	youtube
vSSjymvqRLk	2019-02-17 16:40:00.421925-05	2019-02-17 16:40:00.421925-05	\N	253000000000	Africa But it's made entirely of Every Michael Jackson Grunt	youtube
8D-WVlRohQk	2019-02-17 16:54:53.059851-05	2019-02-17 16:54:53.059851-05	\N	257000000000	Neil Cicierega - Smooth	youtube
JMH5X27Hqyg	2019-02-17 22:10:19.045633-05	2019-02-17 22:10:19.045633-05	\N	189000000000	张碧晨——《她说》中国好声音	youtube
vJVZAvrg-ts	2019-02-17 22:10:49.875431-05	2019-02-17 22:10:49.875431-05	\N	238000000000	Kagamine Rin - Abstract Nonsense (English Subbed)	youtube
s4Lu3o_r39Q	2019-02-17 22:11:13.114103-05	2019-02-17 22:11:13.114103-05	\N	228000000000	絶望plantation | 妖精帝國	youtube
j0N5XpHDfUM	2019-02-17 22:11:25.435533-05	2019-02-17 22:11:25.435533-05	\N	233000000000	[FULL] Mahouka Koukou no Rettousei ED 2 『Mirror』 Romaji / English	youtube
VaUvLnruYzQ	2019-02-17 22:11:37.310823-05	2019-02-17 22:11:37.310823-05	\N	255000000000	GARNiDELiA - Yakusoku	youtube
9HP8FTFbW30	2019-02-17 22:12:58.683749-05	2019-02-17 22:12:58.683749-05	\N	261000000000	MY FIRST STORY- 虚言NEUROSE/ Kyogen  \n[ English  Lyric]	youtube
pMaH486gDjw	2019-02-18 12:50:20.557541-05	2019-02-18 12:50:20.557541-05	\N	276000000000	Djesse - Jacob Collier w/ Metropole Orkest; cond: Jules Buckley [OFFICIAL AUDIO]	youtube
eqY3FaZmh-Y	2019-02-18 12:50:32.15088-05	2019-02-18 12:50:32.15088-05	\N	629000000000	Snarky Puppy feat. Jacob Collier & Big Ed Lee - "Don't You Know" (Family Dinner Volume Two)	youtube
o1iz4L-5zkQ	2019-02-18 12:50:55.098542-05	2019-02-18 12:50:55.098542-05	\N	208000000000	八王子P 「気まぐれメルシィ  feat. 初音ミク」(6/15発売Best AL「Eight」収録）	youtube
UFTfJnkYS8A	2019-02-18 12:51:21.699676-05	2019-02-18 12:51:21.699676-05	\N	224000000000	【IA OFFICIAL】SEE THE LIGHTS feat. IA / ASY (MUSIC VIDEO)	youtube
_U4NeRLrMZA	2019-02-18 12:51:38.281443-05	2019-02-18 12:51:38.281443-05	\N	290000000000	アイサイ-結月ゆかり for LamazeP	youtube
Xg-qfsKN2_E	2019-02-18 12:51:51.667897-05	2019-02-18 12:51:51.667897-05	\N	230000000000	【みきとP／mikitoP】ロキ／鏡音リン・みきとP 　ROKI／Rin Kagamine・mikitoP	youtube
n7oTl4dDt6M	2019-02-18 12:52:14.893012-05	2019-02-18 12:52:14.893012-05	\N	253000000000	A Survey from God -rerulili feat.miku & RIN / 神様からのアンケート - れるりり feat 初音ミク & 鏡音リン	youtube
_UbOg7Y3ZnI	2019-02-18 12:52:23.538161-05	2019-02-18 12:52:23.538161-05	\N	278000000000	sasakure.UK - Our 16bit endZ Trigger feat. GUMI / ぼくらの16bitエンズ・トリガー	youtube
bGqFtiyqB_E	2019-02-18 12:52:30.913574-05	2019-02-18 12:52:30.913574-05	\N	249000000000	quest - rerulili feat.GUMI/クエスト-  れるりりfeat.GUMI	youtube
BXxWUy8eFVY	2019-02-18 12:52:42.273225-05	2019-02-18 12:52:42.273225-05	\N	236000000000	【結月ゆかり】クラヴィウス【オリジナル】/【Yukari Yuzuki】Clavius【original】	youtube
fclXVYU2kv8	2019-02-18 12:52:46.366571-05	2019-02-18 12:52:46.366571-05	\N	353000000000	VOCALOID3: Yuzuki Yukari - "Tiny Paradise" [HD]	youtube
PryzACQ-VF0	2019-02-18 12:52:49.585256-05	2019-02-18 12:52:49.585256-05	\N	390000000000	Clean Tears - Cafe night - Night Lounge Remix (feat. Yuzuki Yukari)	youtube
JdxrXYTbm5M	2019-02-18 13:47:15.886137-05	2019-02-18 13:47:15.886137-05	\N	244000000000	Ed Sheeran - Megalovania (HQ Audio)	youtube
k59E7T0H-Us	2019-02-18 14:38:24.312089-05	2019-02-18 14:38:24.312089-05	\N	191000000000	Emmelie De Forest - Only Teardrops (Denmark) 2013 Eurovision Song Contest	youtube
G48p8eNhnd8	2019-02-18 14:48:15.031522-05	2019-02-18 14:48:15.031522-05	\N	188000000000	Loïc Nottet - Rhythm Inside (Belgium) - LIVE at Eurovision 2015 Grand Final	youtube
ygyraTutBJg	2019-02-18 16:23:33.535578-05	2019-02-18 16:23:33.535578-05	\N	230000000000	EoSD Stage 4 Boss - Patchouli Knowledge's Theme - Locked Girl ~ The Girl's Secret Room	youtube
Ys2p_bXOaAc	2019-02-18 16:32:28.605488-05	2019-02-18 16:32:28.605488-05	\N	269000000000	【東方Vocal／Trance】 WHITE TRAVELER 「SOUND HOLIC」	youtube
lY_KORpQPdI	2019-02-18 16:43:58.190119-05	2019-02-18 16:43:58.190119-05	\N	248000000000	Reisen's Theme - Lunatic Eyes ~ Invisible Full Moon	youtube
HHFYORrFp8U	2019-02-18 16:44:55.957648-05	2019-02-18 16:44:55.957648-05	\N	301000000000	Kanako's Theme - Suwa Foughten Field	youtube
3_cr-vePVE8	2019-02-18 16:47:10.033904-05	2019-02-18 16:47:10.033904-05	\N	397000000000	EastNewSound - Black Lotus	youtube
wZybcFeVGqY	2019-02-18 16:47:55.429012-05	2019-02-18 16:47:55.429012-05	\N	348000000000	【PV】Lucent Wish（神さびた古戦場 アレンジ曲)	youtube
OI3C9qQlb1U	2019-02-18 17:01:07.507034-05	2019-02-18 17:01:07.507034-05	\N	266000000000	XI - Freedom Dive ↓	youtube
ExK0bK-HKp4	2019-02-18 17:10:57.865783-05	2019-02-18 17:10:57.865783-05	\N	500000000000	【東方ボーカル】 【凋叶棕】 うつろわざるもの　～True Conclusion	youtube
PEGccV-NOm8	2019-02-18 18:43:30.611366-05	2019-02-18 18:43:30.611366-05	\N	234000000000	Cardi B - Bodak Yellow [OFFICIAL MUSIC VIDEO]	youtube
CY8E6N5Nzec	2019-02-18 18:45:11.281023-05	2019-02-18 18:45:11.281023-05	\N	206000000000	Marshmello & Anne-Marie - FRIENDS (Lyric Video) *OFFICIAL FRIENDZONE ANTHEM*	youtube
pjZuxJ3o_TQ	2019-02-18 18:46:14.492628-05	2019-02-18 18:46:14.492628-05	\N	194000000000	The Chainsmokers ‒ Sick Boy (Lyrics)	youtube
izIyhdEHSPo	2019-02-18 18:46:48.372395-05	2019-02-18 18:46:48.372395-05	\N	203000000000	Khalid & Normani - Love Lies (Official Audio)	youtube
d4MYSDfVOiE	2019-02-18 18:47:30.820411-05	2019-02-18 18:47:30.820411-05	\N	206000000000	Baby (feat. MARINA & Luis Fonsi)	youtube
almQVIIEo64	2019-02-18 18:47:59.154117-05	2019-02-18 18:47:59.154117-05	\N	221000000000	Sinner- Andy Grammer	youtube
HNIypYrVlkA	2019-02-18 18:49:03.198973-05	2019-02-18 18:49:03.198973-05	\N	218000000000	KIRA - MONSTER ft. GUMI English (VOCALOID Original)	youtube
NXMy-nofCps	2019-02-18 18:49:29.33143-05	2019-02-18 18:49:29.33143-05	\N	212000000000	Ares	youtube
LPcP3Oc9oiM	2019-02-18 18:52:27.340367-05	2019-02-18 18:52:27.340367-05	\N	227000000000	Loving Caliber - Faster Car	youtube
PmcPlCNHqmk	2019-02-18 18:53:13.11422-05	2019-02-18 18:53:13.11422-05	\N	217000000000	Unstoppable (Rebel Remix)	youtube
AX3Bsiq-13k	2019-02-18 18:53:38.181628-05	2019-02-18 18:53:38.181628-05	\N	189000000000	Dua Lipa & BLACKPINK - Kiss and Make Up (Official Audio)	youtube
Fegs-XVKgnM	2019-02-18 21:50:12.028172-05	2019-02-18 21:50:12.028172-05	\N	210000000000	X Gon Give It To Ya Maybe - Carly Rae Jepsen vs. DMX (Mashup)	youtube
Nk3dypfdNNs	2019-02-18 22:31:04.537617-05	2019-02-18 22:31:04.537617-05	\N	157000000000	Turn Down For Sans	youtube
Tjp-_xhZXY0	2019-02-18 22:35:18.946034-05	2019-02-18 22:35:18.946034-05	\N	196000000000	Baby Got Cornered (Sir Mix-a-lot vs Capcom)	youtube
KVt2Qweiydg	2019-02-19 18:01:01.86213-05	2019-02-19 18:01:01.86213-05	\N	228000000000	Nanahoshi Kangengakudan - Meikaruza (instrumental)	youtube
LddTdujDOD4	2019-02-19 20:29:15.283333-05	2019-02-19 20:29:15.283333-05	\N	256000000000	This Will Be the Fighting Gold - RWBY vs. JoJo's Bizarre Adventure	youtube
-DwN8eqUArQ	2019-02-18 16:24:45.007317-05	2019-02-18 16:24:45.007317-05	\N	452000000000	Touhou 東方14 DDC OST #6: Kobito of the Shining Needle~Little Princess (Shinmyoumaru Sukuna's Theme)	youtube
JIZ12EQ2SFg	2019-02-18 16:25:17.004369-05	2019-02-18 16:25:17.004369-05	\N	183000000000	EoSD Stage 2 Boss - Cirno's Theme - Beloved Tomboyish Girl	youtube
VIop055eJhU	2019-02-18 16:32:56.549682-05	2019-02-18 16:32:56.549682-05	\N	128000000000	Flandre's Theme - U.N. Owen was her?	youtube
Ltwc9FVlnng	2019-02-18 16:34:20.469671-05	2019-02-18 16:34:20.469671-05	\N	15000000000	Incoming Call From Sans	youtube
ESYWOcXmhPI	2019-02-18 16:49:24.27686-05	2019-02-18 16:49:24.27686-05	\N	143000000000	Go K.K. Rider! - Super Smash Bros. Brawl	youtube
PInuVXgxO1g	2019-02-18 16:49:40.006636-05	2019-02-18 16:49:40.006636-05	\N	162000000000	Main Theme - Super Smash Bros. Brawl	youtube
XKQa1vx-oNY	2019-02-18 18:44:20.586026-05	2019-02-18 18:44:20.586026-05	\N	199000000000	blackbear - anxiety ft. FRND	youtube
iahWWAr82Q0	2019-02-18 18:50:09.392077-05	2019-02-18 18:50:09.392077-05	\N	229000000000	Panic! At The Disco - Dying In LA (Official Audio)	youtube
Wh33SsMasbA	2019-02-18 18:50:45.397268-05	2019-02-18 18:50:45.397268-05	\N	243000000000	Phoebe Ryan x Quinn XCII - Middle Finger (Official Audio)	youtube
kwOKW2KUGXs	2019-02-18 19:12:51.448744-05	2019-02-18 19:12:51.448744-05	\N	326000000000	Baby I'm Back (Meme It Back Extended) - pluffaduff	youtube
1QGvt7QgTuQ	2019-02-18 20:46:34.188216-05	2019-02-18 20:46:34.188216-05	\N	211000000000	Mystery Skulls - Freaking Out (Lyrics)	youtube
QDQVY2sBPes	2019-02-18 20:55:32.641184-05	2019-02-18 20:55:32.641184-05	\N	146000000000	DJ Stalin -  National Techno Anthem of USSR	youtube
dhqyMblMjGg	2019-02-18 21:00:18.320881-05	2019-02-18 21:00:18.320881-05	\N	236000000000	All I Want For Christmas Is You X Crank That Soulja Boy - Mariah Carey Soulja Boy	youtube
K6wUYvL_woI	2019-02-18 21:09:22.225681-05	2019-02-18 21:09:22.225681-05	\N	161000000000	Seven Nation Army (Alex Jones cover)	youtube
MFfT9zBI3Po	2019-02-18 21:10:39.43158-05	2019-02-18 21:10:39.43158-05	\N	81000000000	Ape On Me (DK Rap + Take On Me Mashup)	youtube
fJP1duVKn7Q	2019-02-18 21:11:13.179059-05	2019-02-18 21:11:13.179059-05	\N	230000000000	Despacito II	youtube
RLd9PcZW5PQ	2019-02-18 21:14:41.826776-05	2019-02-18 21:14:41.826776-05	\N	212000000000	Sheku Kanneh-Mason - Leonard Cohen: Hallelujah, arr. Tom Hodge	youtube
wo-j4-ES6GE	2019-02-18 21:29:38.703428-05	2019-02-18 21:29:38.703428-05	\N	114000000000	Skrillex - Bangarang x John Cena - My Time Is Now [Cenarang] (NBGMusic mashup)	youtube
w0acnflWrZ4	2019-02-18 21:32:56.517667-05	2019-02-18 21:32:56.517667-05	\N	24000000000	Country Roads Mario	youtube
K6RUg-NkjY4	2019-02-18 21:46:18.8198-05	2019-02-18 21:46:18.8198-05	\N	215000000000	The devil went down to Georgia lyrics [original]	youtube
DStvfO_EWGU	2019-02-19 15:06:58.834484-05	2019-02-19 15:06:58.834484-05	\N	215000000000	あらきARAKI - テオTeo【中日附詞】 ᴴᴰ	youtube
99a0XA9z2bE	2019-02-19 22:03:00.13925-05	2019-02-19 22:03:00.13925-05	\N	276000000000	k-waves LAB - おてんば恋娘	youtube
QTgQzv_16Xc	2019-02-19 22:33:14.004085-05	2019-02-19 22:33:14.004085-05	\N	217000000	dBu - 魔女達の舞踏会　～ Magus	youtube
c2FB1_ohlek	2019-02-20 15:22:27.846019-05	2019-02-20 15:22:27.846019-05	\N	291000000	B.o.B ft. Hayley Williams - Airplanes (Feint Remix) HD	youtube
_jlNH625JEY	2019-02-20 16:30:04.95458-05	2019-02-20 16:30:04.95458-05	\N	376000000	BPoHC Tenkai Zuifeng's Theme - Burst Overflow	youtube
wRa0w5GpMBQ	2019-02-20 16:41:30.403403-05	2019-02-20 16:41:30.403403-05	\N	120000000	SOUND HOLIC Vs. SWING HOLIC - ALTONA	youtube
2mRH0DotXCU	2019-02-20 16:46:32.302695-05	2019-02-20 16:46:32.302695-05	\N	317000000	[J-CORE] KASAI HARCORES - Cycle Hit	youtube
A1H1X8PKz3g	2019-02-20 17:02:19.861549-05	2019-02-20 17:02:19.861549-05	\N	324000000	yaseta - Bluenation	youtube
R9VDPMk5ls0	2019-02-20 19:31:16.980653-05	2019-02-20 19:31:16.980653-05	\N	217000000	[M/V] SEVENTEEN(세븐틴) - Home	youtube
HYHz4kZNuV8	2019-02-20 19:34:54.169953-05	2019-02-20 19:34:54.169953-05	\N	202000000	SEVENTEEN (세븐틴) - Home (Color Coded Lyrics Eng/Rom/Han/가사)	youtube
OZtcuCok5MI	2019-02-20 20:34:14.720897-05	2019-02-20 20:34:14.720897-05	\N	16000000	youve been gnomed but REVERSED	youtube
4bMzwRTsoW8	2019-02-20 20:34:33.972071-05	2019-02-20 20:34:33.972071-05	\N	334000000	Calvin Harris Acceptable in the 80s	youtube
cPJUBQd-PNM	2019-02-20 20:45:09.929443-05	2019-02-20 20:45:09.929443-05	\N	265000000	"Revenge" - A Minecraft Parody of Usher's DJ Got Us Fallin' In Love (Music Video)	youtube
SVED62vfv18	2019-02-20 20:53:04.119223-05	2019-02-20 20:53:04.119223-05	\N	265000000	Revenge - Minecraft Parody (EAR RAPE)	youtube
goVXxmLpSlE	2019-02-20 20:53:16.752239-05	2019-02-20 20:53:16.752239-05	\N	300000000	Through the Oats and Meals	youtube
bpszIdtcWQc	2019-02-20 20:58:45.735286-05	2019-02-20 20:58:45.735286-05	\N	85000000	take on thoose notes	youtube
OsqG9R-ubZU	2019-02-20 21:00:17.811791-05	2019-02-20 21:00:17.811791-05	\N	159000000	1, 2 Megaloatmeal	youtube
16XRqMd1Pm0	2019-02-20 21:04:10.539405-05	2019-02-20 21:04:10.539405-05	\N	239000000	MINE DIAMONDS | miNECRAFT PARODY OF TAKE ON ME (Eurobeat Remix)	youtube
SF8GPdz1CRU	2019-02-20 21:04:52.903934-05	2019-02-20 21:04:52.903934-05	\N	138000000	The Ting Goes Oatmeal	youtube
npHd_-pk1Is	2019-02-20 21:11:41.106583-05	2019-02-20 21:11:41.106583-05	\N	85000000	1 2 Havana	youtube
wTr0P1Grc2g	2019-02-20 21:13:44.73193-05	2019-02-20 21:13:44.73193-05	\N	94000000	Mambo No. 1,2	youtube
vhaXGuoJI3k	2019-02-20 21:14:39.612876-05	2019-02-20 21:14:39.612876-05	\N	188000000	Oatmeal Eye Joe	youtube
QstOV9RwU3M	2019-02-20 21:15:02.422556-05	2019-02-20 21:15:02.422556-05	\N	110000000	Oatmeal Off	youtube
zHfowomwQlA	2019-02-20 21:15:29.58192-05	2019-02-20 21:15:29.58192-05	\N	88000000	1, 2 Oatmeal - Communist Remix	youtube
uQq67UbGvEc	2019-02-20 21:19:42.081482-05	2019-02-20 21:19:42.081482-05	\N	127000000	Crazy Oatmeal	youtube
uE3ibq3_tqs	2019-02-20 21:20:36.232426-05	2019-02-20 21:20:36.232426-05	\N	46000000	1, 2 Reese's Puffs	youtube
7ErKTbCQIPI	2019-02-20 21:27:38.749128-05	2019-02-20 21:27:38.749128-05	\N	264000000	The Fray - How to Oatmeal	youtube
yrMxk66yXm4	2019-02-20 22:08:02.307605-05	2019-02-20 22:08:02.307605-05	\N	158000000	1, 2 Brick Housemeal	youtube
ciqi34urOS8	2019-02-20 22:08:19.886464-05	2019-02-20 22:08:19.886464-05	\N	130000000	Meal Spin	youtube
rDCwMwVaCDI	2019-02-20 22:08:45.556115-05	2019-02-20 22:08:45.556115-05	\N	200000000	OatKast - Heymeal!	youtube
OHvpfInVuUg	2019-02-20 22:10:40.828378-05	2019-02-20 22:10:40.828378-05	\N	51000000	Oatmeal & Oatmeal - I Found A Way	youtube
-npU7EZ3--E	2019-02-20 22:11:06.342813-05	2019-02-20 22:11:06.342813-05	\N	166000000	1, 2 Slider	youtube
oQy15z3ImXw	2019-02-20 22:11:54.143484-05	2019-02-20 22:11:54.143484-05	\N	117000000	Another One Bites The Oatmeal	youtube
-D7cVJ7_93o	2019-02-20 22:12:34.787063-05	2019-02-20 22:12:34.787063-05	\N	122000000	MC Kirby - U Can't Touch This Oatmeal	youtube
cWRnpl8dOrE	2019-02-20 22:12:56.363796-05	2019-02-20 22:12:56.363796-05	\N	44000000	1, 2 Big Bill Hell's	youtube
Y3SnulHvw9E	2019-02-20 22:30:10.483406-05	2019-02-20 22:30:10.483406-05	\N	140000000	1, 2 Look at OatMEal	youtube
0NhJO4y4ou4	2019-02-20 22:30:38.351478-05	2019-02-20 22:30:38.351478-05	\N	318000000	Wii Shop Oatmeal	youtube
DY0Fm6dlTMg	2019-02-20 22:31:08.053093-05	2019-02-20 22:31:08.053093-05	\N	127000000	Oatmeal Man	youtube
QmQ9GkzptLQ	2019-02-20 22:31:18.187556-05	2019-02-20 22:31:18.187556-05	\N	227000000	Harder Better Faster Oatmeal	youtube
XOqestGlEa4	2019-02-20 22:34:13.852721-05	2019-02-20 22:34:13.852721-05	\N	115000000	Oatmeal Power	youtube
qpAvw4HE_Bc	2019-02-20 22:39:24.457488-05	2019-02-20 22:39:24.457488-05	\N	118000000	Gourmet Race/1 2 Oatmeal(Touhou Style Remix)	youtube
H-j1FoU5bDs	2019-02-20 22:40:02.820682-05	2019-02-20 22:40:02.820682-05	\N	260000000	UN Owen was Oatmeal	youtube
FB9LcrOnPxY	2019-02-20 23:38:32.605564-05	2019-02-20 23:38:32.605564-05	\N	128000000	UN Owen was Alex Jones?	youtube
wvru5jEQSOg	2019-02-21 00:02:54.158064-05	2019-02-21 00:02:54.158064-05	\N	360000000	R0CKET SAUCE!!!   Slamba Yetu	youtube
_nCzRoH37jI	2019-02-21 00:18:44.910981-05	2019-02-21 00:18:44.910981-05	\N	165000000	1, 2 Oatmeal Pitch Corrected	youtube
p_gnqKReoEk	2019-02-21 21:55:27.717798-05	2019-02-21 21:55:27.717798-05	\N	449000000	through the fire and flames but beats 2 and 4 are swapped [CC]	youtube
siVbIaUB_cA	2019-02-21 21:58:51.886553-05	2019-02-21 21:58:51.886553-05	\N	350000000	Boatmealian Rhapsody	youtube
mkh2EVCwquU	2019-02-21 22:01:03.781117-05	2019-02-21 22:01:03.781117-05	\N	259000000	【東方ボーカル】 「スパロウグロウ」 【森羅万象】	youtube
dgha9S39Y6M	2019-02-21 22:01:29.096661-05	2019-02-21 22:01:29.096661-05	\N	231000000	MINE DIAMONDS | miNECRAFT PARODY OF TAKE ON ME	youtube
yWjavxcGfqM	2019-02-21 22:04:50.71549-05	2019-02-21 22:04:50.71549-05	\N	113000000	Undertale OST: 080 - Finale	youtube
SqQwFWsl58I	2019-02-21 22:06:44.197793-05	2019-02-21 22:06:44.197793-05	\N	293000000	【A-One】センヲコエテ【東方ボーカルEurobeat】	youtube
Ng7ASvhD6Fs	2019-02-21 22:07:15.915668-05	2019-02-21 22:07:15.915668-05	\N	392000000	【東方Vocal】SHYNESS【A One】	youtube
iDyg3djW5ZA	2019-02-21 22:14:53.327138-05	2019-02-21 22:14:53.327138-05	\N	240000000	Oatkast - Hey Ya!	youtube
6k6dHOb6cEU	2019-02-21 22:16:16.596523-05	2019-02-21 22:16:16.596523-05	\N	246000000	Don't Tell Me What To Do	youtube
7rydGZ8Ezv4	2019-02-21 22:19:07.192954-05	2019-02-21 22:19:07.192954-05	\N	231000000	NOMA - Oat Power	youtube
xPHTvptQt8Q	2019-02-22 18:56:10.17652-05	2019-02-22 18:56:10.17652-05	\N	225000000	1 2 Oatmeal Race - Drumstep [ dj-Jo Remix ]	youtube
iSHf-jiG3Pw	2019-02-22 22:37:43.609987-05	2019-02-22 22:37:43.609987-05	\N	146000000	1 2 oatmeal (smash version)	youtube
D2uqpqrYmMY	2019-02-22 23:03:42.341029-05	2019-02-22 23:03:42.341029-05	\N	253000000	ナノ(nano) feat. MY FIRST STORY - SAVIOR OF SONG	youtube
yK5q8kCqKzs	2019-02-23 12:24:15.142841-05	2019-02-23 12:24:15.142841-05	\N	357000000	"ARTHUR" [Theme Song Remix!] -Remix Maniacs	youtube
6n3pFFPSlW4	2019-02-23 13:45:02.687913-05	2019-02-23 13:45:02.687913-05	\N	16000000	youve been gnomed.wmv	youtube
hXzPxBhhmY8	2019-02-23 15:38:52.704932-05	2019-02-23 15:38:52.704932-05	\N	212000000	I DONT KNOW HOW BUT THEY FOUND ME - Do It All The Time	youtube
mvJjmWTg7Qo	2019-02-23 15:39:18.839559-05	2019-02-23 15:39:18.839559-05	\N	196000000	I DONT KNOW HOW BUT THEY FOUND ME -Choke	youtube
F4AtCNBbONU	2019-02-23 15:41:51.479571-05	2019-02-23 15:41:51.479571-05	\N	177000000	I DONT KNOW HOW BUT THEY FOUND ME - Social Climb	youtube
KOOhPfMbuIQ	2019-02-23 15:49:03.975351-05	2019-02-23 15:49:03.975351-05	\N	256000000	half•alive - still feel. [VIDEO]	youtube
HGy9wdgCWEk	2019-02-23 15:49:11.22073-05	2019-02-23 15:49:11.22073-05	\N	202000000	half•alive - aawake at night [VIDEO]	youtube
9FzrD47v0zE	2019-02-23 15:49:17.703697-05	2019-02-23 15:49:17.703697-05	\N	188000000	half•alive - the fall [VIDEO]	youtube
XjJ72vHad1k	2019-02-23 15:49:26.020292-05	2019-02-23 15:49:26.020292-05	\N	195000000	half•alive - tip toes [AUDIO]	youtube
32Hp1LW08Yc	2019-02-24 00:44:27.948938-05	2019-02-24 00:44:27.948938-05	\N	94000000	MARIO SCREAMING	youtube
sTXxxkVLx2I	2019-02-24 13:31:37.225277-05	2019-02-24 13:31:37.225277-05	\N	683000000	Milhaud - Suite for violin, clarinet, and piano	youtube
2BVQsicn0kY	2019-02-24 16:33:05.26492-05	2019-02-24 16:33:05.26492-05	\N	134000000	1, 2 Lose Yourself (In The Oatmeal)	youtube
DBslFRbCXnw	2019-02-24 16:37:34.913571-05	2019-02-24 16:37:34.913571-05	\N	1000000	NO U	youtube
6okxuiiHx2w	2019-02-24 16:39:01.424646-05	2019-02-24 16:39:01.424646-05	\N	151000000	Breakbot - Baby I'm Yours feat. Irfane (Official Video)	youtube
oFDuB8oaC4s	2019-02-24 17:03:01.248944-05	2019-02-24 17:03:01.248944-05	\N	308000000	AXEL.K×越田Rute隆人 - BEATS SHOWER	youtube
X_bH9j_wmTc	2019-02-24 17:13:05.429448-05	2019-02-24 17:13:05.429448-05	\N	269000000	【東方ボーカル】 「RAINBOW IN THE DARK」 【SOUND HOLIC】	youtube
_JwiyUI_SeQ	2019-02-24 17:14:10.409425-05	2019-02-24 17:14:10.409425-05	\N	293000000	Initial D - Night Of Fire - Tsuko G.	youtube
oRa_c9zfZh0	2019-02-24 19:36:47.325046-05	2019-02-24 19:36:47.325046-05	\N	319000000	SICKO BAMBA	youtube
-EKxzId_Sj4	2019-02-24 22:04:28.426206-05	2019-02-24 22:04:28.426206-05	\N	295000000	米津玄師  MV「アイネクライネ」	youtube
nOlwKVLwPDk	2019-02-25 11:40:28.385702-05	2019-02-25 11:40:28.385702-05	\N	308000000	【東方Vocal／Pop】 ZYTOKINE | World Disorder	youtube
f0hCFlqdu8o	2019-02-25 11:40:39.982969-05	2019-02-25 11:40:39.982969-05	\N	370000000	【東方Vocal／Pop】 ZYTOKINE | Poker Face	youtube
_7Hd5vhyp54	2019-02-25 11:41:08.796762-05	2019-02-25 11:41:08.796762-05	\N	258000000	【東方ボーカル】 「絡繰りドール (DJ Command Remix)」 【SOUND HOLIC】	youtube
-39tLnuuMT4	2019-02-25 11:58:04.09333-05	2019-02-25 11:58:04.09333-05	\N	264000000	【東方ボーカル】 絡繰りドール 【SOUND HOLIC】	youtube
2DHPuAGIK_c	2019-02-25 14:46:55.551705-05	2019-02-25 14:46:55.551705-05	\N	192000000	【東方ボーカル】 「ワタシケンシ」 【森羅万象】	youtube
_Z-kXpYDyGA	2019-02-25 14:52:47.135734-05	2019-02-25 14:52:47.135734-05	\N	334000000	【東方Vocal / Eng Sub】【ZYTOKINE】 さまよう刃	youtube
bw4ZucbvoCU	2019-02-26 01:21:10.560181-05	2019-02-26 01:21:10.560181-05	\N	191000000	Connected (Yours Forever) [Trailer Edit] | Tetris Effect OST	youtube
QeZne1wVyl0	2019-02-26 01:22:00.075-05	2019-02-26 01:22:00.075-05	\N	390000000	Tetris Effect - Metamorphosis: Always Been But Never Dreamed - Theater Mode	youtube
qAeybdD5UoQ	2019-02-26 15:26:29.290074-05	2019-02-26 15:26:29.290074-05	\N	170000000	Shawn Wasabi - Marble Soda (Original Song)	youtube
Cj2eUpt3MVE	2019-02-26 15:26:42.474892-05	2019-02-26 15:26:42.474892-05	\N	194000000	Shawn Wasabi - OTTER POP (ft. Hollis) (Original Song)	youtube
mhsf7K6h7SY	2019-02-26 15:51:29.177784-05	2019-02-26 15:51:29.177784-05	\N	237000000	[Electronic] - Pegboard Nerds - Bassline Kickin [Monstercat Release]	youtube
0dMs7_sQ7g8	2019-02-27 00:45:48.072288-05	2019-02-27 00:45:48.072288-05	\N	368000000	Aquarion EVOL OST (Eve no Shihen) - Aquaria Mau Sora	youtube
9U5SvJvsajQ	2019-02-27 00:46:17.623198-05	2019-02-27 00:46:17.623198-05	\N	330000000	Aquarion EVOL OST (Eve no Shihen) - Kimi no Shinwa ~ Aquarion Dai Ni Shou	youtube
JEqaUGsp2hI	2019-02-27 00:46:46.204501-05	2019-02-27 00:46:46.204501-05	\N	232000000	Aquarion EVOL OST (Eve no Shihen) - Gekkou Symphonia	youtube
Tf-hD_DFeyU	2019-02-27 01:14:48.318645-05	2019-02-27 01:14:48.318645-05	\N	340000000	Sheryl Nome, Ranka Lee, Fire Bomber - Nyan Nyan FIRE!~Totsugeki Planet Explosion / Macross FB7	youtube
V7mgB7utfdw	2019-02-27 21:32:35.358036-05	2019-02-27 21:32:35.358036-05	\N	259000000	ONE OK ROCK - Kanzen Kankaku Dreamer [Lyrics]	youtube
0O-5tC9YJeQ	2019-02-27 21:33:18.436067-05	2019-02-27 21:33:18.436067-05	\N	262000000	THE ORAL CIGARETTES 「5150」 Music Video	youtube
C-o8pTi6vd8	2019-02-27 21:33:36.087112-05	2019-02-27 21:33:36.087112-05	\N	266000000	＜ノラガミARAGOTO＞OPテーマ  THE ORAL CIGARETTES「狂乱 Hey Kids!!」MusicVideo	youtube
PCp2iXA1uLE	2019-02-27 21:34:12.945831-05	2019-02-27 21:34:12.945831-05	\N	262000000	フレデリック「オドループ」Music Video | Frederic "oddloop"	youtube
oCrwzN6eb4Q	2019-02-27 21:34:22.16299-05	2019-02-27 21:34:22.16299-05	\N	283000000	フレデリック「オンリーワンダー」MusicVideo / frederic“ONLYWONDER”	youtube
_Y-p8LuB6VE	2019-02-27 21:39:46.478271-05	2019-02-27 21:39:46.478271-05	\N	112000000	Toto - Africa (Vocals Oatmeal)	youtube
ioTQ7erZD1c	2019-02-27 21:40:04.787592-05	2019-02-27 21:40:04.787592-05	\N	235000000	Ken Ashcorp - Burgz	youtube
_zSX7GJc1i8	2019-02-27 22:05:50.756595-05	2019-02-27 22:05:50.756595-05	\N	309000000	Donkey Kong Country x Daft Punk - Metal-Head Around the World (Mashup) // I am Jemboy	youtube
jLCOq8MJUYY	2019-02-27 22:22:20.165752-05	2019-02-27 22:22:20.165752-05	\N	247000000	Shag Me - Kygo feat. Selena Gomez vs. Shaggy feat. Rikrok (Mashup)	youtube
lZc3kicMShM	2019-02-27 22:48:32.548423-05	2019-02-27 22:48:32.548423-05	\N	134000000	Spring Break Anthem	youtube
Bvhbf_TXAgo	2019-02-27 22:53:05.942868-05	2019-02-27 22:53:05.942868-05	\N	33000000	MAYBE I'LL BE SANS UNDERTALE	youtube
RNkcgyyZZcs	2019-02-27 22:53:40.643798-05	2019-02-27 22:53:40.643798-05	\N	157000000	youve been gnomed - Megalovania	youtube
sOc8SrT8jbk	2019-02-27 22:53:52.154394-05	2019-02-27 22:53:52.154394-05	\N	23000000	Country roads let'sa go	youtube
1P4EP5TI574	2019-02-27 23:01:30.149115-05	2019-02-27 23:01:30.149115-05	\N	177000000	ASSGORE (Fingerfückung)	youtube
fYtudoH6i2k	2019-02-27 23:06:20.517075-05	2019-02-27 23:06:20.517075-05	\N	123000000	1, 2 Shiny Teeth And Me	youtube
2uWVK6LeHu8	2019-02-27 23:07:37.841674-05	2019-02-27 23:07:37.841674-05	\N	70000000	Take On Oatmeal	youtube
4IRdw_Qgwqc	2019-02-27 23:08:40.767713-05	2019-02-27 23:08:40.767713-05	\N	123000000	Chip Skylark - My Shiny Teeth and Me	youtube
SJu5dkvewUQ	2019-02-27 23:09:10.11363-05	2019-02-27 23:09:10.11363-05	\N	66000000	The Fairly OddParents - Icky Vicky (Lyrics)	youtube
7wttsN-20Io	2019-02-27 23:12:27.32161-05	2019-02-27 23:12:27.32161-05	\N	153000000	Up The 1, 2 Oatmeal	youtube
RvbxW6Viy8o	2019-02-27 23:13:12.445167-05	2019-02-27 23:13:12.445167-05	\N	138000000	1 2 Oatmeal (Hatsune Miku Cover)	youtube
_MB8DR7XCS4	2019-02-27 23:14:28.968133-05	2019-02-27 23:14:28.968133-05	\N	254000000	1, 2 Circulation	youtube
c2pF_qbsJdk	2019-02-27 23:16:14.761906-05	2019-02-27 23:16:14.761906-05	\N	150000000	Crawling In My Oatmeal	youtube
poNjv_PuTpE	2019-02-27 23:17:33.32173-05	2019-02-27 23:17:33.32173-05	\N	56000000	1, 2 Kahoatmeal	youtube
o_zM9IHmQWE	2019-02-27 23:21:00.52992-05	2019-02-27 23:21:00.52992-05	\N	44000000	1 2 sicko mode	youtube
ElwWycMN8nw	2019-02-27 23:25:41.901521-05	2019-02-27 23:25:41.901521-05	\N	247000000	Black Clover Opening 3 Full : Black Rover - Vickeblanka Lyrics [CC]	youtube
KUxrcfp537g	2019-02-27 23:25:57.450253-05	2019-02-27 23:25:57.450253-05	\N	267000000	Black Clover Opening 2「PAiNT it BLACK」FULL by BiSH	youtube
NP8kUrf_p9M	2019-02-27 23:37:58.964671-05	2019-02-27 23:37:58.964671-05	\N	61000000	The Elder Scrolls V: Oatmeal - Dovahkiin	youtube
pW6OtqeLMzM	2019-02-27 23:38:47.160817-05	2019-02-27 23:38:47.160817-05	\N	185000000	1, 2 Watch Me	youtube
EIHN2Xgvzss	2019-02-27 23:40:12.079733-05	2019-02-27 23:40:12.079733-05	\N	179000000	my oat is now	youtube
9MD5JeGmdUk	2019-02-28 16:52:17.62261-05	2019-02-28 16:52:17.62261-05	\N	246000000	[東方アレンジ] Demetori - リバースイデオロギー ～ The Antinomy of Ideology	youtube
QWSphVIlEYo	2019-02-28 17:00:27.432553-05	2019-02-28 17:00:27.432553-05	\N	2137000000	Special 540 subs!! Final Boss Medley!!	youtube
S0lnAnLD1nc	2019-02-28 17:06:25.665969-05	2019-02-28 17:06:25.665969-05	\N	266000000	【東方Vocal／Electro】disharmonized love「ZYTOKINE」	youtube
j-0oHu6-NHk	2019-02-28 19:49:06.690413-05	2019-02-28 19:49:06.690413-05	\N	560000000	brain power but every other beat happens twice [CC]	youtube
d-JBBNg8YKs	2019-02-28 20:16:50.534623-05	2019-02-28 20:16:50.534623-05	\N	314000000	Travis Scott - SICKO MODE (Official Audio)	youtube
wFMOZq2TitM	2019-02-28 23:01:28.734081-05	2019-02-28 23:01:28.734081-05	\N	119000000	1,2 Oatmeal - Trap Remix	youtube
9AYDVXVP-Hw	2019-02-28 23:10:31.309951-05	2019-02-28 23:10:31.309951-05	\N	131000000	1, 2 Sean Kingston (Oatmeal Burning)	youtube
JyKYv1dFNeA	2019-02-28 23:15:13.739718-05	2019-02-28 23:15:13.739718-05	\N	5000000	1, 2 Morty	youtube
_M2ZqEs3b60	2019-02-28 23:23:37.710631-05	2019-02-28 23:23:37.710631-05	\N	93000000	【東方 Touhou Orchestral】聖域の扉【Melodic Taste】	youtube
hMa4hZQbrms	2019-03-01 17:37:26.402188-05	2019-03-01 17:37:26.402188-05	\N	156000000	Undertale Ost: 077 - ASGORE	youtube
t4py2L15RU4	2019-03-01 18:21:08.605374-05	2019-03-01 18:21:08.605374-05	\N	272000000	Kiss from a Rose [NSF, VRC6 Cover]	youtube
2Xs0uaGE86Y	2019-03-01 21:37:03.243255-05	2019-03-01 21:37:03.243255-05	\N	292000000	【東方 Touhou】C-Clays - VaisravaNa【SUB】	youtube
hx3LEzQI04k	2019-03-01 21:51:35.140548-05	2019-03-01 21:51:35.140548-05	\N	258000000	【東方ボーカル】 BA・BA・BANG!! 【C-CLAYS】	youtube
ZtdOKcDEAug	2019-03-01 21:51:47.13718-05	2019-03-01 21:51:47.13718-05	\N	236000000	【東方ボーカル】 「Mastermind」 【C-CLAYS】	youtube
UywXNSmfsFY	2019-03-01 21:59:31.676099-05	2019-03-01 21:59:31.676099-05	\N	309000000	【東方Vocal】【C-CLAYS】Just Like That	youtube
AkSMp4QSLq4	2019-03-01 22:11:50.491209-05	2019-03-01 22:11:50.491209-05	\N	243000000	【東方ボーカル】 CRAZY ロココスタイル 【C-CLAYS】	youtube
g-sgw9bPV4A	2019-03-02 14:38:43.995767-05	2019-03-02 14:38:43.995767-05	\N	80000000	Kazoo Kid - Trap Remix	youtube
4PvZa_VLIG4	2019-03-02 14:45:00.049899-05	2019-03-02 14:45:00.049899-05	\N	282000000	【東方ボーカル】 「鋼鉄の魔女 -Iron Magus- (DJ Command Remix)」 【SOUND HOLIC】	youtube
zOQ4ld6NsXE	2019-03-02 15:30:52.510306-05	2019-03-02 15:30:52.510306-05	\N	242000000	Viva La Vida	youtube
-1q3OY2FIrs	2019-03-02 15:40:58.151718-05	2019-03-02 15:40:58.151718-05	\N	224000000	The Oatmeal Revolving	youtube
t8LeRC1UWQw	2019-03-02 15:55:04.560214-05	2019-03-02 15:55:04.560214-05	\N	168000000	OneyPlays Mario Creepypasta: Did Mario Swear?	youtube
e5qbLlbBahg	2019-03-03 00:24:41.626159-05	2019-03-03 00:24:41.626159-05	\N	305000000	BLANKFIELD - Goodbye	youtube
WSDn1y1THPY	2019-03-03 22:32:58.572394-05	2019-03-03 22:32:58.572394-05	\N	93000000	【Sans Undertale MMD】Chikatto Chika Chikattsu	youtube
VUkp3UA3ZYs	2019-03-03 22:48:23.456647-05	2019-03-03 22:48:23.456647-05	\N	143000000	Eminem - 1, 2 Oatmeal [Official Audio]	youtube
mVfWnawV0Os	2019-03-03 22:50:59.546326-05	2019-03-03 22:50:59.546326-05	\N	99000000	We Like To Oatmeal	youtube
3JzN5x6U-OY	2019-03-03 23:00:29.42287-05	2019-03-03 23:00:29.42287-05	\N	463000000	Through The Tables And Memes	youtube
lVxQ1bhz_Yg	2019-03-03 23:08:15.746275-05	2019-03-03 23:08:15.746275-05	\N	34000000	All Star but it's the Flintstones Theme	youtube
jO4fTcziVRM	2019-03-04 01:46:17.806378-05	2019-03-04 01:46:17.806378-05	\N	261000000	XI - Akasha	youtube
xB_nKpEkILs	2019-03-04 11:06:18.483992-05	2019-03-04 11:06:18.483992-05	\N	221000000	The Prodigy - Nasty	youtube
iIMVbL1rq5c	2019-03-04 11:06:31.327454-05	2019-03-04 11:06:31.327454-05	\N	343000000	Smack My Bitch Up	youtube
a4eav7dFvc8	2019-03-04 11:07:11.879088-05	2019-03-04 11:07:11.879088-05	\N	223000000	The Prodigy - Out Of Space (Official Video)	youtube
QrkUlAb-I8Y	2019-03-04 11:15:23.284592-05	2019-03-04 11:15:23.284592-05	\N	280000000	Firestarter	youtube
GXso4Sj5TEM	2019-03-04 11:16:43.354388-05	2019-03-04 11:16:43.354388-05	\N	335000000	Breathe	youtube
TeSNSthndcE	2019-03-04 19:12:32.442383-05	2019-03-04 19:12:32.442383-05	\N	25000000	ASMR eating pickles but it's extremely bass boosted	youtube
hmAkhkogcI0	2019-03-04 19:32:39.160583-05	2019-03-04 19:32:39.160583-05	\N	271000000	Camellia feat. Nanahira - Bassdrop Freaks (2018 Redrop ver.)	youtube
4TjziYsWGeo	2019-03-04 19:35:39.415586-05	2019-03-04 19:35:39.415586-05	\N	69000000	bassdrop freaks but every time it says hai it gets faster	youtube
jW4u8ZsPFdQ	2019-03-05 00:30:51.036769-05	2019-03-05 00:30:51.036769-05	\N	261000000	aivi & surasshu - Mika (Live)	youtube
T29T4ZNvvCk	2019-03-06 00:01:38.57249-05	2019-03-06 00:01:38.57249-05	\N	145000000	Fresh Prince Of Dickbutt Bel Air	youtube
SOTg5RoLY9A	2019-03-06 00:14:06.567984-05	2019-03-06 00:14:06.567984-05	\N	79000000	1 2 da ba dee	youtube
SU1LEOGzqdM	2019-02-27 23:36:01.368499-05	2019-02-27 23:36:01.368499-05	\N	331000000	Megaman II - Dr. Oatmeal 1, 2	youtube
IT0eQnEVIq8	2019-02-27 23:36:12.61985-05	2019-02-27 23:36:12.61985-05	\N	148000000	Ievan Oatmeal	youtube
9ZExyU2602Y	2019-02-27 23:37:27.959271-05	2019-02-27 23:37:27.959271-05	\N	311000000	The Melancholy of Haruhi Suzumiya - God Knows┃Cover by Raon Lee	youtube
c-pSpUK93tQ	2019-02-28 20:00:10.077429-05	2019-02-28 20:00:10.077429-05	\N	500000000	黒皇帝 - Scattered Faith	youtube
7aMjOX9tup4	2019-02-28 23:03:03.538239-05	2019-02-28 23:03:03.538239-05	\N	70000000	DK Oatmeal HD Remaster (1k Subscriber Special)	youtube
HF0GQoXAz64	2019-02-28 23:04:01.94667-05	2019-02-28 23:04:01.94667-05	\N	64000000	1 2 suavemente	youtube
y-KxfWKDQtU	2019-02-28 23:05:17.460383-05	2019-02-28 23:05:17.460383-05	\N	183000000	1 2 Wonderwall	youtube
drnFApOTRfI	2019-02-28 23:07:09.963964-05	2019-02-28 23:07:09.963964-05	\N	31000000	Oatmeal Report  .com Baby	youtube
jXG644o254g	2019-02-28 23:08:07.524711-05	2019-02-28 23:08:07.524711-05	\N	98000000	Oatmeal Bling	youtube
crS-u-zIbXI	2019-02-28 23:08:27.411757-05	2019-02-28 23:08:27.411757-05	\N	171000000	1, 2 This Is America	youtube
VcDAsThwvxo	2019-02-28 23:08:59.402036-05	2019-02-28 23:08:59.402036-05	\N	44000000	1, 2 Lift Yourself (Kanye Oatmeal)	youtube
qFemfBiAUFU	2019-02-28 23:09:31.211955-05	2019-02-28 23:09:31.211955-05	\N	274000000	What Redbone would sound like if it were made out of oatmeal	youtube
5FJzSXocjBk	2019-02-28 23:15:56.898303-05	2019-02-28 23:15:56.898303-05	\N	104000000	Heads Will Roll (Oatmeal Mix)	youtube
XeBX7eKcM0A	2019-02-28 23:16:38.670552-05	2019-02-28 23:16:38.670552-05	\N	213000000	Bonfires Not Tragedies	youtube
A5CRrmqnscU	2019-02-28 23:17:13.077488-05	2019-02-28 23:17:13.077488-05	\N	294000000	【東方Vocal】H E A R T feat  cold kiss	youtube
rYDSNU-URUc	2019-02-28 23:17:52.400518-05	2019-02-28 23:17:52.400518-05	\N	243000000	東方 Touhou remix (Calm) Because Princess Inada is Scolding Me	youtube
IaFJ6wZjTzc	2019-02-28 23:18:27.24114-05	2019-02-28 23:18:27.24114-05	\N	288000000	PLAZMA (Halozy EUROBEAT Version) 【東方 Vocal Arrange】	youtube
NTjKkmVZ4Hk	2019-02-28 23:18:41.282948-05	2019-02-28 23:18:41.282948-05	\N	111000000	Kirby - Aesop Rock	youtube
7XHuHqlpJEQ	2019-02-28 23:18:56.221154-05	2019-02-28 23:18:56.221154-05	\N	65000000	1, 2, Nutshack	youtube
jhOVibLEDhA	2019-03-01 16:10:26.615825-05	2019-03-01 16:10:26.615825-05	\N	295000000	星野源 - 恋【MV & Trailer】/ Gen Hoshino - Koi	youtube
00vYncpl0pk	2019-03-01 18:21:00.445375-05	2019-03-01 18:21:00.445375-05	\N	303000000	Surfing on a Sine Wave	youtube
IAY7JBO1xO4	2019-03-01 18:21:14.985889-05	2019-03-01 18:21:14.985889-05	\N	233000000	Pancake Department [NSF, 2a03]	youtube
AhccsEK8S_Y	2019-03-01 18:21:24.119494-05	2019-03-01 18:21:24.119494-05	\N	168000000	Hopeless Romantic [NSF, 2a03 + N163]	youtube
V9bmmYwjNQM	2019-03-01 21:03:47.176791-05	2019-03-01 21:03:47.176791-05	\N	180000000	IN Stage 3 Theme - Nostalgic Blood of the East ~ Old World	youtube
iwma4Qg8QY4	2019-03-01 21:36:48.405413-05	2019-03-01 21:36:48.405413-05	\N	280000000	【東方ボーカル】 「Never End」 【C-CLAYS】 【Subbed】	youtube
Fk_XlA7BqWM	2019-03-01 21:37:09.50993-05	2019-03-01 21:37:09.50993-05	\N	281000000	【東方ボーカル】 「クロニクルの懺悔」 【C-CLAYS】	youtube
RIYd6Xdn88U	2019-03-01 22:01:38.22466-05	2019-03-01 22:01:38.22466-05	\N	715000000	Victory Theme Extended - Overwatch Soundtrack	youtube
6aw5C8kukjc	2019-03-02 03:38:03.155423-05	2019-03-02 03:38:03.155423-05	\N	236000000	【東方ボーカル】 「SOUL DESTINATION」 【SOUND HOLIC】	youtube
IhK4D3ytYMc	2019-03-02 13:01:20.684552-05	2019-03-02 13:01:20.684552-05	\N	180000000	Mega Man 2 (NES) Music - Air Man Stage	youtube
Yrj_nQmRl1o	2019-03-02 15:46:20.014631-05	2019-03-02 15:46:20.014631-05	\N	170000000	Crypt of the Necrodancer: Zone 1-2 Oatmeal	youtube
D6xuk9LAmR4	2019-03-03 00:11:18.466089-05	2019-03-03 00:11:18.466089-05	\N	243000000	ドラえもん / 星野源 (天月 cover)	youtube
uZJ9LANFh08	2019-03-03 00:12:27.013581-05	2019-03-03 00:12:27.013581-05	\N	94000000	【Xayr】恋/星野源 | Koi by Hoshino Gen【Cover】	youtube
izQsgE0L450	2019-03-03 01:10:10.310697-05	2019-03-03 01:10:10.310697-05	\N	481000000	Samuel Barber - Adagio for Strings	youtube
GKkeDqJBlK8	2019-03-03 01:17:14.302575-05	2019-03-03 01:17:14.302575-05	\N	407000000	Maurice Ravel - Pavane for Dead Princess	youtube
dV6xEZxkNNE	2019-03-03 19:36:34.501647-05	2019-03-03 19:36:34.501647-05	\N	318000000	【東方ボーカル】 「忘却のレトロスペクティブ」 【幽閉サテライト】	youtube
9XHbtG2XKWk	2019-03-03 19:52:54.5955-05	2019-03-03 19:52:54.5955-05	\N	267000000	[Touhou Vocal] [Shinra-Bansho] Knowledge Paranoia (spanish & english subtitles)	youtube
gtgEYpJnnMw	2019-03-03 22:43:29.147552-05	2019-03-03 22:43:29.147552-05	\N	245000000	Super Releasis 64 - A Cruel Toad's Thesis	youtube
9RXNtDCXVGk	2019-03-03 22:45:13.752468-05	2019-03-03 22:45:13.752468-05	\N	95000000	KAGUYA-SAMA: LOVE IS WAR (chikatto chika chikattsu)	youtube
qRK29Yv6Ldc	2019-03-03 23:51:48.719563-05	2019-03-03 23:51:48.719563-05	\N	123000000	I Love It 2 (Official Video)	youtube
-CoXiMt2N90	2019-03-03 23:52:32.667971-05	2019-03-03 23:52:32.667971-05	\N	145000000	1, 2 Fruit Oatmeal	youtube
AnVRWD3qF2w	2019-03-05 00:30:44.997627-05	2019-03-05 00:30:44.997627-05	\N	246000000	aivi & surasshu - The Emerald Sea (from Anodyne)	youtube
gr2guSw5Tss	2019-03-05 00:30:59.580677-05	2019-03-05 00:30:59.580677-05	\N	352000000	aivi & surasshu - K.K. Cruisin' (Interstate 5 Remix)	youtube
dcLCnfKpixs	2019-03-05 22:53:05.62121-05	2019-03-05 22:53:05.62121-05	\N	151000000	Dr. Soulja	youtube
9SNNbcG-ma0	2019-03-06 00:01:59.769024-05	2019-03-06 00:01:59.769024-05	\N	44000000	Gordon Ramsay WHERES THE LAMB SAUCE-Animated	youtube
dQHPSD6GYxo	2019-03-06 00:02:51.800107-05	2019-03-06 00:02:51.800107-05	\N	124000000	Super Mario 3 Masturbation / Masturbatory Madness "a grand day out"	youtube
9nr2qJjvoB0	2019-03-06 00:07:48.560683-05	2019-03-06 00:07:48.560683-05	\N	242000000	Three Dog Night - One Is The Loneliest Number	youtube
1_ooEkiozP8	2019-03-06 00:25:57.769538-05	2019-03-06 00:25:57.769538-05	\N	181000000	Mafia City Song	youtube
ogUBM_Dq4A4	2019-03-06 00:29:04.269609-05	2019-03-06 00:29:04.269609-05	\N	106000000	There's Nothing Like The Great Outdoors	youtube
1zocEOP-Zb4	2019-03-06 00:45:52.872924-05	2019-03-06 00:45:52.872924-05	\N	59000000	1 2 Country Roads	youtube
a2qExPwwDuo	2019-03-06 00:46:28.461141-05	2019-03-06 00:46:28.461141-05	\N	96000000	Spongebob- Gary come home (Spanish Version)	youtube
H0gnUlh-mYk	2019-03-06 00:47:28.724757-05	2019-03-06 00:47:28.724757-05	\N	186000000	Crab Rave (Full Version)	youtube
mA610_BIgwE	2019-03-06 00:48:13.50099-05	2019-03-06 00:48:13.50099-05	\N	100000000	SpongeBob SquarePants - "Gary's Song" (Gary Come Home) (Japanese)	youtube
yTRlYuPb2VY	2019-03-06 00:48:28.050132-05	2019-03-06 00:48:28.050132-05	\N	831000000	Gary Come Home in 11 different languages	youtube
c8OqtHeDQj0	2019-03-06 00:52:33.352143-05	2019-03-06 00:52:33.352143-05	\N	210000000	System of a 1, 2 - Chop Oatmeal	youtube
IIjYpU03wFw	2019-03-06 00:53:24.297363-05	2019-03-06 00:53:24.297363-05	\N	68000000	Earth, Wind, & Oatmeal - 1, 2 September	youtube
AK-O9QRtOIk	2019-03-06 01:00:35.500678-05	2019-03-06 01:00:35.500678-05	\N	205000000	Megabongvania | Big Ben plays "Megalovania" from Undertale one more time	youtube
3SIDA6PeUY8	2019-03-06 15:40:09.199534-05	2019-03-06 15:40:09.199534-05	\N	354000000	Here's How!	youtube
0khYhcABoes	2019-03-06 16:26:49.844516-05	2019-03-06 16:26:49.844516-05	\N	228000000	Diamond Dove	youtube
Z8i-St-LIow	2019-03-06 16:26:58.140537-05	2019-03-06 16:26:58.140537-05	\N	336000000	Lonely Rolling Star (Missing You)	youtube
yfX7mCHbroc	2019-03-06 16:28:17.253002-05	2019-03-06 16:28:17.253002-05	\N	186000000	T-Pain - Mashup (To The Beat with Kurt Hugo Schneider)	youtube
57uaiBsqt38	2019-03-06 16:35:47.784257-05	2019-03-06 16:35:47.784257-05	\N	183000000	【東方Electro Swing】 VOLUPTÉ 「マホトア豆腐店」	youtube
6jQloPsi7Yg	2019-03-06 16:47:04.248134-05	2019-03-06 16:47:04.248134-05	\N	247000000	[Touhou Vocal] [Swing Of The Dead] SA·TO·RI (spanish & english subtitles)	youtube
Pa-Hb_Fn65E	2019-03-06 16:47:17.972319-05	2019-03-06 16:47:17.972319-05	\N	306000000	[Touhou Vocal] [Unlucky Morpheus] Perverseness (spanish & english subtitles)	youtube
sl5V9sCXmf0	2019-03-06 17:07:16.726242-05	2019-03-06 17:07:16.726242-05	\N	253000000	【東方Vocal／Eurobeat Rock】 廃獄ドリームランド 「SOUND HOLIC」	youtube
12AHLzW4kks	2019-03-06 17:08:10.425782-05	2019-03-06 17:08:10.425782-05	\N	256000000	SA Stage 4 Boss - Satori Komeiji's Theme - Satori Maiden ~ 3rd eye	youtube
lh_n5hZXF68	2019-03-06 17:19:59.561196-05	2019-03-06 17:19:59.561196-05	\N	355000000	Magnum Opus ~ 月時計　～ ルナ・ダイアル [Lunar Clock 〜 Luna Dial]	youtube
nVos0n91f8s	2019-03-06 17:33:52.045326-05	2019-03-06 17:33:52.045326-05	\N	230000000	【東方Irish Folk／Acoustic】 縁日 「Floating Cloud」	youtube
953vagWiMJM	2019-03-06 17:34:53.502966-05	2019-03-06 17:34:53.502966-05	\N	246000000	SpongeBob SquarePants Production Music - Nostalgic Hawaii	youtube
GhJCnbMMie4	2019-03-06 17:38:39.527324-05	2019-03-06 17:38:39.527324-05	\N	136000000	【東方Celtic／Folk】 次の旅へ 「Ringing Volcano」	youtube
x7ZJh1Jkj9Q	2019-03-06 17:39:24.239948-05	2019-03-06 17:39:24.239948-05	\N	188000000	UNL Title Screen - Did You See That Shadow?	youtube
X3ut_m33Hdk	2019-03-06 18:58:19.219049-05	2019-03-06 18:58:19.219049-05	\N	198000000	Kero Kero Oatmeal - Flipingo	youtube
2jhdI7qipoE	2019-03-06 19:00:52.269878-05	2019-03-06 19:00:52.269878-05	\N	187000000	1, 2 Oatmeal Epic Edition by RecD	youtube
d0OUCIWyApQ	2019-03-06 19:03:40.972261-05	2019-03-06 19:03:40.972261-05	\N	160000000	Menu - Super Smash Bros. Oatimate	youtube
9qB1cXoVSeY	2019-03-06 19:09:05.162735-05	2019-03-06 19:09:05.162735-05	\N	314000000	Oatmealovania	youtube
juY1MLbDBC4	2019-03-06 19:09:42.220291-05	2019-03-06 19:09:42.220291-05	\N	145000000	Oatmeal K.K.	youtube
R0OAVvIUB_I	2019-03-06 19:18:59.452092-05	2019-03-06 19:18:59.452092-05	\N	257000000	Dreams of Oat and Meal (The Sequel)	youtube
VaAqe5nMAuA	2019-03-06 19:22:35.868046-05	2019-03-06 19:22:35.868046-05	\N	201000000	YACHT — L.A. Plays Itself	youtube
vkuj0D3S3Kk	2019-03-06 19:27:01.793494-05	2019-03-06 19:27:01.793494-05	\N	90000000	1,2, Oatmeal exept it's Big Man Tyrone	youtube
5pUzsJ-MYiI	2019-03-06 19:41:09.897698-05	2019-03-06 19:41:09.897698-05	\N	269000000	FAMILY GUY PARTY ROCK ALBUM!	youtube
D-vWg0Oue6w	2019-03-06 19:53:36.801151-05	2019-03-06 19:53:36.801151-05	\N	194000000	DJ Fresh - 'Gold Dust' (Audio Only)	youtube
Mz3Mi_OZYno	2019-03-06 19:54:17.224563-05	2019-03-06 19:54:17.224563-05	\N	217000000	All the Single Furries!	youtube
scOWoUruKCY	2019-03-06 19:57:50.74667-05	2019-03-06 19:57:50.74667-05	\N	300000000	FAT REFUND (Stamper + Egoraptor + Marc M. + Ricepirate)	youtube
DQpDcDCgO9k	2019-03-06 20:01:54.890908-05	2019-03-06 20:01:54.890908-05	\N	264000000	Reel Big Fish - I Know You Too Well To Like You Anymore  (ANIMATED MUSIC VIDEO)	youtube
tyPPT6smVps	2019-03-06 20:12:06.190405-05	2019-03-06 20:12:06.190405-05	\N	227000000	Hoy Lo Siento Zion Y Lennox ft Tony Dize (Letra)	youtube
B4L3ls_6UYg	2019-03-06 20:13:33.118213-05	2019-03-06 20:13:33.118213-05	\N	264000000	Barenaked Ladies - If I Had a Million Dollars (BEST Lyrics Video!)	youtube
Oc_ifA4lGIo	2019-03-06 20:23:42.502843-05	2019-03-06 20:23:42.502843-05	\N	228000000	TEAM ROCKET (Double Trouble) - Pokémon METAL cover by Jonathan Young (feat. Nikki Simmons)	youtube
a883itqqcd4	2019-03-06 20:43:50.157813-05	2019-03-06 20:43:50.157813-05	\N	268000000	POWER RANGERS - POWER METAL (Jonathan Young)	youtube
pezEIMu4YXY	2019-03-06 20:50:57.988545-05	2019-03-06 20:50:57.988545-05	\N	299000000	Bad Apple!! (feat. Cristina Vee)	youtube
MyxHfucN1MY	2019-03-06 20:54:15.882683-05	2019-03-06 20:54:15.882683-05	\N	242000000	The Logical Song	youtube
0uIO3ynY6Xg	2019-03-06 20:59:45.599132-05	2019-03-06 20:59:45.599132-05	\N	220000000	Super Hexagon - Bad Apple	youtube
35YXCbyTOrw	2019-03-06 21:04:12.664468-05	2019-03-06 21:04:12.664468-05	\N	194000000	Touhou 4: LLS Stage 3 Theme - Bad Apple!!	youtube
CBjYsIiGBVE	2019-03-06 21:04:49.604736-05	2019-03-06 21:04:49.604736-05	\N	210000000	Alice in Wonderland (Remastered Version 2)	youtube
yoT6hNd0vhk	2019-03-06 21:05:22.652997-05	2019-03-06 21:05:22.652997-05	\N	241000000	Miss Communication	youtube
6B9umDBE-78	2019-03-06 21:05:25.600262-05	2019-03-06 21:05:25.600262-05	\N	194000000	the Grimoire of Alice - Mystic Square	youtube
JprsKeAStcw	2019-03-06 21:10:07.462089-05	2019-03-06 21:10:07.462089-05	\N	222000000	tofubeats - CAND¥¥¥LAND feat. LIZ (Pa's Lam System Remix)	youtube
5z_eMHJ1sAc	2019-03-06 21:10:30.067554-05	2019-03-06 21:10:30.067554-05	\N	215000000	Little Princess - METAL COVER - Touhou DDC (Shinmyoumaru's Theme)	youtube
pF18bHI3iSM	2019-03-06 21:24:51.191426-05	2019-03-06 21:24:51.191426-05	\N	258000000	Crypt of the Necrodancer AMPLIFIED OST - Notorious D.I.G. (Fortissimole)	youtube
q6GyTBVAF4w	2019-03-06 21:26:10.876516-05	2019-03-06 21:26:10.876516-05	\N	234000000	Run The Jewels - Close Your Eyes And Count To F*ck feat. Zack De La Rocha (from Run The Jewels 2)	youtube
30aGtXWo0SU	2019-03-06 21:45:25.093312-05	2019-03-06 21:45:25.093312-05	\N	217000000	Run The Jewels - Oh Mama | From The RTJ3 Album	youtube
EFof6s1O1mY	2019-03-06 22:02:45.673127-05	2019-03-06 22:02:45.673127-05	\N	130000000	Lil Pump - Juche Gang (PARODY)	youtube
ILTxg9Dg7AU	2019-03-06 22:03:30.357943-05	2019-03-06 22:03:30.357943-05	\N	216000000	Gravity Falls Remix vs. Bonfire - Childish Gambino	youtube
2Jn1OeDlNpM	2019-03-06 22:15:14.034992-05	2019-03-06 22:15:14.034992-05	\N	200000000	Gravity Falls opening theme FULL	youtube
uWvdqkl2UH4	2019-03-06 22:36:28.41857-05	2019-03-06 22:36:28.41857-05	\N	36000000	Gravity Falls - Weirdmageddon Opening Theme Song - HD	youtube
gh5hyBy7hks	2019-03-07 18:27:47.117554-05	2019-03-07 18:27:47.117554-05	\N	218000000	Basics in Despacito [Blue]- The Living Tombstone	youtube
Evug9RbcSNQ	2019-03-07 18:37:03.823235-05	2019-03-07 18:37:03.823235-05	\N	236000000	Black Clover Ending 5 Full『Miyuna - Tenjou Tenge』	youtube
Ir6Zxv9etkI	2019-03-07 18:44:32.988631-05	2019-03-07 18:44:32.988631-05	\N	280000000	【Amatsuki】Chiisana koi no uta (VOSTFR)	youtube
un7NSPZ3ksw	2019-03-07 18:47:08.501071-05	2019-03-07 18:47:08.501071-05	\N	331000000	Fire Bomber 11 Seventh Moon (マクロス7/ macross 7/ 新世紀超時空要塞7)	youtube
4uVhCTaF1IM	2019-03-07 18:47:30.56292-05	2019-03-07 18:47:30.56292-05	\N	355000000	Nakajima Megumi - TRY UNITE! (aran Remix)	youtube
JXkF53ATZeQ	2019-03-07 18:47:53.046005-05	2019-03-07 18:47:53.046005-05	\N	306000000	Fire Bomber 02 HOLY LONELY LIGHT Duet Version (マクロス7/ macross 7/ 新世紀超時空要塞7)	youtube
9HZcQUwPts8	2019-03-07 18:48:46.924885-05	2019-03-07 18:48:46.924885-05	\N	264000000	Macross Frontier - Get it on	youtube
HRzprfcB_3E	2019-03-07 18:49:35.532254-05	2019-03-07 18:49:35.532254-05	\N	287000000	Obelisk - sheryl nome ～マクロスF～【 Thai sub】	youtube
5fCmOa8vwlU	2019-03-07 18:50:33.530123-05	2019-03-07 18:50:33.530123-05	\N	439000000	Sayonara No Tsubasa - Macross Frontier	youtube
KChNqbXaMc0	2019-03-07 18:51:38.982217-05	2019-03-07 18:51:38.982217-05	\N	291000000	虹色クマクマ　ＭＡＤ	youtube
f88mf0MU_O4	2019-03-07 18:52:23.497497-05	2019-03-07 18:52:23.497497-05	\N	328000000	【マクロスＦ十周年記念】劇場版マクロスＦ　サヨナラノツバサ　放課後オーバーフロウ	youtube
wLsNDbj_A9A	2019-03-07 18:54:21.938903-05	2019-03-07 18:54:21.938903-05	\N	141000000	Macross Zero Ending Part1 Arkan Song	youtube
a8GydD_W41s	2019-03-07 18:54:24.650417-05	2019-03-07 18:54:24.650417-05	\N	274000000	fripside- red reduction division	youtube
0Qe7Nqx6SNE	2019-03-07 18:56:00.369066-05	2019-03-07 18:56:00.369066-05	\N	174000000	The Promised Neverland - ED 2 / Ending 2 Full「Lamp」by Cö shu Nie	youtube
6WNk9yMNovs	2019-03-07 18:56:37.480476-05	2019-03-07 18:56:37.480476-05	\N	151000000	Cö shu Nie – 絶体絶命 (Official Video)　/ “約束のネバーランド” ED	youtube
V5c-CLjSdyk	2019-03-07 18:57:58.674789-05	2019-03-07 18:57:58.674789-05	\N	336000000	fripside-snow blind after	youtube
sN4fjtw8Nes	2019-03-07 19:10:11.172314-05	2019-03-07 19:10:11.172314-05	\N	350000000	fripSide - an evening calm	youtube
fQ6mNzAnHh0	2019-03-07 19:11:14.114388-05	2019-03-07 19:11:14.114388-05	\N	128000000	Macross 7 -- DYNAMITE EXPLOSION	youtube
b8TNQsR3nD4	2019-03-07 19:17:44.822763-05	2019-03-07 19:17:44.822763-05	\N	245000000	[fripSide NAO project!] Assemble LOVE Ensemble / あっせんぶる☆LOVEさんぶる	youtube
SQTcRxPsoMo	2019-03-08 14:36:56.190377-05	2019-03-08 14:36:56.190377-05	\N	257000000	MTC - S3RL	youtube
Vn25uTGgYho	2019-03-08 14:38:29.327894-05	2019-03-08 14:38:29.327894-05	\N	121000000	Hentacito	youtube
ZQPIbtzAlCk	2019-03-08 14:47:15.837287-05	2019-03-08 14:47:15.837287-05	\N	133000000	1 2 Oatmeal except it's harmonized using the notes that are actually sung.	youtube
nFeV-nuyYwo	2019-03-08 14:48:50.033198-05	2019-03-08 14:48:50.033198-05	\N	160000000	Roadman Fonsi - Despatingo	youtube
VYBPv2-6vD4	2019-03-08 14:50:35.4626-05	2019-03-08 14:50:35.4626-05	\N	34000000	Dame Tu Cosita × Despacito	youtube
CBZNBMgne68	2019-03-08 14:52:21.226473-05	2019-03-08 14:52:21.226473-05	\N	60000000	1, 2 Cantina Band	youtube
arBwSWykAbI	2019-03-08 15:01:58.483031-05	2019-03-08 15:01:58.483031-05	\N	209000000	SpongeBob Soundtrack - Tomfoolery	youtube
Bp7ulEyyF54	2019-03-08 15:02:33.7501-05	2019-03-08 15:02:33.7501-05	\N	136000000	NOMA - Brain Power	youtube
9KAJh-pZVAA	2019-03-08 18:02:52.207447-05	2019-03-08 18:02:52.207447-05	\N	278000000	Camellia - crystallized	youtube
yLMwDL8cPj8	2019-03-09 11:09:28.141855-05	2019-03-09 11:09:28.141855-05	\N	910000000	Super Mario Kart ReMix by DiscoCactus: "A Road That You Go" [Mario Circuit, Rainbow Road] (#3600)	youtube
lTvKI4Ck1Co	2019-03-09 14:54:00.340074-05	2019-03-09 14:54:00.340074-05	\N	245000000	Black Clover Opening 4 Full『Kumi Koda - Guess Who Is Back』	youtube
8yO72l2dFsA	2019-03-09 15:17:50.282931-05	2019-03-09 15:17:50.282931-05	\N	192000000	Spoiled Porridge (1, 2 Oatmeal Re-Work)	youtube
ZEt7KMekpms	2019-03-09 15:30:51.037629-05	2019-03-09 15:30:51.037629-05	\N	227000000	1 2 Vengabus	youtube
QU3A6rxFs1g	2019-03-09 15:59:04.352477-05	2019-03-09 15:59:04.352477-05	\N	224000000	The Devil's Oatmeal	youtube
-PeeDCnoG3k	2019-03-09 21:49:27.724056-05	2019-03-09 21:49:27.724056-05	\N	193000000	Shape of the Sickness - Ed Sheeran vs. Disturbed (Mashup)	youtube
DHNvDlJdWBw	2019-03-09 23:01:35.756757-05	2019-03-09 23:01:35.756757-05	\N	227000000	Majorlovania (Megalovania in major key) - Undertale Cover	youtube
zPqYVBFtBkw	2019-03-10 00:11:08.992098-05	2019-03-10 00:11:08.992098-05	\N	198000000	Big Time Rush	youtube
COwC0F6wxbU	2019-03-10 19:45:31.048209-04	2019-03-10 19:45:31.048209-04	\N	291000000	Undertale - Asgore (Dj Jo Remix) [ Bergentrückung ] - GameChops - EDM OST Video Game Music	youtube
vn_MDtg2FE4	2019-03-10 19:55:39.747752-04	2019-03-10 19:55:39.747752-04	\N	274000000	Undertale the Musical - Bergentrückung	youtube
X_XGxzMrq04	2019-03-10 20:54:56.365215-04	2019-03-10 20:54:56.365215-04	\N	229000000	"Don't Mine At Night" - A Minecraft Parody of Katy Perry's Last Friday Night (Music Video)	youtube
c6TJsxcrIWo	2019-03-10 21:27:07.157108-04	2019-03-10 21:27:07.157108-04	\N	280000000	1 2 Oatmeal Bling	youtube
JGdFwjRc_XE	2019-03-10 21:31:32.086897-04	2019-03-10 21:31:32.086897-04	\N	176000000	Crank That (Flamingo Boy) (Kero Kero Bonito x Soulja Boy)	youtube
s6OCx3a3O1o	2019-03-10 22:07:07.577803-04	2019-03-10 22:07:07.577803-04	\N	196000000	Plain White Bups - 1, 2, 3, 4, Oatmeal	youtube
_ZbBQg0coqU	2019-03-11 18:37:12.287155-04	2019-03-11 18:37:12.287155-04	\N	250000000	Nightcore - Nostalgic [S3RL feat Harri Rush] ▹Lyrics◃	youtube
ExM8OkDm9wU	2019-03-11 18:38:47.820742-04	2019-03-11 18:38:47.820742-04	\N	190000000	Trifect - Pocari	youtube
C8jABQPPNKI	2019-03-09 14:54:12.958357-05	2019-03-09 14:54:12.958357-05	\N	247000000	Black Clover Op3 - Black Rover┃Cover by Raon Lee	youtube
wauKnNi66xE	2019-03-09 14:54:25.14092-05	2019-03-09 14:54:25.14092-05	\N	255000000	【라온】Noragami ARAGOTO - Kyoran Hey Kids! (Full cover)	youtube
fIt8dhBpvl4	2019-03-09 14:58:57.198099-05	2019-03-09 14:58:57.198099-05	\N	101000000	fieryrage | Koda Kumi - Guess Who Is Back [Fiery's Extreme] +DTHR | 97.80% | 948pp New pp record	youtube
BnejdSP7bKs	2019-03-09 15:05:03.443432-05	2019-03-09 15:05:03.443432-05	\N	221000000	Oatmeal Inc.	youtube
laNlG0CwJJw	2019-03-09 16:03:04.410516-05	2019-03-09 16:03:04.410516-05	\N	44000000	1, 2 Billy Mays Here	youtube
2rn-vMbFglI	2019-03-09 22:08:01.379159-05	2019-03-09 22:08:01.379159-05	\N	251000000	Married Life	youtube
7mSZn9UKXTk	2019-03-09 22:14:26.870331-05	2019-03-09 22:14:26.870331-05	\N	183000000	Crazy Noisy Bizarre Town (Unused Game Version) - JoJo's Bizarre Adventure: Eyes of Heaven	youtube
0AwA5A1wE0o	2019-03-10 00:09:56.9087-05	2019-03-10 00:09:56.9087-05	\N	201000000	Boyfriend	youtube
4WQyBHdcTdY	2019-03-10 20:10:12.459794-04	2019-03-10 20:10:12.459794-04	\N	137000000	Deltarune the (not) Musical - JEVIL - THE WORLD REVOLVING (EPILEPSY WARNING)	youtube
mbeC2w-uIEU	2019-03-10 20:17:27.644692-04	2019-03-10 20:17:27.644692-04	\N	113000000	WARIO LAUGHING	youtube
Jq4sI_L47Zg	2019-03-10 20:22:55.312383-04	2019-03-10 20:22:55.312383-04	\N	131000000	The Oatmeal - Roxanne	youtube
OE3hF9fMp94	2019-03-10 20:32:42.89513-04	2019-03-10 20:32:42.89513-04	\N	3000000	pornhub community intro	youtube
k74sFn7YCMQ	2019-03-10 20:33:08.291038-04	2019-03-10 20:33:08.291038-04	\N	3000000	Pornhub Intro EARRAPE	youtube
_31mVNBIRhs	2019-03-10 20:34:54.363882-04	2019-03-10 20:34:54.363882-04	\N	113000000	WARIO LAUGHING (METAL)	youtube
1PiqyzQHdHs	2019-03-10 20:36:45.872236-04	2019-03-10 20:36:45.872236-04	\N	100000000	Mambo no. 1,2	youtube
hkFrqtjL730	2019-03-10 20:39:23.739773-04	2019-03-10 20:39:23.739773-04	\N	233000000	BACKSTREET BOYS - Everybody (Backstreets Back) - Keytar-Fusion-Djentcore cover	youtube
9Z_13rVVaGM	2019-03-10 21:35:43.520358-04	2019-03-10 21:35:43.520358-04	\N	204000000	The World Sliding (Deltarune x Super Mario 64)	youtube
JmXdAiYREUs	2019-03-10 21:42:24.836508-04	2019-03-10 21:42:24.836508-04	\N	204000000	OH OH OH OH	youtube
M7HbDpgvN3Y	2019-03-10 21:45:39.314125-04	2019-03-10 21:45:39.314125-04	\N	74000000	Papa Bach - Last Resort in G major	youtube
E7U4HAkXm80	2019-03-11 18:25:47.312602-04	2019-03-11 18:25:47.312602-04	\N	212000000	xi - FREEDOM DiVE [METAL†DIMENSIONS]	youtube
gW_Vx4LyiEQ	2019-03-11 18:26:12.653683-04	2019-03-11 18:26:12.653683-04	\N	140000000	【音源】【PV確認用】FREEDOM DiVE (tpz Overcute Remix)（編集有り）	youtube
CV3sSQp_xLQ	2019-03-11 18:38:26.800604-04	2019-03-11 18:38:26.800604-04	\N	252000000	「 Gekkan Shoujo Nozaki-kun - Asterisk 」 月刊少女 野崎くん ED (bootleg)	youtube
Vv4L2x-keVQ	2019-03-11 18:38:54.150131-04	2019-03-11 18:38:54.150131-04	\N	342000000	[DNB] Nanahira (ft. Camellia) - Petals	youtube
ijcWIcCsI3k	2019-03-11 18:39:27.505285-04	2019-03-11 18:39:27.505285-04	\N	255000000	KASAI HARCORES - Trinity Homerun	youtube
acYK9ANVnQM	2019-03-11 18:39:37.685585-04	2019-03-11 18:39:37.685585-04	\N	256000000	TRIPLE PLAY	youtube
Kkgp1-fHn6Y	2019-03-11 18:39:52.872092-04	2019-03-11 18:39:52.872092-04	\N	432000000	Tatsh - "IMAGE -MATERIAL- (Version 0)"	youtube
FJldua1zV8s	2019-03-11 20:51:01.609923-04	2019-03-11 20:51:01.609923-04	\N	51000000	Big Time Rush Theme Song But Im Screaming The Lyrics	youtube
hMc8naeeSS8	2019-03-11 22:54:08.493182-04	2019-03-11 22:54:08.493182-04	\N	172000000	Dancing In the Moonlight	youtube
YqI7Zu938MM	2019-03-11 22:59:49.15351-04	2019-03-11 22:59:49.15351-04	\N	106000000	1, 2 Creative Oatmeal	youtube
FzG4uDgje3M	2019-03-11 23:00:08.815354-04	2019-03-11 23:00:08.815354-04	\N	152000000	El Chombo - Dame Tu Cosita feat. Cutty Ranks (Official Video) [Ultra Music]	youtube
ulsLI029rH0	2019-03-11 23:06:10.368877-04	2019-03-11 23:06:10.368877-04	\N	194000000	Wait for It	youtube
jHC_ciVP1sY	2019-03-11 23:16:00.270226-04	2019-03-11 23:16:00.270226-04	\N	224000000	One More Oatmeal	youtube
Z49OJCAxd68	2019-03-11 23:28:14.053323-04	2019-03-11 23:28:14.053323-04	\N	236000000	Never Gonna Give 1, 2 Oatmeal Up	youtube
anYV8DbA1Dw	2019-03-11 23:59:57.638079-04	2019-03-11 23:59:57.638079-04	\N	274000000	【yuikonnu】 Ai no Scenario [English Subs]	youtube
Os39e51cpm4	2019-03-12 00:10:39.807496-04	2019-03-12 00:10:39.807496-04	\N	92000000	Jump Up, Super Oatmeal	youtube
GRiC35zeziU	2019-03-12 00:47:53.680911-04	2019-03-12 00:47:53.680911-04	\N	227000000	In Flames - Take This Life (Official Video)	youtube
NDY_psk9rJ4	2019-03-12 00:49:22.571705-04	2019-03-12 00:49:22.571705-04	\N	250000000	Sota Fujimori - Move That Body  (Extended Mix)	youtube
dVU2-h0QVHA	2019-03-12 00:53:09.205-04	2019-03-12 00:53:09.205-04	\N	113000000	1,2 Oatmeal - Beautiful Piano Edition	youtube
b36Bw0J2WhQ	2019-03-12 00:54:29.16854-04	2019-03-12 00:54:29.16854-04	\N	130000000	Yooh - snow storm -euphoria-	youtube
qxeb0cwjE8U	2019-03-12 01:01:01.861211-04	2019-03-12 01:01:01.861211-04	\N	739000000	roy hargrove quintet - strasbourg saint denis	youtube
hwqY2ngnMnM	2019-03-12 01:19:05.405299-04	2019-03-12 01:19:05.405299-04	\N	439000000	All Night Long (feat. Take 6) - Jacob Collier w/ Metropole Orkest; cond: Jules Buckley	youtube
yCL3F9wpo6A	2019-03-12 01:29:56.340285-04	2019-03-12 01:29:56.340285-04	\N	308000000	☪  僕が名前を呼ぶ日 ／ HoneyWorks 歌ってみた【天月 feat.96猫】	youtube
FNSx3CObpZs	2019-03-12 10:50:27.818746-04	2019-03-12 10:50:27.818746-04	\N	213000000	【東方ボーカル】 「感染経路」 【幽閉サテライト】	youtube
BkNlDYPeIdQ	2019-03-12 21:08:09.230933-04	2019-03-12 21:08:09.230933-04	\N	208000000	Hitler Gifs	youtube
-0vY6Np0hMg	2019-03-12 21:10:40.802923-04	2019-03-12 21:10:40.802923-04	\N	229000000	【特別衣装でラップしてみた】かっこいいから見て！！！【チーズおかき】	youtube
SX_ViT4Ra7k	2019-03-12 21:48:27.361379-04	2019-03-12 21:48:27.361379-04	\N	274000000	米津玄師  MV「Lemon」	youtube
lzAyrgSqeeE	2019-03-12 21:49:05.097011-04	2019-03-12 21:49:05.097011-04	\N	290000000	米津玄師 MV「orion」	youtube
Qa9PkDZkyHg	2019-03-12 21:49:34.88201-04	2019-03-12 21:49:34.88201-04	\N	260000000	米津玄師 MV「メトロノーム」	youtube
W6Fs8eNXC9w	2019-03-12 22:30:18.25461-04	2019-03-12 22:30:18.25461-04	\N	218000000	Oatmeal Park - In The 1, 2 End	youtube
Fz0zAFajb_U	2019-03-12 22:35:21.119144-04	2019-03-12 22:35:21.119144-04	\N	66000000	1, 2 Pokemeal	youtube
jmW7nUMLiZc	2019-03-12 22:40:09.328419-04	2019-03-12 22:40:09.328419-04	\N	109000000	1 2 Oatmiil	youtube
6Ajhzlq42f0	2019-03-12 23:00:55.813458-04	2019-03-12 23:00:55.813458-04	\N	59000000	Super Spice Bros 2	youtube
uizvFK2KQ_o	2019-03-12 23:17:06.364993-04	2019-03-12 23:17:06.364993-04	\N	128000000	Soulja Baka (Soulja Boy x IOSYS)	youtube
Zis2TtxdFjQ	2019-03-12 23:18:01.564208-04	2019-03-12 23:18:01.564208-04	\N	272000000	Yuyuko's Theme - Border of Life	youtube
zn7-fVtT16k	2019-03-12 23:42:46.926317-04	2019-03-12 23:42:46.926317-04	\N	155000000	Albert Einstein vs Stephen Hawking. Epic Rap Battles of History	youtube
0N_RO-jL-90	2019-03-12 23:43:13.110694-04	2019-03-12 23:43:13.110694-04	\N	259000000	Eastern Philosophers vs Western Philosophers. Epic Rap Battles of History	youtube
NVbH1BVXywY	2019-03-12 23:43:25.893291-04	2019-03-12 23:43:25.893291-04	\N	270000000	Alexander the Great vs Ivan the Terrible. Epic Rap Battles of History	youtube
ZT2z0nrsQ8o	2019-03-12 23:44:15.477-04	2019-03-12 23:44:15.477-04	\N	218000000	Rasputin vs Stalin. Epic Rap Battles of History	youtube
oOm_2dGzqp0	2019-03-12 23:44:30.21972-04	2019-03-12 23:44:30.21972-04	\N	138000000	Shaka Zulu vs Julius Caesar. Epic Rap Battles of History	youtube
dX_1B0w7Hzc	2019-03-12 23:47:04.293558-04	2019-03-12 23:47:04.293558-04	\N	209000000	Barack Obama vs Mitt Romney. Epic Rap Battles Of History	youtube
njos57IJf-0	2019-03-12 23:47:10.112172-04	2019-03-12 23:47:10.112172-04	\N	167000000	Steve Jobs vs Bill Gates. Epic Rap Battles of History	youtube
K5a_v0MP_Fk	2019-03-12 23:47:17.891105-04	2019-03-12 23:47:17.891105-04	\N	132000000	Frank Sinatra vs Freddie Mercury. Epic Rap Battles of History	youtube
zj2Zf9tlg2Y	2019-03-12 23:47:28.323869-04	2019-03-12 23:47:28.323869-04	\N	127000000	Abe Lincoln vs Chuck Norris. Epic Rap Battles of History	youtube
OQ2k2bL5gvU	2019-03-12 23:47:34.430701-04	2019-03-12 23:47:34.430701-04	\N	384000000	Darth Vader vs Hitler 1 3 Epic Rap Battles of History	youtube
HfWqoW3Es8g	2019-03-12 23:57:56.73015-04	2019-03-12 23:57:56.73015-04	\N	364000000	TD Stage 6 Boss - Toyosatomimi no Miko's Theme - Shoutoku Legend ~ True Administrator	youtube
1_hKLfTKU5Y	2019-03-13 00:01:53.86094-04	2019-03-13 00:01:53.86094-04	\N	105000000	Mario Bros vs Wright Bros. Epic Rap Battles of History.	youtube
YdrPb3QderI	2019-03-13 00:18:22.77365-04	2019-03-13 00:18:22.77365-04	\N	30000000	Bill Nye The Science Guy Theme Song But Im Screaming The Lyrics	youtube
jGatO6vMPqw	2019-03-13 00:24:44.40943-04	2019-03-13 00:24:44.40943-04	\N	185000000	Good Manners Songs For Children - Do Your Best	youtube
h8i1TOqPySM	2019-03-13 00:26:36.302359-04	2019-03-13 00:26:36.302359-04	\N	308000000	【macaroom | Halozy】Seating || Mirror 【Subbed】	youtube
rYVMIEBnpTo	2019-03-13 00:26:54.351168-04	2019-03-13 00:26:54.351168-04	\N	397000000	【東方幻想郷】 8番目の路地 (The Eighth Alley) 『Halozy』【Subbed】	youtube
JtLkGDmp9ns	2019-03-13 00:34:19.827204-04	2019-03-13 00:34:19.827204-04	\N	232000000	FireMeal - (Fireflies X 1, 2, Oatmeal)	youtube
KYdDUXyFocY	2019-03-13 00:57:03.03826-04	2019-03-13 00:57:03.03826-04	\N	1048000000	Game Theory: UNDERTALE - Sans's SECRET Identity!	youtube
XbsUi3CuGws	2019-03-13 01:08:25.725564-04	2019-03-13 01:08:25.725564-04	\N	322000000	ᴴᴰ【東方Vocal】SOUND HOLIC｜Retrospective Journey【中日附詞】	youtube
AKcGhp-RyLw	2019-03-13 14:29:20.571307-04	2019-03-13 14:29:20.571307-04	\N	120000000	Camellia - Routing	youtube
H3_U8wubKG8	2019-03-13 14:29:39.881002-04	2019-03-13 14:29:39.881002-04	\N	118000000	[GUMI] バンブーソード・ガール / Bamboo Sword Girl [cosMo(暴走P)] Sub Esp	youtube
QcMo5a1hEEw	2019-03-13 18:08:50.391476-04	2019-03-13 18:08:50.391476-04	\N	252000000	YUC'e  - Cinnamon Symphony	youtube
RIY8f_3dJ8A	2019-03-14 01:01:09.081378-04	2019-03-14 01:01:09.081378-04	\N	555000000	[88] 東方│Progressive Trance │ Color of Love (Novy's "Sincere For You" Bootleg Re-Mash)	youtube
eYK03kb38vs	2019-03-14 01:12:10.129626-04	2019-03-14 01:12:10.129626-04	\N	422000000	【東方Vocal／Uplifting Trance】 Twosome 「Hachimitsu-Lemon」【ENG/JP. Subs】	youtube
Tohr3D3a_1Y	2019-03-14 01:17:36.301508-04	2019-03-14 01:17:36.301508-04	\N	267000000	大人の言うことを聞け / NakamuraEmi	youtube
CicnGW43Ukw	2019-03-14 03:18:31.283184-04	2019-03-14 03:18:31.283184-04	\N	204000000	Don't / NakamuraEmi	youtube
Dx_fKPBPYUI	2019-03-14 03:34:53.665536-04	2019-03-14 03:34:53.665536-04	\N	242000000	米津玄師 MV「LOSER」	youtube
s1ikwG0V2BQ	2019-03-14 18:56:21.609436-04	2019-03-14 18:56:21.609436-04	\N	32000000	L-O-V-E	youtube
cbHKiUEATYY	2019-03-14 19:03:46.282302-04	2019-03-14 19:03:46.282302-04	\N	139000000	Pepper Coyote - No cock like horse cock [Vintage]	youtube
YcJHjoAtNds	2019-03-14 19:16:53.475708-04	2019-03-14 19:16:53.475708-04	\N	199000000	We Need to Talk About Kanye	youtube
-UIn2xq-tOE	2019-03-14 19:17:59.20157-04	2019-03-14 19:17:59.20157-04	\N	173000000	JoJo Part 5: Golden Wind OST - Torture Dance Song Full「Canzoni Preferite」	youtube
Lr91gOOnvl8	2019-03-14 19:40:28.423785-04	2019-03-14 19:40:28.423785-04	\N	237000000	"unravel(Tokyo Ghoul)" - covered by Luschka	youtube
08MExVoUC4k	2019-03-14 19:45:24.491108-04	2019-03-14 19:45:24.491108-04	\N	210000000	"かなしみのなみにおぼれる (Neru)" - covered by ルシュカ / Luschka	youtube
gQ5gtInauiI	2019-03-14 20:59:32.048575-04	2019-03-14 20:59:32.048575-04	\N	376000000	Carpenter Brut - You're mine (from Furi original soundtrack)	youtube
-DISB3L3Ngw	2019-03-14 21:06:27.940098-04	2019-03-14 21:06:27.940098-04	\N	5000000	Somebody Scream! [Swarce Museum]	youtube
pSCJBGxRmH8	2019-03-14 21:21:04.522918-04	2019-03-14 21:21:04.522918-04	\N	1323000000	Renard -  Because Maybe! pt. 2	youtube
i9AT3jjAP0Y	2019-03-15 00:04:38.345292-04	2019-03-15 00:04:38.345292-04	\N	99000000	South Park - Kyle's Mom's a Bitch	youtube
pkox8x1LxQ4	2019-03-15 00:20:34.112781-04	2019-03-15 00:20:34.112781-04	\N	133000000	Undertale Temmie get money for colege(Better than my last video)	youtube
U6y2ZgmXVxw	2019-03-15 01:35:28.920135-04	2019-03-15 01:35:28.920135-04	\N	199000000	high hopes but beats are swapped [CC]	youtube
hPOgIqIHopk	2019-03-15 12:54:52.731402-04	2019-03-15 12:54:52.731402-04	\N	316000000	まねきケチャ『鏡の中から』アニメ「ゲゲゲの鬼太郎」主題歌（ED)	youtube
YDk2RUaoEJQ	2019-03-15 14:44:44.593557-04	2019-03-15 14:44:44.593557-04	\N	683000000	Ravel's "La Valse" - Audio + Sheet Music	youtube
hqlwhINUX6A	2019-03-15 15:02:17.660309-04	2019-03-15 15:02:17.660309-04	\N	96000000	CLOWN MUSIC / MUSICA PARA PAYASO	youtube
-kemuZS2YRs	2019-03-15 15:04:41.29484-04	2019-03-15 15:04:41.29484-04	\N	168000000	Super Paper Mario OST - The Ultimate Show	youtube
h4aYzKb0Cx8	2019-03-15 15:18:52.783518-04	2019-03-15 15:18:52.783518-04	\N	116000000	MAAAAMAAAA UWU	youtube
3yQFebRcznA	2019-03-15 16:33:00.471941-04	2019-03-15 16:33:00.471941-04	\N	209000000	Neil Cicierega - Wndrwll	youtube
Qx2gvHjNhQ0	2019-03-15 16:40:17.173614-04	2019-03-15 16:40:17.173614-04	\N	179000000	Harold Faltermeyer - Axel F (1984) Beverly Hills Cop - Soundtrack	youtube
0yVWm6KIyMI	2019-03-15 16:40:25.407981-04	2019-03-15 16:40:25.407981-04	\N	113000000	Doki Doki Superman Club	youtube
44MyrH4jwOQ	2019-03-15 17:06:36.644842-04	2019-03-15 17:06:36.644842-04	\N	208000000	"Mario be playin' T-Dub"-T-Dub (Rap-along Version)	youtube
EtTl302y-ic	2019-03-15 17:06:52.41331-04	2019-03-15 17:06:52.41331-04	\N	75000000	Wario laughing Nightcore	youtube
7nI_S2h2mxI	2019-03-15 17:39:24.638247-04	2019-03-15 17:39:24.638247-04	\N	267000000	【東方ボーカル】 「ノーレッジパラノイア」 【森羅万象】	youtube
Z9spFIgJRAk	2019-03-16 12:04:37.381914-04	2019-03-16 12:04:37.381914-04	\N	270000000	【東方Vocal／Drumstep】 Signal Flare 「Shinra-Bansho」	youtube
8QR2sSzNW-k	2019-03-16 12:05:48.60615-04	2019-03-16 12:05:48.60615-04	\N	326000000	【東方ボーカル】 「シャングリラ」 【森羅万象】	youtube
OwNkS4AtKNE	2019-03-16 12:05:55.588073-04	2019-03-16 12:05:55.588073-04	\N	233000000	【東方ボーカル】 「〇✕△□」 【森羅万象】【Subbed】	youtube
PvZp5BQoeiE	2019-03-16 20:14:57.361154-04	2019-03-16 20:14:57.361154-04	\N	176000000	LSD - No New Friends (Official Audio) ft. Sia, Diplo, Labrinth	youtube
9BeV2lKSyXU	2019-03-16 20:28:07.640026-04	2019-03-16 20:28:07.640026-04	\N	52000000	Sicko Mode or Mo Bamba? Why Not Both?	youtube
MADvxFXWvwE	2019-03-16 20:29:58.609202-04	2019-03-16 20:29:58.609202-04	\N	409000000	Ram Ranch	youtube
Ew1AM8ZYDNU	2019-03-16 20:34:45.300604-04	2019-03-16 20:34:45.300604-04	\N	119000000	DIMMADUBSTEP	youtube
n4PQRpo2Wng	2019-03-16 20:35:33.994086-04	2019-03-16 20:35:33.994086-04	\N	224000000	Robocop -Theme Song	youtube
ts5af0aFcuw	2019-03-16 20:37:51.813776-04	2019-03-16 20:37:51.813776-04	\N	73000000	Doug Dimmadome, Owner of the Dimmsdale Dimmadome but Timmy Turner can't get his name right	youtube
7BreHjGzv6g	2019-03-17 00:55:15.140652-04	2019-03-17 00:55:15.140652-04	\N	250000000	Magical Astronomy - Satellite Café Terrace	youtube
rIO5H1YMTqI	2019-03-17 00:56:49.511507-04	2019-03-17 00:56:49.511507-04	\N	304000000	Magical Astronomy - Future Universe of Wheelchair	youtube
lVwstM4vZC8	2019-03-17 00:59:39.607136-04	2019-03-17 00:59:39.607136-04	\N	330000000	Alice's Theme - Doll Judgment	youtube
WIKqgE4BwAY	2019-03-17 12:17:30.591502-04	2019-03-17 12:17:30.591502-04	\N	243000000	BABYMETAL - ギミチョコ！！- Gimme chocolate!! (OFFICIAL)	youtube
X49Sk-QkAXA	2019-03-17 13:32:13.762577-04	2019-03-17 13:32:13.762577-04	\N	113000000	WHAT HAVE I CREATED....AGAIN	youtube
qd-V953wYlc	2019-03-17 13:58:28.308039-04	2019-03-17 13:58:28.308039-04	\N	146000000	PIzza Hut Song	youtube
sW5XbPWZfrw	2019-03-17 14:25:03.074612-04	2019-03-17 14:25:03.074612-04	\N	191000000	Gourmet Race - Drum & Bass	youtube
OPAtvOjoQ6Y	2019-03-17 14:29:56.824223-04	2019-03-17 14:29:56.824223-04	\N	186000000	Pretty Fly For A Pink Guy (Offspring Remix For Simpleflips)	youtube
umDr0mPuyQc	2019-03-17 14:45:47.665023-04	2019-03-17 14:45:47.665023-04	\N	16000000	NO GOD! PLEASE NO!!! NOOOOOOOOOO	youtube
kMlLz7stjwc	2019-03-17 15:46:55.111838-04	2019-03-17 15:46:55.111838-04	\N	209000000	Mining - Minecraft Parody of Drowning Lyrics	youtube
Ee06kROMzuQ	2019-03-17 15:50:22.721912-04	2019-03-17 15:50:22.721912-04	\N	222000000	Magical Astronomy - Greenwich in the Sky	youtube
iuc7L50iUhw	2019-03-17 15:50:47.662088-04	2019-03-17 15:50:47.662088-04	\N	159000000	PCB Stage 1 - Paradise ~ Deep Mountain	youtube
bnfWnmAfN50	2019-03-17 15:51:12.440956-04	2019-03-17 15:51:12.440956-04	\N	254000000	PCB Stage 2 - The Fantastic Legend of Tohno	youtube
4-QacmltD4g	2019-03-17 15:53:09.946963-04	2019-03-17 15:53:09.946963-04	\N	367000000	SA Stage 5 - Lullaby of Deserted Hell	youtube
AmslIIu9WTA	2019-03-17 15:53:46.430897-04	2019-03-17 15:53:46.430897-04	\N	260000000	UFO Stage 2 Boss - Kogasa Tatara's Theme - Beware the Umbrella Left There Forever	youtube
Xy_-7OXophY	2019-03-17 15:54:43.826088-04	2019-03-17 15:54:43.826088-04	\N	346000000	SA Stage 6 Boss - Utsuho Reiuji's Theme - Solar Sect of Mystic Wisdom ~ Nuclear Fusion	youtube
63N6Z_NDM-E	2019-03-17 15:54:57.998755-04	2019-03-17 15:54:57.998755-04	\N	132000000	PINK GUY - SMALL D*CK	youtube
4syvy2vjvQY	2019-03-17 15:57:02.220056-04	2019-03-17 15:57:02.220056-04	\N	295000000	SA Extra Stage Boss - Koishi Komeiji's Theme - Hartmann's Youkai Girl	youtube
7XhyjyTiMu4	2019-03-17 16:01:41.347511-04	2019-03-17 16:01:41.347511-04	\N	268000000	Track 07 - Reverse Ideology [Touhou 14.3: Impossible Spell Card OST]	youtube
RHTHyRwaZ0M	2019-03-17 16:02:29.680042-04	2019-03-17 16:02:29.680042-04	\N	251000000	Magical Astronomy - G Free	youtube
6ltAVRyeqHk	2019-03-17 16:03:13.623966-04	2019-03-17 16:03:13.623966-04	\N	189000000	PINK GUY - NICKELODEON GIRLS	youtube
E7FV5LYXAYo	2019-03-17 16:04:26.891308-04	2019-03-17 16:04:26.891308-04	\N	318000000	EoSD Stage 5 - The Maid and the Pocket Watch of Blood	youtube
Zz1E0drlNgQ	2019-03-17 16:05:48.846678-04	2019-03-17 16:05:48.846678-04	\N	280000000	東方 Touhou remix (Orchestral) Tonight Stars an Easygoing Egoist ~ Egoistic Flowers	youtube
3fXws7gPg9w	2019-03-17 16:06:10.792076-04	2019-03-17 16:06:10.792076-04	\N	297000000	Touhou 15.5 AoCF OST ~ DISC3 (Arrange) - Tonight Stars an Easygoing Egoist ~ Egoistic Flowers.	youtube
d_QvnThhtq8	2019-03-17 16:37:49.531775-04	2019-03-17 16:37:49.531775-04	\N	353000000	SICKO RHAPSODY (Queen x Travis Scott) (mashup)	youtube
nYzCV1V8ZPM	2019-03-17 16:44:15.468574-04	2019-03-17 16:44:15.468574-04	\N	68000000	Jay-Z - Helicopter Addict (prod. by No I.D & DJ Dahi) 4:44 unreleased track exclusive	youtube
Ddro9NE-9JI	2019-03-17 19:32:52.984272-04	2019-03-17 19:32:52.984272-04	\N	220000000	【東方Orchestral／Symphonic】 東方萃夢想 「Melodic Taste」	youtube
pdbGwFdX1co	2019-03-17 20:16:50.011434-04	2019-03-17 20:16:50.011434-04	\N	302000000	Travis Scott - DICKO MODE ft. Drake (SICKO MODE Parody)	youtube
EWMPVn1kgIQ	2019-03-17 20:33:06.329327-04	2019-03-17 20:33:06.329327-04	\N	165000000	Enormous Penis	youtube
vZv9-TWdBJM	2019-03-17 20:35:33.547784-04	2019-03-17 20:35:33.547784-04	\N	240000000	Dr. Dre - The Next Episode (San Holo Remix)	youtube
jab09_dbPk0	2019-03-17 21:00:45.147861-04	2019-03-17 21:00:45.147861-04	\N	194000000	e-scape 歌ってみた【りぶ】	youtube
OrNevpenXKw	2019-03-17 21:01:01.463582-04	2019-03-17 21:01:01.463582-04	\N	210000000	ドーナツホール 歌ってみた【りぶ】	youtube
lwBEqupVOdc	2019-03-17 21:05:51.5817-04	2019-03-17 21:05:51.5817-04	\N	244000000	Your Song	youtube
VYd3bOzLU1U	2019-03-17 21:34:40.645186-04	2019-03-17 21:34:40.645186-04	\N	311000000	Harder Better Faster Oatmeal 2	youtube
fg4fIdVemoI	2019-03-17 23:24:12.178136-04	2019-03-17 23:24:12.178136-04	\N	18000000	Country Roads but you're gonna have a bad time	youtube
p4TT6Iqx1gM	2019-03-17 23:42:08.797184-04	2019-03-17 23:42:08.797184-04	\N	220000000	1, 2 a Pirate	youtube
OFDKTZo0IHM	2019-03-18 00:07:33.587276-04	2019-03-18 00:07:33.587276-04	\N	25000000	Main Theme - Bill Clinton	youtube
CduA0TULnow	2019-03-18 15:24:42.413568-04	2019-03-18 15:24:42.413568-04	\N	252000000	Britney Spears - Oops!...I Did It Again (Official Video)	youtube
g5JqPxmYhlo	2019-03-18 15:25:07.038848-04	2019-03-18 15:25:07.038848-04	\N	172000000	Dancing in the Moonlight (Original Recording) - King Harvest	youtube
mpoKx48WmEM	2019-03-18 15:26:06.017475-04	2019-03-18 15:26:06.017475-04	\N	215000000	Girls' Generation 少女時代 'Gee' MV (JPN Ver.)	youtube
zD3XS4w8YkE	2019-03-18 18:25:48.701634-04	2019-03-18 18:25:48.701634-04	\N	105000000	The Chordettes -  Hello, my baby	youtube
god7hAPv8f0	2019-03-18 19:23:58.558917-04	2019-03-18 19:23:58.558917-04	\N	293000000	Earth, Wind & Fire - Boogie Wonderland (Official Music Video)	youtube
nqxVMLVe62U	2019-03-18 19:24:23.812642-04	2019-03-18 19:24:23.812642-04	\N	213000000	The Jacksons - Blame It On the Boogie	youtube
wo1OwRTRKRk	2019-03-18 19:25:00.885163-04	2019-03-18 19:25:00.885163-04	\N	349000000	Elton John - Bennie And The Jets (Official Music Video)	youtube
aQUlA8Hcv4s	2019-03-18 19:25:22.94131-04	2019-03-18 19:25:22.94131-04	\N	295000000	Electric Light Orchestra - Mr. Blue Sky	youtube
-LX7WrHCaUA	2019-03-18 19:36:24.705534-04	2019-03-18 19:36:24.705534-04	\N	286000000	Elton John - Rocket Man (HQ)	youtube
uNNl3C0qvKg	2019-03-18 19:36:33.50954-04	2019-03-18 19:36:33.50954-04	\N	462000000	Elton John - Rocket Man	youtube
XpqqjU7u5Yc	2019-03-18 19:48:58.679434-04	2019-03-18 19:48:58.679434-04	\N	240000000	Bee Gees - How Deep Is Your Love (1977)	youtube
LOZuxwVk7TU	2019-03-18 20:01:57.819862-04	2019-03-18 20:01:57.819862-04	\N	211000000	Britney Spears - Toxic (Official Music Video)	youtube
C-u5WLJ9Yk4	2019-03-18 20:02:07.67719-04	2019-03-18 20:02:07.67719-04	\N	236000000	Britney Spears - ...Baby One More Time (Official Music Video)	youtube
bEea624OBzM	2019-03-18 20:02:35.986312-04	2019-03-18 20:02:35.986312-04	\N	219000000	Billy Joel - Big Shot (Official Video)	youtube
30yU6CtlWV8	2019-03-18 20:02:57.632252-04	2019-03-18 20:02:57.632252-04	\N	456000000	Billy Joel - New York State Of Mind	youtube
nhuNb0XtRhQ	2019-03-18 21:13:21.714483-04	2019-03-18 21:13:21.714483-04	\N	288000000	真夜中のジョーク - 間宮貴子(Takako Mamiya)	youtube
Q2QUngVGxmE	2019-03-18 21:13:32.34475-04	2019-03-18 21:13:32.34475-04	\N	285000000	Junko Ohashi - I Love You So	youtube
ytJ9xMqc6uI	2019-03-19 00:49:21.683042-04	2019-03-19 00:49:21.683042-04	\N	177000000	"MY NAME IS JEFF" (PewDiePie Remix) | Song by Endigo	youtube
9KSGUVcNfZM	2019-03-19 00:55:03.821025-04	2019-03-19 00:55:03.821025-04	\N	170000000	Yu-Gi-No	youtube
JsSEI2Le-so	2019-03-19 00:55:55.242891-04	2019-03-19 00:55:55.242891-04	\N	152000000	The Lonely Island - J*** In My Pants	youtube
t8S6hhtzF3Y	2019-03-19 00:58:28.278988-04	2019-03-19 00:58:28.278988-04	\N	30000000	Solid Snake is DUMMY THICC	youtube
YeFqVtFCJEk	2019-03-19 18:11:42.974626-04	2019-03-19 18:11:42.974626-04	\N	415000000	Chic - I Want Your Love	youtube
D5Y11hwjMNs	2019-03-19 18:12:06.860983-04	2019-03-19 18:12:06.860983-04	\N	177000000	Nina Simone  Feeling Good	youtube
6FOUqQt3Kg0	2019-03-19 18:12:23.245631-04	2019-03-19 18:12:23.245631-04	\N	150000000	Aretha Franklin - Respect [1967] (Original Version)	youtube
KtBbyglq37E	2019-03-19 18:12:37.984326-04	2019-03-19 18:12:37.984326-04	\N	214000000	Aretha Franklin - I say a little prayer	youtube
z8b3923VFZw	2019-03-19 18:20:01.45979-04	2019-03-19 18:20:01.45979-04	\N	332000000	[東方Vocal/Trance] DID	youtube
e0BiHKufDCU	2019-03-19 18:29:59.697441-04	2019-03-19 18:29:59.697441-04	\N	392000000	【秋霜玉(Seihou)】マッドパーティー　～ A Magusnificent Plan 『凋叶棕』【Subbed】	youtube
ywhzUjQjjGI	2019-03-19 19:31:35.523205-04	2019-03-19 19:31:35.523205-04	\N	130000000	Domestic na Kanojo OP / Opening HD 1080p	youtube
7YinQMZoR74	2019-03-20 00:23:46.327735-04	2019-03-20 00:23:46.327735-04	\N	337000000	ᴴᴰ⁶⁰【東方Vocal】TUMENECO｜Purple prose【中日English附詞】	youtube
ri11Q_9iGdA	2019-03-17 17:17:24.178965-04	2019-03-17 17:17:24.178965-04	\N	257000000	Touhou 13.5 H.M. OST - Kokoro theme [The Lost Emotion]	youtube
KBSsrFLn6SE	2019-03-17 20:00:14.368975-04	2019-03-17 20:00:14.368975-04	\N	241000000	Tokyo Ghoul - Unravel [Lyrics]	youtube
jfn1L6QLCn8	2019-03-17 20:00:29.139675-04	2019-03-17 20:00:29.139675-04	\N	238000000	unravel feat. Hatsune Miku - Dubstep [ dj-Jo Remix ] Full Version	youtube
CJAjTLqnldw	2019-03-17 21:51:40.22664-04	2019-03-17 21:51:40.22664-04	\N	255000000	Hatsuki Yura - Shoujo to Ougonryuu no Monogatari	youtube
6E5m_XtCX3c	2019-03-17 23:39:19.22343-04	2019-03-17 23:39:19.22343-04	\N	128000000	Ocean Man Lyrics	youtube
I8j1zMtJ8qE	2019-03-17 23:42:12.27803-04	2019-03-17 23:42:12.27803-04	\N	30000000	Gamecube Intro but it's not a geographical landmass meme I promise!	youtube
U7mPqycQ0tQ	2019-03-18 15:26:00.922995-04	2019-03-18 15:26:00.922995-04	\N	234000000	Girls' Generation 소녀시대 'Gee' MV	youtube
CX45pYvxDiA	2019-03-18 18:24:50.656189-04	2019-03-18 18:24:50.656189-04	\N	143000000	Mr. Sandman - The Chordettes	youtube
3rYoRaxgOE0	2019-03-18 18:25:03.085164-04	2019-03-18 18:25:03.085164-04	\N	135000000	Chordettes - Lollipop	youtube
DED6NJwkLWM	2019-03-18 18:25:54.635204-04	2019-03-18 18:25:54.635204-04	\N	146000000	The Chordettes - They Say It's Wonderful (1954)	youtube
ccenFp_3kq8	2019-03-18 19:57:10.247424-04	2019-03-18 19:57:10.247424-04	\N	254000000	Daryl Hall & John Oates - I Can't Go For That (No Can Do) (Official Video)	youtube
oIAkRVBS-0U	2019-03-18 19:57:20.882362-04	2019-03-18 19:57:20.882362-04	\N	145000000	Hall and Oates -- Rich Girl	youtube
ERWREcPIoPA	2019-03-18 20:02:50.022033-04	2019-03-18 20:02:50.022033-04	\N	233000000	Billy Joel - Only The Good Die Young (HD)	youtube
2OfJYisHbkI	2019-03-18 20:59:25.671636-04	2019-03-18 20:59:25.671636-04	\N	36000000	harumachi clover but its a swing arrangement by will stetson with some drums by dictate and stuff	youtube
9g3--WYH8SY	2019-03-19 00:33:50.357608-04	2019-03-19 00:33:50.357608-04	\N	84000000	Jeffpardy!	youtube
syRQ7iShpzY	2019-03-19 00:52:31.197146-04	2019-03-19 00:52:31.197146-04	\N	140000000	Gordon Ramsey: How to treat a lady	youtube
h0_gMum9neE	2019-03-19 00:54:26.793032-04	2019-03-19 00:54:26.793032-04	\N	294000000	We Sell Drugs	youtube
5GEmLnaFC38	2019-03-19 01:03:08.889523-04	2019-03-19 01:03:08.889523-04	\N	197000000	Knuckles from K.N.U.C.K.L.E.S. & Knuckles: Knuckles in Knuckles the Echidna [Extended Version]	youtube
UqNDckCNymw	2019-03-19 18:15:21.806206-04	2019-03-19 18:15:21.806206-04	\N	132000000	1,2 Oatmeal but it’s in Spanish 🍵 Un, Dos Avena	youtube
Z9PlxMVZ6AQ	2019-03-19 18:16:03.885512-04	2019-03-19 18:16:03.885512-04	\N	134000000	1, 2 Oatmeal but it’s Japanese 🎌 ・ 1, 2 オートミール日本語翻訳	youtube
M6TSUHjKnsM	2019-03-19 18:21:45.668345-04	2019-03-19 18:21:45.668345-04	\N	545000000	【東方アレンジ】 Demetori - 今宵は飄逸なエゴイスト 〜 Ego, Schizoid, Beat.	youtube
xJUQy6kdSUk	2019-03-19 18:22:27.742862-04	2019-03-19 18:22:27.742862-04	\N	249000000	【東方English Vocal／Eurobeat】 Catch Us 「A-ONE」【English Subtitle】	youtube
_Ur47nRByY0	2019-03-19 18:24:30.571027-04	2019-03-19 18:24:30.571027-04	\N	187000000	Teen Titans Theme Song (full) By: Puffy Ami Yumi	youtube
HMSK48ImuM8	2019-03-19 18:26:49.503304-04	2019-03-19 18:26:49.503304-04	\N	259000000	【東方Vocal／House】 Remember Me 「THE OTHER FLOWER」	youtube
MMJjrtNuQMQ	2019-03-19 19:48:01.311777-04	2019-03-19 19:48:01.311777-04	\N	207000000	【東方Vocal／Drum & Bass】 Scars 「ALiCE'S EMOTiON」 【Subbed】	youtube
0YF8vecQWYs	2019-03-20 16:25:43.978295-04	2019-03-20 16:25:43.978295-04	\N	253000000	美波「カワキヲアメク」MV	youtube
9Ob9135VbCY	2019-03-20 20:10:32.996656-04	2019-03-20 20:10:32.996656-04	\N	153000000	rip wii shop channel 😥👌💦	youtube
f1RLl45ZWIY	2019-03-20 20:30:31.868578-04	2019-03-20 20:30:31.868578-04	\N	251000000	【HD】鋼之鍊金術師 Fullmetal Alchemist: Brotherhood OP5 - SID - Rain【中日字幕】	youtube
Xsj2QYVrzl0	2019-03-20 20:30:57.862237-04	2019-03-20 20:30:57.862237-04	\N	209000000	鋼之鍊金術師 BROTHERHOOD - Uso	youtube
M-zK6jYSWbQ	2019-03-20 20:31:52.341943-04	2019-03-20 20:31:52.341943-04	\N	237000000	Seven Nation Army (Amazing Cover) CH Chart	youtube
BWaCHsIexSo	2019-03-20 21:09:39.318265-04	2019-03-20 21:09:39.318265-04	\N	301000000	【東方ボーカル】 「ヨスズメロディハート feat.あよ」 【森羅万象】	youtube
G7kPRelDb18	2019-03-20 21:09:44.577097-04	2019-03-20 21:09:44.577097-04	\N	260000000	【東方ボーカル】 「汝は白狼なりや？ feat.あやぽんず*」 【森羅万象】	youtube
xlXcvM20xak	2019-03-20 21:09:50.377789-04	2019-03-20 21:09:50.377789-04	\N	314000000	【東方ボーカル】 「NUCLEAR PHOENIX」 【SOUND HOLIC】	youtube
oiewCGel_3Q	2019-03-20 21:10:24.174907-04	2019-03-20 21:10:24.174907-04	\N	289000000	【東方ボーカル】 Titan 【森羅万象】	youtube
FdyoniKSFLE	2019-03-20 21:18:54.17349-04	2019-03-20 21:18:54.17349-04	\N	204000000	soulja planes	youtube
-aS2dMBb_TY	2019-03-20 21:32:39.881813-04	2019-03-20 21:32:39.881813-04	\N	282000000	【東方ボーカル】 「アラハバキダンスホール」 【森羅万象】	youtube
TPjAsus_bZo	2019-03-20 21:33:24.050745-04	2019-03-20 21:33:24.050745-04	\N	294000000	【東方ヴォーカルPV】無間嫉妬劇場『666』【森羅万象公式】	youtube
xOIAwKqBK_c	2019-03-20 21:34:33.89701-04	2019-03-20 21:34:33.89701-04	\N	299000000	【東方Vocal／Electropop】 ヨスズメロディハート 「Shinra-Bansho」	youtube
7MJf43vJjTU	2019-03-20 21:38:58.973254-04	2019-03-20 21:38:58.973254-04	\N	74000000	Free Credit Report / F-R-E-E that spells FREE (Mr Rock's Trap Remix | Extended by TheFlaxCompany)	youtube
GyiVgBvfNGE	2019-03-20 21:39:19.565325-04	2019-03-20 21:39:19.565325-04	\N	284000000	【東方Vocal／House】 Retrospective 「Alstroemeria Records」 [JP. Subs]	youtube
CQHCDduDoAQ	2019-03-20 21:41:32.753312-04	2019-03-20 21:41:32.753312-04	\N	326000000	【東方Vocal／Big Room House】 PLANETARY REVOLUTION(ALR REMIX) 「Alstroemeria Records」	youtube
HS8hUUOt0Gk	2019-03-20 21:42:39.504609-04	2019-03-20 21:42:39.504609-04	\N	284000000	【東方German Vocals／Electro Trance】 Hiraeth 「Frozen Starfall」 【Subbed】	youtube
J99QJLJ-Ih4	2019-03-20 21:45:48.946447-04	2019-03-20 21:45:48.946447-04	\N	166000000	Crypteque	youtube
ICJezWy9m8g	2019-03-20 21:46:19.006752-04	2019-03-20 21:46:19.006752-04	\N	164000000	Crypt of the Necrodancer OST - Stone Cold (3-1 Cold)	youtube
fymIz3HQR70	2019-03-20 21:56:32.840923-04	2019-03-20 21:56:32.840923-04	\N	274000000	【東方Vocal／Trance Pop】 Delights ～秘宝の指す方へ～ 「SOUND HOLIC」 【English Subbed】	youtube
oLjWpQKRbsQ	2019-03-20 21:57:47.776844-04	2019-03-20 21:57:47.776844-04	\N	243000000	【東方ボーカル】 「小さな針のような」 【幽閉サテライト】	youtube
6OWq38TikzU	2019-03-20 21:58:28.72241-04	2019-03-20 21:58:28.72241-04	\N	160000000	Steven Universe | Stronger Than You | Cartoon Network	youtube
uoaUfevwRog	2019-03-20 22:06:38.692825-04	2019-03-20 22:06:38.692825-04	\N	267000000	[東方vocal] 月光悲譚 [SYNC.ART'S]	youtube
Fn2GX_SGd2E	2019-03-20 22:07:06.182649-04	2019-03-20 22:07:06.182649-04	\N	204000000	【東方ボーカル】 Resistance Girl 【SYNC.ART'S】	youtube
x7yPhExdj3E	2019-03-20 22:14:06.883939-04	2019-03-20 22:14:06.883939-04	\N	275000000	Dr. Dre feat. Snoop Dogg - Still Dre (Lyrics)	youtube
a2XpJh3jMHQ	2019-03-20 22:21:01.291913-04	2019-03-20 22:21:01.291913-04	\N	339000000	【東方ボーカル】 未来への旅路 【Yonder Voice】	youtube
UVvydHr11Qc	2019-03-20 22:21:31.234161-04	2019-03-20 22:21:31.234161-04	\N	260000000	【東方ボーカル】 Yonder Voice - 奏穹のラプソディア	youtube
jgUoAf8QmTU	2019-03-20 22:22:05.910246-04	2019-03-20 22:22:05.910246-04	\N	338000000	【東方ボーカル】 Yonder Voice - Type Lunar	youtube
bO91hRlHcVU	2019-03-20 22:32:21.615743-04	2019-03-20 22:32:21.615743-04	\N	492000000	【東方ボーカル】 ShibayanRecords - 雨はりらりら 【Subbed-Englis-Spanish】	youtube
SmKKG6tCP3M	2019-03-20 22:36:14.546202-04	2019-03-20 22:36:14.546202-04	\N	353000000	【東方ボーカル】 「タイニーリトル・アジアンタム」 【ShibayanRecords】 【Subbed】	youtube
5-gRFDcv2eo	2019-03-20 22:43:39.603597-04	2019-03-20 22:43:39.603597-04	\N	355000000	【東方ボーカル】 失楽ノ園、傷ノ林檎 【Yonder Voice】	youtube
gb2IsSUBZro	2019-03-20 22:44:21.765722-04	2019-03-20 22:44:21.765722-04	\N	315000000	【東方ボーカル】 心音プラネタリウム 【ふぉれすとぴれお】	youtube
xZzWiFjsbM0	2019-03-31 18:44:58.426774-04	2019-03-31 18:44:58.426774-04	\N	260000000	Enter the Gungeon - Enter the Gungeon - OST	youtube
iz-yAZRLkO8	2019-03-20 22:49:39.732084-04	2019-03-20 22:49:39.732084-04	\N	279000000	【東方ボーカル】 その唄の名は... 【TUMENECO & GET IN THE RING】	youtube
FPGZsAG7G3Y	2019-03-20 23:01:23.678516-04	2019-03-20 23:01:23.678516-04	\N	334000000	【東方ボーカル】 「アノインシスター」 【凋叶棕】	youtube
RlDDc3wXUEU	2019-03-20 23:01:24.575476-04	2019-03-20 23:01:24.575476-04	\N	272000000	【東方Vocal／Pop】 星夢Borderline 「TUMENECO」	youtube
n2rVnRwW0h8	2019-03-20 23:02:09.614789-04	2019-03-20 23:02:09.614789-04	\N	211000000	Cowboy Bebop OST 1 - Tank!	youtube
QGSUYC03KQU	2019-03-20 23:03:48.618275-04	2019-03-20 23:03:48.618275-04	\N	319000000	【東方Vocal／Rock Ballad】 黄昏ボーダーライン 「TUMENECO」	youtube
BqKxlNzQnpY	2019-03-20 23:04:05.627341-04	2019-03-20 23:04:05.627341-04	\N	258000000	【東方Vocal／Pop Rock】 エンドレス・リピート 「TUMENECO」	youtube
JoppvyjZdX4	2019-03-20 23:15:14.864152-04	2019-03-20 23:15:14.864152-04	\N	263000000	【東方Vocal／Rock】 ホシフルヨルニ 「TUMENECO」 【Subbed】	youtube
YP7b7IV9dZw	2019-03-20 23:15:23.066439-04	2019-03-20 23:15:23.066439-04	\N	282000000	【東方Vocal／Rock】 アスヘノトビラ 「TUMENECO」	youtube
EvTaE99vfIw	2019-03-20 23:17:38.201944-04	2019-03-20 23:17:38.201944-04	\N	109000000	Touhou Anime PVD5 #3 - Candy Powder【東方PVD5】(C85)	youtube
0racqtZf7Ls	2019-03-20 23:17:41.480639-04	2019-03-20 23:17:41.480639-04	\N	298000000	【東方ボーカル】 「 雪琥珀 -snow amber- Remix」 【TUMENECO & GET IN THE RING】	youtube
e-Jb6XTiBWo	2019-03-20 23:18:20.829668-04	2019-03-20 23:18:20.829668-04	\N	214000000	「東方ENG」minimum electric design - シェードの中の物語 (Legends in Shades)	youtube
S1kDiEo0QtE	2019-03-20 23:19:22.156187-04	2019-03-20 23:19:22.156187-04	\N	110000000	Chippy Sings | ClariS - Hitorigoto	youtube
-nLYtv4zwXU	2019-03-20 23:25:21.966559-04	2019-03-20 23:25:21.966559-04	\N	258000000	【東方ボーカル】 Don't Cry 【ふぉれすとぴれお】	youtube
IsFnnTbrOIs	2019-03-20 23:47:04.413972-04	2019-03-20 23:47:04.413972-04	\N	196000000	Braken - Wherever You Go [Monstercat Release]	youtube
rVf7ApcG6c8	2019-03-21 12:07:03.786433-04	2019-03-21 12:07:03.786433-04	\N	209000000	【東方ボーカル】 偽りの宴 【Crest】	youtube
1UKM1wglvSc	2019-03-21 17:22:44.403393-04	2019-03-21 17:22:44.403393-04	\N	17000000	Suwako commit suicide	youtube
bTr9EfnPZq8	2019-03-21 17:23:40.985246-04	2019-03-21 17:23:40.985246-04	\N	177000000	bitch is for the lasagna people	youtube
h0XJuj33tE0	2019-03-21 17:26:51.643663-04	2019-03-21 17:26:51.643663-04	\N	84000000	Tornado's Revenge	youtube
DUCQJgBcXLs	2019-03-21 18:44:22.316576-04	2019-03-21 18:44:22.316576-04	\N	135000000	2oatmEal	youtube
2MtOpB5LlUA	2019-03-21 19:39:37.649809-04	2019-03-21 19:39:37.649809-04	\N	292000000	JoJo's Bizarre Adventure:Golden Wind OST: ~Giorno's Theme~ "Il vento d'oro" (Main Theme)	youtube
hM__VXlz_-Y	2019-03-21 19:40:47.617123-04	2019-03-21 19:40:47.617123-04	\N	1253000000	【Collaboration】Z-Kai Veterans Ⅲ ～ A Miraculous Medley for Utter Graduation	youtube
Zh9lynUFikc	2019-03-21 19:49:47.479282-04	2019-03-21 19:49:47.479282-04	\N	256000000	Platinum Disco FULL SUB HQ (Nisemonogatari Opening 3) by Yuka Iguchi	youtube
xlrVTDkMWno	2019-03-21 19:50:09.10923-04	2019-03-21 19:50:09.10923-04	\N	258000000	【東方ボーカル】 絶対恐怖領域 【SOUND HOLIC】	youtube
HAPSDPZZIpw	2019-03-21 19:52:25.267374-04	2019-03-21 19:52:25.267374-04	\N	229000000	Dark Cherry Mystery FULL HQ (Owarimonogatari 2nd Season OP3)	youtube
zWf5FdRvyLY	2019-03-21 19:52:37.089669-04	2019-03-21 19:52:37.089669-04	\N	249000000	Owarimonogatari Season 2 Ending Full『ClariS   SHIORI』	youtube
ECVOUxiiGhs	2019-03-21 19:52:56.210105-04	2019-03-21 19:52:56.210105-04	\N	276000000	Kogarashi Sentiment FULL HQ still-AMV (Koimonogatari Opening) by Shinichiro Miki and Chiwa Saito	youtube
_HsXIvpLdHE	2019-03-21 19:53:01.779987-04	2019-03-21 19:53:01.779987-04	\N	261000000	Delusion♡Express FULL SUB HQ (Otorimonogatari Opening) by Kana Hanazawa	youtube
eLPs_w-FepA	2019-03-21 19:53:17.183347-04	2019-03-21 19:53:17.183347-04	\N	349000000	supercell - Kimino Shiranai Monogatari	youtube
qlBRGXEZFmI	2019-03-21 20:12:22.573975-04	2019-03-21 20:12:22.573975-04	\N	373000000	【東方】 「妖夢ちゃん福袋」 Myon Myon Meme Douga	youtube
eejqDlUFpF8	2019-03-21 20:12:45.547721-04	2019-03-21 20:12:45.547721-04	\N	998000000	【Collaboration】Z-kai Symphony Ⅱ -The not passing forever-	youtube
UzRVEQDxiOo	2019-03-21 20:14:06.306824-04	2019-03-21 20:14:06.306824-04	\N	165000000	俺ら東京さ行ぐだ	youtube
4mVjg_71bcQ	2019-03-21 20:14:20.057913-04	2019-03-21 20:14:20.057913-04	\N	246000000	【IKZO】 白金ディスコも無ェFuli ver 【偽物語】	youtube
op8Gs32c5eY	2019-03-21 23:17:20.242356-04	2019-03-21 23:17:20.242356-04	\N	246000000	エヴァンゲリオン×吉幾三　残酷な農夫のテーゼ【IKZO】	youtube
c77g0zzfmQU	2019-03-21 23:20:06.500335-04	2019-03-21 23:20:06.500335-04	\N	284000000	【牛の名は。】電電電気【IKZO】	youtube
VjCjVwdNaSI	2019-03-21 23:20:32.172689-04	2019-03-21 23:20:32.172689-04	\N	135000000	吉幾三　×　マイケルジャクソン　IKUZO スリラー	youtube
YhcRMWzQwug	2019-03-21 23:22:35.892158-04	2019-03-21 23:22:35.892158-04	\N	90000000	【超高画質】恋愛サーキュレーション feat.IKZO	youtube
CZSS5iR2S-8	2019-03-21 23:26:20.22965-04	2019-03-21 23:26:20.22965-04	\N	107000000	【IKZO】ガガガガガガガガガガ【打打打打打打打打打打】	youtube
CX3BKKxYTYw	2019-03-21 23:42:38.821128-04	2019-03-21 23:42:38.821128-04	\N	186000000	Man's Not Hot	youtube
FcL-VdnmmE8	2019-03-21 23:44:34.359519-04	2019-03-21 23:44:34.359519-04	\N	600000000	deadmau5 feat. Rob Swire - Monophobia (Extended Mix)	youtube
hbMk7_c6nAE	2019-03-22 00:00:19.865146-04	2019-03-22 00:00:19.865146-04	\N	167000000	Zedd, Grey - Adrenaline (Audio)	youtube
xzV_-haCNys	2019-03-22 14:53:32.435247-04	2019-03-22 14:53:32.435247-04	\N	333000000	【東方】 Unlucky Morpheus 『木葉天狗』	youtube
Gw0CCLjG9Pc	2019-03-22 15:16:46.638568-04	2019-03-22 15:16:46.638568-04	\N	305000000	【A-One×TUMENECO】Uncover the Universe (Eurobeat Style)【東方ボーカル Eurobeat】	youtube
DaAuHt4rcnY	2019-03-22 16:57:16.976148-04	2019-03-22 16:57:16.976148-04	\N	91000000	NEW GAKU!	youtube
SaggLV9PNn4	2019-03-22 16:57:26.441322-04	2019-03-22 16:57:26.441322-04	\N	91000000	お勉強はきらいですか？？	youtube
uNUg4ZziL94	2019-03-22 16:57:32.260296-04	2019-03-22 16:57:32.260296-04	\N	90000000	よびこうぐらし！	youtube
F95QQ1QzjOU	2019-03-22 16:57:57.821401-04	2019-03-22 16:57:57.821401-04	\N	127000000	【Minecraft】NEW GAKU【再現してみた】	youtube
Q16KpquGsIc	2019-03-22 17:01:18.571572-04	2019-03-22 17:01:18.571572-04	\N	318000000	Ronald McDonald insanity	youtube
AV4KUQepyjs	2019-03-22 17:01:41.896051-04	2019-03-22 17:01:41.896051-04	\N	101000000	ウカっとウカ合格っ♡	youtube
Vk2PQgNRpU0	2019-03-22 17:02:31.359686-04	2019-03-22 17:02:31.359686-04	\N	99000000	俺は勉強が嫌い也【Z会×ニャル子さんW】	youtube
8ruJOq-nZ7k	2019-03-22 17:02:45.741735-04	2019-03-22 17:02:45.741735-04	\N	92000000	私にテストが舞い降りた！【わたてんOP×Z会】	youtube
WJ1_TFWxr3s	2019-03-22 17:02:55.225556-04	2019-03-22 17:02:55.225556-04	\N	106000000	【桜Trick】錯乱Trick【Z会】	youtube
qSfcFOafD1A	2019-03-22 17:03:05.692304-04	2019-03-22 17:03:05.692304-04	\N	112000000	この素晴らしい馬鹿に点数を!【Z会×この素晴らしい世界に祝福を!二期OP】	youtube
aRnMtQntYFQ	2019-03-22 17:03:14.91255-04	2019-03-22 17:03:14.91255-04	\N	100000000	ブレイン・Z【Z会xブレンド・S】	youtube
juu-SSciqWA	2019-03-22 17:03:19.720485-04	2019-03-22 17:03:19.720485-04	\N	251000000	【東方爆音ジャズ12】輝く針の小人族【東京アクティブNEETs】	youtube
IP0x75OkD48	2019-03-22 17:06:40.66201-04	2019-03-22 17:06:40.66201-04	\N	403000000	【東方爆音ジャズ13】ピュアヒューリーズ【東京アクティブNEETs】	youtube
KNpuu9hEKGg	2019-03-22 17:08:13.680032-04	2019-03-22 17:08:13.680032-04	\N	269000000	【東方Vocal／Trance Rock】 Shine On You 「C-CLAYS」	youtube
1ReSKnPhenU	2019-03-22 17:14:35.421755-04	2019-03-22 17:14:35.421755-04	\N	238000000	Hoops! Nyaruko-slam W (Quad City DJ's vs. Nyarlathotep)	youtube
HmY1WieykpE	2019-03-22 17:23:59.55924-04	2019-03-22 17:23:59.55924-04	\N	546000000	絵空箏／ESORAGOTO　　（沢井比河流 作曲／composed by Sawai, Hikaru）	youtube
c9YVdFc-6mE	2019-03-22 17:31:16.059524-04	2019-03-22 17:31:16.059524-04	\N	251000000	【東方ボーカル】 「かぜのいろ feat.あよ」 【森羅万象】	youtube
3cESJ92gVV0	2019-03-22 17:33:51.716379-04	2019-03-22 17:33:51.716379-04	\N	300000000	【東方ボーカル】 アクアテラリウム 【森羅万象】	youtube
B5VPHqbHGec	2019-03-22 17:34:55.501004-04	2019-03-22 17:34:55.501004-04	\N	320000000	【東方ボーカル】 「カルテット」 【森羅万象】	youtube
RCIjqcJRlqI	2019-03-22 17:35:51.010912-04	2019-03-22 17:35:51.010912-04	\N	300000000	【東方ボーカル】 「アクアテラリウム feat.あよ」 【森羅万象】	youtube
H5xOvNgz0ZM	2019-03-22 17:38:54.512726-04	2019-03-22 17:38:54.512726-04	\N	279000000	【東方ボーカル】 「こどものせかい」 【Liz Triangle】	youtube
05iOi5hDZGg	2019-03-22 17:39:21.961892-04	2019-03-22 17:39:21.961892-04	\N	312000000	【東方Vocal】 Line 「Liz Triangle」 【ENG Subs】	youtube
HAzefG-ZNTk	2019-03-22 17:39:35.010388-04	2019-03-22 17:39:35.010388-04	\N	255000000	【東方ボーカル】 「友達の境界」 【Liz Triangle】	youtube
BrUuOubXCaE	2019-03-22 18:25:09.153408-04	2019-03-22 18:25:09.153408-04	\N	257000000	【東方Vocal】 きゃみきゃみそーるめいと / DiGiTAL WiNG 【Subbed】	youtube
X1Fqn9du7xo	2019-03-22 18:25:33.103738-04	2019-03-22 18:25:33.103738-04	\N	225000000	Adam Lambert - Whataya Want from Me	youtube
ynzIa99puX4	2019-03-22 18:26:32.299646-04	2019-03-22 18:26:32.299646-04	\N	212000000	The Oatmeal Revolving (ft. Crusty_Jerby.jpg)	youtube
2FrHv32cE9s	2019-03-22 18:30:05.787947-04	2019-03-22 18:30:05.787947-04	\N	72000000	Oatmeal Come Home	youtube
Rjw1P92IPn4	2019-03-22 18:31:49.415159-04	2019-03-22 18:31:49.415159-04	\N	649000000	【東方爆音ジャズ13】紺珠伝メドレー【東京アクティブNEETs】	youtube
HV5YvpbyS6E	2019-03-22 18:32:19.955736-04	2019-03-22 18:32:19.955736-04	\N	347000000	【東方ボーカル】 「竹ノ花」 【凋叶棕】【Subbed】	youtube
Nq-YGrZpdsg	2019-03-22 18:33:21.242529-04	2019-03-22 18:33:21.242529-04	\N	603000000	【東方ボーカル】 「Desert Years」 【ShibayanRecords】  【Subbed】	youtube
HgNj9v5ClGQ	2019-03-22 18:34:04.744449-04	2019-03-22 18:34:04.744449-04	\N	450000000	【Shibayan Records】 オズネイ・ハマンはもういらない	youtube
-X5CnpgRjtE	2019-03-22 19:39:42.480172-04	2019-03-22 19:39:42.480172-04	\N	567000000	【東方ヴォーカル】その魂に安らぎを　～ Dignity of Spirit【墨染の桜】	youtube
ro_K1ZbE3X4	2019-03-22 19:44:04.188433-04	2019-03-22 19:44:04.188433-04	\N	272000000	【東方Vocal】 魍魎の密室 【千年幻想郷～History of tha Moon】	youtube
AwOI2Nvrwr8	2019-03-22 19:52:01.270028-04	2019-03-22 19:52:01.270028-04	\N	220000000	【東方Vocalアレンジ】Floating Darkness【原曲：平安のエイリアン】	youtube
-OzNzdlsocw	2019-03-22 19:52:20.23519-04	2019-03-22 19:52:20.23519-04	\N	413000000	【東方】 Shibayan Records - アナタガモトメルモノ 【Eng Subs】	youtube
y5JfkuGISRE	2019-03-22 20:15:11.168582-04	2019-03-22 20:15:11.168582-04	\N	245000000	[Touhou Vocal] [UNDEAD CORPORATION] Kasha no sakebu yoru ni (spanish & english subtitles)	youtube
tIdIqbv7SPo	2019-03-23 21:27:50.039186-04	2019-03-23 21:27:50.039186-04	\N	129000000	Bill Withers - Ain't No Sunshine (Official Video)	youtube
pxlMMWln0oQ	2019-03-24 01:11:51.142566-04	2019-03-24 01:11:51.142566-04	\N	292000000	Clannad: After Story Opening (FULL) - Toki wo Kizamu Uta	youtube
lLnUpHa8n1k	2019-03-24 01:29:39.923567-04	2019-03-24 01:29:39.923567-04	\N	293000000	rionos - Viator (ウィアートル) [Maquia Theme Song - HD]	youtube
J2yzMhNkgsk	2019-03-24 01:36:30.925403-04	2019-03-24 01:36:30.925403-04	\N	308000000	Clannad OST ~ Shining in the Sky	youtube
aU29qo7xOTs	2019-03-24 01:39:29.358467-04	2019-03-24 01:39:29.358467-04	\N	404000000	【English Sub】 I am Here ~Eight Melodies~ 【Earthbound】	youtube
vdk_76z38bA	2019-03-24 01:41:14.539932-04	2019-03-24 01:41:14.539932-04	\N	157000000	Clannad OST ~ Roaring Tides	youtube
aA_IXBBgDJM	2019-03-24 01:41:40.795384-04	2019-03-24 01:41:40.795384-04	\N	268000000	Clannad OST ~ Town, Flow of Time, People	youtube
lk0gm_Z81bE	2019-03-24 01:42:32.238133-04	2019-03-24 01:42:32.238133-04	\N	122000000	Toradora! - Lost My Pieces (OST)	youtube
Yc1AuSlmlyI	2019-03-24 01:42:41.074158-04	2019-03-24 01:42:41.074158-04	\N	134000000	Toradora OST - Ame Iro Rondo	youtube
Qe_5GCxaz5M	2019-03-24 01:45:52.773126-04	2019-03-24 01:45:52.773126-04	\N	234000000	Clannad OST ~ Nagisa: Parting at the Foot of the Hill	youtube
vlgwgEVBRUk	2019-03-24 01:46:20.326275-04	2019-03-24 01:46:20.326275-04	\N	119000000	Clannad OST ~ To the Same Heights	youtube
bbss_iQEX9I	2019-03-24 01:46:39.959609-04	2019-03-24 01:46:39.959609-04	\N	248000000	Clannad OST ~ The Place Where Wishes Come True II	youtube
uDr6h8-0Qlo	2019-03-24 01:47:12.11757-04	2019-03-24 01:47:12.11757-04	\N	341000000	Clannad - The Girl's Fantasy	youtube
o6BgI6IVnQU	2019-03-24 01:47:30.008585-04	2019-03-24 01:47:30.008585-04	\N	311000000	Clannad OST ~ Snowfield	youtube
adhFhMpIe7g	2019-03-24 02:02:26.510748-04	2019-03-24 02:02:26.510748-04	\N	388000000	Clannad Soundtrack - A New Life Reborn	youtube
o2TO5atI4rU	2019-03-24 14:45:31.502053-04	2019-03-24 14:45:31.502053-04	\N	90000000	Nichijoint - My Ordinary Weed	youtube
ZhJBNjbk0ds	2019-03-31 00:36:21.637383-04	2019-03-31 00:36:21.637383-04	\N	150000000	Bass Slut - S3RL feat. Tamika	youtube
ChWgl-7PRa8	2019-03-31 00:36:44.237655-04	2019-03-31 00:36:44.237655-04	\N	248000000	Friendzoned - S3RL feat Mixie Moon	youtube
9tEkItjP5t4	2019-03-31 00:53:03.985346-04	2019-03-31 00:53:03.985346-04	\N	211000000	【東方Vocal】【少女フラクタル】 今を凍らせて...	youtube
eLC7eK2CIrU	2019-03-31 13:00:47.062397-04	2019-03-31 13:00:47.062397-04	\N	74000000	JOHNNY TEST IS BACK!!!!	youtube
S8dmq5YIUoc	2019-03-31 13:01:23.878094-04	2019-03-31 13:01:23.878094-04	\N	193000000	Kizuna AI - AIAIAI (feat. 中田ヤスタカ)【Official Music Video】	youtube
QeCOEdWHNNY	2019-03-31 13:02:34.704889-04	2019-03-31 13:02:34.704889-04	\N	253000000	Fire Bomber American - 突撃ラブハート	youtube
ajBRYOw8YVY	2019-03-31 13:10:43.276587-04	2019-03-31 13:10:43.276587-04	\N	306000000	Fire Bomber 03 突撃ラブハート Duet Version (マクロス7/ macross 7/ 新世紀超時空要塞7)	youtube
cOxHwZuLcIU	2019-03-31 13:35:29.827073-04	2019-03-31 13:35:29.827073-04	\N	145000000	Mr. Sandman, but the opening clapping is uncomfortably meaty and plays throughout the whole song	youtube
yx2piPUudlE	2019-03-31 13:38:19.094345-04	2019-03-31 13:38:19.094345-04	\N	211000000	Yung Gravy - Mr.  Clean (prod. white shinobi) [Official Music Video]	youtube
-1Yv7tPCcQM	2019-03-31 13:40:19.644692-04	2019-03-31 13:40:19.644692-04	\N	50000000	500 miles but only the backing vocals	youtube
o_Fv-Cj8Ax4	2019-03-31 13:47:00.424058-04	2019-03-31 13:47:00.424058-04	\N	368000000	shostakovich 8 mvt 4 but every bum bum bum is replaced with the wii bum bum bum	youtube
tby5aMrMu6Q	2019-03-31 13:50:46.342938-04	2019-03-31 13:50:46.342938-04	\N	1360000000	Shostakovich - String Quartet No. 8 in C minor Op. 110	youtube
0qUozvOP-b8	2019-03-31 13:52:16.141078-04	2019-03-31 13:52:16.141078-04	\N	275000000	【東方Vocal／Acoustic Rock】 夢の終着駅 「TUMENECO」	youtube
Pd1z8jNuiz8	2019-03-31 13:52:17.967814-04	2019-03-31 13:52:17.967814-04	\N	102000000	If 500 Miles had half the beats taken out	youtube
jLvDnRU_ajk	2019-03-31 13:52:41.287896-04	2019-03-31 13:52:41.287896-04	\N	132000000	Smooth Criminal But Every Other Beat is Missing	youtube
wtMPM9Mk8h8	2019-03-31 13:53:08.563018-04	2019-03-31 13:53:08.563018-04	\N	226000000	バーチャルゴリラ『ゴリガタ』MV	youtube
7Ig5neLtls8	2019-03-31 13:53:31.279461-04	2019-03-31 13:53:31.279461-04	\N	336000000	【東方Vocal／Pop Rock】 Lonely Dream 「TUMENECO」	youtube
zkKP1vhArYY	2019-03-31 13:54:10.421203-04	2019-03-31 13:54:10.421203-04	\N	200000000	[MV] PENTAGON(펜타곤) _ SHA LA LA(신토불이)	youtube
VpVgILw_f48	2019-03-31 17:09:00.551797-04	2019-03-31 17:09:00.551797-04	\N	293000000	【東方】Unlucky Morpheus - THE TOWER OF THE BLOOD (Eurobeat Remix)	youtube
CByEVK4Kw08	2019-03-31 17:09:06.345374-04	2019-03-31 17:09:06.345374-04	\N	222000000	Unlucky Morpheus -  神々が恋した幻想郷 (EUROBEAT)- The Gensokyo The Gods Loved	youtube
qVqDJ1JWI8Q	2019-03-31 17:09:29.902398-04	2019-03-31 17:09:29.902398-04	\N	243000000	【東方ニコカラ】神々が恋した幻想郷【On Vocal】	youtube
Li4j82QbBvk	2019-03-31 18:30:36.868808-04	2019-03-31 18:30:36.868808-04	\N	26000000	！？	youtube
hyZf_Re6p7Y	2019-03-31 18:30:40.400199-04	2019-03-31 18:30:40.400199-04	\N	91000000	Sans default dance - Driftveil City & Megalovania	youtube
p8MzhIWGOLs	2019-03-31 18:31:07.316703-04	2019-03-31 18:31:07.316703-04	\N	270000000	Hanasaka Yui(CV:M.A.O) - Harumachi Clover -blooming mix-	youtube
j7iWlt9qAX4	2019-03-31 18:32:04.906483-04	2019-03-31 18:32:04.906483-04	\N	106000000	THE NUMBER ONE REVOLVING	youtube
cfoIkq3YNGw	2019-03-31 18:46:37.907717-04	2019-03-31 18:46:37.907717-04	\N	246000000	Through the Fire and Flames - TRAP REMIX	youtube
xGb4GAaz808	2019-03-31 20:41:02.199696-04	2019-03-31 20:41:02.199696-04	\N	159000000	Castle On The Hill but Ed Sheeran won't stop breaking his leg	youtube
RKAZd4fs5Mo	2019-03-31 20:48:32.486948-04	2019-03-31 20:48:32.486948-04	\N	179000000	AC/VC by neil cicierega reupload	youtube
UXKQ6t0UPdU	2019-03-31 20:52:39.163045-04	2019-03-31 20:52:39.163045-04	\N	237000000	(Goofy) I'm Blue (Da Ba Dee) Highest Quality	youtube
pw7X_H5FuNg	2019-03-31 21:30:15.956877-04	2019-03-31 21:30:15.956877-04	\N	182000000	Meme Music Mega Mashup 2018 (Clone Hero Chart Preview)	youtube
GyQjVtIGQg8	2019-03-31 21:31:07.762918-04	2019-03-31 21:31:07.762918-04	\N	242000000	THE POKÉMON THEME - (METAL COVER) Jonathan Young & Jason Paige (the original singer)	youtube
J8PUUv4LFkQ	2019-03-31 22:31:16.33009-04	2019-03-31 22:31:16.33009-04	\N	238000000	HIMEHINA『 ヒトガタ』MV	youtube
DDa6qtVJvaA	2019-04-02 22:27:05.65255-04	2019-04-02 22:27:05.65255-04	\N	191000000	sexually attractive and i'm cognizant of this fact (Clone Hero Chart DL in description)	youtube
d3x4eHI0jQQ	2019-04-02 22:30:46.479737-04	2019-04-02 22:30:46.479737-04	\N	410000000	gas gas gas but every other beat happens twice [CC]	youtube
7vjDWZhHqYg	2019-04-02 22:32:08.610263-04	2019-04-02 22:32:08.610263-04	\N	164000000	Every Michael Jackson Grunt - Multitrack Edition	youtube
LivNRg8Qsho	2019-04-02 22:39:35.681026-04	2019-04-02 22:39:35.681026-04	\N	274000000	Samurai Jack (Remix Maniacs Trap Remix)	youtube
E0fRLH_Rq1A	2019-04-02 22:46:15.878881-04	2019-04-02 22:46:15.878881-04	\N	53000000	Wii music but Seinfeld	youtube
oAMK3VJ7YrQ	2019-04-02 22:47:18.959103-04	2019-04-02 22:47:18.959103-04	\N	55000000	Seinfeld Theme SKRILLEX REMIX	youtube
CPhXKak_bHw	2019-04-02 22:51:08.84376-04	2019-04-02 22:51:08.84376-04	\N	209000000	Neil Cicierega - Wow Wow	youtube
xOa-uxn8BKk	2019-04-02 22:52:24.702156-04	2019-04-02 22:52:24.702156-04	\N	298000000	Electric Bup Orchestra - Mr. Oat Sky	youtube
70t4UjrY3lQ	2019-04-02 22:52:33.005632-04	2019-04-02 22:52:33.005632-04	\N	237000000	Celeste BUP Sides - Mirror Temple B-Side	youtube
3eUwhXA1gVg	2019-04-02 22:57:29.35971-04	2019-04-02 22:57:29.35971-04	\N	284000000	Get Africa Low (mashup) - Toto Vs Lil Jon + The East Side Boyz - Valid A	youtube
MNjQ8gQtPso	2019-04-03 16:39:10.001067-04	2019-04-03 16:39:10.001067-04	\N	32000000	Pump Cannon	youtube
F0HUnE35Zzw	2019-04-03 19:05:20.703159-04	2019-04-03 19:05:20.703159-04	\N	14000000	How to Pronounce DEADASS	youtube
QizRCa3pO14	2019-04-04 18:25:00.129735-04	2019-04-04 18:25:00.129735-04	\N	366000000	影翔鼓舞 - Oriental Blossom -栄華秀英-	youtube
_CI-0E_jses	2019-04-04 18:59:31.896424-04	2019-04-04 18:59:31.896424-04	\N	216000000	Glenn Miller - In The Mood [HQ]	youtube
SRmhjkqfCmM	2019-04-04 18:59:44.143596-04	2019-04-04 18:59:44.143596-04	\N	284000000	PSYQUI - don't you want me ft. Such	youtube
MwxgUVrj5m4	2019-04-04 18:59:51.294214-04	2019-04-04 18:59:51.294214-04	\N	301000000	PSYQUI - ヒステリックナイトガール feat. Such (android52 Edit)	youtube
ptjmjEUESlw	2019-04-04 21:08:04.154277-04	2019-04-04 21:08:04.154277-04	\N	130000000	[SDVX II] Brain Power [EXH]	youtube
h_D3VFfhvs4	2019-04-05 16:33:14.522298-04	2019-04-05 16:33:14.522298-04	\N	566000000	Michael Jackson - Smooth Criminal (Official Video)	youtube
5X-Mrc2l1d0	2019-04-05 16:33:41.555259-04	2019-04-05 16:33:41.555259-04	\N	203000000	Michael Jackson - Rock With You (Official Video)	youtube
rKTUAESacQM	2019-04-05 16:36:32.034961-04	2019-04-05 16:36:32.034961-04	\N	885000000	The Sugar Hill Gang - Rapper's Delight ( HQ, Full Version )	youtube
8ZGAIDdf0GU	2019-04-05 16:39:02.554906-04	2019-04-05 16:39:02.554906-04	\N	204000000	THE VIRTUAL WORLD REVOLVING - Sheltarune	youtube
NZliLd1zL2k	2019-04-05 16:41:12.237729-04	2019-04-05 16:41:12.237729-04	\N	42000000	MARIO SCREAMING but it's gourmet race	youtube
QI7FTK-xbio	2019-04-05 17:01:09.764867-04	2019-04-05 17:01:09.764867-04	\N	102000000	1, 2 Oatmeal Acoustic Cover	youtube
wbnUN6X1VdE	2019-04-05 17:12:51.19684-04	2019-04-05 17:12:51.19684-04	\N	110000000	Oatmeal Fitness Test	youtube
I22JGM8hfrs	2019-04-05 17:20:43.480055-04	2019-04-05 17:20:43.480055-04	\N	174000000	Oatmeal Eater	youtube
rnS-05XoXs4	2019-04-05 19:16:37.105068-04	2019-04-05 19:16:37.105068-04	\N	61000000	Smokémon	youtube
xc8KdyU8N8Q	2019-04-05 19:18:56.597209-04	2019-04-05 19:18:56.597209-04	\N	32000000	Brick and Jointy	youtube
_FhgEeAj9ng	2019-04-05 19:55:26.91769-04	2019-04-05 19:55:26.91769-04	\N	127000000	What Redbone would sound like sung by Kermit the Frog	youtube
V0PbiHBjidk	2019-04-06 15:00:46.984561-04	2019-04-06 15:00:46.984561-04	\N	745000000	Despacito Fusion Collab	youtube
Ic2Cjw7kydI	2019-04-06 15:19:51.013558-04	2019-04-06 15:19:51.013558-04	\N	224000000	Scatman John - Scatman's World	youtube
clvi2kc0sYg	2019-04-06 16:59:31.598807-04	2019-04-06 16:59:31.598807-04	\N	257000000	【東方アレンジ】Requiem of Scarlett. feat.GUMI&鏡音リン / 霹靂	youtube
fCmvXCgZr74	2019-04-06 17:29:00.228701-04	2019-04-06 17:29:00.228701-04	\N	33000000	apple bottom jeans, boots with the	youtube
GjjZacZSWT4	2019-04-06 17:36:13.445356-04	2019-04-06 17:36:13.445356-04	\N	21000000	i learnt 3D animation to make this 1 video	youtube
zc2J_MYOjSs	2019-04-06 17:36:29.874024-04	2019-04-06 17:36:29.874024-04	\N	247000000	【東方Vocal／Piano Ballad】 一粒の奇跡 「BUTAOTOME」	youtube
CNXw6EKa6Lc	2019-04-06 17:37:12.992433-04	2019-04-06 17:37:12.992433-04	\N	362000000	【東方Vocalカラオケ】天邪鬼【Amateras Records】	youtube
A6tI7mWYIsk	2019-04-06 17:40:41.422825-04	2019-04-06 17:40:41.422825-04	\N	261000000	【東方Vocal／Trance】 Thank you for 「556mm」	youtube
UMdhgVMDXmA	2019-04-06 17:42:40.491218-04	2019-04-06 17:42:40.491218-04	\N	225000000	【東方Vocal／EDM】 STAND UP! 「Alstroemeria Records」【ENG Subs】	youtube
gCCpOqvG8m0	2019-04-06 18:00:41.255394-04	2019-04-06 18:00:41.255394-04	\N	284000000	ᴴᴰ⁶⁰【東方Vocal】紺碧Studio｜Sigh Dreamily【中日English附詞】	youtube
PkNx-rhc6XU	2019-04-06 19:34:31.493518-04	2019-04-06 19:34:31.493518-04	\N	239000000	【東方Vocal／Eurobeat】 解キ放ツ歌 「Crazy Beats」	youtube
KmvydnVTriE	2019-04-06 19:47:58.076018-04	2019-04-06 19:47:58.076018-04	\N	244000000	【調教すげぇ】初音ミク『FREELY TOMORROW』【公式PV】	youtube
Nk4WNgQQEus	2019-04-06 19:53:28.373763-04	2019-04-06 19:53:28.373763-04	\N	267000000	「ShinraBansho」  ・   【 ノーレッジパラノイア 】	youtube
NUNqMYtfwr0	2019-04-06 20:29:01.386052-04	2019-04-06 20:29:01.386052-04	\N	254000000	⁴ᴷ【東方Vocalカラオケ】Over the Starlit sky (Another Story version)【音召缶】	youtube
zxPpky3GM_w	2019-04-06 20:54:33.156045-04	2019-04-06 20:54:33.156045-04	\N	311000000	【東方Vocal／Traditional Trance】 花心は泡沫に 「Kodemari Koruri」	youtube
xPfMb50dsOk	2019-04-06 21:26:21.851768-04	2019-04-06 21:26:21.851768-04	\N	194000000	Discord (Remix) - Eurobeat Brony	youtube
PhrumGLBmYc	2019-04-06 21:26:55.113075-04	2019-04-06 21:26:55.113075-04	\N	278000000	Song - Octavia's Overture	youtube
48ASid5JR5s	2019-04-06 21:44:27.201224-04	2019-04-06 21:44:27.201224-04	\N	199000000	【東方Vocal／Techno Rock】 瞬間エヴァーラスティング 「Yuuhei Satellite」	youtube
2APJ2nu7PQ8	2019-04-06 21:50:24.745145-04	2019-04-06 21:50:24.745145-04	\N	269000000	⁴ᴷ【東方Vocalカラオケ】Break the Night【ALiCE'S EMOTiON】	youtube
J8A4SDPICRQ	2019-04-06 21:54:38.240417-04	2019-04-06 21:54:38.240417-04	\N	254000000	【東方Vocal／Drum & Bass】 夢の中で 「舞音KAGURA」	youtube
Z-Pa_VlEjYI	2019-04-06 21:55:15.097834-04	2019-04-06 21:55:15.097834-04	\N	314000000	⁴ᴷ【東方Vocalカラオケ】恋してFruity Soup【SYNC.ART'S】	youtube
ZrR_WnKGaVY	2019-04-06 21:56:57.916767-04	2019-04-06 21:56:57.916767-04	\N	263000000	【東方Vocalカラオケ】Starbow Break【A-ONE】	youtube
TcT4CP6czfk	2019-04-06 21:57:30.876953-04	2019-04-06 21:57:30.876953-04	\N	275000000	【東方Vocalカラオケ】Immortal【pikapika】	youtube
rRervevYGR0	2019-04-07 13:28:35.628829-04	2019-04-07 13:28:35.628829-04	\N	231000000	Mousou Express - Hanazawa Kana full remix	youtube
AsYREFwxYFI	2019-04-07 13:34:29.258734-04	2019-04-07 13:34:29.258734-04	\N	178000000	Phineas And Ferb - Perry The Platypus Theme Song Lyrics (extended + HD + HQ)	youtube
elEA9ysUoDM	2019-04-07 13:35:02.763329-04	2019-04-07 13:35:02.763329-04	\N	173000000	What Kind of Pokemon are You? ~ METAL VERSION (Cover by Jonathan Young)	youtube
S5Gm-6b9wE4	2019-04-07 14:10:27.722892-04	2019-04-07 14:10:27.722892-04	\N	305000000	Scatman's World Fusion Collab	youtube
BRpkYOZ_iTU	2019-04-07 14:29:12.522002-04	2019-04-07 14:29:12.522002-04	\N	230000000	Hatsune Miku - Senbonzakura (HQ Audio)	youtube
G_GQQlehGxE	2019-04-07 14:31:56.565935-04	2019-04-07 14:31:56.565935-04	\N	184000000	Neil Cicierega - Daft Mouth	youtube
ZBQvi4SUKvc	2019-04-07 14:41:24.105665-04	2019-04-07 14:41:24.105665-04	\N	252000000	Retrospective 53 Minutes - White Flag of Usa Shrine	youtube
tApsiCYkOfw	2019-04-07 14:41:57.699863-04	2019-04-07 14:41:57.699863-04	\N	404000000	Magical Astronomy - Necrofantasia	youtube
ohG0Ei1viKA	2019-04-07 14:44:38.458805-04	2019-04-07 14:44:38.458805-04	\N	295000000	【東方Vocal／Pop Rock】 Compact @ Mobile 「 Hachimitsu-Lemon」	youtube
0sP9mxCC0VU	2019-04-07 14:49:52.543641-04	2019-04-07 14:49:52.543641-04	\N	330000000	【東方ボーカル】 「まっすぐ」 【森羅万象】	youtube
Z7qf20rbOww	2019-04-07 14:51:56.485452-04	2019-04-07 14:51:56.485452-04	\N	67000000	1, 2 Electric Zoo	youtube
eVCIxtS97Pg	2019-04-07 14:55:18.631267-04	2019-04-07 14:55:18.631267-04	\N	208000000	Necrofantasia (Yukari's Theme) || Metal Cover by RichaadEB	youtube
7qLqbGHa0S4	2019-04-07 14:55:27.090491-04	2019-04-07 14:55:27.090491-04	\N	335000000	Demetori - ネクロファンタジア ～ Remix (necrofantasia)	youtube
QSKsDqRVO1E	2019-04-07 14:56:06.15026-04	2019-04-07 14:56:06.15026-04	\N	163000000	Crypt of the NecroDancer OST - The Wight to Remain (Shopkeeper)	youtube
PH-fHEZWxWc	2019-04-07 15:12:28.435638-04	2019-04-07 15:12:28.435638-04	\N	175000000	Crypt of the NecroDancer OST - Mausoleum Mash (1-3)	youtube
BKrespjrJms	2019-04-07 15:12:44.148965-04	2019-04-07 15:12:44.148965-04	\N	234000000	Backstreet Boys - Get Down (You're The One For Me)	youtube
NmTJ3N00dOw	2019-04-07 15:14:42.315678-04	2019-04-07 15:14:42.315678-04	\N	12000000	Kirby does funny Fortnite Dance Moves	youtube
onWf4_yl-pY	2019-04-07 15:57:22.24944-04	2019-04-07 15:57:22.24944-04	\N	280000000	Frank Sinatra - My Way	youtube
mQR0bXO_yI8	2019-04-07 15:57:27.518575-04	2019-04-07 15:57:27.518575-04	\N	156000000	Frank Sinatra Fly Me To The Moon	youtube
YtO-6Xg3g2M	2019-04-07 16:07:35.27421-04	2019-04-07 16:07:35.27421-04	\N	126000000	Babe Ruth vs Lance Armstrong. Epic Rap Battles of History.	youtube
68JQtxTzjqc	2019-04-07 16:38:09.231135-04	2019-04-07 16:38:09.231135-04	\N	371000000	ASMR Role Play - Caring and Supportive Funky Kong Gives You A Ride Home From The Airport	youtube
097sqe77Tn8	2019-04-07 20:00:48.400035-04	2019-04-07 20:00:48.400035-04	\N	302000000	MIT Next House i3 2015	youtube
xQzS3JnZQZM	2019-04-07 20:02:14.580602-04	2019-04-07 20:02:14.580602-04	\N	185000000	Zedd, Grey - The Middle (Lyrics) ft. Maren Morris	youtube
VD88Eo9w-Eg	2019-04-07 20:03:42.345963-04	2019-04-07 20:03:42.345963-04	\N	143000000	Young M.A "Thotiana" Remix (Official Music Video)	youtube
SdkL7vDNrqA	2019-04-07 20:24:29.174286-04	2019-04-07 20:24:29.174286-04	\N	266000000	Gran Turismo 6 - Theme Song ( All my life )	youtube
04854XqcfCY	2019-04-07 21:26:09.802148-04	2019-04-07 21:26:09.802148-04	\N	190000000	Queen -  We Are The Champions (Official Video)	youtube
w0RA_LZC0Jg	2019-04-08 01:15:35.835638-04	2019-04-08 01:15:35.835638-04	\N	41000000	a little bit of monika	youtube
REMAAR7Fd2Q	2019-04-08 01:21:07.063686-04	2019-04-08 01:21:07.063686-04	\N	265000000	Demetori - Shangai Alice of Meiji 17	youtube
rJTeVOOFMHM	2019-04-08 17:07:54.698979-04	2019-04-08 17:07:54.698979-04	\N	547000000	FULL SONG: The Perfect PokéRap | Unraveled BONUS	youtube
1d_aUqgn8MA	2019-04-08 18:55:53.773601-04	2019-04-08 18:55:53.773601-04	\N	84000000	Bad Apple!! - Touhou 4: Lotus Land Story	youtube
R-AXWrLG36Q	2019-04-08 18:57:51.153-04	2019-04-08 18:57:51.153-04	\N	121000000	Brain Power - MÚSECA 1+1/2	youtube
eRXnrWl2-ps	2019-04-08 19:01:06.21936-04	2019-04-08 19:01:06.21936-04	\N	166000000	ThanksKilling 8-Bit Theme	youtube
-sms64AEaIg	2019-04-08 19:04:12.187579-04	2019-04-08 19:04:12.187579-04	\N	258000000	MiatriSs - Danganronpa (Ultimate Mix)	youtube
aoBWUs8poYU	2019-04-08 19:51:39.628096-04	2019-04-08 19:51:39.628096-04	\N	23000000	M1 Garand Ping	youtube
Hy8kmNEo1i8	2019-04-08 19:52:22.627076-04	2019-04-08 19:52:22.627076-04	\N	211000000	Scatman (ski-ba-bop-ba-dop-bop) Official Video HD -Scatman John	youtube
tGgNfyuM-cU	2019-04-08 20:19:09.886493-04	2019-04-08 20:19:09.886493-04	\N	238000000	Su Su Su Super Ki Re i - 1996	youtube
3MbbP2AVjAE	2019-04-08 20:48:06.038838-04	2019-04-08 20:48:06.038838-04	\N	252000000	Your Adventure FULL - Pokémon Sun & Moon Opening	youtube
cH6NB2F-Jcw	2019-04-08 20:48:26.786216-04	2019-04-08 20:48:26.786216-04	\N	170000000	Miki Sayaka & Sakura Kyouko Character Song - And I	youtube
gr5Csep6yFM	2019-04-08 20:48:40.497123-04	2019-04-08 20:48:40.497123-04	\N	286000000	【Wowaka】Unknown Mother Goose - eng sub 【Hatsune Miku】	youtube
AvTH7J2shuI	2019-04-08 20:48:43.865099-04	2019-04-08 20:48:43.865099-04	\N	187000000	Hatsune Miku - "裏表ラバーズ(Two-Faced Lovers)" English Subbed	youtube
NIqm73xsias	2019-04-08 20:48:48.690572-04	2019-04-08 20:48:48.690572-04	\N	200000000	Hatsune Miku - Rolling Girl PV (English Subs)	youtube
gl1aHhXnN1k	2019-04-08 21:55:12.251989-04	2019-04-08 21:55:12.251989-04	\N	331000000	Ariana Grande - thank u, next	youtube
70M90PGJ_ms	2019-04-08 23:40:00.572434-04	2019-04-08 23:40:00.572434-04	\N	31000000	Mr. Sandman, Man Me A Sand	youtube
QOGEZy9kAh0	2019-04-08 23:41:48.392971-04	2019-04-08 23:41:48.392971-04	\N	99000000	Mr. Brightside but everybody's cumming	youtube
rzGdZ_kCmDc	2019-04-09 01:06:40.446606-04	2019-04-09 01:06:40.446606-04	\N	197000000	Childish Gambino - Parked Car ⁽ʳᵉᵐᵃᵏᵉ⁾	youtube
djV11Xbc914	2019-04-10 14:57:06.543377-04	2019-04-10 14:57:06.543377-04	\N	227000000	a-ha - Take On Me (Official Music Video)	youtube
mK0z1S8SwZc	2019-04-10 16:05:53.393323-04	2019-04-10 16:05:53.393323-04	\N	235000000	Mariah Carey - All I Want For Christmas Is You - Lyrics	youtube
aMDFhjpMTEY	2019-04-10 16:44:22.971337-04	2019-04-10 16:44:22.971337-04	\N	142000000	Undertale Mettaton EX Theme  Death By Glamour	youtube
w8TrcJVOKRc	2019-04-10 18:54:43.179003-04	2019-04-10 18:54:43.179003-04	\N	111000000	1, 2 Down Under	youtube
10AASlTCE2g	2019-04-10 18:55:03.94031-04	2019-04-10 18:55:03.94031-04	\N	134000000	1, 2 8-Bitmeal	youtube
ZMyHaJZJLm4	2019-04-10 19:12:31.649332-04	2019-04-10 19:12:31.649332-04	\N	67000000	[YTPMV] Toad Mania - BUP Heist (Special Stage)	youtube
yYoxSKdX5WY	2019-04-10 19:14:02.428589-04	2019-04-10 19:14:02.428589-04	\N	232000000	BUP Our Machine - Toad Games	youtube
XKecW7D1UPU	2019-04-10 19:14:15.375696-04	2019-04-10 19:14:15.375696-04	\N	54000000	Smash BUP - All BUP	youtube
U9FzgsF2T-s	2019-04-10 21:41:35.537924-04	2019-04-10 21:41:35.537924-04	\N	174000000	007 : James Bond : Theme	youtube
2ZUHlrir4Og	2019-04-10 21:50:50.843375-04	2019-04-10 21:50:50.843375-04	\N	213000000	incredibles theme song	youtube
mqzBv3FYpr0	2019-04-11 10:28:22.593783-04	2019-04-11 10:28:22.593783-04	\N	232000000	Undertale - Bonetrousle	youtube
uvT5SmfX0uc	2019-04-11 11:12:44.431152-04	2019-04-11 11:12:44.431152-04	\N	180000000	The Heat's On / Count Basie Orchestra Live in Tokyo 1985	youtube
VBTSoLzZ3-U	2019-04-11 11:12:56.017383-04	2019-04-11 11:12:56.017383-04	\N	214000000	Count Basie - Splanky	youtube
8FcWW-fMt90	2019-04-11 11:13:10.375527-04	2019-04-11 11:13:10.375527-04	\N	317000000	Count Basie - Corner Pocket	youtube
-0v0RJqpu0g	2019-04-11 11:13:18.909844-04	2019-04-11 11:13:18.909844-04	\N	356000000	Count Basie - In a Mellow Tone	youtube
uT_WRVzD3XI	2019-04-11 11:59:42.480263-04	2019-04-11 11:59:42.480263-04	\N	338000000	***Sing, Sang, Sung***	youtube
z9Qbs3i3w1g	2019-04-11 11:59:48.688135-04	2019-04-11 11:59:48.688135-04	\N	459000000	Big Phat Band: Count Bubba	youtube
FVxY-KmWsYY	2019-04-11 11:59:55.285781-04	2019-04-11 11:59:55.285781-04	\N	396000000	Count Bubba's Revenge - Gordon Goodwin	youtube
nr3pY_uaO98	2019-04-11 12:25:29.421896-04	2019-04-11 12:25:29.421896-04	\N	377000000	Hunting Wabbits - Gordon Goodwin's Big Phat Band	youtube
qVdgaSuAjII	2019-04-11 23:04:27.175007-04	2019-04-11 23:04:27.175007-04	\N	161000000	Beauty and The Beast - Gaston (HQ)	youtube
kmcpiM3SSOA	2019-04-11 23:06:07.990836-04	2019-04-11 23:06:07.990836-04	\N	20000000	Bernie sanders gonna cry? Gonna shit your pants maybe?	youtube
QpCrrCh7y-s	2019-04-11 23:06:41.740071-04	2019-04-11 23:06:41.740071-04	\N	14000000	HEY SO UM	youtube
dyPHwO_5Y28	2019-04-12 14:54:51.914172-04	2019-04-12 14:54:51.914172-04	\N	154000000	1, 2 RockeFeller Street	youtube
51L2GZiTOe4	2019-04-13 00:58:42.295809-04	2019-04-13 00:58:42.295809-04	\N	218000000	Needs More Cowbell Remix (3.5 min)	youtube
iFGc9vpN338	2019-04-13 11:16:16.813335-04	2019-04-13 11:16:16.813335-04	\N	173000000	U Got That | FULL VERSION [MMV]	youtube
lPyhlybViJw	2019-04-13 16:50:03.351351-04	2019-04-13 16:50:03.351351-04	\N	309000000	I Love Reshiram Married To Reshiram JustinRPG	youtube
YEiVn63Ue34	2019-04-13 17:35:53.452506-04	2019-04-13 17:35:53.452506-04	\N	271000000	Ken Ashcorp - Rival	youtube
9rSBmOgpcDE	2019-04-13 20:05:23.082325-04	2019-04-13 20:05:23.082325-04	\N	151000000	Letterkenny - Cold Open	youtube
2a3vWP9wv30	2019-04-14 13:15:30.96018-04	2019-04-14 13:15:30.96018-04	\N	291000000	【東方ボーカル】 「マヨナカトリップ」 【森羅万象】	youtube
mY5CpztTFn0	2019-04-14 13:21:10.196995-04	2019-04-14 13:21:10.196995-04	\N	348000000	Retrospective 53 Minutes - The Purest Sky and Sea	youtube
JTa_6FRahX0	2019-04-14 13:41:47.828229-04	2019-04-14 13:41:47.828229-04	\N	280000000	Retrospective 53 Minutes - Blue Sea of 53 Minutes	youtube
FyJenPdxD6E	2019-04-14 13:42:15.090056-04	2019-04-14 13:42:15.090056-04	\N	255000000	Retrospective 53 Minutes - Locked Girl ~ The Girl's Secret Room	youtube
H7zq8YdG9vk	2019-04-14 13:42:52.422505-04	2019-04-14 13:42:52.422505-04	\N	355000000	Retrospective 53 Minutes  - Gensokyo Millennium ~ History of the Moon	youtube
OoeUEDwzH-k	2019-04-14 13:43:15.390546-04	2019-04-14 13:43:15.390546-04	\N	262000000	Retrospective 53 Minutes - Reach for the Moon, Immortal Smoke	youtube
mDC-NDJKZFM	2019-04-14 14:41:49.486343-04	2019-04-14 14:41:49.486343-04	\N	171000000	NOOT NOOT that's the sound of da police [FULL]	youtube
rFB_Bq7NQsI	2019-04-14 14:43:27.229371-04	2019-04-14 14:43:27.229371-04	\N	293000000	Ghostly Field Club - Flower of Past Days ~ Fairy of Flower	youtube
ODjI_8I8fHI	2019-04-14 17:06:15.056716-04	2019-04-14 17:06:15.056716-04	\N	79000000	Nuthin But An Oatmeal	youtube
ULSVtP5X2aM	2019-04-14 17:10:22.488105-04	2019-04-14 17:10:22.488105-04	\N	236000000	Shuichi and Kaito and Kokichi and Miu (and Kaede)	youtube
J2fRCQoxf3w	2019-04-14 17:23:50.560876-04	2019-04-14 17:23:50.560876-04	\N	133000000	[YTP] Bruno's Uptown Rectal Cleansing Sing-along PSA	youtube
D54e_HEknD8	2019-04-14 17:39:43.977156-04	2019-04-14 17:39:43.977156-04	\N	7000000	Soulja Boy Gets Let Down	youtube
nu4evCnQ3Ek	2019-04-14 18:16:00.994258-04	2019-04-14 18:16:00.994258-04	\N	196000000	Luis Fonsi - Despacito 2 (ft. Kendrick Lamar, Soulja Boy and various)	youtube
OFnD8k-bZk8	2019-04-14 21:02:20.352038-04	2019-04-14 21:02:20.352038-04	\N	170000000	Momentum Mori (DLC Mix) - Crypt of the NecroDancer	youtube
A9DHASsTAk4	2019-04-14 21:03:12.272225-04	2019-04-14 21:03:12.272225-04	\N	211000000	Konga Conga Kappa (King Conga) (Beta Mix) - Crypt of the NecroDancer	youtube
xwurpnJbrKI	2019-04-14 21:03:40.392292-04	2019-04-14 21:03:40.392292-04	\N	113000000	Konga Conga Kappa (King Conga) (OST Version) - Crypt of the NecroDancer	youtube
fIfMOGUi98Y	2019-04-14 21:04:40.713649-04	2019-04-14 21:04:40.713649-04	\N	160000000	[PSYTP] OPPA GODDAMN STYLE	youtube
6zB6lvWLDXQ	2019-04-14 21:06:47.039446-04	2019-04-14 21:06:47.039446-04	\N	151000000	when Gaston was a lad he ate 4 doz. eggs every morning to help him get barge.	youtube
Zf4Dg2kyV90	2019-04-14 21:07:41.903514-04	2019-04-14 21:07:41.903514-04	\N	186000000	Gaston but all the rhymes are switched	youtube
VuJTqmpBnI0	2019-04-14 21:07:59.902617-04	2019-04-14 21:07:59.902617-04	\N	206000000	Beauty and the Beast - Gaston	youtube
gZiss7k74iI	2019-04-14 21:13:06.290446-04	2019-04-14 21:13:06.290446-04	\N	227000000	See You Again (Beta Mix) - Forza Horizon 2 Presents Fast & Furious	youtube
nQuRFspeF7I	2019-04-14 21:46:32.770749-04	2019-04-14 21:46:32.770749-04	\N	95000000	The Little Mermaid on Broadway OST - 04 - The World Above	youtube
LDU_Txk06tM	2019-04-14 22:30:17.026328-04	2019-04-14 22:30:17.026328-04	\N	192000000	Noisestorm - Crab Rave [Monstercat Release]	youtube
eAK6k7imKTc	2019-04-15 14:30:52.346264-04	2019-04-15 14:30:52.346264-04	\N	160000000	Snow Halation but nobody can sing on pitch and every "Todokete" is painfully boosted	youtube
SXY88esoO5A	2019-04-15 14:32:44.925012-04	2019-04-15 14:32:44.925012-04	\N	245000000	【東方ボーカル】 紫雲の彼方 【Yonder Voice】	youtube
MdBt56Dz1uo	2019-04-15 14:32:56.294875-04	2019-04-15 14:32:56.294875-04	\N	300000000	【東方ボーカル】 「祭り彩る」 【TUMENECO & GET IN THE RING】	youtube
nuMdaylAo_w	2019-04-15 14:35:44.640299-04	2019-04-15 14:35:44.640299-04	\N	288000000	Ghostly Field Club - Girls' Sealing Club	youtube
bOWhN0L00n0	2019-04-15 14:35:58.893023-04	2019-04-15 14:35:58.893023-04	\N	219000000	【東方ボーカル】 「HEART FELT」 【岸田教団&THE明星ロケッツ】	youtube
CQywfDeAMYI	2019-04-15 14:36:11.910986-04	2019-04-15 14:36:11.910986-04	\N	297000000	【東方ボーカル】 「アリスシンドローム」 【岸田教団&THE明星ロケッツ】	youtube
kIQ2jr6IaQw	2019-04-15 14:39:51.145741-04	2019-04-15 14:39:51.145741-04	\N	204000000	[Touhou Vocal] [Shoujo Fractal] The Justice Called “Innocence” (spanish & english subtitles)	youtube
BFQtUXJJU1I	2019-04-15 14:40:44.479521-04	2019-04-15 14:40:44.479521-04	\N	275000000	[Touhou Vocal] DiGiTAL WiNG ~ Faraway (Subbed)	youtube
wyp4KNAoIXs	2019-04-15 14:43:57.040481-04	2019-04-15 14:43:57.040481-04	\N	270000000	Dolls in Pseudo Paradise - The Strange Everyday Life of the Flying Shrine Maiden	youtube
gVoQlThWRmc	2019-04-15 14:45:58.417857-04	2019-04-15 14:45:58.417857-04	\N	367000000	[Touhou Vocal] 38BEETS ~ Cry (Subbed)	youtube
ujxqBkHU3Ps	2019-04-15 15:08:37.763012-04	2019-04-15 15:08:37.763012-04	\N	240000000	小峠 舞 (C-CLAYS) To the Limit [月時計　～ ルナ・ダイアル]	youtube
wGuxjeHyyjI	2019-04-15 15:09:13.662109-04	2019-04-15 15:09:13.662109-04	\N	258000000	【東方ボーカル】 Your Flavor 【Yonder Voice】	youtube
F97hkhLouZw	2019-04-15 15:10:44.18489-04	2019-04-15 15:10:44.18489-04	\N	226000000	Dolls in Pseudo Paradise - Dichromatic Lotus Butterfly ~ Red and White	youtube
4JxNKn6yDxQ	2019-04-15 15:11:27.777435-04	2019-04-15 15:11:27.777435-04	\N	244000000	Ghostly Field Club - Ancient Temple in the Netherworld	youtube
dSDOWSVuCR4	2019-04-15 15:18:48.444554-04	2019-04-15 15:18:48.444554-04	\N	259000000	House Set of Retrospective 53 Minutes: 04 - The Purest Sky and Sea	youtube
ptOl1B5yQuI	2019-04-15 15:20:11.770724-04	2019-04-15 15:20:11.770724-04	\N	247000000	【東方ボーカル】 「常世想兼神 feat.めらみぽっぷ」 【UNDEAD CORPORATION】	youtube
x0AGxZR-Uyo	2019-04-15 15:20:48.146563-04	2019-04-15 15:20:48.146563-04	\N	195000000	【東方ボーカル】 「からくれない feat.ランコ」 【UNDEAD CORPORATION】	youtube
aCSDiCxB0vw	2019-04-15 15:20:56.515297-04	2019-04-15 15:20:56.515297-04	\N	222000000	[東方 Metalcore/Traditional] UNDEAD CORPORATION - 夜啼く兎は夢を見る	youtube
Cmw1Px2bREA	2019-04-15 15:21:38.172631-04	2019-04-15 15:21:38.172631-04	\N	246000000	【東方ボーカル】 UNDEAD CORPORATION - 火車の叫ぶ夜に 【Subbed】	youtube
xVVKrDQr4-M	2019-04-15 15:31:53.129064-04	2019-04-15 15:31:53.129064-04	\N	324000000	Retrospective 53 Minutes - Bamboo Cutter Flight ~ Lunatic Princess	youtube
R6j_bsUGulo	2019-04-15 15:32:04.52665-04	2019-04-15 15:32:04.52665-04	\N	333000000	Ghostly Field Club - Strange Bird of the Moon, Illusion of Mysterious Cat	youtube
OPPpQhSTK8c	2019-04-15 15:32:15.072496-04	2019-04-15 15:32:15.072496-04	\N	236000000	Dolls in Pseudo Paradise - Forest of Dolls	youtube
RSe9uywBfB8	2019-04-15 15:37:40.43363-04	2019-04-15 15:37:40.43363-04	\N	17000000	Nintendo GameCube Startup (OMG Im so fast lol!!11!!!) - Console BIOS/Startup Fanfare	youtube
smboPZWLwaw	2019-04-15 15:38:15.52284-04	2019-04-15 15:38:15.52284-04	\N	319000000	[Touhou Vocal] [Yuuhei Satellite] Kafuka naru Gunjou he (spanish & english subtitles)	youtube
mt6sNqMdhFk	2019-04-15 15:39:03.060978-04	2019-04-15 15:39:03.060978-04	\N	241000000	【東方ボーカル】 「世紀末SOS」 【森羅万象】	youtube
VgjqLTHLgsI	2019-04-15 15:39:52.347149-04	2019-04-15 15:39:52.347149-04	\N	229000000	[Touhou Vocal] [Yuuhei Satellite] Anata ga Inai Yokaze (spanish & english subtitles)	youtube
x-fydys4Tm8	2019-04-15 15:47:06.53052-04	2019-04-15 15:47:06.53052-04	\N	213000000	[東方Vocal]アイリミテッド[幽閉サテライト]	youtube
cHPaKzPgFNo	2019-04-15 23:21:16.697093-04	2019-04-15 23:21:16.697093-04	\N	194000000	Lifelight at Ram Ranch	youtube
i0gZaBCR9EI	2019-04-15 23:59:35.642446-04	2019-04-15 23:59:35.642446-04	\N	229000000	1 2 Haferbrei	youtube
pjAy_YL-A1Q	2019-04-16 13:52:35.649594-04	2019-04-16 13:52:35.649594-04	\N	130000000	OISHII - ICE CREAM GROWS ON TREES	youtube
AKZd1zMxMlg	2019-04-16 13:52:42.086304-04	2019-04-16 13:52:42.086304-04	\N	172000000	OISHII - ONIGIRI FREEWAY	youtube
aFFUaDUJL5k	2019-04-16 14:33:37.564864-04	2019-04-16 14:33:37.564864-04	\N	330000000	Yuyoyuppe - Hidamari no Uta	youtube
QsL-k8nHiTw	2019-04-16 15:10:12.872142-04	2019-04-16 15:10:12.872142-04	\N	241000000	【東方Symphonic／Orchestral】 Flower of Past Days ~ Fairy of Flower 「Melodic Taste」	youtube
aWnEmSQtkeE	2019-04-16 15:10:27.907245-04	2019-04-16 15:10:27.907245-04	\N	292000000	【東方Piano】 The Capital City of Flowers in the Sky 「Marasy」	youtube
AHKsIk7lZOM	2019-04-16 15:13:31.896937-04	2019-04-16 15:13:31.896937-04	\N	215000000	【東方Piano】 September Pumpkin 「Marasy」	youtube
cNBOV8q1o1Q	2019-04-16 15:13:40.208502-04	2019-04-16 15:13:40.208502-04	\N	257000000	【東方Piano】 U.N. Owen Was Her? 「Marasy」	youtube
dH403cLzzLA	2019-04-16 15:13:54.829242-04	2019-04-16 15:13:54.829242-04	\N	175000000	【東方Piano】 The Frozen Eternal Capital 「Marasy」	youtube
tXsqImRzm80	2019-04-16 21:59:37.432425-04	2019-04-16 21:59:37.432425-04	\N	241000000	東山奈央 「灯火のまにまに（ＴＶアニメ「かくりよの宿飯」OPテーマ）」Music Video(2Chorus)	youtube
Q2meWkWqc-I	2019-04-16 22:00:02.100575-04	2019-04-16 22:00:02.100575-04	\N	309000000	【和楽器バンド】天樂 Tengaku 【VOCALOID】	youtube
U56zz7JnY8Y	2019-04-16 23:37:20.361786-04	2019-04-16 23:37:20.361786-04	\N	168000000	【東方Piano】 Second Hometown 「BUTAOTOME」	youtube
zG325qCKH9o	2019-04-16 23:56:53.87948-04	2019-04-16 23:56:53.87948-04	\N	276000000	Pure Furies ~ Whereabouts of the Heart || Metal Cover by RichaadEB	youtube
J2juAnAP-X8	2019-04-16 23:57:09.21171-04	2019-04-16 23:57:09.21171-04	\N	245000000	【東方 ☯ Instrumental】 House Set of LoLK - The Sea Where The Home Planet is Reflected	youtube
6keA0WLGYhs	2019-04-16 23:57:57.458381-04	2019-04-16 23:57:57.458381-04	\N	164000000	【Touhou Orchestra】 The Sea Where the Home Planet is Reflected	youtube
m7H-tStJPlI	2019-04-17 00:03:03.235462-04	2019-04-17 00:03:03.235462-04	\N	280000000	【東方Orchestral／Epic】 東方緋想天 「Melodic Taste」	youtube
63W5osDbduo	2019-04-17 00:10:37.667802-04	2019-04-17 00:10:37.667802-04	\N	258000000	【東方ボーカル】 「Call four name」 【TUMENECO VS GET IN THE RING】	youtube
kbOjQqD7CUc	2019-04-17 00:11:14.954528-04	2019-04-17 00:11:14.954528-04	\N	238000000	【東方Vocal／Drum & Bass】 Reside 「Amateras Records」	youtube
tdd3MiqejTE	2019-04-17 00:13:12.559442-04	2019-04-17 00:13:12.559442-04	\N	231000000	【東方Vocal／Rock】 グーテンベルクの科学世紀 「minimum electric design」	youtube
OKkVsbaIEag	2019-04-17 00:14:23.686931-04	2019-04-17 00:14:23.686931-04	\N	261000000	【東方Vocal／Metal】 FLASHBACK 「SOUND HOLIC」	youtube
n0jbvJjTXPw	2019-04-17 00:24:26.969504-04	2019-04-17 00:24:26.969504-04	\N	224000000	Alice in Wonderland - Mystic Square	youtube
v_iMvf1Djmw	2019-04-17 18:36:20.702474-04	2019-04-17 18:36:20.702474-04	\N	175000000	【Hatsune Miku & Gumi English】ASSGORE (Fingerfückung)【VOCALOID Cover】	youtube
9Gj47G2e1Jc	2019-04-17 20:03:08.412323-04	2019-04-17 20:03:08.412323-04	\N	477000000	Mariya Takeuchi Plastic Love  竹内 まりや	youtube
L_XJ_s5IsQc	2019-04-17 20:57:21.161036-04	2019-04-17 20:57:21.161036-04	\N	643000000	Snarky Puppy - Lingus (We Like It Here)	youtube
gQ99OMlI5cg	2019-04-17 20:57:31.984473-04	2019-04-17 20:57:31.984473-04	\N	590000000	Snarky Puppy - Binky (groundUP)	youtube
mg2cMqW_hOY	2019-04-17 20:57:50.277646-04	2019-04-17 20:57:50.277646-04	\N	334000000	Snarky Puppy - Jambone (We Like It Here)	youtube
Zv4vVI5j2XA	2019-04-17 23:50:54.718853-04	2019-04-17 23:50:54.718853-04	\N	211000000	JinnyOops!／錆びれた希望   rusted hope	youtube
rpp9gncnSM4	2019-04-18 00:41:29.983638-04	2019-04-18 00:41:29.983638-04	\N	293000000	【東方ボーカル】 「M other」 【森羅万象】	youtube
oCwjnyrfudY	2019-04-18 18:45:11.203032-04	2019-04-18 18:45:11.203032-04	\N	299000000	Tiësto & Oliver Heldens - Wombass [OUT NOW]	youtube
7IwYakbxmxo	2019-04-19 14:58:50.473608-04	2019-04-19 14:58:50.473608-04	\N	214000000	CBT: The Full Experience	youtube
GM-e46xdcUo	2019-04-19 15:09:14.827373-04	2019-04-19 15:09:14.827373-04	\N	47000000	jonathan frakes telling you you're wrong for 47 seconds	youtube
VTEFhNwRf6Y	2019-04-21 19:54:33.06198-04	2019-04-21 19:54:33.06198-04	\N	229000000	【IA】 からくりピエロ 【VOCALOIDカバー】　ギガーP remix	youtube
8YlR5nosEME	2019-04-21 20:22:53.996626-04	2019-04-21 20:22:53.996626-04	\N	265000000	UVERworld - Touch off (Official Music VIdeo)	youtube
hjVJhsyNI8A	2019-04-21 21:45:21.153411-04	2019-04-21 21:45:21.153411-04	\N	290000000	Lite Show Magic - Crack Traxxxx (Exxxxtend Mixxxx)	youtube
6U7Zwq1IzNU	2019-04-22 18:49:12.55004-04	2019-04-22 18:49:12.55004-04	\N	251000000	Toad Sings Jump Up, Super Star from Super Mario Odyssey (RIP MY VOICE!)	youtube
Kjz-_hTpgLU	2019-04-16 15:28:21.019318-04	2019-04-16 15:28:21.019318-04	\N	311000000	【東方Piano】 Pure Furies ~ Whereabouts of the Heart 「Marasy」	youtube
vmg5guUF35E	2019-04-16 15:31:05.545556-04	2019-04-16 15:31:05.545556-04	\N	248000000	【東方Piano】 Bamboo Forest of the Sleeping Moon 「Marasy」	youtube
9aq5W7SDIQE	2019-04-16 15:35:15.369219-04	2019-04-16 15:35:15.369219-04	\N	269000000	【東方Piano】 Alice in Wonderland 「Marasy」	youtube
-hRa1Cc7YY0	2019-04-16 15:35:42.903816-04	2019-04-16 15:35:42.903816-04	\N	265000000	【東方Piano】 Fantasy Satellite 「BUTAOTOME」	youtube
e3wxoliCE8o	2019-04-16 17:20:05.453119-04	2019-04-16 17:20:05.453119-04	\N	271000000	【東方Piano】 Echoed Bonds 「BUTAOTOME」	youtube
DyDfgMOUjCI	2019-04-16 19:58:24.225998-04	2019-04-16 19:58:24.225998-04	\N	206000000	Billie Eilish - bad guy	youtube
7dSo5cT7JJg	2019-04-16 23:35:22.468115-04	2019-04-16 23:35:22.468115-04	\N	349000000	Demetori - The Maid and the Pocket Watch of Blood	youtube
k5_ndu6OLj0	2019-04-16 23:36:02.800789-04	2019-04-16 23:36:02.800789-04	\N	237000000	Demetori -  Lunar Clock ~ Luna Dial	youtube
_BVYctWjfnM	2019-04-16 23:36:42.902031-04	2019-04-16 23:36:42.902031-04	\N	296000000	Retrospective 53 Minutes - Legend of Aokigahara	youtube
pU2y5FZiDRM	2019-04-16 23:51:51.109138-04	2019-04-16 23:51:51.109138-04	\N	294000000	Magical Astronomy - Welcome to the Moon Tour	youtube
pQMLgvFwcV8	2019-04-16 23:52:02.951186-04	2019-04-16 23:52:02.951186-04	\N	231000000	Magical Astronomy - The Far Side of the Moon	youtube
IsJWRY2esis	2019-04-16 23:52:38.41947-04	2019-04-16 23:52:38.41947-04	\N	163000000	[Music Box] The Sea Where One's Home Planet Reflects	youtube
dbSeAm6DrBc	2019-04-16 23:58:24.901617-04	2019-04-16 23:58:24.901617-04	\N	242000000	【Touhou Orchestra】 Kobito of the Shining Needle ~ Little Princess	youtube
I-umwrq4vDk	2019-04-17 00:04:57.21873-04	2019-04-17 00:04:57.21873-04	\N	246000000	【東方Vocal／Rock】 夢は現 「SYNC.ART'S」	youtube
vlWdloGX2cE	2019-04-17 00:05:10.033309-04	2019-04-17 00:05:10.033309-04	\N	323000000	【東方Vocal／Rock】 汎用合成クラスメイト：宇佐見05号 「凋叶棕」【Subtitle】	youtube
K86ymmvsRHo	2019-04-17 00:11:59.689033-04	2019-04-17 00:11:59.689033-04	\N	267000000	【東方Vocal／Trance】 Alleged Dance 「舞音KAGURA」	youtube
f0p_wDT4s-A	2019-04-17 00:12:38.512321-04	2019-04-17 00:12:38.512321-04	\N	339000000	【東方Vocal／Rock】 ナイトフライ 「Hachimitsu-Lemon × Aftergrow」	youtube
Ka-DAJ-fMR8	2019-04-17 00:12:53.845642-04	2019-04-17 00:12:53.845642-04	\N	331000000	【東方Vocal／Rock】 Brandnew Overture 「GET IN THE RING」	youtube
DFS3U2hJAi8	2019-04-17 00:14:18.507022-04	2019-04-17 00:14:18.507022-04	\N	245000000	【東方Vocal／Traditional Rock】 冥きゆめみし 「SOUND HOLIC」	youtube
EKUuW7eznM8	2019-04-17 00:15:28.22065-04	2019-04-17 00:15:28.22065-04	\N	228000000	【東方Piano】 Greenwich in the Sky 「Marasy」	youtube
FIn9rZIsDGk	2019-04-17 00:16:06.58819-04	2019-04-17 00:16:06.58819-04	\N	331000000	【東方Instrumental／Classical】 咲ヤ散ルノ？ 「TAMUSIC」	youtube
MOMFpT-b2Po	2019-04-17 00:22:51.853823-04	2019-04-17 00:22:51.853823-04	\N	187000000	【Touhou Orchestra 2】 Catastrophe in Bhava-agra ~ Wonderful Heaven	youtube
KR_4Xubds7w	2019-04-17 00:23:13.633668-04	2019-04-17 00:23:13.633668-04	\N	250000000	Tenshi's Theme - Wonderful Heaven	youtube
UnBBX86qV98	2019-04-17 00:24:49.301079-04	2019-04-17 00:24:49.301079-04	\N	190000000	UNL - Alice Margatroid's Theme - The Grimoire of Alice	youtube
l7B7bNluFw0	2019-04-17 00:25:06.056454-04	2019-04-17 00:25:06.056454-04	\N	166000000	UNL - Patchouli Knowledge's Theme - Voile, the Magic Library	youtube
JpCyeo_kNA0	2019-04-17 06:53:05.808996-04	2019-04-17 06:53:05.808996-04	\N	261000000	UNISON SQUARE GARDEN「シュガーソングとビターステップ」LIVE MUSIC VIDEO	youtube
PIIqeQroP6g	2019-04-17 18:36:37.696828-04	2019-04-17 18:36:37.696828-04	\N	244000000	【東方ボーカル】 「Oblivion」 【FELT】	youtube
dlFA0Zq1k2A	2019-04-17 19:39:26.77036-04	2019-04-17 19:39:26.77036-04	\N	265000000	Kana-Boon - Silhouette (Official Music Video)	youtube
kk0WRHV_vt8	2019-04-17 20:57:26.945245-04	2019-04-17 20:57:26.945245-04	\N	412000000	Snarky Puppy - Shofukan (We Like It Here)	youtube
4Qo1NFwMhBA	2019-04-17 20:57:45.762998-04	2019-04-17 20:57:45.762998-04	\N	420000000	Snarky Puppy - Outlier (We Like It Here)	youtube
h6DNdop6pD8	2019-04-18 00:34:59.828158-04	2019-04-18 00:34:59.828158-04	\N	57000000	i turned a bad copypasta into a bad rap	youtube
h4famYiYdc4	2019-04-18 00:45:32.950609-04	2019-04-18 00:45:32.950609-04	\N	296000000	【東方Vocal／Rock Ballad】 Golden Melancholy 「GET IN THE RING」	youtube
rzBdT0_xvSo	2019-04-18 00:57:46.680503-04	2019-04-18 00:57:46.680503-04	\N	85000000	[BASS BOOSTED] whomst.mp4	youtube
0C6T8F8rnQ0	2019-04-18 01:52:33.893385-04	2019-04-18 01:52:33.893385-04	\N	283000000	Persona 5 the Animation『 ペルソナ5』OP / Opening Full - "Break In To Break Out" by Lyn	youtube
0jm8nnHqx80	2019-04-18 01:52:46.696647-04	2019-04-18 01:52:46.696647-04	\N	95000000	Persona 5 - Opening Cinematic	youtube
WZU2PDO33IU	2019-04-19 15:12:07.348111-04	2019-04-19 15:12:07.348111-04	\N	209000000	Bring Donkey Kong To Life (Evanescence + DK Rap MASHUP)	youtube
KVU-12LOyms	2019-04-19 15:13:56.424238-04	2019-04-19 15:13:56.424238-04	\N	233000000	Neon Genesis Expandelidong (Neon Genesis Evangelion & Donkey Kong Mashup)	youtube
_s3WZVWkT5Q	2019-04-19 15:24:51.397105-04	2019-04-19 15:24:51.397105-04	\N	138000000	Megalovania 2 - Undertale 2	youtube
nbTA-pVntzw	2019-04-19 15:28:04.085081-04	2019-04-19 15:28:04.085081-04	\N	52000000	Seinfeld Theme	youtube
_lkcNwpQLfk	2019-04-19 15:28:14.93817-04	2019-04-19 15:28:14.93817-04	\N	78000000	1 2 D. R. E. (1 2 Oatmeal Remix)	youtube
hAmb7Td-lEw	2019-04-19 15:29:18.34158-04	2019-04-19 15:29:18.34158-04	\N	161000000	Tainted Love but the clapping is replaced with the Law & Order sound effect	youtube
qurz9oK-ruQ	2019-04-19 19:18:01.01937-04	2019-04-19 19:18:01.01937-04	\N	314000000	かめりあ (Camellia) - Enantiomorphs	youtube
4HXCM3mmgto	2019-04-19 19:22:23.566536-04	2019-04-19 19:22:23.566536-04	\N	389000000	「Dubcore」かめりあ - Feelin Sky (Camellia's ''200step'' Self-remix)	youtube
8uU1FZH9MQs	2019-04-20 00:33:43.683164-04	2019-04-20 00:33:43.683164-04	\N	225000000	Welcome to osu!	youtube
M4kf2IozD3w	2019-04-22 18:48:15.997863-04	2019-04-22 18:48:15.997863-04	\N	51000000	Toad sings - Jump up, SuperStar from Super Mario Odyssey	youtube
xeqHBjKlbrQ	2019-04-23 00:22:37.071002-04	2019-04-23 00:22:37.071002-04	\N	169000000	Gaston but it's opposite day	youtube
R6PrN4ygD58	2019-04-23 00:28:30.105662-04	2019-04-23 00:28:30.105662-04	\N	215000000	You Don't Send Me Penis Growth Pill Emails Anymore	youtube
0mxpCgVE_4c	2019-04-27 02:33:07.612235-04	2019-04-27 02:33:07.612235-04	\N	330000000	【東方ニコカラ】WARNING!	youtube
gVKVu6FM4mo	2019-04-27 02:44:24.262731-04	2019-04-27 02:44:24.262731-04	\N	312000000	Initial D Fifth Stage OST - Wheelpower & Go!	youtube
AfLLzxYROF4	2019-04-27 16:40:02.544249-04	2019-04-27 16:40:02.544249-04	\N	289000000	Let Me Hit It (Audiostalkers Original Mix)	youtube
JXfayoatJUM	2019-04-27 16:43:55.640126-04	2019-04-27 16:43:55.640126-04	\N	193000000	1, 2, Goofy Goober	youtube
X2s7HEBUkBg	2019-04-27 16:46:12.292124-04	2019-04-27 16:46:12.292124-04	\N	123000000	Lil Nas X - Old Town Road (Lyrics)	youtube
wVT7sHpoy-g	2019-04-27 16:49:27.060823-04	2019-04-27 16:49:27.060823-04	\N	95000000	Megalovania Sung by Pokemon	youtube
sCRYqc4P95M	2019-04-27 16:49:41.722377-04	2019-04-27 16:49:41.722377-04	\N	61000000	Sponge Boi Me Bob	youtube
cVnGvPIBzxQ	2019-04-27 16:50:37.171084-04	2019-04-27 16:50:37.171084-04	\N	225000000	Through Juniper Vale - The Last Time (I the AI Remix) (Official Audio)	youtube
297FtPhwlpA	2019-04-27 16:58:22.200211-04	2019-04-27 16:58:22.200211-04	\N	900000000	Krusty Ketamine	youtube
UF8x0Y_5QO0	2019-04-27 16:58:47.777798-04	2019-04-27 16:58:47.777798-04	\N	115000000	Kanye West & Lil Pump - "I LOVE IT" MINECRAFT PARODY	youtube
9QTJNiX2uig	2019-04-27 17:10:47.651167-04	2019-04-27 17:10:47.651167-04	\N	179000000	Eminem - Love The Way You Lie About Spaghetti	youtube
V263ad2e2uk	2019-04-27 18:07:55.212857-04	2019-04-27 18:07:55.212857-04	\N	68000000	National Bruh Moment Alert:	youtube
sN8_Knxtg_M	2019-04-28 01:41:51.902292-04	2019-04-28 01:41:51.902292-04	\N	155000000	01. カワウソイヤァ	youtube
jIub0OL1DRY	2019-04-28 01:42:33.518522-04	2019-04-28 01:42:33.518522-04	\N	277000000	Sarazanmai no Uta - Lyrics (English and Romaji) さらざんまいのうた(歌詞)	youtube
mOskZGns-Wg	2019-04-28 01:43:44.674499-04	2019-04-28 01:43:44.674499-04	\N	277000000	Sarazanmai ED - Stand by me / the peggies [Full]	youtube
-Ar7Xgsoojg	2019-04-28 02:12:11.414382-04	2019-04-28 02:12:11.414382-04	\N	284000000	SawanoHiroyuki[nZk]:Uru - Binary Star (LoGH: Die Neue These OP)	youtube
uE-1RPDqJAY	2019-04-28 18:33:40.057679-04	2019-04-28 18:33:40.057679-04	\N	130000000	taking the hobbits to isengard	youtube
ihMMw0rnKz4	2019-04-28 18:35:35.257974-04	2019-04-28 18:35:35.257974-04	\N	77000000	Mashed Taters ♫	youtube
VBJDtcJonS4	2019-04-28 23:27:11.090308-04	2019-04-28 23:27:11.090308-04	\N	202000000	Moto Moto - Big and Chunky (full song) (BASS BOOSTED)	youtube
q5-cZIpldFk	2019-04-28 23:34:42.495813-04	2019-04-28 23:34:42.495813-04	\N	26000000	Yoshi.mp4	youtube
Ngpf6UtPn4k	2019-04-28 23:41:55.599265-04	2019-04-28 23:41:55.599265-04	\N	293000000	sweet dreams but i put kahoot music over it	youtube
9VnMfkw_zX0	2019-04-29 01:03:08.076596-04	2019-04-29 01:03:08.076596-04	\N	429000000	東方 Touhou Makina arrange #175: Old world RMX	youtube
Y4n35CfxGoI	2019-04-29 01:32:01.769373-04	2019-04-29 01:32:01.769373-04	\N	249000000	【東方Vocal／Trance】 Accelerate 「Amateras Records」	youtube
E1ChORs9miA	2019-04-29 01:54:45.978886-04	2019-04-29 01:54:45.978886-04	\N	154000000	Cinderella Story	youtube
l7I7a19aj9g	2019-04-29 01:58:38.326275-04	2019-04-29 01:58:38.326275-04	\N	200000000	【東方Vocal】 38beets ~ ...月まで届けこの想い	youtube
tGSnW2bK2cY	2019-04-29 02:13:53.526196-04	2019-04-29 02:13:53.526196-04	\N	226000000	【UNDEAD CORPORATION】The Dream Of A Rabbit Singing In The Night【Subbed】	youtube
jgW7w-SCnAs	2019-04-29 02:16:53.415446-04	2019-04-29 02:16:53.415446-04	\N	316000000	Camellia ft. Nanahira - Bassline Yatteru? w | Can I Friend You On Bassbook ? Lol	youtube
oR_iQomHOZQ	2019-04-29 02:17:09.184778-04	2019-04-29 02:17:09.184778-04	\N	166000000	Set It Off - Kill The Lights (Lyric Video)	youtube
hJinsn3spBw	2019-04-29 02:24:41.835959-04	2019-04-29 02:24:41.835959-04	\N	359000000	【東方Chillout】 If Your Eyes Are Jade Colour 「Echoes Construction」	youtube
xzEoAF4O7-c	2019-04-29 02:52:20.695932-04	2019-04-29 02:52:20.695932-04	\N	271000000	【東方ボーカル】 「signal flare feat.あよ」 【森羅万象】 【Subbed】	youtube
SxaS9KWCBNw	2019-04-29 02:59:02.866455-04	2019-04-29 02:59:02.866455-04	\N	294000000	【東方Vocal／Shibuya-kei】 Tick-Tock Anthology 「Fuling Cat Mark」	youtube
UjqjMZV5WLA	2019-04-29 18:17:17.565196-04	2019-04-29 18:17:17.565196-04	\N	90000000	Bloody stream but the song doesn't start	youtube
Va-Kh6YrtRk	2019-04-29 18:22:11.482373-04	2019-04-29 18:22:11.482373-04	\N	111000000	Despacito Act 1 - Luis Fonsi & Sonic Mania Ost ft. Daddy Yankee | RaveDJ	youtube
OE0tqQWsNJA	2019-04-29 18:25:16.922147-04	2019-04-29 18:25:16.922147-04	\N	13000000	Yoshi.mp4 (Secret Scrapped Version) *Volume Warning!*	youtube
A1C_ualkEzw	2019-04-29 18:26:33.22908-04	2019-04-29 18:26:33.22908-04	\N	112000000	Anime Character Analysis: Bling Bling Boy	youtube
m9nlOXaHWYQ	2019-04-29 18:30:37.48158-04	2019-04-29 18:30:37.48158-04	\N	326000000	Top 10 Best Pokémon (Official)	youtube
bL9xBW2V2uE	2019-04-29 18:32:19.280843-04	2019-04-29 18:32:19.280843-04	\N	209000000	KK Slider - thank u, next (Ariana Grande)	youtube
nOCgjuu0xeA	2019-04-29 18:42:12.86843-04	2019-04-29 18:42:12.86843-04	\N	25000000	Country Roads Let's-a-go (Better version)	youtube
JDCB3_k-RBY	2019-04-29 18:47:49.125806-04	2019-04-29 18:47:49.125806-04	\N	80000000	Hypnospace Outlaw - Granny Cream's Hot Butter Ice Cream [Loop]	youtube
a4VvRWTD3Ok	2019-04-29 19:52:40.859312-04	2019-04-29 19:52:40.859312-04	\N	262000000	Noot Noot Compilation - Complete	youtube
lo0FgnVuKuY	2019-04-30 14:13:11.79151-04	2019-04-30 14:13:11.79151-04	\N	58000000	24 Kramer Magic	youtube
_b7GXWXzp3g	2019-04-30 14:51:11.668581-04	2019-04-30 14:51:11.668581-04	\N	47000000	Mario Kart 64 Voices Autotuned	youtube
IKKpP9Ooc9U	2019-04-30 15:01:41.145917-04	2019-04-30 15:01:41.145917-04	\N	19000000	Shrek but only when Lord Farquaad says "E"	youtube
856x2xIpoZM	2019-04-30 15:02:02.100209-04	2019-04-30 15:02:02.100209-04	\N	225000000	Bottoms Upalovania (Full Version) (Megalovania)	youtube
bFYp7fu1R1I	2019-04-30 15:05:45.131675-04	2019-04-30 15:05:45.131675-04	\N	198000000	Dr. Monster: The Andrewoids | LilDeuceDeuce	youtube
qZ8PHVOhJpc	2019-04-30 15:07:30.294709-04	2019-04-30 15:07:30.294709-04	\N	193000000	Moto Moto Big and chunky bass boosted	youtube
Dh2Lky730q0	2019-04-30 15:29:50.922894-04	2019-04-30 15:29:50.922894-04	\N	163000000	Mona Lisa - [AUDIO ONLY]	youtube
zNKCluucZUw	2019-04-30 15:40:29.312006-04	2019-04-30 15:40:29.312006-04	\N	149000000	We Are Number One But Sung By Pokemon [Remake]	youtube
hXDbrf9Zio0	2019-04-30 16:04:52.487895-04	2019-04-30 16:04:52.487895-04	\N	24000000	Granny Cream's Hot Butter Ice Cream - Hypnospace Outlaw	youtube
8MLDT5-ZgN0	2019-04-30 22:28:32.664708-04	2019-04-30 22:28:32.664708-04	\N	245000000	Steamed Hams But It's The Confrontation From Les Misérables	youtube
9zI-_Pzgllo	2019-04-30 23:34:30.136032-04	2019-04-30 23:34:30.136032-04	\N	223000000	Becca - I'm ALIVE! Music Video - Black Butler Closing Song	youtube
PhPoGqC_LPo	2019-04-30 23:52:03.735735-04	2019-04-30 23:52:03.735735-04	\N	194000000	Becca - I'm Alive	youtube
4-PkAQcuZOw	2019-05-01 01:13:58.638124-04	2019-05-01 01:13:58.638124-04	\N	204000000	Lain opening [Full]	youtube
Tmevx9MXo7s	2019-05-01 13:01:41.580805-04	2019-05-01 13:01:41.580805-04	\N	170000000	This is Circulation	youtube
77qmxuY66pQ	2019-05-01 23:26:32.730884-04	2019-05-01 23:26:32.730884-04	\N	255000000	【東方ボーカル】 「Shake your Heart」 【Crest】	youtube
Yk2TefymLSQ	2019-05-02 03:00:16.903843-04	2019-05-02 03:00:16.903843-04	\N	334000000	Anderson - Kabaivanska - Pavarotti - Milnes - Boheme quartet	youtube
XuYF-EnpLpc	2019-05-02 03:01:17.020679-04	2019-05-02 03:01:17.020679-04	\N	216000000	Les Miserables - One Day More	youtube
8cn08-zDoEo	2019-05-02 03:04:11.91867-04	2019-05-02 03:04:11.91867-04	\N	296000000	The Little Mermaid on Broadway OST - 25 - If Only (Quartet)	youtube
_isL0E-4TsQ	2019-05-02 03:10:39.610028-04	2019-05-02 03:10:39.610028-04	\N	266000000	MONTERVERDI: L'incoronazione di Poppea "Pur ti miro, Pur ti godo" (Jaroussky, De Niese)	youtube
BQ1ZwqaXJaQ	2019-05-02 03:11:26.095153-04	2019-05-02 03:11:26.095153-04	\N	302000000	The World Was Wide Enough	youtube
MvHmzJnmc5o	2019-05-02 03:17:48.552573-04	2019-05-02 03:17:48.552573-04	\N	130000000	Kwang-Ho Hong홍광호-Dulcinea(Man of La Mancha)	youtube
rrI7tOhoVzA	2019-05-02 03:17:59.640488-04	2019-05-02 03:17:59.640488-04	\N	194000000	뮤지컬 데스노트 MV_Death Note(홍광호)	youtube
ZaNoYIzWotA	2019-05-02 03:18:22.837921-04	2019-05-02 03:18:22.837921-04	\N	210000000	This is The Moment - Jekyll And Hyde (Korean Version : 홍광호)	youtube
uiehpblOTh0	2019-05-02 03:20:09.964912-04	2019-05-02 03:20:09.964912-04	\N	197000000	Death Note Musical - Stalemate (L, Light, Misa) LYRICS	youtube
VDowtcyVHCI	2019-05-02 03:20:22.59541-04	2019-05-02 03:20:22.59541-04	\N	194000000	Death Note Musical - Playing His Game (L & Light) LYRICS	youtube
bFNAKvNY33w	2019-05-02 03:30:37.723969-04	2019-05-02 03:30:37.723969-04	\N	156000000	2017 뮤지컬 '데스노트(Death Note)' MV_'They're Only Human(불쌍한 인간)' 박혜나, 강홍석	youtube
FsWqMzHN5EQ	2019-05-02 10:10:36.256779-04	2019-05-02 10:10:36.256779-04	\N	222000000	Hellfire	youtube
AnI9Gh_ENMQ	2019-05-02 10:27:14.250806-04	2019-05-02 10:27:14.250806-04	\N	250000000	"Gethsemane"　 Naoto Kaiho	youtube
hDxSwzHeT9k	2019-05-02 10:28:56.746649-04	2019-05-02 10:28:56.746649-04	\N	504000000	Kim's Nightmare (Live)	youtube
kdHExJzvSoU	2019-05-02 10:43:44.743268-04	2019-05-02 10:43:44.743268-04	\N	154000000	Chris Pine, Billy Magnussen - Agony (From “Into the Woods”) (Audio)	youtube
ePuy539e7lk	2019-05-02 14:51:13.162115-04	2019-05-02 14:51:13.162115-04	\N	262000000	Luna Haruna - Ai Wo Utae	youtube
jXtpiEaQKcc	2019-05-02 15:56:19.322091-04	2019-05-02 15:56:19.322091-04	\N	387000000	16.The Real Group - Count Basie Medley	youtube
6ehtacwtVVE	2019-05-02 16:04:05.996113-04	2019-05-02 16:04:05.996113-04	\N	291000000	Count Basie - Lil' Darlin'	youtube
wCmcoZktZG4	2019-05-02 16:04:34.457105-04	2019-05-02 16:04:34.457105-04	\N	229000000	Count Basie - April In Paris	youtube
g3JyQnYPkZk	2019-05-02 16:04:39.739287-04	2019-05-02 16:04:39.739287-04	\N	179000000	One O'Clock Jump - Count Basie	youtube
EPwe8rqaZVw	2019-05-02 16:05:36.095488-04	2019-05-02 16:05:36.095488-04	\N	194000000	Buddy Rich: Bugle Call Rag - 1982	youtube
PZCvG1vJ3z0	2019-05-02 16:05:42.135256-04	2019-05-02 16:05:42.135256-04	\N	222000000	Buddy Rich: Time Check	youtube
r2S1I_ien6A	2019-05-02 16:05:49.25053-04	2019-05-02 16:05:49.25053-04	\N	323000000	"SING, SING, SING" BY BENNY GOODMAN	youtube
TRJWFj7EXu8	2019-05-02 16:06:45.644417-04	2019-05-02 16:06:45.644417-04	\N	275000000	Buddy Rich    Love for Sale	youtube
GAo23adQHYU	2019-05-02 16:07:48.531482-04	2019-05-02 16:07:48.531482-04	\N	504000000	Louie Bellson - Concord Blues for Blue.wmv	youtube
y9GOnXlwtUU	2019-05-02 20:43:12.201934-04	2019-05-02 20:43:12.201934-04	\N	301000000	ワン・デイ・モア　　One Day More　「レ・ミゼラブル」より	youtube
v0f4RetWmeQ	2019-05-03 16:29:48.801541-04	2019-05-03 16:29:48.801541-04	\N	61000000	Scooby-Doo, Where Are You! but it's sung by the DK Rap (DK said Trans Rights!)	youtube
RcP91tQ4ZSM	2019-05-03 17:42:15.422317-04	2019-05-03 17:42:15.422317-04	\N	192000000	Donkey Kong Rap	youtube
cb3XdH78Jb4	2019-05-03 20:08:40.97188-04	2019-05-03 20:08:40.97188-04	\N	444000000	Undertale Genocide Package - Megalovania	youtube
F6NnGEzQpPQ	2019-05-03 21:59:13.382747-04	2019-05-03 21:59:13.382747-04	\N	193000000	succducc - me & u	youtube
Sa-ATmMz7zE	2019-05-04 13:16:22.337252-04	2019-05-04 13:16:22.337252-04	\N	360000000	【東方Vocalアレンジ】鬼哭慟哭地獄楽 - Halozy	youtube
onjPLuZp6hY	2019-05-04 19:45:40.071439-04	2019-05-04 19:45:40.071439-04	\N	253000000	ERA - Ameno (Official Music Video)	youtube
BGQmmDEDYiI	2019-05-05 12:55:02.40272-04	2019-05-05 12:55:02.40272-04	\N	254000000	Jim's Big Ego - Stress	youtube
tdfq2aYeJgo	2019-05-05 19:08:19.096909-04	2019-05-05 19:08:19.096909-04	\N	146000000	Error	youtube
jqK9HiUYxGE	2019-05-05 19:15:25.062561-04	2019-05-05 19:15:25.062561-04	\N	266000000	Bust A Move	youtube
zhIScvlFn2w	2019-05-05 19:30:53.008804-04	2019-05-05 19:30:53.008804-04	\N	174000000	Soda City Funk	youtube
dgeLtFO3J0s	2019-05-05 22:47:30.047117-04	2019-05-05 22:47:30.047117-04	\N	261000000	New Game - Just Shapes & Beats	youtube
uelHwf8o7_U	2019-05-06 00:13:47.553103-04	2019-05-06 00:13:47.553103-04	\N	267000000	Eminem - Love The Way You Lie ft. Rihanna	youtube
j9FDG1e0UtI	2019-05-06 00:24:44.058946-04	2019-05-06 00:24:44.058946-04	\N	81000000	Super mario 64 megalovania	youtube
4WgWGcED0JQ	2019-05-06 01:48:23.874183-04	2019-05-06 01:48:23.874183-04	\N	258000000	One Republic - Counting Stars	youtube
Q4QIfO4SRtM	2019-05-07 16:30:06.043058-04	2019-05-07 16:30:06.043058-04	\N	440000000	“Sicko Mode” but the beat never drops	youtube
IV52ZYmFU5Y	2019-05-07 16:32:28.701101-04	2019-05-07 16:32:28.701101-04	\N	356000000	Lil Dicky - Professional Rapper (Feat  Snoop Dogg) LYRICS	youtube
EL9zk70NauA	2019-05-07 16:48:11.936495-04	2019-05-07 16:48:11.936495-04	\N	240000000	SANSBUSTERS	youtube
qe3c2XGnJw4	2019-05-07 19:22:47.039176-04	2019-05-07 19:22:47.039176-04	\N	178000000	Josip On Deck - Anime Pu$$y ft. Killa Karisma (Music Video)	youtube
Yk_sDvQ97Vs	2019-05-07 19:28:44.018527-04	2019-05-07 19:28:44.018527-04	\N	142000000	Furry Gang (Lil Pump - "Gucci Gang" Parody)	youtube
7ux--7LJuGc	2019-05-07 20:54:33.308936-04	2019-05-07 20:54:33.308936-04	\N	20000000	Granny Cream's Hot Butter Ice Cream - Hypnospace Outlaw	youtube
zPwwDr0qFow	2019-05-03 13:58:02.553508-04	2019-05-03 13:58:02.553508-04	\N	184000000	Words (a cappella, The Real Group)	youtube
Q1nj6Yla_Vg	2019-05-03 14:03:13.176895-04	2019-05-03 14:03:13.176895-04	\N	263000000	Manhattan Transfer Birdland	youtube
5ZF6m659-z0	2019-05-03 14:03:28.365873-04	2019-05-03 14:03:28.365873-04	\N	219000000	MANHATTAN TRANSFER - "The boy from New York City"	youtube
cZHvsaVTrzQ	2019-05-03 14:03:41.635148-04	2019-05-03 14:03:41.635148-04	\N	360000000	The Manhattan Transfer - Birdland (1992)	youtube
VflD-s_S9sw	2019-05-03 14:09:30.13118-04	2019-05-03 14:09:30.13118-04	\N	195000000	【Touhou Vocal】 Karakurenai 【PL SUB】 からくれない UNDEAD CORPORATION	youtube
1PUsih-V9P4	2019-05-03 14:14:10.649837-04	2019-05-03 14:14:10.649837-04	\N	501000000	Imperial Circus Dead Decadence - 黄泉より聴こゆ、皇国の燈と焔の少女。	youtube
pEAKWJGrFS8	2019-05-04 13:23:11.085745-04	2019-05-04 13:23:11.085745-04	\N	272000000	Madoka Magica / Full Opening	youtube
Mh-MW1RZzG8	2019-05-04 13:28:03.876906-04	2019-05-04 13:28:03.876906-04	\N	307000000	Macross Frontier Op - LION	youtube
_tA3qxh1y6U	2019-05-04 13:29:32.926976-04	2019-05-04 13:29:32.926976-04	\N	212000000	【東方Vocal／Eurobeat】 Cosmos Routine (EUROBEAT Remix) 「556mm」【JPN Subtitle】	youtube
MqHjZ6IG12Q	2019-05-04 13:32:20.409802-04	2019-05-04 13:32:20.409802-04	\N	107000000	Threshold	youtube
pQ91nArSjOg	2019-05-04 13:32:47.994256-04	2019-05-04 13:32:47.994256-04	\N	283000000	The Clash At Demonhead - Brie Larson Full Version (320kbps)	youtube
xHzB8KAuEr8	2019-05-04 13:47:10.593475-04	2019-05-04 13:47:10.593475-04	\N	276000000	Yaeji - Passionfruit	youtube
0q5vYr-SWlY	2019-05-04 13:47:46.11937-04	2019-05-04 13:47:46.11937-04	\N	218000000	"sweet dreams but i put kahoot music over it" but I fixed the tempo	youtube
PyaB-dbfnyk	2019-05-04 13:51:56.236147-04	2019-05-04 13:51:56.236147-04	\N	204000000	believer but i put kahoot music over it	youtube
nSvFCDQssic	2019-05-04 17:02:14.242607-04	2019-05-04 17:02:14.242607-04	\N	225000000	"Gutter Girl" - Hot Flash Heat Wave (Official Video)	youtube
Bid6LmRU1d8	2019-05-04 17:05:07.542737-04	2019-05-04 17:05:07.542737-04	\N	214000000	Blame It on the Boogie	youtube
r5pYL-Y--To	2019-05-04 17:06:22.522262-04	2019-05-04 17:06:22.522262-04	\N	181000000	VULFPECK /// Back Pocket (Lyric Video)	youtube
IYf4vW0BJag	2019-05-04 18:49:59.087247-04	2019-05-04 18:49:59.087247-04	\N	236000000	Dreams of Love and Literature (OST Version) - Doki Doki Literature Club!	youtube
fzcQxRr1cSw	2019-05-04 19:13:07.387029-04	2019-05-04 19:13:07.387029-04	\N	218000000	Hearts & Colors - Lion	youtube
KglfXjDvUys	2019-05-04 19:13:34.011302-04	2019-05-04 19:13:34.011302-04	\N	263000000	EDEN - 909 (Lyrics)	youtube
sig15597k2A	2019-05-04 19:14:34.200873-04	2019-05-04 19:14:34.200873-04	\N	403000000	Drunk in love (Kanye West Remix)	youtube
AkYUCITjhIE	2019-05-04 19:35:29.313887-04	2019-05-04 19:35:29.313887-04	\N	197000000	EDEN - gold (Lyric Video)	youtube
eilNxcy7bKY	2019-05-05 14:08:20.958277-04	2019-05-05 14:08:20.958277-04	\N	312000000	【東方 Touhou Vocal/Hardcore】Lost Emotion (Amane UK Hardcore Remix)【Alstroemeria Records】	youtube
e7e2ehEiu_E	2019-05-05 19:34:57.83861-04	2019-05-05 19:34:57.83861-04	\N	369000000	Revue Starlight - The Star Knows [Sub Romaji ~ Español]	youtube
2hrDWMNyDzc	2019-05-05 19:49:27.415772-04	2019-05-05 19:49:27.415772-04	\N	259000000	Shake that  (Lyrics) - Eminem (explicit version)	youtube
jAgS8tWYvgw	2019-05-05 22:32:57.342998-04	2019-05-05 22:32:57.342998-04	\N	235000000	I Lived	youtube
97ttv6-UiQs	2019-05-05 22:54:21.108342-04	2019-05-05 22:54:21.108342-04	\N	315000000	Sicko mode but drakes part is Dicko mode.	youtube
qHm9MG9xw1o	2019-05-06 00:22:19.851994-04	2019-05-06 00:22:19.851994-04	\N	232000000	OneRepublic - Secrets	youtube
HEHHW0_kHfg	2019-05-07 16:07:57.72582-04	2019-05-07 16:07:57.72582-04	\N	90000000	Everything's Better with Perry - Music Video - Phineas and Ferb: Across the 2nd Dimension	youtube
A0OUDtef8bg	2019-05-07 16:08:59.823251-04	2019-05-07 16:08:59.823251-04	\N	162000000	07. Phineas  -Summer(Where Do We Begin)	youtube
5kpCIxGjrCY	2019-05-07 16:15:33.868747-04	2019-05-07 16:15:33.868747-04	\N	225000000	Super Eminem 64	youtube
yF3JWJksP9I	2019-05-07 16:19:11.740027-04	2019-05-07 16:19:11.740027-04	\N	163000000	me listening to 1700 sea shanties	youtube
2SjUi7UY3fg	2019-05-07 16:19:42.916847-04	2019-05-07 16:19:42.916847-04	\N	82000000	Game Over - Sonic the Hedgehog	youtube
0RHLtx9r2LA	2019-05-07 16:29:00.44158-04	2019-05-07 16:29:00.44158-04	\N	116000000	Chess Review	youtube
NvYZzMkLKog	2019-05-07 16:46:11.703686-04	2019-05-07 16:46:11.703686-04	\N	103000000	Numb Seinfeld	youtube
S05Za6_-wtw	2019-05-07 16:58:07.834407-04	2019-05-07 16:58:07.834407-04	\N	147000000	DK Rap Gorilla Version Lyrics	youtube
ekFaaEU8Yuw	2019-05-07 17:31:03.570121-04	2019-05-07 17:31:03.570121-04	\N	299000000	Daddy Yankee "Llamado De Emergencia" Soundtrack Talento de Barrio © El Cartel Records	youtube
9TeyuDnwyrw	2019-05-07 17:31:23.977011-04	2019-05-07 17:31:23.977011-04	\N	249000000	Daddy Yankee - Lovumba	youtube
4BkWmgiwsIk	2019-05-07 19:04:16.028991-04	2019-05-07 19:04:16.028991-04	\N	318000000	SICKO MODE vGH ~ CHART PREVIEW	youtube
cWBPjTQvNY8	2019-05-07 19:06:28.343008-04	2019-05-07 19:06:28.343008-04	\N	91000000	MARIO SCREAMING 2	youtube
RawsoZjbHHY	2019-05-07 19:44:33.279729-04	2019-05-07 19:44:33.279729-04	\N	230000000	DADADADADADADADADADA (打打打打打打打打打打) English subtitles	youtube
VsdAB26BKX8	2019-05-07 20:46:35.713321-04	2019-05-07 20:46:35.713321-04	\N	182000000	DK's Paradise (DK Rap x Gangsta's Paradise)	youtube
30cKwNm9ThQ	2019-05-07 20:59:13.40203-04	2019-05-07 20:59:13.40203-04	\N	210000000	Fucked With An Anchor - ALESTORM (lyrics)	youtube
L4iCaDCX3jY	2019-05-07 20:59:42.652901-04	2019-05-07 20:59:42.652901-04	\N	162000000	Devil went down to Jamaica	youtube
7L195RtHf10	2019-05-07 21:31:19.132454-04	2019-05-07 21:31:19.132454-04	\N	138000000	Brand New Best Friend	youtube
l_pSxcd0uHA	2019-05-08 03:00:45.907914-04	2019-05-08 03:00:45.907914-04	\N	189000000	Ally Kerr - The Sore Feet Song	youtube
1o84y-5-cO0	2019-05-08 22:27:23.544631-04	2019-05-08 22:27:23.544631-04	\N	218000000	Lucy Rose - Shiver	youtube
-ZYe51nE2hY	2019-05-08 22:54:25.225863-04	2019-05-08 22:54:25.225863-04	\N	412000000	恋の魔球 - Shoujo Kageki Revue Starlight	youtube
o5G075MWGyc	2019-05-08 23:05:46.080335-04	2019-05-08 23:05:46.080335-04	\N	362000000	【東方Vocal Arrange】宇宙のこども [Halozy] (C89)	youtube
6gpxPBbr5ig	2019-05-09 00:47:16.23962-04	2019-05-09 00:47:16.23962-04	\N	290000000	[Demetori] 天空の花の都 ～ Bridge of The Lotus	youtube
j1GsoKybhgQ	2019-05-09 00:50:08.371551-04	2019-05-09 00:50:08.371551-04	\N	368000000	Late in autumn ~ FripSide [VietSub]	youtube
rd83jMTERqM	2019-05-09 14:24:23.773323-04	2019-05-09 14:24:23.773323-04	\N	1939000000	포켓몬스터 디아루가 BGM 26곡 메들리 with 피아노 (Pokemon Diamond BGM Piano Medley 26 songs)	youtube
AdB2B5XDlCU	2019-05-09 15:11:31.239892-04	2019-05-09 15:11:31.239892-04	\N	1608000000	포켓몬스터 골드버전 BGM 18곡 메들리 with 피아노 (Pokemon Gold Piano Medley 18 songs)	youtube
AWJ9fKvhOpI	2019-05-09 17:14:46.175703-04	2019-05-09 17:14:46.175703-04	\N	250000000	AWOLNATION---Sail extreme bass boost by Tobianas_sk	youtube
nItEsF3D9M0	2019-05-09 18:20:04.902955-04	2019-05-09 18:20:04.902955-04	\N	247000000	NO SLEEP TILL BROOKLYN (audio)	youtube
GSpwTvYgFrM	2019-05-09 20:54:17.886013-04	2019-05-09 20:54:17.886013-04	\N	206000000	PinocchioP - What's Inside / ピノキオピー - 内臓ありますか	youtube
zGcjDo3SgmI	2019-05-10 04:02:49.219799-04	2019-05-10 04:02:49.219799-04	\N	17000000	Billie Eilish's Bad Guy, but it's Smash Bros	youtube
kN0iD0pI3o0	2019-05-10 19:35:17.658801-04	2019-05-10 19:35:17.658801-04	\N	203000000	Ariana Grande - breathin	youtube
1BYr1br2Ee4	2019-05-10 19:36:39.359004-04	2019-05-10 19:36:39.359004-04	\N	197000000	Ariana Grande - breathin (audio)	youtube
CCSGelSCPGE	2019-05-10 19:38:18.515088-04	2019-05-10 19:38:18.515088-04	\N	217000000	Ed Sheeran & Justin Bieber - I Don't Care [Official Lyric Video]	youtube
-C_3eYj-pOM	2019-05-10 19:40:27.959735-04	2019-05-10 19:40:27.959735-04	\N	145000000	12. Marvin Gaye & Tammi Terrell - Ain't No Mountain High Enough	youtube
O2lzmpEs29M	2019-05-10 19:42:23.298736-04	2019-05-10 19:42:23.298736-04	\N	216000000	The Less I Know The Better - Tame Impala Lyrics	youtube
MTSr8GUsZ-I	2019-05-10 19:43:12.910276-04	2019-05-10 19:43:12.910276-04	\N	309000000	Toro y Moi - Mirage	youtube
2nXE2mcw38A	2019-05-10 19:43:42.87497-04	2019-05-10 19:43:42.87497-04	\N	62000000	Smb1 Overworld Hot Butter Ice Cream - Hot Dad - Topic & Super Mario All-Stars Music | RaveDJ	youtube
sgC6rj6DB9Y	2019-05-10 23:50:10.835834-04	2019-05-10 23:50:10.835834-04	\N	10000000	colonel im dummy thicc meme	youtube
imOHHGk90KY	2019-05-11 00:07:33.967023-04	2019-05-11 00:07:33.967023-04	\N	108000000	Matzo Man	youtube
QPntjTPWgKE	2019-05-11 00:44:41.217554-04	2019-05-11 00:44:41.217554-04	\N	288000000	iDOLM@STER vs. DMX - WHERE THE IDOLS AT	youtube
IPXIgEAGe4U	2019-05-11 01:45:06.755561-04	2019-05-11 01:45:06.755561-04	\N	197000000	Panic! At The Disco - High Hopes (Official Video)	youtube
ooEv1cH97HA	2019-05-11 01:46:07.890468-04	2019-05-11 01:46:07.890468-04	\N	254000000	Panic! At The Disco - Golden Days (Official Audio)	youtube
e6XHLcIGESY	2019-05-11 01:46:33.982206-04	2019-05-11 01:46:33.982206-04	\N	203000000	Panic! At The Disco - Impossible Year (Official Audio)	youtube
JrU0PBloneA	2019-05-11 01:57:46.16091-04	2019-05-11 01:57:46.16091-04	\N	199000000	PENTAGON (펜타곤) - 'SHINE' (빛나리) Lyrics [Color Coded_Han_Rom_Eng]	youtube
8wjbY0Tyfr4	2019-05-11 02:26:34.979755-04	2019-05-11 02:26:34.979755-04	\N	192000000	Marian Hill - Got It (Audio)	youtube
bDxVrBralCY	2019-05-11 11:18:18.015721-04	2019-05-11 11:18:18.015721-04	\N	179000000	Crazy MegaloGummi Axel Harder, Better,  We Are Nae Nae Number Seven Grand Frog F	youtube
8J8LjCGt7WI	2019-05-11 12:34:40.816105-04	2019-05-11 12:34:40.816105-04	\N	114000000	NINJA IS DEAD IIDX ver. — P*Light	youtube
ucDCFsiN5Gc	2019-05-11 12:34:59.513955-04	2019-05-11 12:34:59.513955-04	\N	315000000	USAO - Extra Mode	youtube
ALVECIUYrGA	2019-05-11 12:35:37.982465-04	2019-05-11 12:35:37.982465-04	\N	241000000	USAO - Dynamite (Extended Mix)	youtube
eMpQfTEbUZ4	2019-05-11 14:35:20.066848-04	2019-05-11 14:35:20.066848-04	\N	210000000	Tales from Gay Baby Jail: Oatmeal's Revenge	youtube
SmbmeOgWsqE	2019-05-11 14:57:15.307289-04	2019-05-11 14:57:15.307289-04	\N	166000000	Lizzo - Good As Hell (Official Video)	youtube
73gGwGI8Z7E	2019-05-11 15:15:00.159342-04	2019-05-11 15:15:00.159342-04	\N	262000000	Hot Dad - Just Tell Me What Font to Pick (When I'm Making Websites for Kids)	youtube
jVXauWq9Hwg	2019-05-11 15:59:41.725947-04	2019-05-11 15:59:41.725947-04	\N	307000000	Panic! At The Disco: Say Amen (Saturday Night) [OFFICIAL VIDEO]	youtube
aDkhszirMvk	2019-05-11 18:54:47.923389-04	2019-05-11 18:54:47.923389-04	\N	202000000	【東方Orchestral】 神々が恋した幻想郷 「Melodic Taste」	youtube
x6Uge88uH9Q	2019-05-11 19:01:30.024858-04	2019-05-11 19:01:30.024858-04	\N	277000000	【東方Irish Folk／Acoustic】 好奇心 「Floating Cloud」	youtube
2FmigBqz6ek	2019-05-11 19:02:29.192997-04	2019-05-11 19:02:29.192997-04	\N	317000000	【東方Celtic／Irish】 妖精のいる風景 「Floating Cloud」	youtube
tbOhc7McMbY	2019-05-11 19:52:20.061847-04	2019-05-11 19:52:20.061847-04	\N	272000000	[Touhou Project] [Senya] - Koakuma Apple (EUROBEAT Remix)	youtube
ygNhqwq9WVA	2019-05-11 20:02:22.438783-04	2019-05-11 20:02:22.438783-04	\N	288000000	【東方Eurobeat/Vocal】Eternal Party	youtube
u5FwAsufdQE	2019-05-11 20:04:06.52452-04	2019-05-11 20:04:06.52452-04	\N	621000000	【東方ボーカル】 「レディメイド・シティライフ」 【ShibayanRecords】	youtube
WXt4JB2fSo4	2019-05-12 22:28:27.941353-04	2019-05-12 22:28:27.941353-04	\N	135000000	[Cover] OLD TOWN ROAD	youtube
rMHqZJ3VbvE	2019-05-12 22:33:17.441364-04	2019-05-12 22:33:17.441364-04	\N	250000000	Sweet Dreams Kahoot gen 19 but it's Surprisingly Inspirational	youtube
olQ8RW7BtUc	2019-05-13 19:46:45.610093-04	2019-05-13 19:46:45.610093-04	\N	276000000	Chocolate Insomnia FULL HQ (Nekomonogatari: Shiro Opening) by Yui Horie	youtube
gUcisIlT7sM	2019-05-13 23:56:24.050731-04	2019-05-13 23:56:24.050731-04	\N	157000000	Lil Nas X - Old Town Road (feat. Billy Ray Cyrus) [Music Video]	youtube
SmXbCBAHTfo	2019-05-14 00:52:04.011478-04	2019-05-14 00:52:04.011478-04	\N	253000000	Good Life	youtube
Gfc_nijnfew	2019-05-14 01:09:00.457832-04	2019-05-14 01:09:00.457832-04	\N	279000000	Paradise	youtube
4dmT9D6Upzs	2019-05-14 01:09:21.904444-04	2019-05-14 01:09:21.904444-04	\N	221000000	La La La	youtube
zMHvZXirECc	2019-05-14 01:26:59.873629-04	2019-05-14 01:26:59.873629-04	\N	345000000	[Electronic] - Laszlo - Law Of The Jungle [Monstercat EP Release]	youtube
zp7NtW_hKJI	2019-05-14 01:45:40.673784-04	2019-05-14 01:45:40.673784-04	\N	275000000	Coldplay - A Sky Full Of Stars (Official audio)	youtube
WYS5NtRXlZQ	2019-05-14 16:46:51.496219-04	2019-05-14 16:46:51.496219-04	\N	62000000	Education Connection Commercial Jingle	youtube
CXKLn7fHekI	2019-05-14 16:48:58.467222-04	2019-05-14 16:48:58.467222-04	\N	240000000	Rasputin	youtube
l5arNtTYK1s	2019-05-14 17:23:47.010701-04	2019-05-14 17:23:47.010701-04	\N	195000000	Serhat - Say Na Na Na - San Marino 🇸🇲 - Official Music Video - Eurovision 2019	youtube
UGrRhIj4FRw	2019-05-14 17:24:05.507442-04	2019-05-14 17:24:05.507442-04	\N	186000000	Hatari - Hatrið mun sigra - Iceland 🇮🇸 - Official Music Video - Eurovision 2019	youtube
Zk3LJall6XQ	2019-05-14 18:13:14.258949-04	2019-05-14 18:13:14.258949-04	\N	284000000	【東方Vocal (Eurobeat)】 A-One - いい加減で面倒な恋	youtube
hfjHJneVonE	2019-05-14 18:19:04.779794-04	2019-05-14 18:19:04.779794-04	\N	193000000	Verka Serduchka - Dancing Lasha Tumbai (Ukraine) 2007 Eurovision Song Contest	youtube
BgUstrmJzyc	2019-05-14 18:19:51.307273-04	2019-05-14 18:19:51.307273-04	\N	212000000	Buranovskiye Babushki - Party For Everybody - Live - Grand Final - 2012 Eurovision Song Contest	youtube
J9EtMZXeQZw	2019-05-14 18:23:04.830408-04	2019-05-14 18:23:04.830408-04	\N	196000000	Paula Seling & Ovi - Playing With Fire (Romania) Live 2010 Eurovision Song Contest	youtube
slHboKF9PIQ	2019-05-14 18:30:09.262228-04	2019-05-14 18:30:09.262228-04	\N	197000000	Mariya Yaremchuk - Tick - Tock (Ukraine) LIVE Eurovision Song Contest 2014 Grand Final	youtube
eOjuN8fi4sk	2019-05-14 18:35:58.946175-04	2019-05-14 18:35:58.946175-04	\N	213000000	Careless Bees	youtube
GVJW9ImpiWc	2019-05-14 18:36:14.674609-04	2019-05-14 18:36:14.674609-04	\N	195000000	Polina Gagarina - A Million Voices (Russia) - LIVE at Eurovision 2015 Grand Final	youtube
gHgxi57Um0w	2019-05-14 18:36:47.950375-04	2019-05-14 18:36:47.950375-04	\N	205000000	Sergey Lazarev - You Are The Only One (Russia) 2016 Eurovision Song Contest	youtube
EyLnhcKJbGA	2019-05-14 18:37:54.279421-04	2019-05-14 18:37:54.279421-04	\N	278000000	【東方vocal】Crazy Cranberry〜ver.EURO〜（改重低音強化版）	youtube
nbcCG7PkI18	2019-05-11 01:32:53.110473-04	2019-05-11 01:32:53.110473-04	\N	199000000	WALK THE MOON - Shut Up and Dance (Audio)	youtube
EzLFdxsjmrQ	2019-05-11 01:34:06.479547-04	2019-05-11 01:34:06.479547-04	\N	265000000	Awesome City Club –  Don’t Think, Feel (Music Video)	youtube
f4_3dWqu6kM	2019-05-11 01:41:41.685283-04	2019-05-11 01:41:41.685283-04	\N	203000000	F(x)- All Mine {Audio}	youtube
w5x93pXSmRM	2019-05-11 01:45:02.385242-04	2019-05-11 01:45:02.385242-04	\N	156000000	Sigrid - Don’t Feel Like Crying (Official Video)	youtube
aZUopuhqwCM	2019-05-11 01:50:24.101219-04	2019-05-11 01:50:24.101219-04	\N	169000000	Panic! At The Disco - (Fuck A) Silver Lining (Official Audio)	youtube
s1xmO4w_afc	2019-05-11 01:51:18.595287-04	2019-05-11 01:51:18.595287-04	\N	193000000	SHINee 샤이니 'View' Dance Edit Ver.	youtube
7I34zOUZCXM	2019-05-11 01:52:29.294193-04	2019-05-11 01:52:29.294193-04	\N	213000000	Don't Threaten Me With A Good Time	youtube
rTzp9xaGC3s	2019-05-11 01:53:16.193777-04	2019-05-11 01:53:16.193777-04	\N	186000000	Panic! at the Disco | Hallelujah (Lyrics)	youtube
8fbyfDbi-MI	2019-05-11 02:01:58.941708-04	2019-05-11 02:01:58.941708-04	\N	148000000	Lift Yourself	youtube
nk_WUs-zlNU	2019-05-11 02:02:57.040023-04	2019-05-11 02:02:57.040023-04	\N	209000000	311-Amber	youtube
Sk-U8ruIQyA	2019-05-11 02:09:20.694983-04	2019-05-11 02:09:20.694983-04	\N	217000000	grandson - Blood // Water (Official Audio)	youtube
bco4xBelLWw	2019-05-11 12:57:29.60675-04	2019-05-11 12:57:29.60675-04	\N	253000000	Gelatin Cubes Dancing High Speed Phantom HD Slow motion Jello	youtube
VSPuRXkUWoU	2019-05-11 14:55:16.778832-04	2019-05-11 14:55:16.778832-04	\N	47000000	how to create billie eilish's "bad guy"	youtube
Mh5LY4Mz15o	2019-05-11 16:20:04.642272-04	2019-05-11 16:20:04.642272-04	\N	540000000	history of japan	youtube
HP6iab16WJs	2019-05-11 19:03:39.241938-04	2019-05-11 19:03:39.241938-04	\N	234000000	【東方Vocal／Eurobeat】 1,2ダークネス 「A-ONE」	youtube
LjX9QGvqOpo	2019-05-11 19:06:04.257814-04	2019-05-11 19:06:04.257814-04	\N	189000000	Say Amen (Saturday Night)	youtube
d--wQ6ozveA	2019-05-11 19:17:17.934961-04	2019-05-11 19:17:17.934961-04	\N	230000000	【東方Orchestral／Epic】 信仰は儚き人間の為に 「Melodic Taste」	youtube
frQcgBPO2gc	2019-05-11 19:32:09.522298-04	2019-05-11 19:32:09.522298-04	\N	235000000	【東方Vocal/Eurobeat】THE EVENING STAR [DJ Command Remix]【SOUND HOLIC Vs. Eurobeat Union】【C93】	youtube
n6LKXcZQGkg	2019-05-11 19:36:17.720779-04	2019-05-11 19:36:17.720779-04	\N	231000000	【東方Vocal/Eurobeat】しゅわスパ大作戦☆ [FN2 Remix]【SOUND HOLIC Vs. Eurobeat Union】【C93】	youtube
5qT2-MtdHhI	2019-05-11 19:36:26.735903-04	2019-05-11 19:36:26.735903-04	\N	257000000	【東方Vocal/Eurobeat】全人類ノ非想天則 [DJ Command Remix]【SOUND HOLIC Vs. Eurobeat Union】【C93】	youtube
Snxj4kJFpzg	2019-05-11 19:38:25.383427-04	2019-05-11 19:38:25.383427-04	\N	224000000	【東方Vocal/Eurobeat】Rainy, rainy days [FN2 Remix]【SOUND HOLIC Vs. Eurobeat Union】【C93】	youtube
5309jNBdcPU	2019-05-11 19:39:15.875672-04	2019-05-11 19:39:15.875672-04	\N	280000000	【東方Vocal/Eurobeat】PANDORA ZONE【SOUND HOLIC Vs. Eurobeat Union】【C93】	youtube
Hb1ROR8TuBk	2019-05-11 19:42:12.876117-04	2019-05-11 19:42:12.876117-04	\N	254000000	【東方Vocal/Eurobeat】Grip & Break down !! [DJ Command Remix]【SOUND HOLIC Vs. Eurobeat Union】【C93】	youtube
c1LLzNnr0oQ	2019-05-11 19:42:51.734005-04	2019-05-11 19:42:51.734005-04	\N	242000000	【東方Vocal/Eurobeat】Get the star for you [DJ Command Remix]【SOUND HOLIC Vs. Eurobeat Union】【C93】	youtube
xEanELp59J0	2019-05-11 19:49:46.597403-04	2019-05-11 19:49:46.597403-04	\N	272000000	【東方Vocal (Eurobeat)】 A-One - 一瞬のセツナ	youtube
wvAihAMGljc	2019-05-11 19:59:58.202336-04	2019-05-11 19:59:58.202336-04	\N	265000000	【東方Eurobeat】Precious Steps　A-one	youtube
ctE4C3mZGZ8	2019-05-11 20:00:37.236854-04	2019-05-11 20:00:37.236854-04	\N	390000000	【東方Eurobeat】Little Flare　A-one	youtube
TJO3CKdIPLs	2019-05-11 20:01:24.390612-04	2019-05-11 20:01:24.390612-04	\N	325000000	【東方Eurobeat】SNOWING　A-one	youtube
aSfMKP3nTEQ	2019-05-12 22:28:13.213903-04	2019-05-12 22:28:13.213903-04	\N	222000000	""sweet dreams but i put kahoot music over it" but I fixed the tempo" but I added Joker's gun	youtube
yO6mRJraWqQ	2019-05-12 22:28:24.500976-04	2019-05-12 22:28:24.500976-04	\N	222000000	sweet dreams with the kahoot theme and fixed tempo and Joker's gun but I added the Tainted Love clap	youtube
V1X-gz58RLw	2019-05-12 22:28:48.416992-04	2019-05-12 22:28:48.416992-04	\N	222000000	sweet dreams with the kahoot theme & Jokers gun & tainted love clap but I added the crab rave shaker	youtube
iB5Y3zNpsxE	2019-05-12 22:55:25.455884-04	2019-05-12 22:55:25.455884-04	\N	221000000	sweet dreams + kahoot + Jokers gun + tainted love clap + crab rave shaker but I added Wii tennis	youtube
rwCiqWYKLU4	2019-05-12 23:09:52.408877-04	2019-05-12 23:09:52.408877-04	\N	222000000	sweet dreams kahoot theme, Jokers gun, TL clap, crab rave shaker & creeper but with 100% more OOF	youtube
65IAdRvdkdw	2019-05-13 02:32:27.320955-04	2019-05-13 02:32:27.320955-04	\N	214000000	Big KRIT Kingdom - Steam Bank	youtube
XcicOBS9mBU	2019-05-13 21:17:07.919252-04	2019-05-13 21:17:07.919252-04	\N	369000000	Numb-Tongo (estreno a nivel mundial 2017) Parodia	youtube
LZ6ywnPHZhY	2019-05-13 21:21:00.272136-04	2019-05-13 21:21:00.272136-04	\N	216000000	Migos Performs "Handsome and Wealthy" w/ a Live Orchestra | Audiomack Trap Symphony	youtube
8Xv_Hg8o1fw	2019-05-14 00:31:34.674152-04	2019-05-14 00:31:34.674152-04	\N	308000000	Clocks	youtube
zP50Ewh31E4	2019-05-14 01:18:52.491937-04	2019-05-14 01:18:52.491937-04	\N	260000000	Alex Clare - Too Close	youtube
CQFGAmiWQmg	2019-05-14 01:18:58.738916-04	2019-05-14 01:18:58.738916-04	\N	245000000	[Indie Dance] - WRLD - Little Too Close (feat. Veronika Redd) [Monstercat EP Release]	youtube
G1qO2pxzHNE	2019-05-14 01:29:09.073188-04	2019-05-14 01:29:09.073188-04	\N	237000000	Tristam - I Remember [Monstercat Release]	youtube
z23NJSWFroA	2019-05-14 01:32:46.788588-04	2019-05-14 01:32:46.788588-04	\N	256000000	【東方Eurobeat ENG SUBS】Still In Love【A-ONE】	youtube
g8xIoipyjzo	2019-05-14 01:46:08.179369-04	2019-05-14 01:46:08.179369-04	\N	221000000	Coldplay - Hymn For The Weekend (Lyrics)	youtube
pB-5XG-DbAA	2019-05-14 01:46:28.363354-04	2019-05-14 01:46:28.363354-04	\N	210000000	Sam Smith - Stay With Me	youtube
Mk7-GRWq7wA	2019-05-14 01:46:42.059828-04	2019-05-14 01:46:42.059828-04	\N	280000000	John Legend   All Of Me Lyrics	youtube
XsXgl70-cBM	2019-05-14 14:04:00.392751-04	2019-05-14 14:04:00.392751-04	\N	295000000	【東方ボーカル】 「I」 【森羅万象】	youtube
GbrsrcY4dW0	2019-05-14 14:04:15.628123-04	2019-05-14 14:04:15.628123-04	\N	273000000	【東方ボーカル】 「星降る夜の二重奏」 【森羅万象】	youtube
hpsCwUkMyso	2019-05-14 17:24:43.016473-04	2019-05-14 17:24:43.016473-04	\N	217000000	Bee Lo Green	youtube
DsnmAXja6Bw	2019-05-14 17:54:34.251356-04	2019-05-14 17:54:34.251356-04	\N	370000000	Bohemian Rhapsody	youtube
-msutN_OkU4	2019-05-14 18:23:38.072269-04	2019-05-14 18:23:38.072269-04	\N	198000000	Måns Zelmerlöw - Heroes (Sweden) - LIVE at Eurovision 2015: Semi-Final 2	youtube
j0HEDcgAs1Q	2019-05-14 18:27:07.594204-04	2019-05-14 18:27:07.594204-04	\N	214000000	Viva La Bees	youtube
-72s4WzUcKI	2019-05-14 18:27:18.155111-04	2019-05-14 18:27:18.155111-04	\N	204000000	Dima Bilan - Believe (Russia) 2008 Eurovision Song Contest Winner	youtube
63DzIQX8K2k	2019-05-14 18:31:55.251856-04	2019-05-14 18:31:55.251856-04	\N	69000000	Matt Watson- "I'm in Love with My Dad" rap song (SuperMega)	youtube
_0wLAj0-fwk	2019-05-14 18:32:46.227514-04	2019-05-14 18:32:46.227514-04	\N	501000000	【東方Electro】 いつか見たもの「ShibayanRecords」	youtube
SaolVEJEjV4	2019-05-14 18:33:14.681908-04	2019-05-14 18:33:14.681908-04	\N	202000000	Conchita Wurst - Rise Like a Phoenix (Austria) 2014 LIVE Eurovision Second Semi-Final	youtube
dGRQPK7bUPs	2019-05-14 18:40:04.369603-04	2019-05-14 18:40:04.369603-04	\N	232000000	Main Theme - 1 2 Oatmeal	youtube
EvbCZnx6G3A	2019-05-14 18:44:17.185067-04	2019-05-14 18:44:17.185067-04	\N	1235032704	【東方Vocal】SOUND HOLIC Vocals YURiCa ユリカ/花たん Part 2	youtube
ofK3b3XmYbM	2019-05-14 18:45:28.034082-04	2019-05-14 18:45:28.034082-04	\N	342000000	【東方NuDisco】 スイングバイ 「ShibayanRecords」	youtube
Soe3Qt22Dm4	2019-05-14 18:48:41.650804-04	2019-05-14 18:48:41.650804-04	\N	261000000	AXEL.K - fall into the magic	youtube
MyuytNztVKE	2019-05-14 18:55:50.102303-04	2019-05-14 18:55:50.102303-04	\N	516000000	(東方) ShibayanRecords - シンデレラは魔法使い - instrumental	youtube
Pfo-8z86x80	2019-05-14 18:58:52.847662-04	2019-05-14 18:58:52.847662-04	\N	193000000	Loreen - Euphoria - Live - Grand Final - 2012 Eurovision Song Contest	youtube
-04pUETT7oI	2019-05-14 18:59:56.821673-04	2019-05-14 18:59:56.821673-04	\N	200000000	Eric Saade - Popular (Sweden) - Live - 2011 Eurovision Song Contest Final	youtube
gAh9NRGNhUU	2019-05-14 19:13:11.578932-04	2019-05-14 19:13:11.578932-04	\N	199000000	Lordi - Hard Rock Hallelujah (Finland) 2006 Eurovision Song Contest Winner	youtube
gp2QpfkKGZc	2019-05-14 19:34:19.0675-04	2019-05-14 19:34:19.0675-04	\N	132000000	Touhou vs. Fortnite Dance Compilation	youtube
dOQmE-BgVgA	2019-05-14 19:35:41.926156-04	2019-05-14 19:35:41.926156-04	\N	60000000	Howard the Alien (Extended) (High Quality)	youtube
0BuFEvt2Fi0	2019-05-14 19:37:10.671738-04	2019-05-14 19:37:10.671738-04	\N	385000000	(東方) ShibayanRecords - うさぎ大爆発 - instrumental	youtube
-tvs8a_hOQo	2019-05-14 19:48:05.317805-04	2019-05-14 19:48:05.317805-04	\N	141000000	We Are Number One - LazyTown: The Video Game	youtube
d1lpqpBZX6E	2019-05-14 19:52:41.775947-04	2019-05-14 19:52:41.775947-04	\N	128000000	Ain't got rhythm but he actually doesn't have rhythm	youtube
IkZi1jmCTDg	2019-05-14 20:43:41.319619-04	2019-05-14 20:43:41.319619-04	\N	222000000	Fuck Bees Inc	youtube
4ji-0swWIUM	2019-05-14 21:25:06.146044-04	2019-05-14 21:25:06.146044-04	\N	90000000	Bloody Stream but every note of the vocals is pitchshifted to G	youtube
Ci04mGSKbe0	2019-05-14 23:18:26.38184-04	2019-05-14 23:18:26.38184-04	\N	36000000	Electric Zoo	youtube
0XkZ-3RvC4A	2019-05-14 23:18:45.322215-04	2019-05-14 23:18:45.322215-04	\N	159000000	Urusei Yatsura OP 1 HQ Full [Lum no love song - Matsutani Yuko]	youtube
qZTqaD_5A9M	2019-05-14 23:18:53.961165-04	2019-05-14 23:18:53.961165-04	\N	205000000	Magical Angel Creamy Mami OP FULL	youtube
_2quiyHfJQw	2019-05-14 23:20:03.43712-04	2019-05-14 23:20:03.43712-04	\N	315000000	MONDO GROSSO / ラビリンス	youtube
krW3uWZJ0EQ	2019-05-15 00:01:58.129704-04	2019-05-15 00:01:58.129704-04	\N	248000000	Up All Night to Fuck Bees	youtube
pbOwHuLKmpc	2019-05-15 00:19:12.063346-04	2019-05-15 00:19:12.063346-04	\N	68000000	i sing earthbound	youtube
QdDD9ViRZz4	2019-05-15 00:20:57.789364-04	2019-05-15 00:20:57.789364-04	\N	110000000	Bhutanese Passport	youtube
rNFoOHI9iJw	2019-05-15 01:19:03.882071-04	2019-05-15 01:19:03.882071-04	\N	15000000	The World's Biggest "Paul Blart: Mall Cop" Fan	youtube
xcd6lo0pZJs	2019-05-15 16:36:01.056012-04	2019-05-15 16:36:01.056012-04	\N	259000000	Touyama Nao & Hanazawa Kana - Taisetsu no Tsukurikata (Asterisk Remix)	youtube
HOSJLXTz2uQ	2019-05-15 16:36:12.312156-04	2019-05-15 16:36:12.312156-04	\N	263000000	Kaguya-sama: Love is War OP Full - Love Dramatic / Masayuki Suzuki [Eng Sub]	youtube
Og1KMF7w4FM	2019-05-15 16:50:21.03343-04	2019-05-15 16:50:21.03343-04	\N	218000000	Take On Bees	youtube
8F3QkvBJpF4	2019-05-15 16:55:53.375566-04	2019-05-15 16:55:53.375566-04	\N	215000000	Eurythmics - Sweet Dreams (Are Made Of Bees)	youtube
_nirV1GVW9M	2019-05-15 17:00:10.268372-04	2019-05-15 17:00:10.268372-04	\N	58000000	Temmie Village (Alternate Mix) - Undertale	youtube
NUOavmGLW4U	2019-05-15 17:00:28.506767-04	2019-05-15 17:00:28.506767-04	\N	201000000	Shut Up and Fuck with Bees	youtube
_GxK5bafAok	2019-05-15 17:05:03.813835-04	2019-05-15 17:05:03.813835-04	\N	91000000	Gotta Thrift Fast	youtube
VxiqtvdoY-I	2019-05-15 17:08:21.82681-04	2019-05-15 17:08:21.82681-04	\N	50000000	Skrillex in the House	youtube
qNDnYLYXprA	2019-05-15 17:10:59.262818-04	2019-05-15 17:10:59.262818-04	\N	209000000	We GOTTA Get SPONGEBOB Back	youtube
MjZdDUwDYxo	2019-05-15 17:11:47.556107-04	2019-05-15 17:11:47.556107-04	\N	178000000	Sad Story	youtube
Owv53MRW9vg	2019-05-15 17:19:43.74685-04	2019-05-15 17:19:43.74685-04	\N	161000000	Tainted Bees (Fuck Bees)	youtube
RWaYZe5V84E	2019-05-15 17:25:37.5888-04	2019-05-15 17:25:37.5888-04	\N	106000000	Girls Just Wanna Fuck Bees	youtube
OGbhJjXl9Rk	2019-05-15 19:52:25.675515-04	2019-05-15 19:52:25.675515-04	\N	69000000	Garfielf	youtube
unx9er0sG6o	2019-05-16 01:26:56.650921-04	2019-05-16 01:26:56.650921-04	\N	292000000	Shawn Wasabi - Mac n' Cheese (live mashup)	youtube
JIKFtTMvNSg	2019-05-16 02:31:13.609581-04	2019-05-16 02:31:13.609581-04	\N	191000000	Slice The Snake (Madeon x Monogatari)	youtube
IIeSGUK-Lyo	2019-05-16 12:45:47.248397-04	2019-05-16 12:45:47.248397-04	\N	293000000	DMX Where the Hood At Uncensored	youtube
0DPdYp8MTDc	2019-05-16 13:02:14.458238-04	2019-05-16 13:02:14.458238-04	\N	17000000	PIZZA PASTA PUT IT IN A BOX - LYRICS	youtube
EsjYKySGtb4	2019-05-16 20:49:39.334271-04	2019-05-16 20:49:39.334271-04	\N	5000000	Mama mia papa pia baby got the diarrhea!!	youtube
3EmUmbhDRiY	2019-05-16 20:54:37.1867-04	2019-05-16 20:54:37.1867-04	\N	193000000	KEiiNO - Spirit In The Sky - Norway 🇳🇴 - Official Music Video - Eurovision 2019	youtube
Qwb2qUE63z4	2019-05-16 21:00:52.604973-04	2019-05-16 21:00:52.604973-04	\N	270000000	Strawberry Crisis! (dBu remix)	youtube
jZvQxYSII6A	2019-05-16 21:13:59.445224-04	2019-05-16 21:13:59.445224-04	\N	273000000	【東方ボーカル】 「贋作」 【森羅万象】	youtube
M5W2IZ_aOOA	2019-05-16 21:19:26.177615-04	2019-05-16 21:19:26.177615-04	\N	227000000	Clueless	youtube
d9wtoIaTHBQ	2019-05-16 21:19:36.89105-04	2019-05-16 21:19:36.89105-04	\N	229000000	東方Touhou [Classical] Shanghai Alice of Meiji 17	youtube
0CVxEm_WuCU	2019-05-16 21:20:25.469744-04	2019-05-16 21:20:25.469744-04	\N	356000000	東方Touhou [Orchestral/Choir] Dark Side of the Road	youtube
sBzrzS1Ag_g	2019-05-16 21:26:18.908323-04	2019-05-16 21:26:18.908323-04	\N	343000000	Tame Impala - The Less I Know The Better (Official Video)	youtube
6qU6UhPfvbU	2019-05-16 21:34:06.206685-04	2019-05-16 21:34:06.206685-04	\N	182000000	SHIFT	youtube
Qb7xCNClIVo	2019-05-16 21:41:32.746054-04	2019-05-16 21:41:32.746054-04	\N	237000000	yaeji - raingurl [full audio]	youtube
DDysT5nWfNc	2019-05-16 21:44:42.255623-04	2019-05-16 21:44:42.255623-04	\N	208000000	[audio] 레드벨벳(Red Velvet) - Butterflies	youtube
GnwoXZOgkac	2019-05-16 23:04:02.816099-04	2019-05-16 23:04:02.816099-04	\N	193000000	Jax Jones, Years & Years - Play	youtube
QslJYDX3o8s	2019-05-16 23:05:15.103527-04	2019-05-16 23:05:15.103527-04	\N	211000000	Red Velvet 레드벨벳 '러시안 룰렛 (Russian Roulette)' MV	youtube
JhBUbeBU4cw	2019-05-16 23:12:18.486032-04	2019-05-16 23:12:18.486032-04	\N	220000000	Years & Years - All For You (Official Audio)	youtube
1uHt2LrCSWg	2019-05-16 23:24:34.354737-04	2019-05-16 23:24:34.354737-04	\N	194000000	Sigrid - Sucker Punch	youtube
OAMsshH0xuQ	2019-05-16 23:26:36.380308-04	2019-05-16 23:26:36.380308-04	\N	96000000	The Moon Theme - DuckTales	youtube
LDGZAprNGWo	2019-05-16 23:58:36.277101-04	2019-05-16 23:58:36.277101-04	\N	156000000	Splashing Around	youtube
Qkau7qFxTmU	2019-05-16 23:58:48.893522-04	2019-05-16 23:58:48.893522-04	\N	156000000	Splashing around bass boosted	youtube
Gmq4WIjQxp0	2019-05-17 01:40:07.529476-04	2019-05-17 01:40:07.529476-04	\N	231000000	Albert Hammond - It Never Rains In Southern California (1973) HD 0815007	youtube
r1afdZk0qcI	2019-05-17 12:35:53.218419-04	2019-05-17 12:35:53.218419-04	\N	240000000	[MV] 몬스타엑스(MONSTA X) - DRAMARAMA	youtube
TSA9VZduuZ4	2019-05-17 12:38:43.958907-04	2019-05-17 12:38:43.958907-04	\N	214000000	[MV] 몬스타엑스(MONSTA X) - JEALOUSY	youtube
zQ2QVnsKgNk	2019-05-17 12:39:06.575826-04	2019-05-17 12:39:06.575826-04	\N	192000000	CLC (씨엘씨) - LIKE IT (Color Coded Lyrics Eng/Rom/Han/가사)	youtube
DvDPinu7pVY	2019-05-17 12:39:22.60095-04	2019-05-17 12:39:22.60095-04	\N	229000000	iKON - '벌떼 (B-DAY)' M/V	youtube
Fy3zu0WsTLM	2019-05-17 12:39:48.270273-04	2019-05-17 12:39:48.270273-04	\N	220000000	Stray Kids "승전가(Victory Song)" Performance Video	youtube
y289In1OdZI	2019-05-17 12:48:49.762117-04	2019-05-17 12:48:49.762117-04	\N	224000000	Stray Kids "갑자기 분위기 싸해질 필요 없잖아요(Awkward Silence)" M/V	youtube
udGwca1HBM4	2019-05-17 12:57:39.665355-04	2019-05-17 12:57:39.665355-04	\N	240000000	[MV] OH MY GIRL(오마이걸) _ The fifth season(다섯 번째 계절) (SSFWL)	youtube
SHWbDmyJ1uY	2019-05-17 13:03:08.170893-04	2019-05-17 13:03:08.170893-04	\N	218000000	Summer127	youtube
kOHB85vDuow	2019-05-17 13:05:44.907323-04	2019-05-17 13:05:44.907323-04	\N	219000000	TWICE "FANCY" M/V	youtube
HvGql8HwOIM	2019-05-17 13:06:47.791266-04	2019-05-17 13:06:47.791266-04	\N	228000000	EVERGLOW (에버글로우) - 봉봉쇼콜라 (Bon Bon Chocolat) MV	youtube
_0_iXbd_4-g	2019-05-17 13:10:21.986133-04	2019-05-17 13:10:21.986133-04	\N	172000000	Black Hole	youtube
rx8ts0yFIo8	2019-05-17 13:10:44.867296-04	2019-05-17 13:10:44.867296-04	\N	223000000	GFRIEND (여자친구) - 'LOVE BUG' Lyrics [Color Coded_Han_Rom_Eng]	youtube
0-mSpFvcga4	2019-05-17 13:30:37.484201-04	2019-05-17 13:30:37.484201-04	\N	196000000	Despacito (Speed Up Ver.) Naju & Tute	youtube
_psXn_VJ_AE	2019-05-17 13:30:46.531969-04	2019-05-17 13:30:46.531969-04	\N	198000000	NCT 127 엔시티 127 '소방차 (Fire Truck)' MV	youtube
i0p1bmr0EmE	2019-05-17 13:43:03.949639-04	2019-05-17 13:43:03.949639-04	\N	223000000	TWICE "What is Love?" M/V	youtube
4CTGxKIzD7M	2019-05-17 13:43:21.066868-04	2019-05-17 13:43:21.066868-04	\N	208000000	[M/V] PRISTIN V(프리스틴 V) - 네 멋대로(Get It)	youtube
9RUeTYiJCyA	2019-05-17 13:55:52.565752-04	2019-05-17 13:55:52.565752-04	\N	223000000	GOT7 "Lullaby" M/V	youtube
Sfm1TDFy2cY	2019-05-17 15:02:58.26309-04	2019-05-17 15:02:58.26309-04	\N	32000000	Iphone Ringtone Despacito Remix	youtube
1CUvmmjAlm4	2019-05-17 15:18:19.00403-04	2019-05-17 15:18:19.00403-04	\N	23000000	My Left Leg has Went Totally Numb	youtube
65BrEZxZIVQ	2019-05-17 15:24:00.451963-04	2019-05-17 15:24:00.451963-04	\N	120000000	What Redbone would sound like if it was sung by Carl Wheezer	youtube
IfRThq9E4lw	2019-05-17 15:29:59.388826-04	2019-05-17 15:29:59.388826-04	\N	288000000	Ｄｅｓｐａｃｉｔｏ － Ｖａｐｏｒｗａｖｅ	youtube
TKe4gD0DtG8	2019-05-17 15:41:46.901049-04	2019-05-17 15:41:46.901049-04	\N	138000000	[Music] 1, 2 Future Bass	youtube
3pfto2iQldI	2019-05-17 17:46:38.81004-04	2019-05-17 17:46:38.81004-04	\N	128000000	I'm a sick fuck, I like a quick fuck...	youtube
W2kf_BtyLW8	2019-05-17 20:54:11.824308-04	2019-05-17 20:54:11.824308-04	\N	290000000	The Ballad of Clutch Nixon	youtube
q6VDA8v7aSo	2019-05-18 02:35:08.507333-04	2019-05-18 02:35:08.507333-04	\N	292000000	夏目友人帳ED　『夏夕空』	youtube
eCIjx3okQ4s	2019-05-18 11:01:18.625131-04	2019-05-18 11:01:18.625131-04	\N	299000000	♪夢のあと pv　椎名林檎×斎藤ネコ［平成風俗 大吟醸］	youtube
EOuN-_TpIPE	2019-05-18 11:04:56.095423-04	2019-05-18 11:04:56.095423-04	\N	254000000	ビッケブランカ『ファビュラス』（official music video）	youtube
XnjwEZk-DNQ	2019-05-18 11:07:34.905728-04	2019-05-18 11:07:34.905728-04	\N	289000000	Fruits Basket (2019) Full ED -「LUCKY ENDING」by Vickeblanka	youtube
hFPVFro4kEc	2019-05-18 13:37:43.89968-04	2019-05-18 13:37:43.89968-04	\N	232000000	DANCE WITH THE DEAD - From Hell (Loved to Death Album)	youtube
pmfHHLfbjNQ	2019-05-18 17:59:38.57638-04	2019-05-18 17:59:38.57638-04	\N	235000000	Big Ideas: Don't get any -- by James Houston	youtube
BbWBRnDK_AE	2019-05-18 18:01:23.376802-04	2019-05-18 18:01:23.376802-04	\N	257000000	Radiohead - 'Nude'	youtube
3NwgWCy0VDI	2019-05-18 19:25:03.177413-04	2019-05-18 19:25:03.177413-04	\N	29000000	Otacon has a message for Jon	youtube
pEaS6atxFgc	2019-05-18 23:47:47.85933-04	2019-05-18 23:47:47.85933-04	\N	212000000	Miki - La Venda - Spain 🇪🇸- Official Music Video - Eurovision 2019	youtube
gEpUgRtXBss	2019-05-19 00:32:02.148759-04	2019-05-19 00:32:02.148759-04	\N	188000000	Sergey Lazarev - Scream - Russia 🇷🇺 - Official Music Video - Eurovision 2019	youtube
X2WH8mHJnhM	2019-05-19 00:47:43.094145-04	2019-05-19 00:47:43.094145-04	\N	256000000	My Heart Will Go On - Recorder By Candlelight by Matt Mulholland	youtube
VydsMYa9lyI	2019-05-19 00:48:07.401306-04	2019-05-19 00:48:07.401306-04	\N	187000000	Bilal Hassani - Roi - France 🇫🇷 - Official Music Video - Eurovision 2019	youtube
d4DPGAJhSac	2019-05-19 00:48:31.20755-04	2019-05-19 00:48:31.20755-04	\N	187000000	Darude feat. Sebastian Rejman - Look Away - Finland 🇫🇮 - Official Video - Eurovision 2019	youtube
p0CPWnVq-M8	2019-05-19 01:13:47.681779-04	2019-05-19 01:13:47.681779-04	\N	41000000	Star vs the Nutshack of Evil Intro	youtube
0c4_b5PHWg8	2019-05-19 01:15:41.589064-04	2019-05-19 01:15:41.589064-04	\N	30000000	Mac Tonight Commercial	youtube
_YetMKN93lM	2019-05-19 01:19:28.519337-04	2019-05-19 01:19:28.519337-04	\N	11000000	Mr krabs is DUMMY THICC	youtube
u85u2ymDl8M	2019-05-19 14:24:08.494363-04	2019-05-19 14:24:08.494363-04	\N	132000000	Every Bazinga from The Big Bang Theory (seasons 1 to 4)	youtube
1yy-ItFzQ9U	2019-05-19 14:27:24.843897-04	2019-05-19 14:27:24.843897-04	\N	211000000	Porter Robinson & Madeon - Shelter (MINECRAFT PARODY)	youtube
693wKQEWrIY	2019-05-19 14:31:57.393033-04	2019-05-19 14:31:57.393033-04	\N	13000000	Deleted ProJared Game Grumps Episode	youtube
xo0WugvuADE	2019-05-19 14:35:39.596092-04	2019-05-19 14:35:39.596092-04	\N	157000000	Lil Jon featuring Thanos "Snap your Fingers"	youtube
ShZ978fBl6Y	2019-05-19 14:36:09.860252-04	2019-05-19 14:36:09.860252-04	\N	205000000	Calum Scott - You Are The Reason (Official)	youtube
mbLmzRdTdHA	2019-05-19 14:38:36.934359-04	2019-05-19 14:38:36.934359-04	\N	8000000	General public, I don't wanna alarm you...	youtube
jUDvwhNj_qU	2019-05-19 14:40:24.46788-04	2019-05-19 14:40:24.46788-04	\N	231000000	we are number one but every one is replaced with "I beat the fuck out of my dick so goddamn hard"	youtube
yH1-uy9FYKE	2019-05-19 14:45:57.638005-04	2019-05-19 14:45:57.638005-04	\N	199000000	Lake Malawi - Friend Of A Friend - Czech Republic 🇨🇿- Official Music Video - Eurovision 2019	youtube
yHomtMvxqWs	2019-05-19 14:48:29.173165-04	2019-05-19 14:48:29.173165-04	\N	72000000	Xenophobia	youtube
6PxoMWtAC7M	2019-05-19 14:54:22.325212-04	2019-05-19 14:54:22.325212-04	\N	190000000	Luca Hänni - She Got Me - Switzerland 🇨🇭- Official Music Video - Eurovision 2019	youtube
rayiFhNLZOM	2019-05-19 15:00:28.416683-04	2019-05-19 15:00:28.416683-04	\N	206000000	Alestorm - Fronked With An Anchor (Disney Edit)	youtube
xX-qjt8szlA	2019-05-19 15:08:40.73767-04	2019-05-19 15:08:40.73767-04	\N	185000000	S3RL - Hentai | EXTREME BASS BOOSTED |	youtube
Qf0kC-MJZrU	2019-05-19 15:20:05.03743-04	2019-05-19 15:20:05.03743-04	\N	27000000	THE BING BONG THEORY	youtube
d1jO5__FyNU	2019-05-19 15:22:16.606241-04	2019-05-19 15:22:16.606241-04	\N	14000000	a for beating the fuck outta my dick	youtube
sExPg2nkDDA	2019-05-19 15:45:41.766434-04	2019-05-19 15:45:41.766434-04	\N	16000000	Mii Channel Theme but it's written by Shostakovich	youtube
1gS3y7RKjb8	2019-05-19 15:46:01.380865-04	2019-05-19 15:46:01.380865-04	\N	21000000	mii channel theme but it's written by stravinsky	youtube
Eztx7Wr8PtE	2019-05-19 22:23:03.471663-04	2019-05-19 22:23:03.471663-04	\N	191000000	Duncan Laurence - Arcade - Official Music Video - The Netherlands 🇳🇱 - Eurovision 2019	youtube
iyZJ_aMw5hY	2019-05-19 22:23:26.769883-04	2019-05-19 22:23:26.769883-04	\N	220000000	Chingiz - Truth - Azerbaijan 🇦🇿 - Official Music Video - Eurovision 2019	youtube
-mYYWSEAa9s	2019-05-19 22:25:01.136498-04	2019-05-19 22:25:01.136498-04	\N	187000000	Roko - The Dream - Croatia 🇭🇷 - Official Music Video - Eurovision 2019	youtube
tEwvUu1dBTs	2019-05-19 22:25:39.961731-04	2019-05-19 22:25:39.961731-04	\N	205000000	Mahmood - Soldi - Italy 🇮🇹 - Official Music Video - Eurovision 2019	youtube
iEEuG5XML-A	2019-05-19 22:28:14.277942-04	2019-05-19 22:28:14.277942-04	\N	186000000	John Lundvik - Too Late For Love - Sweden 🇸🇪 - Official Video - Eurovision 2019	youtube
oxS6eKEOdLQ	2019-05-19 22:47:43.032338-04	2019-05-19 22:47:43.032338-04	\N	184000000	Jamala - 1944 (Ukraine) 2016 Eurovision Song Contest	youtube
9OEIOS1oUeY	2019-05-19 22:48:27.535168-04	2019-05-19 22:48:27.535168-04	\N	193000000	Aysel and Arash - Always (Azerbaijan) 2009 Eurovision Song Contest	youtube
DGMJOchTRPc	2019-05-19 22:50:46.222483-04	2019-05-19 22:50:46.222483-04	\N	194000000	Ann Sophie - Black Smoke (Germany) - LIVE at Eurovision 2015 Grand Final	youtube
NsMiJJlElAY	2019-05-19 22:52:15.369285-04	2019-05-19 22:52:15.369285-04	\N	196000000	Edurne - Amanecer (Spain) - LIVE at Eurovision 2015 Grand Final	youtube
Xsx_dIJOtgI	2019-05-19 22:53:16.695821-04	2019-05-19 22:53:16.695821-04	\N	188000000	Elina Born & Stig Rästa - Goodbye To Yesterday (Estonia) - LIVE at Eurovision 2015 Grand Final	youtube
-w-2K9U8UIs	2019-05-19 22:53:34.119886-04	2019-05-19 22:53:34.119886-04	\N	195000000	Nadav Guedj - Golden Boy (Israel) - LIVE at Eurovision 2015 Grand Final	youtube
wfqOrMlwOjs	2019-05-19 22:56:21.306159-04	2019-05-19 22:56:21.306159-04	\N	197000000	Giorgos Alkaios & Friends - OPA (Greece) Live 2010 Eurovision Song Contest	youtube
a4bfC0NPl1I	2019-05-19 23:05:03.180335-04	2019-05-19 23:05:03.180335-04	\N	194000000	Victor Crone - Storm - Estonia 🇪🇪 - Official Video - Eurovision 2019	youtube
wKgbDk2hXI8	2019-05-19 23:49:11.106412-04	2019-05-19 23:49:11.106412-04	\N	255000000	[Future Bass] PSYQUI ft. Such ー Your voice so...	youtube
FRDNlHpIb5g	2019-05-20 00:11:21.912205-04	2019-05-20 00:11:21.912205-04	\N	196000000	Yeah Yeah Yeahs - Heads Will Roll (JVH - C Remix)	youtube
iZ9Lt0LYiUI	2019-05-20 00:56:04.163005-04	2019-05-20 00:56:04.163005-04	\N	12000000	Lego Yoda Cock and Ball Torture ASMR	youtube
VSyToAbzkLc	2019-05-20 00:57:02.908167-04	2019-05-20 00:57:02.908167-04	\N	17000000	cock and ball torture	youtube
_jHvut-C-2E	2019-05-20 00:57:12.290858-04	2019-05-20 00:57:12.290858-04	\N	4000000	Yar Spongebob I require immediate cock and ball torture	youtube
v-Y8j5daKOc	2019-05-20 00:57:23.960248-04	2019-05-20 00:57:23.960248-04	\N	13000000	Carl beats his dick to cock and ball torture in ms fritz class	youtube
biDkKhu_vXk	2019-05-20 00:58:33.465547-04	2019-05-20 00:58:33.465547-04	\N	105000000	Cock and Ball Torture Rap	youtube
kRTMWzVoT_U	2019-05-20 00:59:22.169695-04	2019-05-20 00:59:22.169695-04	\N	211000000	Chicago - Old Days (HD)	youtube
9nT-fEew5YA	2019-05-20 01:02:16.577057-04	2019-05-20 01:02:16.577057-04	\N	31000000	No Cock and Ball Torture? I'm outta here	youtube
EQhy2lJkmZA	2019-05-20 01:02:44.913991-04	2019-05-20 01:02:44.913991-04	\N	7000000	So, No cock and ball torture?	youtube
gNjo5ZOb7sA	2019-05-20 01:03:50.596565-04	2019-05-20 01:03:50.596565-04	\N	10000000	Cock and Ball torture machine	youtube
TnZj7pAkxkk	2019-05-20 01:04:09.844417-04	2019-05-20 01:04:09.844417-04	\N	7000000	cock and ball torture	youtube
8A6HMJNeURU	2019-05-20 15:12:37.781418-04	2019-05-20 15:12:37.781418-04	\N	277000000	Carl Sings Wake Me Up	youtube
YpsOBjW4OIo	2019-05-20 15:31:06.836076-04	2019-05-20 15:31:06.836076-04	\N	1567000000	Super Smash Bros. Ultimate Everyone is Screaming	youtube
zxsw3lHj090	2019-05-20 15:59:07.50852-04	2019-05-20 15:59:07.50852-04	\N	11000000	People who sing like that should be drug out into the street and shot	youtube
eZ3d6YVaZhg	2019-05-20 22:44:00.585371-04	2019-05-20 22:44:00.585371-04	\N	166000000	The 88 - At Least It Was Here (With Lyrics)	youtube
NUlAg01KsUo	2019-05-21 16:47:46.517434-04	2019-05-21 16:47:46.517434-04	\N	186000000	Oatmeal Mode	youtube
fAdSQxaXsSk	2019-05-21 17:59:15.666422-04	2019-05-21 17:59:15.666422-04	\N	196000000	Leonora - Love Is Forever - Denmark 🇩🇰 - Official Video - Eurovision 2019	youtube
Jmzx1bdKDGA	2019-05-21 18:33:07.660593-04	2019-05-21 18:33:07.660593-04	\N	191000000	I Fuck Bees Not Tragedies	youtube
86ma_XrfDL8	2019-05-21 19:01:49.957625-04	2019-05-21 19:01:49.957625-04	\N	194000000	Heartbeat(ハービー) -  MV「 Here I am 」	youtube
D9-voINFkCg	2019-05-22 18:38:51.035113-04	2019-05-22 18:38:51.035113-04	\N	123000000	Samir....You're breaking the car!!!	youtube
QyPQdcnkNKQ	2019-05-23 00:44:35.183235-04	2019-05-23 00:44:35.183235-04	\N	125000000	ゴリラオンステージ「ムーンライト伝説」に哀愁を漂わせたArrange Ver.	youtube
uzvJvOl9Tx0	2019-05-24 11:23:00.468175-04	2019-05-24 11:23:00.468175-04	\N	230000000	Lupe Fiasco - The Show Goes on (lyrics)	youtube
FS6Fnhndo_8	2019-05-24 23:45:31.817517-04	2019-05-24 23:45:31.817517-04	\N	290000000	Ride Wit Me	youtube
Xj3vkVVjLF4	2019-05-24 23:47:15.630609-04	2019-05-24 23:47:15.630609-04	\N	124000000	Ice Cream Truck (Impozible Remix)	youtube
JEX-bBvVJ4Q	2019-05-25 00:13:46.961494-04	2019-05-25 00:13:46.961494-04	\N	170000000	Unofficial Wii Sports Soundtracks	youtube
spv_cuipZqQ	2019-05-25 00:14:27.12736-04	2019-05-25 00:14:27.12736-04	\N	78000000	Kahoot Halloween Lobby Music	youtube
v4j4BV0ayag	2019-05-25 00:14:53.984178-04	2019-05-25 00:14:53.984178-04	\N	211000000	KAHOOT Lobby Music Christmas Holidays 2017!	youtube
CsSgg_iZHz4	2019-05-25 01:35:54.63135-04	2019-05-25 01:35:54.63135-04	\N	237000000	Ozuna - Baila Baila Baila (Remix) Feat. Daddy Yankee, J Balvin, Farruko, Anuel AA (Audio Oficial)	youtube
LimrgptOHXc	2019-05-25 01:45:52.16243-04	2019-05-25 01:45:52.16243-04	\N	27000000	Krab Borg	youtube
0N1_0SUGlDQ	2019-05-20 14:58:49.08698-04	2019-05-20 14:58:49.08698-04	\N	166000000	Plants vs Zombies Music Video	youtube
lzciXblJOkk	2019-05-20 19:55:33.596047-04	2019-05-20 19:55:33.596047-04	\N	121000000	old town road, but played on my synth	youtube
elXzW54cg4Y	2019-05-21 16:54:27.88067-04	2019-05-21 16:54:27.88067-04	\N	191000000	Billie Eilish - Megalovania (HQ Audio)	youtube
PdYLRTGmQ3c	2019-05-21 19:22:50.412046-04	2019-05-21 19:22:50.412046-04	\N	987032704	THE COMMUNIST MANIFESTO - FULL AudioBook - by Karl Marx & Friedrich Engels	youtube
3chCr8xYTOY	2019-05-23 00:36:59.252075-04	2019-05-23 00:36:59.252075-04	\N	223000000	Fabulous Secret Powers	youtube
TEzmU7YSXJs	2019-05-23 00:39:41.507955-04	2019-05-23 00:39:41.507955-04	\N	299000000	Oasis - Falling Down (Official Video)	youtube
NYtQXtUMWvQ	2019-05-23 20:49:46.51596-04	2019-05-23 20:49:46.51596-04	\N	30000000	Morgan and Morgan 3.0	youtube
KPLG7YTyzDA	2019-05-25 00:24:14.808599-04	2019-05-25 00:24:14.808599-04	\N	180000000	WINDOWDIPPER (Music Video)	youtube
vi5kyRbAKdY	2019-05-25 00:24:43.815502-04	2019-05-25 00:24:43.815502-04	\N	254000000	(Gen 25)sweet dreams with kahoot music but (...) , but I added a sans and a filmora watermark	youtube
7ycaidWoIWY	2019-08-18 20:56:02.956062-04	2019-08-18 20:56:02.956062-04	\N	251000000	Araburu Kisetsu no Otome-domo yo FULL OP -「Otome-domo yo」by CHiCO with HoneyWorks	youtube
oz2TfZLAnnU	2019-08-18 20:56:51.909797-04	2019-08-18 20:56:51.909797-04	\N	242000000	Quad City DJ's VS. ONE PIECE - We Slam!	youtube
H7hiF7fXhLg	2019-08-18 21:01:03.305217-04	2019-08-18 21:01:03.305217-04	\N	260000000	Bloody Slam - Quad City DJs vs Coda	youtube
J3tkaVcYgPA	2019-08-18 21:05:53.192463-04	2019-08-18 21:05:53.192463-04	\N	368000000	Dribble Tendency - Quad City DJs vs Iwasaki Taku & Lotus Juice	youtube
DsoCe7C4Kmk	2019-08-18 22:45:48.694881-04	2019-08-18 22:45:48.694881-04	\N	277000000	Neil Cicierega - T.I.M.E.	youtube
SaJz1cEiNVA	2019-08-18 22:45:59.116924-04	2019-08-18 22:45:59.116924-04	\N	711000000	EXTREME MEME MUSIC MEGAMASHUP 3	youtube
ZAYV3d9fSW8	2019-08-18 22:46:45.197376-04	2019-08-18 22:46:45.197376-04	\N	285000000	Neil Cicierega - Bills Like Jean Spirit	youtube
Kp7eSUU9oy8	2019-08-18 22:47:28.512442-04	2019-08-18 22:47:28.512442-04	\N	327000000	Childish Gambino - Redbone (Official Audio)	youtube
ddJqNY__9U8	2019-08-18 22:49:17.577521-04	2019-08-18 22:49:17.577521-04	\N	226000000	This Is America	youtube
le0BLAEO93g	2019-08-18 22:50:02.574835-04	2019-08-18 22:50:02.574835-04	\N	213000000	VULFPECK /// Dean Town	youtube
t3qYfe7Nsdc	2019-08-18 22:50:18.761679-04	2019-08-18 22:50:18.761679-04	\N	231000000	VULFPECK /// Adrienne & Adrianne	youtube
EpYHp-W51H4	2019-08-18 22:50:35.372581-04	2019-08-18 22:50:35.372581-04	\N	823000000	VULFPECK /// It Gets Funkier but every time it gets funkier, it gets funkier	youtube
AWBUnr0F3Zo	2019-08-18 22:51:09.389635-04	2019-08-18 22:51:09.389635-04	\N	270000000	VULFPECK /// Cory Wong	youtube
t2pz6uNiheg	2019-08-18 22:51:26.126302-04	2019-08-18 22:51:26.126302-04	\N	233000000	VULFPECK /// Aunt Leslie	youtube
WmEmsWsTKQk	2019-08-18 22:53:08.33118-04	2019-08-18 22:53:08.33118-04	\N	174000000	Truth Hurts - Lizzo (lyrics)	youtube
i1cskIan5Jw	2019-08-18 22:53:54.712569-04	2019-08-18 22:53:54.712569-04	\N	547000000	Snarky Puppy - Quarter Master (groundUP)	youtube
fEHpq-BxFm4	2019-08-18 22:54:07.426117-04	2019-08-18 22:54:07.426117-04	\N	285000000	Snarky Puppy - Bad Kids to the Back (Official Video)	youtube
kDXnPfA_5pY	2019-08-18 22:54:19.918639-04	2019-08-18 22:54:19.918639-04	\N	428000000	Snarky Puppy - Sleeper (We Like It Here)	youtube
MBAJP-3ebDA	2019-08-18 22:54:50.130116-04	2019-08-18 22:54:50.130116-04	\N	924000000	Snarky Puppy, Metropole Orkest - Sintra - Flight - Atchafalaya	youtube
UbQgXeY_zi4	2019-08-18 22:56:13.382112-04	2019-08-18 22:56:13.382112-04	\N	170000000	Caravan Palace - Lone Digger	youtube
oT3mCybbhf0	2019-08-18 22:56:46.29778-04	2019-08-18 22:56:46.29778-04	\N	267000000	AVICII & RICK ASTLEY - Never Gonna Wake You Up (NilsOfficial Mashup)	youtube
rACrLF4F06U	2019-08-18 22:57:55.961704-04	2019-08-18 22:57:55.961704-04	\N	188000000	Stressed Out Thunder (Imagine Dragons/Twenty One Pilots Mashup)	youtube
9OeUfBFD1QM	2019-08-18 22:58:09.926144-04	2019-08-18 22:58:09.926144-04	\N	213000000	twenty one pilots vs. Khalid - Young Dumb Ride (Mashup)	youtube
uA53xY7V3Zc	2019-08-18 22:58:23.449843-04	2019-08-18 22:58:23.449843-04	\N	218000000	Centuroots - Imagine Dragons vs Fall Out Boy (Mashup)	youtube
7qCK6oeaf4o	2019-08-18 22:58:44.473768-04	2019-08-18 22:58:44.473768-04	\N	207000000	''Bad Sunflower'' | MASHUP feat. Imagine Dragons,Post Malone,Lauv & Swae Lee	youtube
dcj9LnlnguA	2019-08-18 22:58:52.103956-04	2019-08-18 22:58:52.103956-04	\N	220000000	Cool Paradise - Imagine Dragons vs Coldplay (Mashup)	youtube
2PPuFoPwD0E	2019-08-18 22:59:53.675156-04	2019-08-18 22:59:53.675156-04	\N	248000000	"Happy Liar" - Mashup of Imagine Dragons/Marshmello/Bastille	youtube
IfQTcD8U520	2019-08-18 23:04:11.877451-04	2019-08-18 23:04:11.877451-04	\N	236000000	Flux Pavilion & Matthew Koma - Emotional	youtube
Ok9zfly-KmM	2019-08-18 23:04:29.397721-04	2019-08-18 23:04:29.397721-04	\N	269000000	Hide and Seek	youtube
W4rRs8o06-8	2019-08-18 23:04:56.046627-04	2019-08-18 23:04:56.046627-04	\N	208000000	Let's Shut Up & Dance	youtube
SrOc3CHFUS8	2019-08-19 23:26:24.952734-04	2019-08-19 23:26:24.952734-04	\N	154000000	The Parent Trap Soundtrack #1 L-O-V-E	youtube
3WKN0XF8-3Q	2019-08-19 23:27:20.052408-04	2019-08-19 23:27:20.052408-04	\N	437000000	The Prince of Egypt - 01 - Deliver US	youtube
9e7hQJdYVYs	2019-08-19 23:27:52.769754-04	2019-08-19 23:27:52.769754-04	\N	246000000	The Prince of Egypt - 02 - The Reprimand	youtube
MX9VvwnctTA	2019-08-19 23:28:11.330541-04	2019-08-19 23:28:11.330541-04	\N	233000000	The Prince of Egypt - 03 - Following Tzipporah and All I Ever Wanted	youtube
A9-U6mtlrf4	2019-08-19 23:28:37.099105-04	2019-08-19 23:28:37.099105-04	\N	335000000	The Prince of Egypt - 04 - Goodbye Brother	youtube
bHU7oPA-l1E	2019-08-19 23:29:18.859562-04	2019-08-19 23:29:18.859562-04	\N	224000000	The Prince of Egypt - 05 - Through Heavens Eyes	youtube
QsKuotiv7LA	2019-08-19 23:30:23.697757-04	2019-08-19 23:30:23.697757-04	\N	438000000	The Prince of Egypt - 06 - The Burning Bush	youtube
fILLl9UsWKA	2019-08-19 23:31:15.904659-04	2019-08-19 23:31:15.904659-04	\N	173000000	The Prince of Egypt - 07 - Playing With The Big Boys	youtube
9_x7ouimp0c	2019-08-19 23:31:40.358552-04	2019-08-19 23:31:40.358552-04	\N	204000000	The Prince of Egypt - 08 and 09 - Rally and The Plagues	youtube
1Gu7g2rf1uY	2019-08-19 23:32:11.810409-04	2019-08-19 23:32:11.810409-04	\N	232000000	The Prince of Egypt - 10 - Cry	youtube
-cxmJfAupiY	2019-08-19 23:32:42.397525-04	2019-08-19 23:32:42.397525-04	\N	69000000	The Prince of Egypt - 11 - Death Of The First Born	youtube
lCteJY1-Zkk	2019-08-19 23:33:06.264642-04	2019-08-19 23:33:06.264642-04	\N	297000000	The Prince of Egypt - 12 - When You Believe	youtube
XaDD_SQ29wI	2019-08-19 23:35:01.513581-04	2019-08-19 23:35:01.513581-04	\N	316000000	The Prince of Egypt - 13 - Red Sea	youtube
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

\connect template1

SET default_transaction_read_only = off;

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
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

