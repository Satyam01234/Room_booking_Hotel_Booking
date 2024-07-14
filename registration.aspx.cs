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
    public partial class WebForm1 : System.Web.UI.Page
    {
        string strncon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
           

        protected void Button1_Click(object sender, EventArgs e)
        {
                try
                {
                    SqlConnection conn = new SqlConnection(strncon);
                    if (conn.State == ConnectionState.Closed)
                    {
                        conn.Open();
                    }
                    SqlCommand cmd = new SqlCommand("insert into userlogin(first_name, Last_name, Contact, email, address, Dob, gender, documentType, documentNumber, Upload_document, password, confirmpassword, status)" +
                        "values(@first_name, @Last_name, @Contact, @email, @address, @Dob, @gender, @doculmentType, @documentNumber, @Upload_document, @password, @confirmpassword, @status)", conn);

                    cmd.Parameters.AddWithValue("@first_name", fname.Text.Trim());
                    cmd.Parameters.AddWithValue("@Last_name", lname.Text.Trim());
                    cmd.Parameters.AddWithValue("@Contac", phone.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", email.Text.Trim());
                    cmd.Parameters.AddWithValue("@address", addres.Text.Trim());
                    cmd.Parameters.AddWithValue("@Dob", dob.Text.Trim());
                    cmd.Parameters.AddWithValue("@gender", RadioButton.Text.Trim());
                    cmd.Parameters.AddWithValue("@doculmentType", chosedocument.SelectedValue.Trim());
                    cmd.Parameters.AddWithValue("@documentNumber", docnum.Text.Trim());
                    cmd.Parameters.AddWithValue("@Upload_document", "imagepath");
                    cmd.Parameters.AddWithValue("@password", pass.Text.Trim());
                    cmd.Parameters.AddWithValue("@confirmpassword", cpass.Text.Trim());
                    cmd.Parameters.AddWithValue("@status", "user");

                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Write("<script>alert('sing up success full');</script>");


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                }
            }

        }
    }
