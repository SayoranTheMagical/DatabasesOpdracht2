/* Higher level entities*/
--///////////////////////
CREATE TABLE IF NOT EXISTS Game(
	`GameID` varchar(8) NOT NULL,
	`DSID` varchar(8) NOT NULL,
	`PublisherID` varchar(8) NOT NULL,
	`SubfranchiseName` varchar(30) NOT NULL,
	`Title` char(25) NOT NULL,
	`Genre` char(15) NOT NULL,
	CONSTRAINT PK_GameID PRIMARY KEY (GameID),
	CONSTRAINT FK_DSID FOREIGN KEY (DSID) REFERENCES DevelopmentStudio(DSID),
	CONSTRAINT FK_PublisherID FOREIGN KEY (PublisherID) REFERENCES Publisher (PublisherID),
	CONSTRAINT FK_SubFranchise FOREIGN KEY (SubfranchiseName) REFERENCES SubFranchise (SubfranchiseName)
);

/* inserting data into table Game*/
INSERT INTO Game VALUES('G1DQAE01', 'D1DQBF01', 'DSP1DQ01', 'Mario Kart', 'Mario Kart 8', 'Race');
INSERT INTO Game VALUES('G1DQAE02', 'D1DQBF01', 'DSP1DQ01', 'Mario Kart', 'Mario Kart 7', 'Race');
INSERT INTO Game VALUES('G1DQAE03', 'D1DQBF02', 'DSP1DQ02', 'Crysis', 'Crysis 3', 'Shooter');
INSERT INTO Game VALUES('G1DQAE04', 'D1DQBF03', 'DSP1DQ03', 'Call of Duty', 'Call of Duty Ghosts', 'Shooter');
INSERT INTO Game VALUES('G1DQAE05', 'D1DQBF04', 'DSP1DQ04', 'Sonic 3D', 'Sonic and the black knight', 'Adventure');
INSERT INTO Game VALUES('G1DQAE06', 'D1DQBF05', 'DSP1DQ01', 'Mario Party', 'Mario Party 9', 'Family');
INSERT INTO Game VALUES('G1DQAE07', 'D1DQBF04', 'DSP1DQ04', 'Sonic 2D', 'Sonic Boom: Shattered Crystal', '3D platformer');
INSERT INTO Game VALUES('G1DQAE08', 'D1DQBF05', 'DSP1DQ01', 'Mario Party', 'Super Mario Party', 'Family');
INSERT INTO Game VALUES('G1DQAE09', 'D1DQBF04', 'DSP1DQ04', 'Sonic 3D', 'Sonic Forces', '3D platformer');
INSERT INTO Game VALUES('G1DQAE10', 'D1DQBF03', 'DSP1DQ03', 'Call of Duty', 'Call of Duty 2', 'Shooter');
INSERT INTO Game VALUES('G1DQAE11', 'D1DQBF04', 'DSP1DQ04', 'Sonic Race', 'Sonic Riders', 'Race');
INSERT INTO Game VALUES('G1DQAE12', 'D1DQBF02', 'DSP1DQ02', 'Crysis', 'Crysis 2', 'Shooter');
INSERT INTO Game VALUES('G1DQAE13', 'D1DQBF04', 'DSP1DQ04', 'Sonic 3D', 'Sonic Black Knight 2', 'Adventure');
INSERT INTO Game VALUES('G1DQAE14', 'D1DQBF06', 'DSP1DQ03', 'Call of Duty', 'Call of Duty Black Ops 3','Shooter');
INSERT INTO Game VALUES('G1DQAE15', 'D1DQBF07', 'DSP1DQ01', 'Zelda 3D', 'The Legend of Zelda: Breath of the wild', 'Adventure');
INSERT INTO Game VALUES('G1DQAE16', 'D1DQBF07', 'DSP1DQ01', 'Zelda 3D', 'The Legend of Zelda: Skyward Sword', 'Adventure');
INSERT INTO Game VALUES('G1DQAE17', 'D1DQBF07', 'DSP1DQ01', 'Zelda 3D', 'The Legend of Zelda: Ocarina of Time 3D', 'Adventure');
INSERT INTO Game VALUES('G1DQAE18', 'D1DQBF01', 'DSP1DQ01', 'Super Mario Bros', 'New Super Mario Bros Wii', '2D platformer');
INSERT INTO Game VALUES('G1DQAE19', 'D1DQBF08', 'DSP1DQ01', 'Mario 3D', 'Mario Galaxy', '3D platformer');
INSERT INTO Game VALUES('G1DQAE20', 'D1DQBF08', 'DSP1DQ01', 'Mario 3D', 'Mario Galaxy 2', '3D platformer');

