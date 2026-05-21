CREATE TABLE conferences (
	confabbrev text PRIMARY KEY,
	description text
);

CREATE TABLE mteams (
	teamid int PRIMARY KEY,
	teamname text,
	firstd1season int,
	lastd1season int
);

CREATE TABLE mteamconferences (
	season int PRIMARY KEY,
	teamid int REFERENCES mteams(teamid),
	confabbrev text REFERENCES conferences(confabbrev)
);

CREATE TABLE mregularseasondetailedresults (
	gameid SERIAL PRIMARY KEY, 
	season int,
	daynum int,
	wteamid int REFERENCES mteams(teamid),
	wscore int,
	lteamid int REFERENCES mteams(teamid),
	lscore int,
	winning_loc varchar(1),
	numot int,
	wfgm int,
	wfga int,
	wfgm3 int,
	wfga3 int,
	wftm int,
	wfta int,
	wor int,
	wdr int,
	wast int,
	wto int,
	wstl int,
	wblk int,
	wpf int,
	lfgm int,
	lfga int,
	lfgm3 int,
	lfga3 int,
	lftm int,
	lfta int,
	lor int,
	ldr int,
	last int,
	lto int,
	lstl int,
	lblk int,
	lpf int
);

CREATE TABLE mconferencetourneygames (
	season int,
	confabbrev text,
	wteamid,
	lteamid
);

CREATE TABLE mncaatourneydetailedresults (
	gameid SERIAL PRIMARY KEY, 
	season int,
	daynum int,
	wteamid int REFERENCES mteams(teamid),
	wscore int,
	lteamid int REFERENCES mteams(teamid),
	lscore int,
	winning_loc varchar(1),
	numot int,
	wfgm int,
	wfga int,
	wfgm3 int,
	wfga3 int,
	wftm int,
	wfta int,
	wor int,
	wdr int,
	wast int,
	wto int,
	wstl int,
	wblk int,
	wpf int,
	lfgm int,
	lfga int,
	lfgm3 int,
	lfga3 int,
	lftm int,
	lfta int,
	lor int,
	ldr int,
	last int,
	lto int,
	lstl int,
	lblk int,
	lpf int
);