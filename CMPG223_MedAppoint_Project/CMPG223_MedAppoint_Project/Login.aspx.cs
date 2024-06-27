using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CMPG223_MedAppoint_Project
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public String conString = @"Data Source=()";
        public SqlConnection connection;
        public SqlCommand command;
        public SqlDataAdapter adapter;
        public SqlDataReader reader;
        protected void btnLogin_Click(object sender, EventArgs e)
        {
			try
			{

				HttpCookie refCookie = new HttpCookie("userRef");
				string password = "";

				connection = new SqlConnection(conString);
				command = new SqlCommand("SELECT * FROM ClientTable WHERE Email LIKE '%" + txtEmail.Text.Trim() + "%'", connection);
				adapter = new SqlDataAdapter();

				connection.Open();
				reader = command.ExecuteReader();
				while (reader.Read())
				{
					//saving email, name, number into cookie for referance
					refCookie["Name"] = reader.GetValue(0).ToString();
					refCookie["Number"] = reader.GetValue(2).ToString();
					refCookie["Email"] = reader.GetValue(3).ToString();
					Response.Cookies.Add(refCookie);
					password = reader.GetValue(4).ToString();
				}

				//Verifying password
				if (password == txtPassword.Text.Trim())
				{
					Response.Redirect("Dashboard.aspx");
				}
				else
				{
					lblDisplay.Text = "Incorrect Log-In Credientials - Try again";
					lblDisplay.ForeColor = System.Drawing.Color.Red;
					lblDisplay.Visible = true;
				}


				connection.Close();
			}
			catch (Exception ex)
			{
				lblDisplay.Text = ex.Message;
				lblDisplay.ForeColor = System.Drawing.Color.Red;
				lblDisplay.Visible = true;
			}
		}
    }
}