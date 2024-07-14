using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Room_booking_Hotel_Booking
{
    public partial class Site1 : System.Web.UI.MasterPage
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                Label1.Text = "hello, User : " + Session["email"].ToString();
                Registration.Visible = false;
                Login.Visible = false;
                Button2.Visible = true;

            }

            else if (Session["empemail"] != null)

            {
                Label1.Text = "hello, Admin: " + Session["empemail"].ToString();
                Registration.Visible = false;
                Login.Visible = false;
                Button2.Visible = true;
            }
            else
            {
                Label1.Text = " Welcome in Royall hotels";
                Registration.Visible = true;
                Login.Visible = true;
                Button2.Visible = false;

            }

            //if(Session["Employee_id"] != null)
            //{
            //    Label1.Text = "hello," + Session["Employee_id"].ToString();
            //    Registration.Visible = false;
            //    Login.Visible = false;
            //    Button2.Visible = true;
            //}
            //else
            //{
            //    Label1.Text = " Welcome in Royall hotels";
            //    Registration.Visible = true;
            //    Login.Visible = true;
            //    Button2.Visible = false;

            //}
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("user_login_master.aspx");
        }
    }
}