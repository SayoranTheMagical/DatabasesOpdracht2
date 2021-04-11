/* Higher level entities*/
--///////////////////////

CREATE TABLE IF NOT EXISTS Game (
	'GameID' varchar(8) NOT NULL,
	'SystemID' varchar(8) NOT NULL,
	'Title' char(25) NOT NULL,
	CONSTRAINT PK_GameID PRIMARY KEY (GameID),
	CONSTRAINT FK_Title FOREIGN KEY (Title) REFERENCES GameData(Title),
	CONSTRAINT FK_SystemID FOREIGN KEY (SystemID) REFERENCES System(SystemID) 
);

/* inserting data into table Game*/
INSERT INTO Game VALUES('G1DQAE01', 'SEP1DQ01', 'Zelda II: The Adventure of Link');
INSERT INTO Game VALUES('G1DQAE02', 'SEP1DQ04', 'Zelda II: The Adventure of Link');
INSERT INTO Game VALUES('G1DQAE03', 'SEP1DQ02', 'The Legend of Zelda: A Link to the Past');
INSERT INTO Game VALUES('G1DQAE04', 'SEP1DQ04', 'The Legend of Zelda: A Link to the Past');
INSERT INTO Game VALUES('G1DQAE05', 'SEP1DQ03', 'The Legend of Zelda: Ocarina of Time');
INSERT INTO Game VALUES('G1DQAE06', 'SEP1DQ06', 'The Legend of Zelda: Ocarina of Time');
INSERT INTO Game VALUES('G1DQAE07', 'SEP1DQ04', 'The Legend of Zelda: The Minish Cap');
INSERT INTO Game VALUES('G1DQAE08', 'SEP1DQ05', 'The Legend of Zelda: Skyward Sword');
INSERT INTO Game VALUES('G1DQAE09', 'SEP1DQ07', 'The Legend of Zelda: Breath of the Wild');
INSERT INTO Game VALUES('G1DQAE10', 'SEP1DQ08', 'The Legend of Zelda: Breath of the Wild');
INSERT INTO Game VALUES('G1DQAE11', 'SEP1DQ02', 'Super Mario Kart');
INSERT INTO Game VALUES('G1DQAE12', 'SEP1DQ03', 'Mario Kart 64');
INSERT INTO Game VALUES('G1DQAE13', 'SEP1DQ06', 'Mario Kart 7');
INSERT INTO Game VALUES('G1DQAE14', 'SEP1DQ07', 'Mario Kart 8');
INSERT INTO Game VALUES('G1DQAE15', 'SEP1DQ08', 'Mario Kart 8');
INSERT INTO Game VALUES('G1DQAE16', 'SEP1DQ01', 'Super Mario Bros. 3');
INSERT INTO Game VALUES('G1DQAE17', 'SEP1DQ04', 'Super Mario Bros. 3');
INSERT INTO Game VALUES('G1DQAE18', 'SEP1DQ02', 'Super Mario All-Stars');
INSERT INTO Game VALUES('G1DQAE19', 'SEP1DQ05', 'Super Mario All-Stars');
INSERT INTO Game VALUES('G1DQAE20', 'SEP1DQ05', 'New Super Mario Bros. Wii');
INSERT INTO Game VALUES('G1DQAE21', 'SEP1DQ07', 'New Super Mario Bros. U');
INSERT INTO Game VALUES('G1DQAE22', 'SEP1DQ08', 'New Super Mario Bros. U');
INSERT INTO Game VALUES('G1DQAE23', 'SEP1DQ03', 'Super Mario 64');
INSERT INTO Game VALUES('G1DQAE24', 'SEP1DQ05', 'Super Mario Galaxy');
INSERT INTO Game VALUES('G1DQAE25', 'SEP1DQ05', 'Super Mario Galaxy 2');
INSERT INTO Game VALUES('G1DQAE26', 'SEP1DQ05', 'Mario Party 9');
INSERT INTO Game VALUES('G1DQAE27', 'SEP1DQ08', 'Super Mario Party');
INSERT INTO Game VALUES('G1DQAE28', 'SEP1DQ10', 'Crysis 2');
INSERT INTO Game VALUES('G1DQAE29', 'SEP1DQ12', 'Crysis 2');
INSERT INTO Game VALUES('G1DQAE30', 'SEP1DQ10', 'Crysis 3');
INSERT INTO Game VALUES('G1DQAE31', 'SEP1DQ12', 'Crysis 3');
INSERT INTO Game VALUES('G1DQAE32', 'SEP1DQ12', 'Call of Duty 2');
INSERT INTO Game VALUES('G1DQAE33', 'SEP1DQ07', 'Call of Duty: Ghosts');
INSERT INTO Game VALUES('G1DQAE34', 'SEP1DQ10', 'Call of Duty: Ghosts');
INSERT INTO Game VALUES('G1DQAE35', 'SEP1DQ11', 'Call of Duty: Ghosts');
INSERT INTO Game VALUES('G1DQAE36', 'SEP1DQ12', 'Call of Duty: Ghosts');
INSERT INTO Game VALUES('G1DQAE37', 'SEP1DQ13', 'Call of Duty: Ghosts');
INSERT INTO Game VALUES('G1DQAE38', 'SEP1DQ10', 'Call of Duty: Black Ops 3');
INSERT INTO Game VALUES('G1DQAE39', 'SEP1DQ11', 'Call of Duty: Black Ops 3');
INSERT INTO Game VALUES('G1DQAE40', 'SEP1DQ12', 'Call of Duty: Black Ops 3');
INSERT INTO Game VALUES('G1DQAE41', 'SEP1DQ13', 'Call of Duty: Black Ops 3');
INSERT INTO Game VALUES('G1DQAE42', 'SEP1DQ06', 'Sonic Boom: Shattered Crystal');
INSERT INTO Game VALUES('G1DQAE43', 'SEP1DQ05', 'Sonic and the Black Knight');
INSERT INTO Game VALUES('G1DQAE44', 'SEP1DQ08', 'Sonic Forces');
INSERT INTO Game VALUES('G1DQAE45', 'SEP1DQ11', 'Sonic Forces');
INSERT INTO Game VALUES('G1DQAE46', 'SEP1DQ13', 'Sonic Forces');
INSERT INTO Game VALUES('G1DQAE47', 'SEP1DQ09', 'Sonic Riders');

