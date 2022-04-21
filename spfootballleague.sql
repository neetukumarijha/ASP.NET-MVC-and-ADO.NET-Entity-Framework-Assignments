Create procedure SPFootballleague
@Matchid int,
@TeamName1 nvarchar(50),@TeamName2 nvarchar(50), @WinningTeam nvarchar(50),@Points int,
@MatchStatus nvarchar(50)
as
Begin
     Insert into SPFootBallLeague values (@TeamName1,@TeamName2,@WinningTeam,@points,@MatchStatus)   
End
Go

Exec SPFootballleague 