CREATE TABLE IF NOT EXISTS System (
	`SystemID` varchar(8) NOT NULL, 
	`Name` varchar(20) NOT NULL, 
	`ConsoleLineID` varchar(8) NOT NULL,
	`ReleaseDate` datetime NOT NULL,
	`Bitsize` tinyint NOT NULL,
	CONSTRAINT PK_SystemID PRIMARY KEY (SystemID),
	CONSTRAINT FK_ConsoleLineID FOREIGN KEY (ConsoleLineID) REFERENCES ConsoleLine(ConsoleLineID)
);

/* inserting data into table System*/
INSERT INTO System VALUES('SEP1DQ01', 'Wii U', 'CSP1DQ01', '18-11-2012', 32);
INSERT INTO System VALUES('SEP1DQ02', 'Wii', 'CSP1DQ01', '28-08-2012', 32);
INSERT INTO System VALUES('SEP1DQ03', 'Nintendo 2DS', 'CSP1DQ01', '12-11-2013', 64);
INSERT INTO System VALUES('SEP1DQ04', 'Nintendo 3DS', 'CSP1DQ01', '26-02-2011', 64);
INSERT INTO System VALUES('SEP1DQ05', 'Nintendo Switch', 'CSP1DQ01', '03-03-2017', 64);
INSERT INTO System VALUES('SEP1DQ06', 'Playstation 2', 'CSP1DQ02', '04-03-2000', 64);
INSERT INTO System VALUES('SEP1DQ07', 'Playstation 3', 'CSP1DQ02', '11-11-2006', 64);
INSERT INTO System VALUES('SEP1DQ08', 'Playstation 4', 'CSP1DQ02', '15-11-2013', 64);
INSERT INTO System VALUES('SEP1DQ09', 'Xbox 360', 'CSP1DQ03', '22-11-2005', 64);
INSERT INTO System VALUES('SEP1DQ10', 'Xbox One', 'CSP1DQ03', '22-11-2013', 64);
INSERT INTO System VALUES('SEP1DQ11', 'Xbox One Series X', 'CSP1DQ03', '10-11-2020', 64);

CREATE TABLE IF NOT EXISTS DevelopmentStudio (
	`DSID` varchar(8) NOT NULL, 
	`Name` varchar(30) NOT NULL,
	`Location` char(30) NOT NULL,
	`Phone` char(10) NOT NULL,
	CONSTRAINT PK_DSID PRIMARY KEY (DSID)
);

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
	`Name` varchar(30) NOT NULL,
	`Location` char(30) NOT NULL,
	`Phone` char(10) NOT NULL,
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
	CONSTRAINT FK_Franchise FOREIGN KEY (FranchiseName) REFERENCES GameFranchise(FranchiseName) 	
);

INSERT INTO SubFranchise VALUES('Mario Kart', 'Mario', '27-08-1992');
INSERT INTO SubFranchise VALUES('Crysis', 'Crysis', '13-11-2007');
INSERT INTO SubFranchise VALUES('Call of Duty', 'Call of Duty', '29-10-2003');
INSERT INTO SubFranchise VALUES('Sonic 2D', 'Sonic', '23-06-1991');
INSERT INTO SubFranchise VALUES('Sonic 3D', 'Sonic', '07-11-1996');
INSERT INTO SubFranchise VALUES('Mario Party', 'Mario', '18-12-1998');
INSERT INTO SubFranchise VALUES('Sonic Race', 'Sonic', '18-03-1994');
INSERT INTO SubFranchise VALUES('Zelda 3D', 'The Legend of Zelda', '21-11-1998');
INSERT INTO SubFranchise VALUES('Super Mario Bros', 'Mario', '13-09-1985');
INSERT INTO SubFranchise VALUES('Mario 3D', 'Mario', '23-06-1996');