CREATE TABLE IF NOT EXISTS RegionVersion (
	`GameID` varchar(8) NOT NULL,
	`RegionName` varchar(8) NOT NULL,
	'Release' datetime NOT NULL,
	CONSTRAINT PK_RegionRelease PRIMARY KEY(GameID, RegionName),
	CONSTRAINT FK_GameID FOREIGN KEY (GameID) REFERENCES Game(GameID)
);

/* inserting data into table RegionVersion*/
INSERT INTO RegionVersion VALUES('G1DQAE01', 'JP', '14-01-1987');
INSERT INTO RegionVersion VALUES('G1DQAE01', 'NA', '01-12-1988');
INSERT INTO RegionVersion VALUES('G1DQAE01', 'PAL', '26-09-1988');
INSERT INTO RegionVersion VALUES('G1DQAE02', 'JP', '10-08-2004');
INSERT INTO RegionVersion VALUES('G1DQAE02', 'NA', '25-10-2004');
INSERT INTO RegionVersion VALUES('G1DQAE02', 'PAL', '07-01-2005');
INSERT INTO RegionVersion VALUES('G1DQAE03', 'JP', '21-11-1991');
INSERT INTO RegionVersion VALUES('G1DQAE03', 'NA', '13-04-1992');
INSERT INTO RegionVersion VALUES('G1DQAE03', 'PAL', '24-09-1992');
INSERT INTO RegionVersion VALUES('G1DQAE04', 'JP', '14-03-2003');
INSERT INTO RegionVersion VALUES('G1DQAE04', 'NA', '02-12-2002');
INSERT INTO RegionVersion VALUES('G1DQAE04', 'PAL', '28-02-2003');
INSERT INTO RegionVersion VALUES('G1DQAE05', 'AU', '18-12-1998');
INSERT INTO RegionVersion VALUES('G1DQAE05', 'EU', '11-12-1998');
INSERT INTO RegionVersion VALUES('G1DQAE05', 'JP', '21-11-1998');
INSERT INTO RegionVersion VALUES('G1DQAE05', 'NA', '23-11-1998');
INSERT INTO RegionVersion VALUES('G1DQAE06', 'AU', '30-06-2011');
INSERT INTO RegionVersion VALUES('G1DQAE06', 'EU', '17-06-2011');
INSERT INTO RegionVersion VALUES('G1DQAE06', 'JP', '16-06-2011');
INSERT INTO RegionVersion VALUES('G1DQAE06', 'NA', '19-06-2011');
INSERT INTO RegionVersion VALUES('G1DQAE07', 'AU', '07-04-2005');
INSERT INTO RegionVersion VALUES('G1DQAE07', 'EU', '12-11-2004');
INSERT INTO RegionVersion VALUES('G1DQAE07', 'JP', '04-11-2004');
INSERT INTO RegionVersion VALUES('G1DQAE07', 'NA', '10-01-2005');
INSERT INTO RegionVersion VALUES('G1DQAE08', 'AU', '24-11-2011');
INSERT INTO RegionVersion VALUES('G1DQAE08', 'EU', '18-11-2011');
INSERT INTO RegionVersion VALUES('G1DQAE08', 'JP', '23-11-2011');
INSERT INTO RegionVersion VALUES('G1DQAE08', 'NA', '20-11-2011');
INSERT INTO RegionVersion VALUES('G1DQAE09', 'WW', '03-03-2017');
INSERT INTO RegionVersion VALUES('G1DQAE10', 'WW', '03-03-2017');
INSERT INTO RegionVersion VALUES('G1DQAE11', 'EU', '21-01-1993');
INSERT INTO RegionVersion VALUES('G1DQAE11', 'JP', '27-08-1992');
INSERT INTO RegionVersion VALUES('G1DQAE11', 'NA', '01-09-1992');
INSERT INTO RegionVersion VALUES('G1DQAE11', 'UK', '04-12-1992');
INSERT INTO RegionVersion VALUES('G1DQAE12', 'EU', '24-06-1997');
INSERT INTO RegionVersion VALUES('G1DQAE12', 'JP', '14-12-1996');
INSERT INTO RegionVersion VALUES('G1DQAE12', 'NA', '10-02-1997');
INSERT INTO RegionVersion VALUES('G1DQAE12', 'UK', '13-06-1997');
INSERT INTO RegionVersion VALUES('G1DQAE13', 'AU', '03-12-2011');
INSERT INTO RegionVersion VALUES('G1DQAE13', 'EU', '02-12-2011');
INSERT INTO RegionVersion VALUES('G1DQAE13', 'HK', '28-09-2012');
INSERT INTO RegionVersion VALUES('G1DQAE13', 'JP', '01-12-2011');
INSERT INTO RegionVersion VALUES('G1DQAE13', 'NA', '04-12-2011');
INSERT INTO RegionVersion VALUES('G1DQAE14', 'JP', '29-05-2014');
INSERT INTO RegionVersion VALUES('G1DQAE14', 'WW', '30-05-2014');
INSERT INTO RegionVersion VALUES('G1DQAE15', 'WW', '28-04-2017');
INSERT INTO RegionVersion VALUES('G1DQAE16', 'JP', '23-10-1988');
INSERT INTO RegionVersion VALUES('G1DQAE16', 'NA', '12-03-1990');
INSERT INTO RegionVersion VALUES('G1DQAE16', 'PAL', '29-08-1991');
INSERT INTO RegionVersion VALUES('G1DQAE17', 'AU', '23-02-2004');
INSERT INTO RegionVersion VALUES('G1DQAE17', 'EU', '17-10-2003');
INSERT INTO RegionVersion VALUES('G1DQAE17', 'JP', '11-07-2003');
INSERT INTO RegionVersion VALUES('G1DQAE17', 'NA', '21-10-2003');
INSERT INTO RegionVersion VALUES('G1DQAE18', 'JP', '14-07-1993');
INSERT INTO RegionVersion VALUES('G1DQAE18', 'NA', '11-08-1993');
INSERT INTO RegionVersion VALUES('G1DQAE18', 'PAL', '16-12-1993');
INSERT INTO RegionVersion VALUES('G1DQAE19', 'EU', '03-12-2010');
INSERT INTO RegionVersion VALUES('G1DQAE19', 'JP', '21-10-2010');
INSERT INTO RegionVersion VALUES('G1DQAE19', 'NA', '12-12-2010');
INSERT INTO RegionVersion VALUES('G1DQAE20', 'AU', '12-11-2009');
INSERT INTO RegionVersion VALUES('G1DQAE20', 'EU', '20-11-2009');
INSERT INTO RegionVersion VALUES('G1DQAE20', 'JP', '03-12-2009');
INSERT INTO RegionVersion VALUES('G1DQAE20', 'NA', '15-11-2009');
INSERT INTO RegionVersion VALUES('G1DQAE21', 'JP', '08-12-2012');
INSERT INTO RegionVersion VALUES('G1DQAE21', 'NA', '18-11-2012');
INSERT INTO RegionVersion VALUES('G1DQAE21', 'PAL', '30-11-2012');
INSERT INTO RegionVersion VALUES('G1DQAE22', 'CHN', '10-12-2019');
INSERT INTO RegionVersion VALUES('G1DQAE22', 'WW', '11-01-2019');
INSERT INTO RegionVersion VALUES('G1DQAE23', 'EU', '01-03-1997');
INSERT INTO RegionVersion VALUES('G1DQAE23', 'JP', '23-06-1996');
INSERT INTO RegionVersion VALUES('G1DQAE23', 'NA', '29-09-1996');
INSERT INTO RegionVersion VALUES('G1DQAE24', 'AU', '29-11-2007');
INSERT INTO RegionVersion VALUES('G1DQAE24', 'EU', '16-11-2007');
INSERT INTO RegionVersion VALUES('G1DQAE24', 'JP', '01-11-2007');
INSERT INTO RegionVersion VALUES('G1DQAE24', 'NA', '12-11-2007');
INSERT INTO RegionVersion VALUES('G1DQAE25', 'AU', '01-07-2010');
INSERT INTO RegionVersion VALUES('G1DQAE25', 'EU', '11-06-2010');
INSERT INTO RegionVersion VALUES('G1DQAE25', 'JP', '27-05-2010');
INSERT INTO RegionVersion VALUES('G1DQAE25', 'NA', '23-05-2010');
INSERT INTO RegionVersion VALUES('G1DQAE26', 'AU', '08-03-2012');
INSERT INTO RegionVersion VALUES('G1DQAE26', 'EU', '02-03-1012');
INSERT INTO RegionVersion VALUES('G1DQAE26', 'HK', '29-06-2012');
INSERT INTO RegionVersion VALUES('G1DQAE26', 'JP', '26-04-2012');
INSERT INTO RegionVersion VALUES('G1DQAE26', 'KOR', '11-04-2013');
INSERT INTO RegionVersion VALUES('G1DQAE26', 'NA', '11-03-2012');
INSERT INTO RegionVersion VALUES('G1DQAE27', 'WW', '05-10-2018');
INSERT INTO RegionVersion VALUES('G1DQAE28', 'AU', '24-03-2011');
INSERT INTO RegionVersion VALUES('G1DQAE28', 'EU', '25-03-2011');
INSERT INTO RegionVersion VALUES('G1DQAE28', 'NA', '22-03-2011');
INSERT INTO RegionVersion VALUES('G1DQAE29', 'AU', '24-03-2011');
INSERT INTO RegionVersion VALUES('G1DQAE29', 'EU', '25-03-2011');
INSERT INTO RegionVersion VALUES('G1DQAE29', 'NA', '22-03-2011');
INSERT INTO RegionVersion VALUES('G1DQAE30', 'AU', '21-02-2013');
INSERT INTO RegionVersion VALUES('G1DQAE30', 'EU', '22-02-2013');
INSERT INTO RegionVersion VALUES('G1DQAE30', 'NA', '19-02-2013');
INSERT INTO RegionVersion VALUES('G1DQAE31', 'AU', '21-02-2013');
INSERT INTO RegionVersion VALUES('G1DQAE31', 'EU', '22-02-2013');
INSERT INTO RegionVersion VALUES('G1DQAE31', 'NA', '19-02-2013');
INSERT INTO RegionVersion VALUES('G1DQAE32', 'EU', '02-12-2005');
INSERT INTO RegionVersion VALUES('G1DQAE32', 'NA', '22-11-2005');
INSERT INTO RegionVersion VALUES('G1DQAE33', 'WW', '05-11-2013');
INSERT INTO RegionVersion VALUES('G1DQAE34', 'WW', '05-11-2013');
INSERT INTO RegionVersion VALUES('G1DQAE35', 'EU', '29-11-2013');
INSERT INTO RegionVersion VALUES('G1DQAE35', 'NA', '15-11-2013');
INSERT INTO RegionVersion VALUES('G1DQAE36', 'WW', '05-11-2013');
INSERT INTO RegionVersion VALUES('G1DQAE37', 'WW', '22-11-2013');
INSERT INTO RegionVersion VALUES('G1DQAE38', 'WW', '06-11-2015');
INSERT INTO RegionVersion VALUES('G1DQAE39', 'WW', '06-11-2015');
INSERT INTO RegionVersion VALUES('G1DQAE40', 'WW', '06-11-2015');
INSERT INTO RegionVersion VALUES('G1DQAE41', 'WW', '06-11-2015');
INSERT INTO RegionVersion VALUES('G1DQAE42', 'AU', '29-11-2014');
INSERT INTO RegionVersion VALUES('G1DQAE42', 'EU', '21-11-2014');
INSERT INTO RegionVersion VALUES('G1DQAE42', 'JP', '18-12-2014');
INSERT INTO RegionVersion VALUES('G1DQAE42', 'NA', '11-11-2014');
INSERT INTO RegionVersion VALUES('G1DQAE43', 'AU', '12-03-2009');
INSERT INTO RegionVersion VALUES('G1DQAE43', 'EU', '13-03-2009');
INSERT INTO RegionVersion VALUES('G1DQAE43', 'JP', '12-03-2009');
INSERT INTO RegionVersion VALUES('G1DQAE43', 'NA', '03-03-2009');
INSERT INTO RegionVersion VALUES('G1DQAE44', 'JP', '09-11-2017');
INSERT INTO RegionVersion VALUES('G1DQAE44', 'WW', '07-11-2017');
INSERT INTO RegionVersion VALUES('G1DQAE45', 'JP', '09-11-2017');
INSERT INTO RegionVersion VALUES('G1DQAE45', 'WW', '07-11-2017');
INSERT INTO RegionVersion VALUES('G1DQAE46', 'JP', '09-11-2017');
INSERT INTO RegionVersion VALUES('G1DQAE46', 'WW', '07-11-2017');
INSERT INTO RegionVersion VALUES('G1DQAE47', 'AU', '23-03-2006');
INSERT INTO RegionVersion VALUES('G1DQAE47', 'EU', '17-03-2006');
INSERT INTO RegionVersion VALUES('G1DQAE47', 'JP', '23-02-2006');
INSERT INTO RegionVersion VALUES('G1DQAE47', 'NA', '21-02-2006');

