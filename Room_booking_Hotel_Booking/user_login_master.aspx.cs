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
    public partial class WebForm6 : System.Web.UI.Page
    {
        string strncon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void loginuserbtn_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(strncon))
            {
                conn.Open();
                string query = "select Count(1) from userlogin where email=@email and password=@password ";
                SqlCommand sqlcmd = new SqlCommand(query, conn);

                sqlcmd.Parameters.AddWithValue("@email", email.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@password", loginpassword.Text.Trim());

                int count = Convert.ToInt32(sqlcmd.ExecuteScalar());

                if (count == 1)
                {
                    Session["email"] = email.Text.Trim();
                    Response.Redirect("book_room.aspx");
                }
                else
                {
                }
            }
        }
    }
}