CREATE TABLE IF NOT EXISTS RegionVersion (
	`RegionID` varchar(8) NOT NULL,
	`RegionName` char(10) NOT NULL,
	`Release` datetime NOT NULL,   
	CONSTRAINT PK_RegionID PRIMARY KEY(RegionID)
);

/* inserting data into table RegionVersion*/
INSERT INTO RegionVersion VALUES('RTP1DQ01', 'NTSC-U', '05-12-2005');
INSERT INTO RegionVersion VALUES('RTP1DQ02', 'NTSC-C', '24-12-2005');
INSERT INTO RegionVersion VALUES('RTP1DQ03', 'NTSC-J', '02-12-2005');
INSERT INTO RegionVersion VALUES('RTP1DQ04', 'PAL-A', '12-08-2006');
INSERT INTO RegionVersion VALUES('RTP1DQ05', 'PAL-B', '22-08-2006');
INSERT INTO RegionVersion VALUES('RTP1DQ06', 'Asia', '21-12-2005');

/* Intersection Tables*/
--//////////////////////

/* connects table Game with table GameSystem */
CREATE TABLE IF NOT EXISTS GameSystem (
	`GameID` varchar(8) NOT NULL,
	`SystemID` varchar(8) NOT NULL,
	CONSTRAINT PK_GameSystem PRIMARY KEY(GameID, SystemID),
	CONSTRAINT FK_SystemID FOREIGN KEY (SystemID) REFERENCES System(SystemID),
	CONSTRAINT FK_GameID FOREIGN KEY (GameID) REFERENCES Game(GameID)
);

/* inserting data into table GameSystem*/
INSERT INTO GameSystem VALUES('G1DQAE01', 'SEP1DQ01');      
INSERT INTO GameSystem VALUES('G1DQAE02', 'SEP1DQ03');
INSERT INTO GameSystem VALUES('G1DQAE02', 'SEP1DQ04');
INSERT INTO GameSystem VALUES('G1DQAE03', 'SEP1DQ09');
INSERT INTO GameSystem VALUES('G1DQAE03', 'SEP1DQ10');
INSERT INTO GameSystem VALUES('G1DQAE03', 'SEP1DQ11');
INSERT INTO GameSystem VALUES('G1DQAE03', 'SEP1DQ06');
INSERT INTO GameSystem VALUES('G1DQAE03', 'SEP1DQ07');
INSERT INTO GameSystem VALUES('G1DQAE03', 'SEP1DQ08');
INSERT INTO GameSystem VALUES('G1DQAE04', 'SEP1DQ07');
INSERT INTO GameSystem VALUES('G1DQAE04', 'SEP1DQ08');
INSERT INTO GameSystem VALUES('G1DQAE04', 'SEP1DQ01');
INSERT INTO GameSystem VALUES('G1DQAE04', 'SEP1DQ09');
INSERT INTO GameSystem VALUES('G1DQAE04', 'SEP1DQ10');
INSERT INTO GameSystem VALUES('G1DQAE04', 'SEP1DQ11');
INSERT INTO GameSystem VALUES('G1DQAE05', 'SEP1DQ02');
INSERT INTO GameSystem VALUES('G1DQAE05', 'SEP1DQ07');
INSERT INTO GameSystem VALUES('G1DQAE05', 'SEP1DQ09');
INSERT INTO GameSystem VALUES('G1DQAE06', 'SEP1DQ02');
INSERT INTO GameSystem VALUES('G1DQAE07', 'SEP1DQ01');
INSERT INTO GameSystem VALUES('G1DQAE07', 'SEP1DQ03');
INSERT INTO GameSystem VALUES('G1DQAE07', 'SEP1DQ04');
INSERT INTO GameSystem VALUES('G1DQAE08', 'SEP1DQ05');
INSERT INTO GameSystem VALUES('G1DQAE09', 'SEP1DQ05');
INSERT INTO GameSystem VALUES('G1DQAE09', 'SEP1DQ08');
INSERT INTO GameSystem VALUES('G1DQAE10', 'SEP1DQ06');
INSERT INTO GameSystem VALUES('G1DQAE10', 'SEP1DQ09');
INSERT INTO GameSystem VALUES('G1DQAE11', 'SEP1DQ06');
INSERT INTO GameSystem VALUES('G1DQAE12', 'SEP1DQ07');
INSERT INTO GameSystem VALUES('G1DQAE12', 'SEP1DQ09');
INSERT INTO GameSystem VALUES('G1DQAE13', 'SEP1DQ01');
INSERT INTO GameSystem VALUES('G1DQAE13', 'SEP1DQ05');
INSERT INTO GameSystem VALUES('G1DQAE14', 'SEP1DQ07');
INSERT INTO GameSystem VALUES('G1DQAE14', 'SEP1DQ08');
INSERT INTO GameSystem VALUES('G1DQAE14', 'SEP1DQ01');
INSERT INTO GameSystem VALUES('G1DQAE14', 'SEP1DQ09');
INSERT INTO GameSystem VALUES('G1DQAE14', 'SEP1DQ10');
INSERT INTO GameSystem VALUES('G1DQAE15', 'SEP1DQ05');
INSERT INTO GameSystem VALUES('G1DQAE16', 'SEP1DQ02');
INSERT INTO GameSystem VALUES('G1DQAE16', 'SEP1DQ05');
INSERT INTO GameSystem VALUES('G1DQAE17', 'SEP1DQ03');
INSERT INTO GameSystem VALUES('G1DQAE17', 'SEP1DQ04');
INSERT INTO GameSystem VALUES('G1DQAE18', 'SEP1DQ02');
INSERT INTO GameSystem VALUES('G1DQAE19', 'SEP1DQ02');
INSERT INTO GameSystem VALUES('G1DQAE20', 'SEP1DQ02');