CREATE TABLE IF NOT EXISTS System (
	`SystemID` varchar(8) NOT NULL, 
	`Name` varchar(20) NOT NULL, 
	`ConsoleLineID` varchar(8) NOT NULL,
	`ReleaseDate` datetime NOT NULL,
	`Bitsize` tinyint NOT NULL,
	CONSTRAINT PK_SystemID PRIMARY KEY (SystemID),
	CONSTRAINT FK_ConsoleLineID FOREIGN KEY (ConsoleLineID) REFERENCES ConsoleLine(ConsoleLineID) ON DELETE CASCADE ON UPDATE CASCADE
);

/* inserting data into table System*/
INSERT INTO System VALUES('SEP1DQ01', 'NES', 'CSP1DQ01', '15-07-1983', 8);
INSERT INTO System VALUES('SEP1DQ02', 'SNES', 'CSP1DQ01', '21-11-1990', 16);
INSERT INTO System VALUES('SEP1DQ03', 'N64', 'CSP1DQ01', '23-06-1996', 64);
INSERT INTO System VALUES('SEP1DQ04', 'GameBoy Advance', 'CSP1DQ02', '21-03-2001', 32);
INSERT INTO System VALUES('SEP1DQ05', 'Wii', 'CSP1DQ01', '19-11-2006', 64);
INSERT INTO System VALUES('SEP1DQ06', 'Nintendo 3DS', 'CSP1DQ02', '26-03-2011', 64);
INSERT INTO System VALUES('SEP1DQ07', 'Wii U', 'CSP1DQ01', '18-11-2012', 64);
INSERT INTO System VALUES('SEP1DQ08', 'Nintendo Switch', 'CSP1DQ01', '03-03-2017', 64);
INSERT INTO System VALUES('SEP1DQ09', 'Playstation 2', 'CSP1DQ03', '04-03-2000', 64);
INSERT INTO System VALUES('SEP1DQ10', 'Playstation 3', 'CSP1DQ03', '11-11-2006', 64);
INSERT INTO System VALUES('SEP1DQ11', 'Playstation 4', 'CSP1DQ03', '15-11-2013', 64);
INSERT INTO System VALUES('SEP1DQ12', 'Xbox 360', 'CSP1DQ04', '22-11-2005', 64);
INSERT INTO System VALUES('SEP1DQ13', 'Xbox One', 'CSP1DQ04', '22-11-2013', 64);

