/* Higher level entities*/
--///////////////////////
CREATE TABLE IF NOT EXISTS Game(
	`GameID` varchar(8) NOT NULL,
	`DSID` varchar(8) NOT NULL,
	`PublisherID` varchar(8) NOT NULL,
	`SubfranchiseName` varchar(30) NOT NULL,
	`SystemID` varchar(8) NOT NULL,
	`Title` char(25) NOT NULL,
	`Genre` char(15) NOT NULL,
	CONSTRAINT PK_GameID PRIMARY KEY (GameID),
	CONSTRAINT FK_DSID FOREIGN KEY (DSID) REFERENCES DevelopmentStudio(DSID),
	CONSTRAINT FK_PublisherID FOREIGN KEY (PublisherID) REFERENCES Publisher (PublisherID),
	CONSTRAINT FK_SubFranchise FOREIGN KEY (SubfranchiseName) REFERENCES SubFranchise (SubfranchiseName),
	CONSTRAINT FK_SystemID FOREIGN KEY (SystemID) REFERENCES System(SystemID),
	CONSTRAINT FK_GameID FOREIGN KEY (GameID) REFERENCES RegionVersion(GameID)
);

/* inserting data into table Game*/
INSERT INTO Game  VALUES('G1DQAE01', 'D1DQBF01', 'DSP1DQ01', 'Mario Kart 8', 'SEP1DQ01', 'Mario Kart 8', 'Race');
INSERT INTO Game  VALUES('G1DQAE02', 'D1DQBF02', 'DSP1DQ02', 'Mario Kart DS', 'SEP1DQ02', 'Mario Kart DS', 'Race');
INSERT INTO Game  VALUES('G1DQAE03', 'D1DQBF03', 'DSP1DQ03', 'Crysis', 'SEP1DQ01', 'Crysis 3', 'P1DQ01');
INSERT INTO Game  VALUES('G1DQAE04', 'D1DQBF04', 'DSP1DQ04', 'Game 1', 'SEP1DQ01', 'Game 1', 'P1DQ01');
INSERT INTO Game  VALUES('G1DQAE05', 'D1DQBF05', 'DSP1DQ05', 'Game 1', 'SEP1DQ01', 'Game 1', 'P1DQ01');
INSERT INTO Game  VALUES('G1DQAE06', 'D1DQBF06', 'DSP1DQ06', 'Game 1', 'SEP1DQ01', 'Game 1', 'P1DQ01');
INSERT INTO Game  VALUES('G1DQAE07', 'D1DQBF07', 'DSP1DQ07', 'Crysis 3', 'SEP1DQ01', 'Crysis 3', 'P1DQ01');
INSERT INTO Game  VALUES('G1DQAE08', 'D1DQBF08', 'DSP1DQ08', 'Game 1', 'SEP1DQ01', 'Game 1', 'P1DQ01');
INSERT INTO Game  VALUES('G1DQAE09', 'D1DQBF09', 'DSP1DQ09', 'Game 1', 'SEP1DQ01', 'Game 1', 'P1DQ01');
INSERT INTO Game  VALUES('G1DQAE10', 'D1DQBF10', 'DSP1DQ10', 'Game 1', 'SEP1DQ01', 'Game 1', 'P1DQ01');



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
INSERT INTO Game  VALUES('SEP1DQ01', 'Wii U', 'CSP1DQ01', '18-11-2012', '64');
INSERT INTO Game  VALUES('SEP1DQ02', 'Wii', 'CSP1DQ01', '19-11-2016', '32');
INSERT INTO Game  VALUES('SEP1DQ03', 'Nintendo DS', 'CSP1DQ02', '19-11-2016', '32');
INSERT INTO Game  VALUES('SEP1DQ03', 'Nintendo 3DS', 'CSP1DQ02', '19-11-2016', '32');
INSERT INTO Game  VALUES('SEP1DQ08', 'Nintendo Switch', 'CSP1DQ02', '19-11-2016', '32');
INSERT INTO Game  VALUES('SEP1DQ04', 'Playstation 2', 'CSP1DQ03', '19-11-2016', '32');
INSERT INTO Game  VALUES('SEP1DQ04', 'Playstation 3', 'CSP1DQ03', '19-11-2016', '32');
INSERT INTO Game  VALUES('SEP1DQ05', 'Playstation 4', 'CSP1DQ03', '19-11-2016', '32');
INSERT INTO Game  VALUES('SEP1DQ06', 'Xbox 360', 'CSP1DQ04', '19-11-2016', '32');
INSERT INTO Game  VALUES('SEP1DQ07', 'Xbox one', 'CSP1DQ04', '19-11-2016', '32');
INSERT INTO Game  VALUES('SEP1DQ08', 'Xbox one X', 'CSP1DQ04', '19-11-2016', '32');

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

CREATE TABLE IF NOT EXISTS SubFranchise (
	`SubfranchiseName` varchar(30) NOT NULL,
	`FranchiseName` varchar(30) NOT NULL,
	`Release` datetime NOT NULL,
	CONSTRAINT PK_Subfranchise PRIMARY KEY(SubfranchiseName),
	CONSTRAINT FK_Franchise FOREIGN KEY (FranchiseName) REFERENCES GameFranchise(FranchiseName) 	
);

CREATE TABLE IF NOT EXISTS RegionVersion (
	`GameID` varchar(8) NOT NULL,
	`RegionName` char(10) NOT NULL,
	`Release` datetime NOT NULL,
	CONSTRAINT PK_GameID PRIMARY KEY(GameID)
);

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
INSERT INTO Game  VALUES('CSP1DQ01', 'Wii', '19-11-2016', '32');
INSERT INTO Game  VALUES('CSP1DQ02', 'Nintendo', '19-11-2016', '64');
INSERT INTO Game  VALUES('CSP1DQ03', 'Playstation','19-11-2016', '32');
INSERT INTO Game  VALUES('CSP1DQ04', 'Xbox', '19-11-2016', '32');

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