/* connects table Game with table RegionVersion */
CREATE TABLE IF NOT EXISTS GameRegionVersion (
	`GameID` varchar(8) NOT NULL,
	`RegionID` varchar(8) NOT NULL,
	CONSTRAINT PK_GameSystem PRIMARY KEY(GameID, RegionID),
	CONSTRAINT PK_RegionID FOREIGN KEY (RegionID) REFERENCES RegionVersion(RegionID),
	CONSTRAINT FK_GameID FOREIGN KEY (GameID) REFERENCES Game(GameID)
);

/* inserting data into table GameRegionVersion*/
INSERT INTO GameRegionVersion VALUES('G1DQAE01', 'RTP1DQ01');
INSERT INTO GameRegionVersion VALUES('G1DQAE01', 'RTP1DQ02');     
INSERT INTO GameRegionVersion VALUES('G1DQAE01', 'RTP1DQ03');
INSERT INTO GameRegionVersion VALUES('G1DQAE01', 'RTP1DQ04');
INSERT INTO GameRegionVersion VALUES('G1DQAE01', 'RTP1DQ05'); 
INSERT INTO GameRegionVersion VALUES('G1DQAE02', 'RTP1DQ01');
INSERT INTO GameRegionVersion VALUES('G1DQAE02', 'RTP1DQ02');
INSERT INTO GameRegionVersion VALUES('G1DQAE02', 'RTP1DQ03');
INSERT INTO GameRegionVersion VALUES('G1DQAE02', 'RTP1DQ04');
INSERT INTO GameRegionVersion VALUES('G1DQAE02', 'RTP1DQ05');
INSERT INTO GameRegionVersion VALUES('G1DQAE02', 'RTP1DQ06');
INSERT INTO GameRegionVersion VALUES('G1DQAE03', 'RTP1DQ01');
INSERT INTO GameRegionVersion VALUES('G1DQAE03', 'RTP1DQ02');
INSERT INTO GameRegionVersion VALUES('G1DQAE03', 'RTP1DQ04');
INSERT INTO GameRegionVersion VALUES('G1DQAE04', 'RTP1DQ01');
INSERT INTO GameRegionVersion VALUES('G1DQAE04', 'RTP1DQ02');
INSERT INTO GameRegionVersion VALUES('G1DQAE04', 'RTP1DQ04');
INSERT INTO GameRegionVersion VALUES('G1DQAE04', 'RTP1DQ06');
INSERT INTO GameRegionVersion VALUES('G1DQAE05', 'RTP1DQ01');
INSERT INTO GameRegionVersion VALUES('G1DQAE05', 'RTP1DQ03');
INSERT INTO GameRegionVersion VALUES('G1DQAE05', 'RTP1DQ04');
INSERT INTO GameRegionVersion VALUES('G1DQAE06', 'RTP1DQ01');
INSERT INTO GameRegionVersion VALUES('G1DQAE06', 'RTP1DQ02');
INSERT INTO GameRegionVersion VALUES('G1DQAE06', 'RTP1DQ03');
INSERT INTO GameRegionVersion VALUES('G1DQAE06', 'RTP1DQ04');
INSERT INTO GameRegionVersion VALUES('G1DQAE06', 'RTP1DQ05');
INSERT INTO GameRegionVersion VALUES('G1DQAE06', 'RTP1DQ06');
INSERT INTO GameRegionVersion VALUES('G1DQAE07', 'RTP1DQ01');
INSERT INTO GameRegionVersion VALUES('G1DQAE07', 'RTP1DQ03');
INSERT INTO GameRegionVersion VALUES('G1DQAE07', 'RTP1DQ04');
INSERT INTO GameRegionVersion VALUES('G1DQAE08', 'RTP1DQ01');
INSERT INTO GameRegionVersion VALUES('G1DQAE08', 'RTP1DQ02');
INSERT INTO GameRegionVersion VALUES('G1DQAE08', 'RTP1DQ03');
INSERT INTO GameRegionVersion VALUES('G1DQAE08', 'RTP1DQ04');
INSERT INTO GameRegionVersion VALUES('G1DQAE09', 'RTP1DQ01');
INSERT INTO GameRegionVersion VALUES('G1DQAE09', 'RTP1DQ03');
INSERT INTO GameRegionVersion VALUES('G1DQAE09', 'RTP1DQ04');
INSERT INTO GameRegionVersion VALUES('G1DQAE09', 'RTP1DQ05');
INSERT INTO GameRegionVersion VALUES('G1DQAE10', 'RTP1DQ01');
INSERT INTO GameRegionVersion VALUES('G1DQAE10', 'RTP1DQ04');
INSERT INTO GameRegionVersion VALUES('G1DQAE11', 'RTP1DQ01');
INSERT INTO GameRegionVersion VALUES('G1DQAE11', 'RTP1DQ02');
INSERT INTO GameRegionVersion VALUES('G1DQAE11', 'RTP1DQ03');
INSERT INTO GameRegionVersion VALUES('G1DQAE11', 'RTP1DQ04');
INSERT INTO GameRegionVersion VALUES('G1DQAE12', 'RTP1DQ01');
INSERT INTO GameRegionVersion VALUES('G1DQAE12', 'RTP1DQ04');
INSERT INTO GameRegionVersion VALUES('G1DQAE13', 'RTP1DQ01');
INSERT INTO GameRegionVersion VALUES('G1DQAE13', 'RTP1DQ03');
INSERT INTO GameRegionVersion VALUES('G1DQAE13', 'RTP1DQ04');
INSERT INTO GameRegionVersion VALUES('G1DQAE14', 'RTP1DQ01');
INSERT INTO GameRegionVersion VALUES('G1DQAE14', 'RTP1DQ04');
INSERT INTO GameRegionVersion VALUES('G1DQAE14', 'RTP1DQ05');
INSERT INTO GameRegionVersion VALUES('G1DQAE14', 'RTP1DQ03');
INSERT INTO GameRegionVersion VALUES('G1DQAE15', 'RTP1DQ01');
INSERT INTO GameRegionVersion VALUES('G1DQAE15', 'RTP1DQ03');
INSERT INTO GameRegionVersion VALUES('G1DQAE15', 'RTP1DQ04');
INSERT INTO GameRegionVersion VALUES('G1DQAE15', 'RTP1DQ06');
INSERT INTO GameRegionVersion VALUES('G1DQAE16', 'RTP1DQ01');
INSERT INTO GameRegionVersion VALUES('G1DQAE16', 'RTP1DQ03');
INSERT INTO GameRegionVersion VALUES('G1DQAE16', 'RTP1DQ04');
INSERT INTO GameRegionVersion VALUES('G1DQAE17', 'RTP1DQ01');
INSERT INTO GameRegionVersion VALUES('G1DQAE17', 'RTP1DQ03');
INSERT INTO GameRegionVersion VALUES('G1DQAE17', 'RTP1DQ04');
INSERT INTO GameRegionVersion VALUES('G1DQAE18', 'RTP1DQ01');
INSERT INTO GameRegionVersion VALUES('G1DQAE18', 'RTP1DQ02');
INSERT INTO GameRegionVersion VALUES('G1DQAE18', 'RTP1DQ03');
INSERT INTO GameRegionVersion VALUES('G1DQAE19', 'RTP1DQ01');
INSERT INTO GameRegionVersion VALUES('G1DQAE19', 'RTP1DQ03');
INSERT INTO GameRegionVersion VALUES('G1DQAE19', 'RTP1DQ04');
INSERT INTO GameRegionVersion VALUES('G1DQAE20', 'RTP1DQ01');
INSERT INTO GameRegionVersion VALUES('G1DQAE20', 'RTP1DQ05');
INSERT INTO GameRegionVersion VALUES('G1DQAE20', 'RTP1DQ06');

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
INSERT INTO ConsoleLine VALUES('CSP1DQ01', 'Wii', '19-11-2006', 32)
INSERT INTO ConsoleLine VALUES('CSP1DQ01', 'Nintendo', '21-11-1982', 8);
INSERT INTO ConsoleLine VALUES('CSP1DQ02', 'Playstation','3-12-1996', 32);
INSERT INTO ConsoleLine VALUES('CSP1DQ03', 'Xbox', '15-11-2001', 64);

