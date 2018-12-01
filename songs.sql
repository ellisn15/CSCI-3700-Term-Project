-- MySQL / SQL Server / Oracle / MS Access


CREATE TABLE song
(
	sid 	integer NOT NULL,                   -- song id
	sname 	character varying(35) NOT NULL,     -- song name
	artist 	character varying(35) NOT NULL,     -- artist name
	
	CONSTRAINT PK_SONG PRIMARY KEY(sid)         -- primary key made up of song id column
);


CREATE TABLE info
(
	sid 	integer NOT NULL,                   -- song id
	rank 	integer NOT NULL,                   -- song rank
	year 	integer NOT NULL,                   -- song release year
	source 	integer NOT NULL,                   -- source

	CONSTRAINT PK_INFO PRIMARY KEY(sid)         -- primary key made up of song id column
);


CREATE TABLE lyrics
(
	sid 	integer NOT NULL,                   -- song id
	lyrics 	text    NOT NULL,                   -- song lyrics

	CONSTRAINT PK_LYRICS PRIMARY KEY(sid)       -- primary key made up of song id column
);


-- Load data into song table (Sid, Song, Artist)
COPY song(sid,song,artist) FROM '/Users/nickellis/Documents/Classes/CSCI_3700/Term Project/Data Files/song.csv' DELIMITER ',' CSV HEADER;

-- Load data into info table (Sid, Rank, Year, Source)
COPY info(sid,rank,year,source) FROM '/Users/nickellis/Documents/Classes/CSCI_3700/Term Project/Data Files/info.csv' DELIMITER ',' CSV HEADER;

-- Load data into lyrics table (Sid, lyrics)
COPY lyrics(sid,lyrics) FROM '/Users/nickellis/Documents/Classes/CSCI_3700/Term Project/Data Files/lyrics.csv' DELIMITER ',' CSV HEADER;
