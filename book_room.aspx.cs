using Microsoft.Win32.SafeHandles;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Room_booking_Hotel_Booking
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        string strncon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            


            if (Session["email"] == null)
            {
                Response.Redirect("user_login_master.aspx");
            }

           
            history();

            card();
        }
        public void card()
        {
            string structure = string.Empty;

            SqlConnection conn = new SqlConnection(strncon);
            SqlCommand cmd = new SqlCommand("select roomid,roomno,roomtype,price,roomimage,cancelcharge,roomstatus from roommanagement where roomstatus='Available'", conn);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);

            int count = dt.Rows.Count;
            if (count > 0)
            {
                for (int i = 0; i < count; i++)
                {
                    //string ID = dt.Rows[i]["ID"].ToString();
                    string roomid = dt.Rows[i]["roomid"].ToString();
                    string roomno = dt.Rows[i]["roomno"].ToString();
                    string roomtype = dt.Rows[i]["roomtype"].ToString();
                    string roomimage = dt.Rows[i]["roomimage"].ToString();
                    string roomstatus = dt.Rows[i]["roomstatus"].ToString();
                    string newimage = roomimage.Replace("~/", "/");
                    string price = dt.Rows[i]["price"].ToString();
                    string room_price = "₹" + price;

                    structure += @"<div class='col-md-4' style='padding:25px' >                        
                    <div class='card' style='width: 325px' >
                        <img class='card-img-top' src='" + newimage + "' alt='image' style='height:250px;' >" +
                        "<div class='card-body'>" +
                        "<h4 class='card-text'> <span> Room-No:-</span>" + roomno + "</h3>" +
                        "<h5 class='card-text'><span >  Type:-</span>"+ roomtype + "</h4>"+
                        "<h5 class='card-title'>" + room_price + "</h5>" +
                        "<p class='card-text'> " + roomstatus + "</p>" +
                        "<input type='button'  class='btn btn-outline-success' ID='bookingbtn' attrclickbook=" + roomid + "  value='Book'  style='margin-right:10px;' /> " +
                        "</div>" +
                        "</div>" +
                        "</div>" + 
                        "" +
                        "" +
                        "";
                    
                }
                DivStatus.InnerHtml = structure;
               
            }

        }

        private void history()
        {
            SqlConnection conn = new SqlConnection(strncon);
            conn.Open();
            string username = Session["email"].ToString();
            string RoomID = Request.QueryString["RoomID"] as string;

            SqlCommand cmd2 = new SqlCommand("select roomid,useremail,roomNo,roomtype,price,time_in,time_out,userConfirmation from RoomManagement where useremail= '"+ username + "' ", conn);
            SqlDataAdapter adapter2 = new SqlDataAdapter(cmd2);
            DataTable dt2 = new DataTable();
            adapter2.Fill(dt2);
            historygridview.DataSource = dt2;
            historygridview.DataBind();
            conn.Close();
        }

       
        //private void roombooking()
        //{
        //    SqlConnection conn = new SqlConnection(strncon);
        //    conn.Open();
        //    SqlCommand cmd = new SqlCommand("select roomid,roomno,roomtype,price,roomimage,cancelcharge,roomstatus from roommanagement", conn);
        //    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    adapter.Fill(dt);
        //    bookinggridview.datasource = dt;
        //    bookinggridview.databind();
        //    conn.close();

        //}

       

        protected void bookingbtn_Click2(object sender, EventArgs e)
        {
            Response.Redirect("booking.aspx");
        }



        //protected void bookingbtn_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("booking.aspx");
        //}
    }
}