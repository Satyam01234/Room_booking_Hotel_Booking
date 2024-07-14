using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;

namespace Room_booking_Hotel_Booking.App_Code
{
    public class general
    {
        string strncon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

       
        public string ExDB(string s1)
        {
            SqlConnection con=new SqlConnection(strncon);
            con.Open();
            SqlCommand cmd = new SqlCommand(s1,con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);  
            DataTable dt = new DataTable();
            adapter.Fill(dt);       
            con.Close();

            return dt.ToString();
        }

        public DataTable retrivaldt(string s1)
        {
            SqlConnection con = new SqlConnection(strncon);
            con.Open();
            SqlCommand cmd = new SqlCommand(s1, con);
            //cmd.ExecuteNonQuery();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            return dt;
            
        }

    }
}