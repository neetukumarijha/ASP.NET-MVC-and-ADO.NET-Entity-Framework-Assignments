using System;
using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusWeb
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("data source=(LocalDB)\\MSSQLLocalDB;initial Catalog=Bus;integrated security=true;");

        }

        protected void btnSave_Click(object sender, EventArgs e)
        { 

        SqlCommand cmd = new SqlCommand("insert into tblBus(BoardingPoint,TravelDate,Amount,Rating)values('" + txtDropDownList.Text + "', '" + txtTravelDate.Text + "', '" + txtAmount.Text + "', '" + txtrating.Text + "')", conn);
        conn.Open();
         cmd.ExecuteNonQuery();
         conn.Close();

            txtTeamName1.Text = "";
            txtTravelDate.Text = "";
            txtAmount.Text = "";
            txtrating.Text = "";
    }
}