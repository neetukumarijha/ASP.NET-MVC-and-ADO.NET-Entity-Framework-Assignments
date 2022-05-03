Create procedure SPFootballleague
@Matchid int,
@TeamName1 nvarchar(50),@TeamName2 nvarchar(50), @WinningTeam nvarchar(50),@Points int,
@MatchStatus nvarchar(50)
as
Begin
     Insert into SPFootBallLeague values (@TeamName1,@TeamName2,@WinningTeam,@points,@MatchStatus)   
End
Go



Create procedure spFootball
@Matchid int,
@TeamName1 nvarchar(50),@TeamName2 nvarchar(50), @WinningTeam nvarchar(50),@Points int,
@MatchStatus nvarchar(50)
as
Begin
    select Matchid,TeamName1,TeamName2,WinningTeam,points,MatchStatus from  tblFootballLeague
End
Go

Exec SPFootballleague 

Exec spFootball 1001,Brazil,Italy,Italy,4,win;

CREATE VIEW match_view1 AS
SELECT teamname1, teamname2,status
FROM tblfootballleague
WHERE status='Draw';

select * from match_view1