CREATE TABLE IF NOT EXISTS DevelopmentStudio (
	`DSID` varchar(8) NOT NULL, 
	`Name` varchar(30) NOT NULL,
	`Location` char(30) NOT NULL,
	`Phone` char(10) NOT NULL,
	CONSTRAINT PK_DSID PRIMARY KEY (DSID)
);

/* inserting data into table DevelopmentStudio*/
INSERT INTO DevelopmentStudio VALUES('D1DQBF01', 'Nintendo EAD', 'Kyoto, Japan', '0772994657');
INSERT INTO DevelopmentStudio VALUES('D1DQBF02', 'Crytek', 'Coburg, Germany', '9561265678');
INSERT INTO DevelopmentStudio VALUES('D1DQBF03', 'Infinity Ward', 'Woodland Hills, USA', '6615485586');
INSERT INTO DevelopmentStudio VALUES('D1DQBF04', 'Sega Studios San Francisco', 'San Francisco, USA', '4154229920');
INSERT INTO DevelopmentStudio VALUES('D1DQBF05', 'NDcube', 'Sapporo, Japan', '0114273000');
INSERT INTO DevelopmentStudio VALUES('D1DQBF06', 'Treyarch', 'Santa Monica, USA', '4242681247');
INSERT INTO DevelopmentStudio VALUES('D1DQBF07', 'Nintendo EPD', 'Kyoto, Japan', '0772981218');
INSERT INTO DevelopmentStudio VALUES('D1DQBF08', 'Nintendo EAD Tokyo', 'Tokyo, Japan', '0422148684');

