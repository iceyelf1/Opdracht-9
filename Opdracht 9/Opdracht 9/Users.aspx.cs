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
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string connectie;
                connectie = @"Data Source=RIDDLEDIDDLE-PC;";
                connectie += "Initial Catalog=introaspdotnet; Integrated Security=true";
                SqlConnection conn = new SqlConnection(connectie);
                SqlCommand cmd = new SqlCommand("select * from Users", conn);
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    string Voornaam = (string)reader["Voornaam"];
                    string Tussenvoegsel = (string)reader["Tussenvoegsel"];
                    string Achternaam = (string)reader["Achternaam"];

                    string naam = string.Format(Voornaam + ' ' + Tussenvoegsel + ' ' + Achternaam);
                    lbUsers.Items.Add(new ListItem(naam));
                }
                conn.Close();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string connectie, sql;
            connectie = @"Data Source=RIDDLEDIDDLE-PC;";
            connectie += "Initial Catalog=introaspdotnet; Integrated Security=true";
            sql = "Insert into Users values (";
            sql += "'" + txtVoornaam.Text + "',";
            sql += "'" + txtTussenvoegsel.Text + "',";
            sql += "'" + txtAchternaam.Text + "',";
            sql += "'" + txtUsername.Text + "',";
            sql += "'" + txtPassword.Text + "');";
            SqlConnection conn = new SqlConnection(connectie);
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            txtVoornaam.Visible = true;
            txtTussenvoegsel.Visible = true;
            txtAchternaam.Visible = true;
            txtUsername.Visible = true;
            txtPassword.Visible = true;
            txtEdit.Visible = true;
            btnAdd.Visible = true;
            btnDel.Visible = true;
            btnEdit.Visible = true;
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            string connectie, sql;
            connectie = @"Data Source=RIDDLEDIDDLE-PC;";
            connectie += "Initial Catalog=introaspdotnet; Integrated Security=true";
            sql = "update Users set ";
            sql += "Voornaam" + " = " + "'" + txtVoornaam.Text + "'" + ", ";
            sql += "Tussenvoegsel" + " = " + "'" + txtTussenvoegsel.Text + "'" + ", ";
            sql += "Achternaam" + " = " + "'" + txtAchternaam.Text + "'" + ", ";
            sql += "Username" + " = " + "'" + txtUsername.Text + "'" + ", ";
            sql += "Password" + " = " + "'" + txtPassword.Text + "'";
            sql += "where Username = '" + txtEdit.Text + "' ";
            SqlConnection conn = new SqlConnection(connectie);
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect(Request.RawUrl);
        }

        protected void btnDel_Click(object sender, EventArgs e)
        {
            string connectie, sql;
            connectie = @"Data Source=RIDDLEDIDDLE-PC;";
            connectie += "Initial Catalog=introaspdotnet; Integrated Security=true";
            sql = "delete from Users ";
            sql += "where Username = '" + txtEdit.Text + "' ";
            SqlConnection conn = new SqlConnection(connectie);
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect(Request.RawUrl);
        }
    }
}