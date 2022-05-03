using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace footballWeb
{
    public partial class webform : System.Web.UI.Page
    {
        SqlConnection conn=new SqlConnection("data source=(LocalDB)\\MSSQLLocalDB;initial Catalog=FootballLeague;integrated security=true;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into tblFootBallLeague(TeamName1,TeamName2,MatchStatus,WinningTeam,Points)values('" + txtTeamName1.Text + "', '" + txtTeamName2.Text + "', '" + txtMatchStatus.Text + "', '" + txtWinningTeam.Text + "','" + txtPoints.Text + "')", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            txtTeamName1.Text = "";
            txtTeamName2.Text = "";
            txtMatchStatus.Text = "";
            txtWinningTeam.Text = "";
            txtPoints.Text = "";
        }
    }
}