CREATE TABLE IF NOT EXISTS Publisher (
	`PublisherID` varchar(8) NOT NULL, 
	`Name` varchar(30),
	`Location` char(30),
	`Phone` char(10),
	CONSTRAINT PK_PublisherID PRIMARY KEY(PublisherID)
);

/* inserting data into table Publisher*/
INSERT INTO Publisher VALUES('DSP1DQ01', 'Nintendo', 'Japan', '1800255370');
INSERT INTO Publisher VALUES('DSP1DQ02', 'Eletronic Arts', 'North America', '0208083219');
INSERT INTO Publisher VALUES('DSP1DQ03', 'Activision', 'North America', '1310255200');
INSERT INTO Publisher VALUES('DSP1DQ04', 'Sega', 'Japan', ' 0044845301');


CREATE TABLE IF NOT EXISTS SubFranchise (
	`SubfranchiseName` varchar(30) NOT NULL,
	`FranchiseName` varchar(30) NOT NULL,
	`Release` datetime NOT NULL,
	CONSTRAINT PK_Subfranchise PRIMARY KEY(SubfranchiseName),
	CONSTRAINT FK_Franchise FOREIGN KEY (FranchiseName) REFERENCES GameFranchise(FranchiseName) ON UPDATE CASCADE 	
);

INSERT INTO SubFranchise VALUES('Zelda 2D', 'The Legend of Zelda', '21-02-1986');
INSERT INTO SubFranchise VALUES('Zelda 3D', 'The Legend of Zelda', '21-11-1998');
INSERT INTO SubFranchise VALUES('Mario Kart', 'Mario', '27-08-1992');
INSERT INTO SubFranchise VALUES('Mario 2D', 'Mario', '13-09-1985');
INSERT INTO SubFranchise VALUES('Mario 3D', 'Mario', '23-06-1996');
INSERT INTO SubFranchise VALUES('Mario Party', 'Mario', '18-12-1998');
INSERT INTO SubFranchise VALUES('Crysis', 'Crysis', '13-11-2007');
INSERT INTO SubFranchise VALUES('Call of Duty', 'Call of Duty', '29-10-2003');
INSERT INTO SubFranchise VALUES('Sonic 2D', 'Sonic', '23-06-1991');
INSERT INTO SubFranchise VALUES('Sonic 3D', 'Sonic', '07-11-1996');
INSERT INTO SubFranchise VALUES('Sonic Race', 'Sonic', '18-03-1994');

/* Intersection Tables*/
--//////////////////////

CREATE TABLE IF NOT EXISTS GameData (
	`DSID` varchar(8) NOT NULL,
	`PublisherID` varchar(8) NOT NULL,
	`SubfranchiseName` varchar(30) NOT NULL,
	`Title` char(25) NOT NULL,
	`Genre` char(15) NOT NULL,
	CONSTRAINT PK_Title PRIMARY KEY (Title),
	CONSTRAINT FK_DSID FOREIGN KEY (DSID) REFERENCES DevelopmentStudio(DSID),
	CONSTRAINT FK_PublisherID FOREIGN KEY (PublisherID) REFERENCES Publisher(PublisherID),
	CONSTRAINT FK_SubFranchise FOREIGN KEY (SubfranchiseName) REFERENCES SubFranchise(SubfranchiseName)
);