/* supertype of isa-hierarchy */
/* uses a composite primary key, since foreign keys of the child tables are also composite keys */
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
    CONSTRAINT PK_UserID PRIMARY KEY (UserID, Function),
	CONSTRAINT FK_DSID FOREIGN KEY (DSID) REFERENCES DevelopmentStudio(DSID)
);

INSERT INTO Worker VALUES('U0001NAK', 'DSP1DQ01', 'president', 'Hiroshi', 'Ikeda', '193-1023 Nishishinjuku Shinjuku Mitsuibiru(43-kai)', '7095025502', '03-06-1952');
INSERT INTO Worker VALUES('U0002NAK', 'DSP1DQ01', 'director', 'Kosuke', 'Yabuki', '463-1082 Kisshoin Higashisunanocho', '8010421563', '05-11-1968');
INSERT INTO Worker VALUES('U0003NAK', 'DSP1DQ01', 'designer', 'Masaaki', 'Ishikawa', '322-1091 Miyamacho Nagao', '8061204776', '14-12-1970');
INSERT INTO Worker VALUES('U0001GCR', 'DSP1DQ02', 'president', 'Avni', 'Yerli', 'Lietzenburger Strasse 90', '1600255232', '09-10-1975');
INSERT INTO Worker VALUES('U0002GCR', 'DSP1DQ02', 'president', 'Faruk', 'Yerli', 'Brandenburgische Straße 37', '5571229157', '17-08-1981');
INSERT INTO Worker VALUES('U0003GCR', 'DSP1DQ02', 'director', 'Cevat', 'Yerli', 'Fasanenstrasse 63', '7626297987', '06-03-1978');
INSERT INTO Worker VALUES('U0004GCR', 'DSP1DQ02', 'designer', 'Jack', 'Mamais', 'Borstelmannsweg 10', '1780802937', '23-07-1986');
INSERT INTO Worker VALUES('U0001INF', 'DSP1DQ03', 'president', 'Grant', 'Collier', '2673  Twin Willow Lane', '3365548554', '07-07-1981');
INSERT INTO Worker VALUES('U0002INF', 'DSP1DQ03', 'director', 'Jason', 'West', '1288  Fannie Street', '5858339214', '08-09-1977');
INSERT INTO Worker VALUES('U0003INF', 'DSP1DQ03', 'designer', 'Zied', 'Rieke', '2934  Jewell Road', '2132851200', '24-02-1973');
INSERT INTO Worker VALUES('U0004INF', 'DSP1DQ03', 'designer', 'Steve', 'Fukuda', '3818  Anthony Avenue', '2132133919', '27-04-1979');
INSERT INTO Worker VALUES('U0001SSU', 'DSP1DQ04', 'president', 'Jeremy', 'Gordon', '2931  Modoc Alley', '2142714938', '17-05-1969');
INSERT INTO Worker VALUES('U0002SSU', 'DSP1DQ04', 'director', 'Tetsu', 'Katano', '1253  Scott Street', '7043132141', '15-03-1962');
INSERT INTO Worker VALUES('U0003SSU', 'DSP1DQ04', 'designer', 'Morio', 'Kishimoto', '1446  Michigan Avenue', '8055852725', '18-12-1965');
INSERT INTO Worker VALUES('U0001NDC', 'DSP1DQ05', 'president', 'Shuichiro', 'Nishiya', '470-1087 Honcho', '8082325597', '07-09-1957');
INSERT INTO Worker VALUES('U0002NDC', 'DSP1DQ05', 'director', 'Atsushi', 'Ikeda', '289-1264 Ikanikeisaiganaibaai', '8088955705', '23-01-1976');
INSERT INTO Worker VALUES('U0003NDC', 'DSP1DQ05', 'director', 'Keisuke', 'Terasaki', '107-1049 Ohashinaicho', '7037915417', '14-08-1968');
INSERT INTO Worker VALUES('U0004NDC', 'DSP1DQ05', 'director', 'Kenji', 'Kikuchi', '231-1004 Tokiwa', '8083571408', '19-11-1972');
INSERT INTO Worker VALUES('U0001TRA', 'DSP1DQ06', 'president', 'Peter', 'Akemann', '326  Coventry Court', '2195757984', '28-01-1981');
INSERT INTO Worker VALUES('U0002TRA', 'DSP1DQ06', 'director', 'Jason', 'Blundell', '2688  Marion Drive', '2232574216', '15-06-1979');
INSERT INTO Worker VALUES('U0003TRA', 'DSP1DQ06', 'director', 'Dan', 'Bunting', '4999  New Creek Road', '2066428437', '21-12-1985');
INSERT INTO Worker VALUES('U0004TRA', 'DSP1DQ06', 'director', 'Corky', 'Lehmkuhl', '3071  Aviation Way', '3215486836', '18-09-1973');
INSERT INTO Worker VALUES('U0005TRA', 'DSP1DQ06', 'designer', 'Gavin', 'Locke', '57  Fort Street', '2139140113', '15-11-1978');
INSERT INTO Worker VALUES('U0001NPK', 'DSP1DQ07', 'president', 'Tatsumi', 'Kimishima', '101-1296 Shuchi', '9082297513', '21-04-1950');
INSERT INTO Worker VALUES('U0002NPK', 'DSP1DQ07', 'director', 'Koichi', 'Hayashida', '389-1188 Misasagi Shichonocho', '8086253587', '08-03-1957');
INSERT INTO Worker VALUES('U0001NAT', 'DSP1DQ08', 'president', 'Satoru', 'Iwata', '376-1075 Ochikawa', '9064651542', '23-01-1959');
INSERT INTO Worker VALUES('U0002NAT', 'DSP1DQ08', 'director', 'Shigeyuki', 'Asuke', '2-6 Minami Aoyama 6-chome', '8019988767', '23-01-1973');
INSERT INTO Worker VALUES('U0003NAT', 'DSP1DQ08', 'director', 'Yoshiaki', 'Koizumi', '333-1012 Aizumicho', '9061439732', '29-04-1968');
INSERT INTO Worker VALUES('U0004NAT', 'DSP1DQ08', 'director', 'Hidemaro', 'Fujibayashi', '224-1204 Itabashi', '9034234645', '01-10-1972');
INSERT INTO Worker VALUES('U0005NAT', 'DSP1DQ08', 'designer', 'Takashi', 'Tezuka', '258-1104 Kotta', '9094948644', '17-11-1960');
INSERT INTO Worker VALUES('U0006NAT', 'DSP1DQ08', 'designer', 'Hiroyuki', 'Kimura', '191-1178 Konan Shinagawaintashiteia-to(27-kai)', '8041625246', '01-06-1965');

