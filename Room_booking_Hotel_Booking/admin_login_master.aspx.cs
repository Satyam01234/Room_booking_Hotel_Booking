using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Room_booking_Hotel_Booking
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string strncon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            using(SqlConnection conn=new SqlConnection(strncon))
            {

                conn.Open();
                string query = "select Count(1) from admin_registration where Email=@Email and password=@password";
                SqlCommand sqlcmd= new SqlCommand(query, conn);

                sqlcmd.Parameters.AddWithValue("@Email", empemail.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@password", adminpass.Text.Trim());

                int count = Convert.ToInt32(sqlcmd.ExecuteScalar());

                if(count==1)
                {
                    Session["empemail"] = empemail.Text.Trim();
                    
                    Response.Redirect("adminPanel.aspx");
                }
                else
                {

                }

            }            
        }
    }
}