/* inserting data into table GameData*/
INSERT INTO GameData VALUES('D1DQBF01', 'DSP1DQ01', 'Zelda 2D', 'Zelda II: The Adventure of Link', 'Adventure');
INSERT INTO GameData VALUES('D1DQBF01', 'DSP1DQ01', 'Zelda 2D', 'The Legend of Zelda: A Link to the Past', 'Adventure');
INSERT INTO GameData VALUES('D1DQBF01', 'DSP1DQ01', 'Zelda 3D', 'The Legend of Zelda: Ocarina of Time', 'Adventure');
INSERT INTO GameData VALUES('D1DQBF07', 'DSP1DQ01', 'Zelda 2D', 'The Legend of Zelda: The Minish Cap', 'Adventure');
INSERT INTO GameData VALUES('D1DQBF01', 'DSP1DQ01', 'Zelda 3D', 'The Legend of Zelda: Skyward Sword', 'Adventure');
INSERT INTO GameData VALUES('D1DQBF07', 'DSP1DQ01', 'Zelda 3D', 'The Legend of Zelda: Breath of the wild', 'Adventure');
INSERT INTO GameData VALUES('D1DQBF01', 'DSP1DQ01', 'Mario Kart', 'Super Mario Kart', 'Race');
INSERT INTO GameData VALUES('D1DQBF01', 'DSP1DQ01', 'Mario Kart', 'Mario Kart 64', 'Race');
INSERT INTO GameData VALUES('D1DQBF01', 'DSP1DQ01', 'Mario Kart', 'Mario Kart 7', 'Race');
INSERT INTO GameData VALUES('D1DQBF01', 'DSP1DQ01', 'Mario Kart', 'Mario Kart 8', 'Race');
INSERT INTO GameData VALUES('D1DQBF01', 'DSP1DQ01', 'Mario 2D', 'Super Mario Bros. 3', 'Platformer');
INSERT INTO GameData VALUES('D1DQBF01', 'DSP1DQ01', 'Mario 2D', 'Super Mario All-Stars', 'Platformer');
INSERT INTO GameData VALUES('D1DQBF01', 'DSP1DQ01', 'Mario 2D', 'New Super Mario Bros. Wii', 'Platformer');
INSERT INTO GameData VALUES('D1DQBF01', 'DSP1DQ01', 'Mario 2D', 'New Super Mario Bros. U', 'Platformer');
INSERT INTO GameData VALUES('D1DQBF01', 'DSP1DQ01', 'Mario 3D', 'Super Mario 64', 'Platformer');
INSERT INTO GameData VALUES('D1DQBF08', 'DSP1DQ01', 'Mario 3D', 'Super Mario Galaxy', 'Platformer');
INSERT INTO GameData VALUES('D1DQBF08', 'DSP1DQ01', 'Mario 3D', 'Super Mario Galaxy 2', 'Platformer');
INSERT INTO GameData VALUES('D1DQBF05', 'DSP1DQ01', 'Mario Party', 'Mario Party 9', 'Family');
INSERT INTO GameData VALUES('D1DQBF05', 'DSP1DQ01', 'Mario Party', 'Super Mario Party', 'Family');
INSERT INTO GameData VALUES('D1DQBF02', 'DSP1DQ02', 'Crysis', 'Crysis 2', 'Shooter');
INSERT INTO GameData VALUES('D1DQBF02', 'DSP1DQ02', 'Crysis', 'Crysis 3', 'Shooter');
INSERT INTO GameData VALUES('D1DQBF03', 'DSP1DQ03', 'Call of Duty', 'Call of Duty 2', 'Shooter');
INSERT INTO GameData VALUES('D1DQBF03', 'DSP1DQ03', 'Call of Duty', 'Call of Duty: Ghosts', 'Shooter');
INSERT INTO GameData VALUES('D1DQBF06', 'DSP1DQ03', 'Call of Duty', 'Call of Duty: Black Ops 3','Shooter');
INSERT INTO GameData VALUES('D1DQBF04', 'DSP1DQ04', 'Sonic 2D', 'Sonic Boom: Shattered Crystal', 'Platformer');
INSERT INTO GameData VALUES('D1DQBF04', 'DSP1DQ04', 'Sonic 3D', 'Sonic and the black knight', 'Platformer');
INSERT INTO GameData VALUES('D1DQBF04', 'DSP1DQ04', 'Sonic 3D', 'Sonic Forces', 'Platformer');
INSERT INTO GameData VALUES('D1DQBF04', 'DSP1DQ04', 'Sonic Race', 'Sonic Riders', 'Race');

/* Lower level entities*/
--//////////////////////
CREATE TABLE IF NOT EXISTS ConsoleLine (
	`ConsoleLineID` varchar(8) NOT NULL, 
	`Name` varchar(20) NOT NULL, /* can’t be NULL */
	`ReleaseDate` datetime NOT NULL,
	`Bitsize` tinyint NOT NULL,
	CONSTRAINT PK_ConsoleLineID PRIMARY KEY(ConsoleLineID) 
);

/* inserting data into table ConsoleLine*/
INSERT INTO ConsoleLine VALUES('CSP1DQ01', 'Nintendo Home', '21-11-1982', 8);
INSERT INTO ConsoleLine VALUES('CSP1DQ02', 'Nintendo HandHeld', '21-04-1989', 8);
INSERT INTO ConsoleLine VALUES('CSP1DQ03', 'Playstation','3-12-1996', 32);
INSERT INTO ConsoleLine VALUES('CSP1DQ04', 'Xbox', '15-11-2001', 64);