/* subtype of of isa-hierarchy */
/* experience is the amount of years worked at a studio*/
CREATE TABLE IF NOT EXISTS DevelopmentDirector (
	`UserID` varchar(8) NOT NULL,
    `Function` TEXT CHECK(Function IN ('director')) NOT NULL,
	`Experience` tinyint NOT NULL, 
	CONSTRAINT PK_UserID PRIMARY KEY (UserID),
	CONSTRAINT FK_Job FOREIGN KEY (UserID, Function) REFERENCES Worker(UserID, Function)
);

INSERT INTO DevelopmentDirector VALUES('U0002NAK', 'director', '24');
INSERT INTO DevelopmentDirector VALUES('U0003GCR', 'director', '13');
INSERT INTO DevelopmentDirector VALUES('U0002INF', 'director', '17');
INSERT INTO DevelopmentDirector VALUES('U0002SSU', 'director', '5');
INSERT INTO DevelopmentDirector VALUES('U0002NDC', 'director', '9');
INSERT INTO DevelopmentDirector VALUES('U0003NDC', 'director', '12');
INSERT INTO DevelopmentDirector VALUES('U0004NDC', 'director', '11');
INSERT INTO DevelopmentDirector VALUES('U0002TRA', 'director', '6');
INSERT INTO DevelopmentDirector VALUES('U0003TRA', 'director', '5');
INSERT INTO DevelopmentDirector VALUES('U0004TRA', 'director', '18');
INSERT INTO DevelopmentDirector VALUES('U0002NPK', 'director', '13');
INSERT INTO DevelopmentDirector VALUES('U0002NAT', 'director', '22');
INSERT INTO DevelopmentDirector VALUES('U0003NAT', 'director', '17');
INSERT INTO DevelopmentDirector VALUES('U0004NAT', 'director', '11');

