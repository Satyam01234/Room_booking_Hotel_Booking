using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.IO;
using static System.Net.WebRequestMethods;
using System.Net.Mail;

namespace Room_booking_Hotel_Booking
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        string strncon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["empemail"] == null)
            {
                Response.Redirect("user_login_master.aspx");
            }
            //user management
            if (!IsPostBack)
            {
                insertuser();
                adminregistration();
                manageroom();
                documentManagement();
                confirmatin();
                cancelprice.Visible = false;
            }
        }
        
/*user----------------------------------------------------=======---------------------------=====================================---------------*/



        private void insertuser()
        {
            SqlConnection conn = new SqlConnection(strncon);

            conn.Open();
            SqlCommand cmd = new SqlCommand("select id,first_name,Last_name,Contact,email,address,gender,Status from userlogin ORDER BY id DESC;", conn);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();
            adapter.Fill(dt);
            usergridView.DataSource = dt;
            usergridView.DataBind();
            conn.Close();
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
                SqlCommand cmd = new SqlCommand("insert into userlogin(first_name,Last_name,Contact,email,address,gender,Status) values(@first_name,@Last_name,@Contact,@email,@address,@gender,@Status)", conn);
                cmd.Parameters.AddWithValue("@first_name", firstname.Text.Trim());
                cmd.Parameters.AddWithValue("@Last_name", lastname.Text.Trim());
                cmd.Parameters.AddWithValue("@Contact", contact.Text.Trim());
                cmd.Parameters.AddWithValue("@email", email.Text.Trim());
                cmd.Parameters.AddWithValue("@address", address.Text.Trim());
                cmd.Parameters.AddWithValue("@gender", Gender1.SelectedValue.Trim());
                cmd.Parameters.AddWithValue("@Status", Status1.SelectedValue.Trim());

                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('insert success fullaly');</script>");

                firstname.Text = "";
                lastname.Text = "";
                contact.Text = "";
                email.Text = "";
                address.Text = "";
                Gender1.SelectedValue = "None";
                Status1.SelectedValue = "None";

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex + "')</script>");
            }
            insertuser();
        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(strncon);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd = new SqlCommand("Update userlogin set first_name=@first_name, Last_name=@Last_name,Contact=@Contact,email=@email,address=@address,gender=@gender,Status=@Status where id=@id", conn);


                cmd.Parameters.AddWithValue("@id", int.Parse(id.Text.Trim()));
                cmd.Parameters.AddWithValue("@first_name", firstname.Text.Trim());
                cmd.Parameters.AddWithValue("@Last_name", lastname.Text.Trim());
                cmd.Parameters.AddWithValue("@Contact", contact.Text.Trim());
                cmd.Parameters.AddWithValue("@email", email.Text.Trim());
                cmd.Parameters.AddWithValue("@address", address.Text.Trim());
                cmd.Parameters.AddWithValue("@gender", Gender1.SelectedValue.Trim());
                cmd.Parameters.AddWithValue("@Status", Status1.SelectedValue.Trim());

                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('updated  success fullaly');</script>");
                id.Text = "";
                firstname.Text = "";
                lastname.Text = "";
                contact.Text = "";
                email.Text = "";
                address.Text = "";
                Gender1.SelectedValue = "None";
                Status1.SelectedValue = "None";


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex + "')</script>");
            }
            insertuser();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            try
            {


                SqlConnection conn = new SqlConnection(strncon);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd = new SqlCommand("delete userlogin where id=@id", conn);


                cmd.Parameters.AddWithValue("@id", int.Parse(id.Text.Trim()));
                cmd.Parameters.AddWithValue("@first_name", firstname.Text.Trim());
                cmd.Parameters.AddWithValue("@Last_name", lastname.Text.Trim());
                cmd.Parameters.AddWithValue("@Contact", contact.Text.Trim());
                cmd.Parameters.AddWithValue("@email", email.Text.Trim());
                cmd.Parameters.AddWithValue("@address", address.Text.Trim());
                cmd.Parameters.AddWithValue("@gender", Gender1.SelectedValue.Trim());
                cmd.Parameters.AddWithValue("@Status", Status1.SelectedValue.Trim());

                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('deleted  successfullaly');</script>");

                id.Text = "";
                firstname.Text = "";
                lastname.Text = "";
                contact.Text = "";
                email.Text = "";
                address.Text = "";
                Gender1.SelectedValue = "None";
                Status1.SelectedValue = "None";


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex + "')</script>");
            }
            insertuser();
        }




        protected void usergridView_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            Control EditMode = e.CommandSource as Control;
            if (e.CommandName == "EditRecord")
            {
                GridViewRow row = EditMode.Parent.NamingContainer as GridViewRow;

                Label iduser = row.FindControl("iduser") as Label;
                id.Text = iduser.Text;

                Label firstnameuser = row.FindControl("firstnameuser") as Label;
                firstname.Text = firstnameuser.Text;

                Label lastnameuser = row.FindControl("lastnameuser") as Label;
                lastname.Text = lastnameuser.Text;

                Label contactuser = row.FindControl("contactuser") as Label;
                contact.Text = contactuser.Text;

                Label emailuser = row.FindControl("emailuser") as Label;
                email.Text = emailuser.Text;


                Label addressuser = row.FindControl("addressuser") as Label;
                address.Text = addressuser.Text;

                Label genderuser = row.FindControl("genderuser") as Label;
                Gender1.Text = genderuser.Text;

                Label statususer = row.FindControl("statususer") as Label;
                Status1.Text = statususer.Text;


            }
            insertuser();
        }

        /*admin----------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
        private void adminregistration()
        {
            SqlConnection conn = new SqlConnection(strncon);

            conn.Open();
            SqlCommand cmd2 = new SqlCommand("select id,first_name,Last_name,contact,Email,address,Employee_id,gender,Status from admin_registration ORDER BY id DESC ;", conn);
            SqlDataAdapter adapter2 = new SqlDataAdapter(cmd2);
            DataTable dt2 = new DataTable();
            adapter2.Fill(dt2);
            adminGridview.DataSource = dt2;
            adminGridview.DataBind();
            conn.Close();

        }


        protected void Button7_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(strncon);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd2 = new SqlCommand("insert into admin_registration(first_name,Last_name,contact,Email,Employee_id,address,gender,Status) values(@first_name,@Last_name,@contact,@Email,@Employee_id,@address,@gender,@Status)", conn);
                cmd2.Parameters.AddWithValue("@first_name", admin_fistname.Text.Trim());
                cmd2.Parameters.AddWithValue("@Last_name", admin_lastname.Text.Trim());
                cmd2.Parameters.AddWithValue("@contact", admin_contact.Text.Trim());
                cmd2.Parameters.AddWithValue("@Email", admin_email.Text.Trim());
                cmd2.Parameters.AddWithValue("@address", admin_address.Text.Trim());
                cmd2.Parameters.AddWithValue("@Employee_id", employee_id.Text.Trim());
                cmd2.Parameters.AddWithValue("@gender", adminGender.SelectedValue.Trim());
                cmd2.Parameters.AddWithValue("@Status", adminStatues.SelectedValue.Trim());

                cmd2.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('Admin data inserted successfully');</script>");

                admin_fistname.Text = "";
                admin_lastname.Text = "";
                admin_contact.Text = "";
                admin_email.Text = "";
                admin_address.Text = "";
                employee_id.Text = "";
                adminGender.SelectedValue = "None";
                adminStatues.SelectedValue = "None";
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex + "')</script>");
            }
            adminregistration();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(strncon);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd2 = new SqlCommand("update admin_registration set first_name=@first_name,Last_name=@Last_name,contact=@contact,Email=@Email,address=@address,Employee_id=@Employee_id,gender=@gender,Status=@Status where id=@id ", conn);
                cmd2.Parameters.AddWithValue("@id", int.Parse(admin_id.Text.Trim()));
                cmd2.Parameters.AddWithValue("@first_name", admin_fistname.Text.Trim());
                cmd2.Parameters.AddWithValue("@Last_name", admin_lastname.Text.Trim());
                cmd2.Parameters.AddWithValue("@contact", admin_contact.Text.Trim());
                cmd2.Parameters.AddWithValue("@Email", admin_email.Text.Trim());
                cmd2.Parameters.AddWithValue("@address", admin_address.Text.Trim());
                cmd2.Parameters.AddWithValue("@Employee_id", employee_id.Text.Trim());
                cmd2.Parameters.AddWithValue("@gender", adminGender.SelectedValue.Trim());
                cmd2.Parameters.AddWithValue("@Status", adminStatues.SelectedValue.Trim());

                cmd2.ExecuteNonQuery();
                conn.Close();

                admin_id.Text = "";
                admin_fistname.Text = "";
                admin_lastname.Text = "";
                admin_contact.Text = "";
                admin_email.Text = "";
                admin_address.Text = "";
                employee_id.Text = "";
                adminGender.SelectedValue = "None";
                adminStatues.SelectedValue = "None";
                Response.Write("<script>alert('Admin data updated successfully');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex + "')</script>");
            }
            //Page.Response.Redirect(Page.Request.RawUrl,false);

            adminregistration();

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(strncon);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd2 = new SqlCommand("delete admin_registration where id=@id", conn);
                cmd2.Parameters.AddWithValue("@id", int.Parse(admin_id.Text.Trim()));
                cmd2.Parameters.AddWithValue("@first_name", admin_fistname.Text.Trim());
                cmd2.Parameters.AddWithValue("@Last_name", admin_lastname.Text.Trim());
                cmd2.Parameters.AddWithValue("@contact", admin_contact.Text.Trim());
                cmd2.Parameters.AddWithValue("@Email", admin_email.Text.Trim());
                cmd2.Parameters.AddWithValue("@address", admin_address.Text.Trim());
                cmd2.Parameters.AddWithValue("@Employee_id", employee_id.Text.Trim());
                cmd2.Parameters.AddWithValue("@gender", adminGender.SelectedValue.Trim());
                cmd2.Parameters.AddWithValue("@Status", adminStatues.SelectedValue.Trim());

                cmd2.ExecuteNonQuery();
                conn.Close();

                admin_id.Text = "";
                admin_fistname.Text = "";
                admin_lastname.Text = "";
                admin_contact.Text = "";
                admin_email.Text = "";
                admin_address.Text = "";
                employee_id.Text = "";
                adminGender.SelectedValue = "None";
                adminStatues.SelectedValue = "None";
                Response.Write("<script>alert('Admin data Deleted  successfully');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex + "')</script>");
            }
            adminregistration();

        }

        protected void adminGridview_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Control EditMode = e.CommandSource as Control;
            if (e.CommandName == "EditAdminRecord")
            {
                GridViewRow row = EditMode.Parent.NamingContainer as GridViewRow;

                Label adminid = row.FindControl("adminid") as Label;
                admin_id.Text = adminid.Text;

                Label adminfirstname = row.FindControl("adminfirstname") as Label;
                admin_fistname.Text = adminfirstname.Text;

                Label adminlastname = row.FindControl("adminlastname") as Label;
                admin_lastname.Text = adminlastname.Text;

                Label admincontact = row.FindControl("admincontact") as Label;
                admin_contact.Text = admincontact.Text;

                Label adminemail = row.FindControl("adminemail") as Label;
                admin_email.Text = adminemail.Text;

                Label adminaddress = row.FindControl("adminaddress") as Label;
                admin_address.Text = adminaddress.Text;

                Label employeeid = row.FindControl("employeeid") as Label;
                employee_id.Text = employeeid.Text;

                Label admingender = row.FindControl("admingender") as Label;
                adminGender.Text = admingender.Text;

                Label adminstatus = row.FindControl("adminstatus") as Label;
                adminStatues.Text = adminstatus.Text;


            }
            adminregistration();
        }


 //room management gridview-------------------------------------------------------------------------------------------------------------------------------------------------------
        private void manageroom()
        {
            SqlConnection conn = new SqlConnection(strncon);

            conn.Open();
            SqlCommand cmd3 = new SqlCommand("select roomid,roomNo,roomtype,price,roomImage,Cancelcharge,RoomStatus from RoomManagement ORDER BY roomid DESC;", conn);
            SqlDataAdapter adapter3 = new SqlDataAdapter(cmd3);
            DataTable dt3 = new DataTable();
            adapter3.Fill(dt3);
            RoomMasterGridview.DataSource = dt3;
            RoomMasterGridview.DataBind();
            conn.Close();

        }
        protected void Button10_Click(object sender, EventArgs e)
        {
            //string roomprice = roomprize.Text.ToString();
            //string cancelcharge= cnlcharge.Text.ToString();

            
          
            string multifile = "";
            string dbfilename = "";

            if (upload_Image.PostedFile != null)
            {
                string Folder = "~/imageuploadroomManagement/";
                String serverfolder = Server.MapPath(Folder);
                if (!Directory.Exists(serverfolder))
                {
                    Directory.CreateDirectory(serverfolder);
                }


                foreach (HttpPostedFile postfiles in upload_Image.PostedFiles)
                {
                    String FileName = Path.GetFileName(Server.MapPath(postfiles.FileName));
                    String serverpath = serverfolder + FileName;
                    postfiles.SaveAs(serverpath);
                    dbfilename += Folder + "" + FileName + ',';
                    multifile += serverpath + ',';

                }
                if (dbfilename != "")
                {
                    dbfilename = dbfilename.Remove(dbfilename.Length - 1);
                }
                if (multifile != "")
                {
                    multifile = multifile.Remove(multifile.Length - 1);
                }
            }


            try
            {

                

                SqlConnection conn = new SqlConnection(strncon);
                conn.Open();
                SqlCommand cmd3 = new SqlCommand("insert into RoomManagement(roomNo,roomtype,price,roomImage,Cancelcharge,RoomStatus)values(@roomNo,@roomtype,@price,@roomImage,@Cancelcharge,@RoomStatus)", conn);
                cmd3.Parameters.AddWithValue("@roomNo", roomno.Text.Trim());
                cmd3.Parameters.AddWithValue("@roomtype", roomtypedlist.SelectedValue.Trim());
                cmd3.Parameters.AddWithValue("@price", roomprize.Text.Trim());
                cmd3.Parameters.AddWithValue("@roomImage", dbfilename);
                cmd3.Parameters.AddWithValue("@Cancelcharge", cnlcharge.Text.Trim());
                cmd3.Parameters.AddWithValue("@RoomStatus", statuslist.SelectedValue.Trim());

                cmd3.ExecuteNonQuery();
                conn.Close();

                roomno.Text = "";
                roomtypedlist.SelectedValue = "None";
                roomprize.Text = "";
                statuslist.SelectedValue = "None";
                cnlcharge.Text = "";

                Response.Write("<script>alert('room data inserted successfully');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex + "')</script>");
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string imagePath = "";
            string hfimage = imageupload.Value;

            if (upload_Image.HasFile)
            {
                string fileName = upload_Image.FileName;
                upload_Image.PostedFile.SaveAs(Server.MapPath("~/imageuploadroomManagement/" + fileName));
                imagePath = "~/imageuploadroomManagement/" + fileName.ToString();
            }

            if (string.IsNullOrWhiteSpace(imagePath))
            {
                if (!string.IsNullOrWhiteSpace(hfimage))
                {
                    imagePath = hfimage;
                }
            }

            try
            {
                SqlConnection conn = new SqlConnection(strncon);

                conn.Open();

                SqlCommand cmd3 = new SqlCommand("update RoomManagement set roomNo=@roomNo,roomtype=@roomtype,price=@price,roomImage=@roomImage,Cancelcharge=@Cancelcharge,RoomStatus=@RoomStatus where  roomid=@roomid ", conn);
                cmd3.Parameters.AddWithValue("@roomid", int.Parse(roomid.Text.Trim()));
                cmd3.Parameters.AddWithValue("@roomNo", roomno.Text.Trim());
                cmd3.Parameters.AddWithValue("@roomtype", roomtypedlist.SelectedValue.Trim());
                cmd3.Parameters.AddWithValue("@price", roomprize.Text.Trim());
                cmd3.Parameters.AddWithValue("@roomImage", imagePath);
                cmd3.Parameters.AddWithValue("@Cancelcharge", cnlcharge.Text.Trim());
                cmd3.Parameters.AddWithValue("@RoomStatus", statuslist.SelectedValue.Trim());

                cmd3.ExecuteNonQuery();
                conn.Close();

                roomno.Text = "";
                roomtypedlist.SelectedValue = "";
                roomprize.Text = "";
                statuslist.SelectedValue = "";
                cnlcharge.Text = "";

                Response.Write("<script>alert('room data updated successfully');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex + "')</script>");
            }

            
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            string imagePath = "";
            string hfimage = imageupload.Value;


            if (upload_Image.HasFile)
            {
                string fileName = upload_Image.FileName;
                upload_Image.PostedFile.SaveAs(Server.MapPath("~/imageuploadroomManagement/" + fileName));
                imagePath = "~/imageuploadroomManagement/" + fileName.ToString();
            }

            if (string.IsNullOrWhiteSpace(imagePath))
            {
                if (!string.IsNullOrWhiteSpace(hfimage))
                {
                    imagePath = hfimage;
                }
            }

            try
            {
                SqlConnection conn = new SqlConnection(strncon);
                //upload_Image.SaveAs(Server.MapPath("imageuploadroomManagement/" + ".jpg"));

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd3 = new SqlCommand("delete RoomManagement where roomid=@roomid", conn);
                cmd3.Parameters.AddWithValue("@roomid", int.Parse(roomid.Text.Trim()));
                cmd3.Parameters.AddWithValue("@roomNo", roomno.Text.Trim());
                cmd3.Parameters.AddWithValue("@roomtype", roomtypedlist.SelectedValue.Trim());
                cmd3.Parameters.AddWithValue("@price", roomprize.Text.Trim());
                cmd3.Parameters.AddWithValue("@roomImage", imagePath);
                cmd3.Parameters.AddWithValue("@Cancelcharge", cnlcharge.Text.Trim());
                cmd3.Parameters.AddWithValue("@RoomStatus", statuslist.SelectedValue.Trim());

                cmd3.ExecuteNonQuery();
                conn.Close();

                roomno.Text = "";
                roomtypedlist.SelectedValue = "";
                roomprize.Text = "";
                statuslist.SelectedValue = "";
                cnlcharge.Text = "";

                Response.Write("<script>alert('room data deleted successfully');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex + "')</script>");
            }

            
        }

        protected void RoomMasterGridview_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Control EditMode = e.CommandSource as Control;
            if (e.CommandName == "EditGridViewRecord")
            {
                GridViewRow row = EditMode.Parent.NamingContainer as GridViewRow;

                Label room_id = row.FindControl("room_id") as Label;
                roomid.Text = room_id.Text;

                Label Room_no = row.FindControl("Room_no") as Label;
                roomno.Text = Room_no.Text;

                Label room_type = row.FindControl("room_type") as Label;
                roomtypedlist.Text = room_type.Text;

                Label room_price = row.FindControl("room_price") as Label;
                roomprize.Text = room_price.Text;

                Label room_image = row.FindControl("room_image") as Label;
                imageupload.Value = room_image.Text;


                Label room_cancel = row.FindControl("room_cancel") as Label;
                cnlcharge.Text = room_cancel.Text;

                Label Room_status = row.FindControl("Room_status") as Label;
                statuslist.Text = Room_status.Text;



            }
            
        }

//----- Document Mangement-----------------------------------------------------------------===============================================--------------------------------=============================-
        private void documentManagement()
        {
            SqlConnection conn = new SqlConnection(strncon);
            conn.Open();
            SqlCommand cmd4 = new SqlCommand("Select id, email,documentType,documentNumber,Upload_document,userdocumentstatus from userlogin ORDER BY id DESC;", conn);
            SqlDataAdapter adapter4 = new SqlDataAdapter(cmd4);
            DataTable dt4 = new DataTable();
            adapter4.Fill(dt4);
            DocumentmanagementGridview.DataSource = dt4;
            DocumentmanagementGridview.DataBind();
            conn.Close();
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            string imagePath = "";
            string documentimage = documenthiddenfield.Value;

            if (upload_Image.HasFile)
            {
                string fileName = upload_Image.FileName;
                upload_Image.PostedFile.SaveAs(Server.MapPath("~/imageuploadroomManagement/" + fileName));
                imagePath = "~/imageuploadroomManagement/" + fileName.ToString();

            }

            if (string.IsNullOrWhiteSpace(imagePath))
            {
                if (!string.IsNullOrWhiteSpace(documentimage))
                {
                    imagePath = documentimage;
                }
            }


            try
            {
                SqlConnection conn = new SqlConnection(strncon);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd4 = new SqlCommand("update userlogin set email=@email,documentType=@documentType,documentNumber=@documentNumber,Upload_document=@Upload_document,userdocumentstatus=@userdocumentstatus where id=@id", conn);
                cmd4.Parameters.AddWithValue("@id", int.Parse(Document_id.Text.Trim()));
                cmd4.Parameters.AddWithValue("@email", useremail.Text.Trim());
                cmd4.Parameters.AddWithValue("@documentType", documenttype.Text.Trim());
                cmd4.Parameters.AddWithValue("@documentNumber", documentnumber.Text.Trim());
                cmd4.Parameters.AddWithValue("@Upload_document", imagePath);
                cmd4.Parameters.AddWithValue("@userdocumentstatus", Document_status.SelectedValue.Trim());


                cmd4.ExecuteNonQuery();
                conn.Close();

                useremail.Text = "";
                documenttype.Text = "";
                documentnumber.Text = "";
                Document_status.SelectedValue = "";


                Response.Write("<script>alert('Document data Updated successfully');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex + "')</script>");
            }

        }


        protected void deleteDocument_Click(object sender, EventArgs e)
        {
            string imagePath = "";
            string documentimage = documenthiddenfield.Value;

            if (upload_Image.HasFile)
            {
                string fileName = upload_Image.FileName;
                upload_Image.PostedFile.SaveAs(Server.MapPath("~/imageuploadroomManagement/" + fileName));
                imagePath = "~/imageuploadroomManagement/" + fileName.ToString();
            }

            if (string.IsNullOrWhiteSpace(imagePath))
            {
                if (!string.IsNullOrWhiteSpace(documentimage))
                {
                    imagePath = documentimage;
                }
            }

            try
            {
                SqlConnection conn = new SqlConnection(strncon);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd4 = new SqlCommand("delete userlogin  where id=@id", conn);
                cmd4.Parameters.AddWithValue("@id", int.Parse(Document_id.Text.Trim()));
                cmd4.Parameters.AddWithValue("@email", useremail.Text.Trim());
                cmd4.Parameters.AddWithValue("@documentType", documenttype.Text.Trim());
                cmd4.Parameters.AddWithValue("@documentNumber", documentnumber.Text.Trim());
                cmd4.Parameters.AddWithValue("@Upload_document", imagePath);
                cmd4.Parameters.AddWithValue("@userdocumentstatus", Document_status.SelectedValue.Trim());


                cmd4.ExecuteNonQuery();
                conn.Close();

                useremail.Text = "";
                documenttype.Text = "";
                documentnumber.Text = "";
                Document_status.SelectedValue = "";


                Response.Write("<script>alert('Document data deleted successfully');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex + "')</script>");
            }


        }

        protected void DocumentmanagementGridview_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Control EditMode = e.CommandSource as Control;
            if (e.CommandName == "DocumentRowCommandEditing")
            {
                GridViewRow row = EditMode.Parent.NamingContainer as GridViewRow;

                Label Documentid = row.FindControl("Documentid") as Label;
                Document_id.Text = Documentid.Text;

                Label documentemail = row.FindControl("documentemail") as Label;
                useremail.Text = documentemail.Text;

                Label doc_type = row.FindControl("doc_type") as Label;
                documenttype.Text = doc_type.Text;

                Label Doc_number = row.FindControl("Doc_number") as Label;
                documentnumber.Text = Doc_number.Text;

                Label Updoaded_Doc = row.FindControl("Updoaded_Doc") as Label;
                documenthiddenfield.Value = Updoaded_Doc.Text;

                Label doc_Status = row.FindControl("doc_Status") as Label;
                Document_status.Text = doc_Status.Text;

            }
        }
///------------------------------------------------------------------room confirmation -------------------------------------------------------------------------------------------
        private void confirmatin()
        {
            SqlConnection conn = new SqlConnection(strncon);
            conn.Open();
            SqlCommand cmd5 = new SqlCommand("select roomid,useremail,time_in,time_out,roomNo,roomtype,userConfirmation from RoomManagement where useremail is not null", conn);
            SqlDataAdapter adapter5 = new SqlDataAdapter(cmd5);
            DataTable dt5 = new DataTable();
            adapter5.Fill(dt5);
            confirmbookinggridview.DataSource = dt5;
            confirmbookinggridview.DataBind();
            conn.Close();

        }

        protected void update_Click1(object sender, EventArgs e)
        {
            try
            {
                //string email = conemail.Text;
                //string roomNo= Confroomno.Text;
                //string roomtype= confirm_romtype.Text;

                //SmtpClient smtpClient = new SmtpClient();              
                //MailMessage mail = new MailMessage("satyam.goldmedal12@gmail.com", email);
                //mail.Subject = "<h3>welcom to room booking</h3>";
                //mail.Body = "<h1 style='font-family:sans-serif'> <ins>Hello " + email + " your Booking has been confirmed</ins> </h1><br /><h3 style='font-family:cursive'><i>Your booking for the <span class='badge alert-dark' style='font-size:large;color:#1221a3'>Room No." + roomNo + "</span> has been confirmed , </i><br /><i>your booking duration is from <span class='badge alert-info' style='font-size:large;color:#1221a3'><ins></ins></span> to <span class='badge alert-info' style='font-size:large;color:#1221a3'><ins></ins></span></i><br/><i>and your boooking cost is <span class='badge alert-success'style='font-size:large'></span></i></h3><br/><h3 style='font-family:cursive;color:purple'><i>Regards Admin.</i></h3>\\\"";


                SqlConnection conn = new SqlConnection(strncon);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd5 = new SqlCommand("update RoomManagement set useremail=@useremail,roomNo=@roomNo,roomtype=@roomtype,userConfirmation=@userConfirmation where roomid=@roomid", conn);
                cmd5.Parameters.AddWithValue("@roomid", int.Parse(confirmroomid.Text.Trim()));
                cmd5.Parameters.AddWithValue("@useremail", conemail.Text.Trim());
                cmd5.Parameters.AddWithValue("@roomNo", Confroomno.Text.Trim());
                cmd5.Parameters.AddWithValue("@roomtype", confirm_romtype.Text.Trim());
                cmd5.Parameters.AddWithValue("@userConfirmation", adminConfirmation.SelectedValue.Trim());

                cmd5.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('updated successfullaly');</script>");

                roomid.Text = "";
                conemail.Text = "";
                Confroomno.Text = "";
                confirm_romtype.Text = "";
                adminConfirmation.SelectedValue = "None";


                //SqlCommand cmd = new SqlCommand("usp_mail", conn);
                //cmd.CommandType = CommandType.StoredProcedure;
                //SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                //DataTable dt=new DataTable();
                //adapter.Fill(dt);






                //string email = conemail.Text;
                //string roomNo= Confroomno.Text;
                //string roomtype= confirm_romtype.Text;

                //SmtpClient smtpClient = new SmtpClient();              
                //MailMessage mail = new MailMessage("satyam.goldmedal12@gmail.com", email);
                //mail.Subject = "<h3>welcom to room booking</h3>";
                //mail.Body = "<h1 style='font-family:sans-serif'> <ins>Hello " + email + " your Booking has been confirmed</ins> </h1><br /><h3 style='font-family:cursive'><i>Your booking for the <span class='badge alert-dark' style='font-size:large;color:#1221a3'>Room No." + roomNo + "</span> has been confirmed , </i><br /><i>your booking duration is from <span class='badge alert-info' style='font-size:large;color:#1221a3'><ins></ins></span> to <span class='badge alert-info' style='font-size:large;color:#1221a3'><ins></ins></span></i><br/><i>and your boooking cost is <span class='badge alert-success'style='font-size:large'></span></i></h3><br/><h3 style='font-family:cursive;color:purple'><i>Regards Admin.</i></h3>\\\"";


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex + "')</script>");
            }
            

        }
        protected void confirmbookinggridview_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Control EditMode = e.CommandSource as Control;
            if (e.CommandName == "roomConfirmationedit")
            {
                GridViewRow row = EditMode.Parent.NamingContainer as GridViewRow;

                Label c_ID = row.FindControl("c_ID") as Label;
                confirmroomid.Text = c_ID.Text;

                Label c_useremail = row.FindControl("c_useremail") as Label;
                conemail.Text = c_useremail.Text;

                Label c_roomNO = row.FindControl("c_roomNO") as Label;
                Confroomno.Text = c_roomNO.Text;

                Label C_roomtype = row.FindControl("C_roomtype") as Label;
                confirm_romtype.Text = C_roomtype.Text;

                Label c_userconfirm = row.FindControl("c_userconfirm") as Label;
                adminConfirmation.Text = c_userconfirm.Text;

            }
            
        }

      
        protected void cnlcharge_TextChanged1(object sender, EventArgs e)
        {
            int romprice = Convert.ToInt32(roomprize.Text);
            int cancelcharge = Convert.ToInt32(cnlcharge.Text);

            if (cancelcharge >= romprice)
            {
                cancelprice.Visible = true;
            }
            else
            {
                cancelprice.Visible = false;
            }
        }
    }
}