/* supertype of isa-hierarchy */
/* uses a composite primary key, since foreign keys of the child tables are also composite keys */
/* the salary is the average year salary*/
/* TEXT CHECK is used similarly to ENUM datatype */
CREATE TABLE IF NOT EXISTS Worker (
	`UserID` varchar(8) NOT NULL,
    `DSID` varchar(8) NOT NULL, 
    `Function` TEXT CHECK(Function IN ('president','director','designer')) NOT NULL,
	`FirstName` char(15) NOT NULL,
	`LastName` char(15) NOT NULL,
	`Street` char(15) NOT NULL,
	`Phone` char(10) NOT NULL,
	`DateOfBirth` datetime NOT NULL,
	`Salary` INT NOT NULL,
    CONSTRAINT PK_UserID PRIMARY KEY (UserID, Function),
	CONSTRAINT FK_DSID FOREIGN KEY (DSID) REFERENCES DevelopmentStudio(DSID) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Worker VALUES('U0001NAK', 'D1DQBF01', 'president', 'Hiroshi', 'Ikeda', '193-1023 Nishishinjuku Shinjuku Mitsuibiru(43-kai)', '7095025502', '03-06-1952', 2000000);
INSERT INTO Worker VALUES('U0002NAK', 'D1DQBF01', 'director', 'Kosuke', 'Yabuki', '463-1082 Kisshoin Higashisunanocho', '8010421563', '05-11-1968', 1000000);
INSERT INTO Worker VALUES('U0003NAK', 'D1DQBF01', 'designer', 'Masaaki', 'Ishikawa', '322-1091 Miyamacho Nagao', '8061204776', '14-12-1970',100000);
INSERT INTO Worker VALUES('U0001GCR', 'D1DQBF02', 'president', 'Avni', 'Yerli', 'Lietzenburger Strasse 90', '1600255232', '09-10-1975', 6000000);
INSERT INTO Worker VALUES('U0002GCR', 'D1DQBF02', 'president', 'Faruk', 'Yerli', 'Brandenburgische Straße 37', '5571229157', '17-08-1981', 500000);
INSERT INTO Worker VALUES('U0003GCR', 'D1DQBF02', 'director', 'Cevat', 'Yerli', 'Fasanenstrasse 63', '7626297987', '06-03-1978', 480000);
INSERT INTO Worker VALUES('U0004GCR', 'D1DQBF02', 'designer', 'Jack', 'Mamais', 'Borstelmannsweg 10', '1780802937', '23-07-1986', 2100000);
INSERT INTO Worker VALUES('U0001INF', 'D1DQBF03', 'president', 'Grant', 'Collier', '2673  Twin Willow Lane', '3365548554', '07-07-1981', 200000);
INSERT INTO Worker VALUES('U0002INF', 'D1DQBF03', 'director', 'Jason', 'West', '1288  Fannie Street', '5858339214', '08-09-1977', 180000);
INSERT INTO Worker VALUES('U0003INF', 'D1DQBF03', 'designer', 'Zied', 'Rieke', '2934  Jewell Road', '2132851200', '24-02-1973', 80000);
INSERT INTO Worker VALUES('U0004INF', 'D1DQBF03', 'designer', 'Steve', 'Fukuda', '3818  Anthony Avenue', '2132133919', '27-04-1979', 95000);
INSERT INTO Worker VALUES('U0001SSU', 'D1DQBF04', 'president', 'Jeremy', 'Gordon', '2931  Modoc Alley', '2142714938', '17-05-1969', 1000000);
INSERT INTO Worker VALUES('U0002SSU', 'D1DQBF04', 'director', 'Tetsu', 'Katano', '1253  Scott Street', '7043132141', '15-03-1962', 70000);
INSERT INTO Worker VALUES('U0003SSU', 'D1DQBF04', 'designer', 'Morio', 'Kishimoto', '1446  Michigan Avenue', '8055852725', '18-12-1965', 3000000);
INSERT INTO Worker VALUES('U0001NDC', 'D1DQBF05', 'president', 'Shuichiro', 'Nishiya', '470-1087 Honcho', '8082325597', '07-09-1957', 450000);
INSERT INTO Worker VALUES('U0002NDC', 'D1DQBF05', 'director', 'Atsushi', 'Ikeda', '289-1264 Ikanikeisaiganaibaai', '8088955705', '23-01-1976', 200000);
INSERT INTO Worker VALUES('U0003NDC', 'D1DQBF05', 'director', 'Keisuke', 'Terasaki', '107-1049 Ohashinaicho', '7037915417', '14-08-1968', 140000);
INSERT INTO Worker VALUES('U0004NDC', 'D1DQBF05', 'director', 'Kenji', 'Kikuchi', '231-1004 Tokiwa', '8083571408', '19-11-1972', 6000000);
INSERT INTO Worker VALUES('U0001TRA', 'D1DQBF06', 'president', 'Peter', 'Akemann', '326  Coventry Court', '2195757984', '28-01-1981', 3400000);
INSERT INTO Worker VALUES('U0002TRA', 'D1DQBF06', 'director', 'Jason', 'Blundell', '2688  Marion Drive', '2232574216', '15-06-1979', 700000);
INSERT INTO Worker VALUES('U0003TRA', 'D1DQBF06', 'director', 'Dan', 'Bunting', '4999  New Creek Road', '2066428437', '21-12-1985', 660000);
INSERT INTO Worker VALUES('U0004TRA', 'D1DQBF06', 'director', 'Corky', 'Lehmkuhl', '3071  Aviation Way', '3215486836', '18-09-1973', 235000);
INSERT INTO Worker VALUES('U0005TRA', 'D1DQBF06', 'designer', 'Gavin', 'Locke', '57  Fort Street', '2139140113', '15-11-1978', 580000);
INSERT INTO Worker VALUES('U0001NPK', 'D1DQBF07', 'president', 'Tatsumi', 'Kimishima', '101-1296 Shuchi', '9082297513', '21-04-1950', 2440000);
INSERT INTO Worker VALUES('U0002NPK', 'D1DQBF07', 'director', 'Koichi', 'Hayashida', '389-1188 Misasagi Shichonocho', '8086253587', '08-03-1957', 1300000);
INSERT INTO Worker VALUES('U0001NAT', 'D1DQBF08', 'president', 'Satoru', 'Iwata', '376-1075 Ochikawa', '9064651542', '23-01-1959', 2100000);
INSERT INTO Worker VALUES('U0002NAT', 'D1DQBF08', 'director', 'Shigeyuki', 'Asuke', '2-6 Minami Aoyama 6-chome', '8019988767', '23-01-1973', 633000);
INSERT INTO Worker VALUES('U0003NAT', 'D1DQBF08', 'director', 'Yoshiaki', 'Koizumi', '333-1012 Aizumicho', '9061439732', '29-04-1968', 300000 );
INSERT INTO Worker VALUES('U0004NAT', 'D1DQBF08', 'director', 'Hidemaro', 'Fujibayashi', '224-1204 Itabashi', '9034234645', '01-10-1972', 550000);
INSERT INTO Worker VALUES('U0005NAT', 'D1DQBF08', 'designer', 'Takashi', 'Tezuka', '258-1104 Kotta', '9094948644', '17-11-1960', 2600000);
INSERT INTO Worker VALUES('U0006NAT', 'D1DQBF08', 'designer', 'Hiroyuki', 'Kimura', '191-1178 Konan Shinagawaintashiteia-to(27-kai)', '8041625246', '01-06-1965', 156000);

/* subtype of of isa-hierarchy */
/* experience is the amount of years worked at a studio*/
CREATE TABLE IF NOT EXISTS DevelopmentDirector (
	`UserID` varchar(8) NOT NULL,
    `Function` TEXT CHECK(Function IN ('director')) NOT NULL,
	`Experience` tinyint NOT NULL, 
	CONSTRAINT PK_UserID PRIMARY KEY (UserID),
	CONSTRAINT FK_Job FOREIGN KEY (UserID, Function) REFERENCES Worker(UserID, Function) ON DELETE CASCADE 
);

INSERT INTO DevelopmentDirector VALUES('U0002NAK', 'director', 24);
INSERT INTO DevelopmentDirector VALUES('U0003GCR', 'director', 13);
INSERT INTO DevelopmentDirector VALUES('U0002INF', 'director', 17);
INSERT INTO DevelopmentDirector VALUES('U0002SSU', 'director', 5);
INSERT INTO DevelopmentDirector VALUES('U0002NDC', 'director', 9);
INSERT INTO DevelopmentDirector VALUES('U0003NDC', 'director', 12);
INSERT INTO DevelopmentDirector VALUES('U0004NDC', 'director', 11);
INSERT INTO DevelopmentDirector VALUES('U0002TRA', 'director', 6);
INSERT INTO DevelopmentDirector VALUES('U0003TRA', 'director', 5);
INSERT INTO DevelopmentDirector VALUES('U0004TRA', 'director', 18);
INSERT INTO DevelopmentDirector VALUES('U0002NPK', 'director', 13);
INSERT INTO DevelopmentDirector VALUES('U0002NAT', 'director', 22);
INSERT INTO DevelopmentDirector VALUES('U0003NAT', 'director', 17);
INSERT INTO DevelopmentDirector VALUES('U0004NAT', 'director', 11);

/* subtype of of isa-hierarchy */
/* experience is the amount of years worked at a studio*/
CREATE TABLE IF NOT EXISTS GameDesigner (
	`UserID` varchar(8) NOT NULL,
    `Function` TEXT CHECK(Function IN ('designer')) NOT NULL,
	`Experience` tinyint NOT NULL,
	CONSTRAINT PK_UserID PRIMARY KEY (UserID),
	CONSTRAINT FK_Job FOREIGN KEY (UserID, Function) REFERENCES Worker(UserID, Function) ON DELETE CASCADE 
);

INSERT INTO GameDesigner VALUES('U0003NAK', 'designer', 15);
INSERT INTO GameDesigner VALUES('U0004GCR', 'designer', 9);
INSERT INTO GameDesigner VALUES('U0003INF', 'designer', 21);
INSERT INTO GameDesigner VALUES('U0004INF', 'designer', 17);
INSERT INTO GameDesigner VALUES('U0003SSU', 'designer', 16);
INSERT INTO GameDesigner VALUES('U0005TRA', 'designer', 8);
INSERT INTO GameDesigner VALUES('U0005NAT', 'designer', 25);
INSERT INTO GameDesigner VALUES('U0006NAT', 'designer', 23);


/* subtype of of isa-hierarchy */
CREATE TABLE IF NOT EXISTS President (
	`UserID` varchar(8) NOT NULL,
    `Function` TEXT CHECK(Function IN ('president')) NOT NULL,
	`TimeframeOfPresidency` varchar(10),
	CONSTRAINT PK_UserID PRIMARY KEY (UserID),
	CONSTRAINT FK_Job FOREIGN KEY (UserID, Function) REFERENCES Worker(UserID, Function) ON DELETE CASCADE 
);

/* inserting data into table President*/
INSERT INTO President VALUES('U0001NAK', 'president', '1983-1990');
INSERT INTO President VALUES('U0001GCR', 'president', '2014-now');
INSERT INTO President VALUES('U0002GCR', 'president', '2014-now');
INSERT INTO President VALUES('U0001INF', 'president', '2002-2009');
INSERT INTO President VALUES('U0001SSU', 'president', '2008-2009');
INSERT INTO President VALUES('U0001NDC', 'president', '2019-now');
INSERT INTO President VALUES('U0001TRA', 'president', '2008-now');
INSERT INTO President VALUES('U0001NPK', 'president', '2015-2018');
INSERT INTO President VALUES('U0001NAT', 'president', '2002-2015');

CREATE TABLE IF NOT EXISTS GameFranchise (
	`FranchiseName` varchar(30) NOT NULL,
	`Release` datetime NOT NULL,	
	CONSTRAINT PK_GameFranchise PRIMARY KEY(FranchiseName)
);

/* inserting data into table GameFranchise*/
INSERT INTO GameFranchise VALUES('The Legend of Zelda', '21-02-1986');
INSERT INTO GameFranchise VALUES('Mario', '26-07-1983');
INSERT INTO GameFranchise VALUES('Crysis', '13-11-2007');
INSERT INTO GameFranchise VALUES('Call of Duty', '29-10-2003');
INSERT INTO GameFranchise VALUES('Sonic', '23-06-1991');


