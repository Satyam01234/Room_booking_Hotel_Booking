using System;
using System.ComponentModel.Design;
using System.Configuration;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Web.UI.WebControls;

namespace Room_booking_Hotel_Booking
{
    public partial class WebForm11 : System.Web.UI.Page
    {
       // string cs = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/demo2.aspx");

        }

        
    }
}