/* subtype of of isa-hierarchy */
/* experience is the amount of years worked at a studio*/
CREATE TABLE IF NOT EXISTS GameDesigner (
	`UserID` varchar(8) NOT NULL,
    `Function` TEXT CHECK(Function IN ('designer')) NOT NULL,
	`Experience` tinyint NOT NULL,
	CONSTRAINT PK_UserID PRIMARY KEY (UserID),
	CONSTRAINT FK_Job FOREIGN KEY (UserID, Function) REFERENCES Worker(UserID, Function)
);

INSERT INTO GameDesigner VALUES('U0003NAK', 'designer', '15');
INSERT INTO GameDesigner VALUES('U0004GCR', 'designer', '9');
INSERT INTO GameDesigner VALUES('U0003INF', 'designer', '21');
INSERT INTO GameDesigner VALUES('U0004INF', 'designer', '17');
INSERT INTO GameDesigner VALUES('U0003SSU', 'designer', '16');
INSERT INTO GameDesigner VALUES('U0005TRA', 'designer', '8');
INSERT INTO GameDesigner VALUES('U0005NAT', 'designer', '25');
INSERT INTO GameDesigner VALUES('U0006NAT', 'designer', '23');


/* subtype of of isa-hierarchy */
CREATE TABLE IF NOT EXISTS President (
	`UserID` varchar(8) NOT NULL,
    `Function` TEXT CHECK(Function IN ('president')) NOT NULL,
	`TimeframeOfPresidency` varchar(10) NOT NULL,
	CONSTRAINT PK_UserID PRIMARY KEY (UserID),
	CONSTRAINT FK_Job FOREIGN KEY (UserID, Function) REFERENCES Worker(UserID, Function)
);

