using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Room_booking_Hotel_Booking
{
    public partial class WebForm10 : System.Web.UI.Page
    {

        string strncon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Request.QueryString["RoomID"] != null)
                {
                    string RoomID = Request.QueryString["RoomID"];
                    SqlConnection conn = new SqlConnection(strncon);
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("Usp_BindRoomBookingDetail", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@RoomID", RoomID);
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        txtroomno.Text = dt.Rows[0]["roomNo"].ToString();
                        roomtype.Text = dt.Rows[0]["roomtype"].ToString();
                        price.Text = dt.Rows[0]["price"].ToString();
                        cencel_charge.Text = dt.Rows[0]["Cancelcharge"].ToString();
                    }
                    conn.Close();
                }
            }


        }

        protected void bookingbtn_Click(object sender, EventArgs e)
        {

            string checkin1 = checkin.Text.ToString().Replace('-', '/');
            string checkout1 = Checkout.Text.ToString().Replace('-', '/');
            //DateTime c1 = Convert.ToDateTime(checkin1);
            //DateTime c2 = Convert.ToDateTime(checkout1);

            if (Convert.ToDateTime(checkout1) < Convert.ToDateTime(checkin1))
            {
                checkout_val.Visible = true;
            }
            else
            {
                string RoomID = Request.QueryString["RoomID"];
                string username = Session["email"].ToString();
                string strncon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(strncon))
                {

                    SqlCommand cmd = new SqlCommand("usp_roombook", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@useremail", username);
                    cmd.Parameters.AddWithValue("@id", RoomID);
                    cmd.Parameters.AddWithValue("@time_in", Convert.ToDateTime(checkin.Text));
                    cmd.Parameters.AddWithValue("@time_out", Convert.ToDateTime(Checkout.Text));
                    cmd.Parameters.AddWithValue("@userConfirmation", "Panding");

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
                Response.Write("<script>alert('Booked  successfullaly');</script>");
                Response.Redirect("Book_room.aspx?RoomID='" + RoomID + "'");


                checkout_val.Visible = false;
            }
        }


        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/Book_room.aspx");
        }
    }
}