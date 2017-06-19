using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Opdracht_9
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectie;
            connectie = @"Data Source=RIDDLEDIDDLE-PC;";
            connectie += "initial Catalog=introaspdotnet; Integrated Security=True";
            SqlConnection conn = new SqlConnection(connectie);
            SqlCommand cmd = new SqlCommand("select count(*) from movies", conn);
            conn.Open();
            litAantal.Text = cmd.ExecuteScalar().ToString();
            conn.Close();
        }
    }
}