INSERT INTO President VALUES('U0001NAK', 'president', '28');
INSERT INTO President VALUES('U0001GCR', 'president', '19');
INSERT INTO President VALUES('U0002GCR', 'president', '19');
INSERT INTO President VALUES('U0001INF', 'president', '22');
INSERT INTO President VALUES('U0001SSU', 'president', '18');
INSERT INTO President VALUES('U0001NDC', 'president', '21');
INSERT INTO President VALUES('U0001TRA', 'president', '15');
INSERT INTO President VALUES('U0001NPK', 'president', '23');
INSERT INTO President VALUES('U0001NAT', 'president', '37');

CREATE TABLE IF NOT EXISTS GameFranchise (
	`FranchiseName` varchar(30) NOT NULL,
	`Release` datetime NOT NULL,	
	CONSTRAINT PK_GameFranchise PRIMARY KEY(FranchiseName)
);

INSERT INTO GameFranchise VALUES('Mario', '26-07-1983');
INSERT INTO GameFranchise VALUES('Sonic', '23-06-1991');
INSERT INTO GameFranchise VALUES('Call of Duty', '29-10-2003');
INSERT INTO GameFranchise VALUES('Crysis', '13-11-2007');
INSERT INTO GameFranchise VALUES('The Legend of Zelda', '21-02-1986');


