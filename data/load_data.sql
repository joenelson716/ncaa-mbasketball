-- NCAA Basketball Data Load script

-- 1. Conferences (no dependencies)
\copy conferences(confabbrev, description)
FROM '/home/joe/ncaa-mbasketball/data/Conferences.csv'
WITH (FORMAT csv, HEADER true);

-- 2. Team (no dependencies)
\copy mteams(teamid, teamname, firstd1season, lastd1season)
FROM '/home/joe/ncaa-mbasketball/data/MTeams.csv'
WITH (FORMAT csv, HEADER true);

-- 3. Conference tourney games (references mteams, conferences)
\copy mconferencetourneygames(season, confabbrev, wteamid, lteamid)
FROM '/home/joe/ncaa-mbasketball/data/MConferenceTourneyGames.csv'
WITH (FORMAT csv, HEADER true);

-- 4. Regular season results (references mteams)
\copy mregularseasondetailedresults(season, daynum, wteamid, wscore, lteamid, lscore, winning_loc, numot, wfgm, wfga, wfgm3, wfga3, wftm, wfta, wor, wdr, wast, wto, wstl, wblk, wpf, lfgm, lfga, lfgm3, lfga3, lftm, lfta, lor, ldr, last, lto, lstl, lblk, lpf)
FROM '/home/joe/ncaa-mbasketball/data/MRegularSeasonDetailedResults.csv'
WITH (FORMAT csv, HEADER true);

-- 5. NCAA tourney results (references mteams)
\copy mncaatourneydetailedresults(season, daynum, wteamid, wscore, lteamid, lscore, winning_loc, numot, wfgm, wfga, wfgm3, wfga3, wftm, wfta, wor, wdr, wast, wto, wstl, wblk, wpf, lfgm, lfga, lfgm3, lfga3, lftm, lfta, lor, ldr, last, lto, lstl, lblk, lpf)
FROM '/home/joe/ncaa-mbasketball/data/MNCAATourneyDetailedResults.csv'
WITH (FORMAT csv, HEADER true);
