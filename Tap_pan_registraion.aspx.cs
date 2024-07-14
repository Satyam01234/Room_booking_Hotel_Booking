using System;
using System.CodeDom;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Room_booking_Hotel_Booking
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        string strncon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //create button
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                SmtpClient smtpClient = new SmtpClient();
                string send = email.Text;
                MailMessage mail = new MailMessage("satyam.goldmedal12@gmail.com", send);
                mail.Subject = "welcom to Royal hotel";
                mail.Body = "<h4>your account created successfully<h4>";

                smtpClient.Send(mail);

                string fileName = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/imageuploadroomManagement/" + fileName));
                string imagePath1 = "~/imageuploadroomManagement/" + fileName.ToString();
                try
                {
                    SqlConnection conn = new SqlConnection(strncon);
                    if (conn.State == ConnectionState.Closed)
                    {
                        conn.Open();
                    }
                    //SqlCommand cmd= new SqlCommand("insert into userlogin(first_name, Last_name, Contact, email, address, Dob, gender, documentType, documentNumber, Upload_document, password, confirmpassword, status)" +
                    //    "values(@first_name, @Last_name, @Contact, @email, @address, @Dob, @gender, @doculmentType, @documentNumber, @Upload_document, @password, @confirmpassword, @status)",conn);

                    SqlCommand cmd = new SqlCommand("sp_user_login", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@first_name", fname.Text.Trim());
                    cmd.Parameters.AddWithValue("@Last_name", lname.Text.Trim());
                    cmd.Parameters.AddWithValue("@Contact", phone.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", email.Text.Trim());
                    cmd.Parameters.AddWithValue("@address", addres.Text.Trim());
                    cmd.Parameters.AddWithValue("@Dob", dob.Text.Trim());
                    cmd.Parameters.AddWithValue("@gender", RadioButton.Text.Trim());
                    cmd.Parameters.AddWithValue("@doculmentType", chosedocument.SelectedValue.Trim());
                    cmd.Parameters.AddWithValue("@documentNumber", docnum.Text.Trim());
                    cmd.Parameters.AddWithValue("@Upload_document", imagePath1);
                    cmd.Parameters.AddWithValue("@password", pass.Text.Trim());
                    cmd.Parameters.AddWithValue("@confirmpassword", cpass.Text.Trim());
                    cmd.Parameters.AddWithValue("@Type", "user");
                    cmd.Parameters.AddWithValue("@Status", "active");
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Write("<script>alert('sing up success full');</script>");

                    fname.Text = "";
                    lname.Text = "";
                    phone.Text = "";
                    email.Text = "";
                    addres.Text = "";
                    dob.Text = "";
                    RadioButton.Text = "";
                    chosedocument.SelectedValue = "";
                    docnum.Text = "";
                    pass.Text = "";
                    cpass.Text = "";

                }

                catch (Exception ex)

                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                }

            }
        }



        protected void Creat_buton_A_Click1(object sender, EventArgs e)
        {
            try
            {
                SmtpClient smtpClient = new SmtpClient();
                string send = email.Text;
                MailMessage mailAdmin = new MailMessage("satyam.goldmedal12@gmail.com", send);
                mailAdmin.Subject = "welcom to Royal hotel";
                mailAdmin.Body = "your account created successfully ";

                smtpClient.Send(mailAdmin);
                SqlConnection conn = new SqlConnection(strncon);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into admin_registration(First_name,Last_name,dob,contact,Email,gender,address,Employee_id,password,confirmpassword,Type) values(@First_name,@Last_name,@dob,@contact,@Email,@gender,@address,@Employee_id,@password,@confirmpassword,@Type)", conn);

                cmd.Parameters.AddWithValue("@First_name", firstName.Text.Trim());
                cmd.Parameters.AddWithValue("@Last_name", LastName.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", dob2.Text.Trim());
                cmd.Parameters.AddWithValue("@contact", empcontact.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", compemail.Text.Trim());
                cmd.Parameters.AddWithValue("@gender", RadioButton2.Text.Trim());
                cmd.Parameters.AddWithValue("@address", fulladdres.Text.Trim());
                cmd.Parameters.AddWithValue("@Employee_id", empid.Text.Trim());
                cmd.Parameters.AddWithValue("@password", pass2.Text.Trim());
                cmd.Parameters.AddWithValue("@confirmpassword", cpass2.Text.Trim());
                cmd.Parameters.AddWithValue("@Type", "admin");

                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('sing up success full');</script>");

                firstName.Text = "";
                LastName.Text = "";
                dob2.Text = "";
                empcontact.Text = "";
                compemail.Text = "";
                RadioButton2.Text = "";
                fulladdres.Text = "";
                empid.Text = "";
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex + "')</script>");
            }
        }
    }
}