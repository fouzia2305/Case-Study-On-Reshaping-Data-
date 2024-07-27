create database Assignment;

CREATE TABLE Tournament (
    Team1 VARCHAR(50),
    Team2 VARCHAR(50),
    Winner VARCHAR(50)
);


INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('RCB', 'CSK', 'RCB');
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('MI', 'CSK', 'MI');
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('RCB', 'MI', 'RCB');
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('CSK', 'MI', 'CSK');
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('MI', 'RCB', 'MI');
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('CSK', 'RCB', 'CSK');
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('MI', 'CSK', 'MI');
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('RCB', 'CSK', 'RCB');
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('RCB', 'MI', 'RCB');
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('MI', 'CSK', 'MI');
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('CSK', 'RCB', 'CSK');
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('MI', 'CSK', 'MI');
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('RCB', 'MI', 'RCB');
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('CSK', 'RCB', 'CSK');
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('CSK', 'MI', NULL);
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('MI', 'RCB', 'MI');
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('RCB', 'MI', 'RCB');
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('RCB', 'CSK', 'RCB');
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('MI', 'CSK', 'MI');
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('CSK', 'RCB', 'CSK');
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('CSK', 'MI', NULL);
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('MI', 'RCB', 'MI');
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('RCB', 'MI', 'RCB');
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('CSK', 'RCB', 'CSK');
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('MI', 'CSK', 'MI');
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('RCB', 'CSK', 'RCB');
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('CSK', 'MI', NULL);
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('MI', 'RCB', 'MI');
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('RCB', 'MI', 'RCB');
INSERT INTO Tournament (Team1, Team2, Winner) VALUES ('CSK', 'RCB', 'CSK');

select count(*) from tournament;
use assignment;

create table points(
Team varchar(50),
Matches int,
Won int,
Lost int,
Draw int,
Points int);

insert into points(team, matches, won, lost,draw,points)
select team, count(*) as matches,
sum(case when winner = team then 1 else 0 end) as won,
count(*)- sum(case when winner=team then 1 else 0 end ) as lost,
sum(case when winner is null then 1 else 0 end) as draw,
(sum(case when winner = team then 1 else 0 end)*2)+sum(case when winner is null then 1 else 0 end) as points
from(
select  team1 as team , winner from tournament
union all
select  team2 as team , winner from tournament
)as teams
group by team;
select * from points;


