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
INSERT INTO Game VALUES('G1DQAE02', 'D1DQBF02', 'DSP1DQ01', 'Mario Kart', 'Mario Kart 7', 'Race');
INSERT INTO Game VALUES('G1DQAE03', 'D1DQBF03', 'DSP1DQ02', 'Crysis series', 'Crysis 3', 'Shooter');
INSERT INTO Game VALUES('G1DQAE04', 'D1DQBF04', 'DSP1DQ03', 'Call of Duty', 'Call of Duty Ghosts', 'Shooter');
INSERT INTO Game VALUES('G1DQAE05', 'D1DQBF05', 'DSP1DQ04', 'Sonic Knight', 'Sonic and the black knight', 'Adventure');
INSERT INTO Game VALUES('G1DQAE06', 'D1DQBF06', 'DSP1DQ01', 'Mario Party', 'Mario Party 9', 'Family');
INSERT INTO Game VALUES('G1DQAE07', 'D1DQBF07', 'DSP1DQ04', 'Sonic Platform', 'Sonic Boom', 'Adventure');
INSERT INTO Game VALUES('G1DQAE08', 'D1DQBF08', 'DSP1DQ01', 'Mario Party', 'Super Mario Party', 'Family');
INSERT INTO Game VALUES('G1DQAE09', 'D1DQBF09', 'DSP1DQ04', 'Sonic Platform', 'Sonic Forces', 'Adventure');
INSERT INTO Game VALUES('G1DQAE10', 'D1DQBF10', 'DSP1DQ03', 'Call of Duty', 'Call of Duty 2', 'Shooter');
INSERT INTO Game VALUES('G1DQAE11', 'D1DQBF11', 'DSP1DQ04', 'Sonic Race', 'Sonic Riders', 'Race');
INSERT INTO Game VALUES('G1DQAE12', 'D1DQBF12', 'DSP1DQ02', 'Crysis series', 'Crysis 2', 'Shooter');
INSERT INTO Game VALUES('G1DQAE13', 'D1DQBF13', 'DSP1DQ04', 'Sonic Knight', 'Sonic Black Knight 2', 'Adventure');
INSERT INTO Game VALUES('G1DQAE14', 'D1DQBF14', 'DSP1DQ03', 'Call of Duty', 'Call of Duty Black Ops 3','Shooter');
INSERT INTO Game VALUES('G1DQAE15', 'D1DQBF15', 'DSP1DQ01', 'Zelda Adventure', 'Zelda Breath of the wild', 'Adventure');
INSERT INTO Game VALUES('G1DQAE16', 'D1DQBF16', 'DSP1DQ01', 'Zelda Adventure', 'The Legend of Zelda Skyward Sword', 'Adventure');
INSERT INTO Game VALUES('G1DQAE17', 'D1DQBF17', 'DSP1DQ01', 'Zelda Adventure', 'The Legend of Zelda: Ocarina of Time', 'Adventure');
INSERT INTO Game VALUES('G1DQAE18', 'D1DQBF18', 'DSP1DQ01', 'Mario Platform', 'Super Mario Bros.Wii', 'Adventure');
INSERT INTO Game VALUES('G1DQAE19', 'D1DQBF19', 'DSP1DQ01', 'Mario Galaxy', 'Mario Galaxy 1', 'Adventure');
INSERT INTO Game VALUES('G1DQAE20', 'D1DQBF20', 'DSP1DQ01', 'Mario Galaxy', 'Mario Galaxy 2', 'Adventure');

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
INSERT INTO System VALUES('SEP1DQ02', 'Wii Black', 'CSP1DQ01', '28-08-2012', 32);
INSERT INTO System VALUES('SEP1DQ03', 'Nintendo 2DS', 'CSP1DQ02', '12-11-2013', 64);
INSERT INTO System VALUES('SEP1DQ04', 'Nintendo 3DS', 'CSP1DQ02', '26-02-2011', 64);
INSERT INTO System VALUES('SEP1DQ05', 'Nintendo Switch', 'CSP1DQ02', '03-03-2017', 64);
INSERT INTO System VALUES('SEP1DQ06', 'Playstation 2', 'CSP1DQ03', '04-03-2000', 64);
INSERT INTO System VALUES('SEP1DQ07', 'Playstation 3', 'CSP1DQ03', '11-11-2006', 64);
INSERT INTO System VALUES('SEP1DQ08', 'Playstation 4', 'CSP1DQ03', '15-11-2013', 64);
INSERT INTO System VALUES('SEP1DQ09', 'Xbox 360', 'CSP1DQ04', '22-11-2005', 64);
INSERT INTO System VALUES('SEP1DQ10', 'Xbox One', 'CSP1DQ04', '22-11-2013', 64);
INSERT INTO System VALUES('SEP1DQ11', 'Xbox One X', 'CSP1DQ04', '10-11-2020', 64);

CREATE TABLE IF NOT EXISTS DevelopmentStudio (
	`DSID` varchar(8) NOT NULL, 
	`Name` varchar(30) NOT NULL,
	`Location` char(30) NOT NULL,
	`Phone` char(10) NOT NULL,
	CONSTRAINT PK_DSID PRIMARY KEY (DSID)
);

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
INSERT INTO ConsoleLine  VALUES('CSP1DQ01', 'Wii', '19-11-2006', 32);
INSERT INTO ConsoleLine  VALUES('CSP1DQ02', 'Nintendo', '21-11-2004', 64);
INSERT INTO ConsoleLine  VALUES('CSP1DQ03', 'Playstation','3-12-1994', 64);
INSERT INTO ConsoleLine  VALUES('CSP1DQ04', 'Xbox', '15-11-2001', 64);

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

/* subtype of of isa-hierarchy */
/* experience is the amount of years worked at a studio*/
CREATE TABLE IF NOT EXISTS DevelopmentDirector (
	`UserID` varchar(8) NOT NULL,
    `Function` TEXT CHECK(Function IN ('director')) NOT NULL,
	`Experience` tinyint NOT NULL, 
	CONSTRAINT PK_UserID PRIMARY KEY (UserID),
	CONSTRAINT FK_Job FOREIGN KEY (UserID, Function) REFERENCES Worker(UserID, Function)
);

/* subtype of of isa-hierarchy */
/* experience is the amount of years worked at a studio*/
CREATE TABLE IF NOT EXISTS GameDesigner (
	`UserID` varchar(8) NOT NULL,
    `Function` TEXT CHECK(Function IN ('designer')) NOT NULL,
	`Experience` tinyint NOT NULL,
	CONSTRAINT PK_UserID PRIMARY KEY (UserID),
	CONSTRAINT FK_Job FOREIGN KEY (UserID, Function) REFERENCES Worker(UserID, Function)
);

/* subtype of of isa-hierarchy */
CREATE TABLE IF NOT EXISTS President (
	`UserID` varchar(8) NOT NULL,
    `Function` TEXT CHECK(Function IN ('president')) NOT NULL,
	`TimeframeOfPresidency` varchar(10) NOT NULL,
	CONSTRAINT PK_UserID PRIMARY KEY (UserID),
	CONSTRAINT FK_Job FOREIGN KEY (UserID, Function) REFERENCES Worker(UserID, Function)
);

CREATE TABLE IF NOT EXISTS GameFranchise (
	`FranchiseName` varchar(30) NOT NULL,
	`Release` datetime NOT NULL,	
	CONSTRAINT PK_GameFranchise PRIMARY KEY(FranchiseName)
);


