<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Room_booking_Hotel_Booking.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <title></title>
    <style>
       
    </style>
</head>
<body>
    <br />
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">                
                <div class="col-md-4 card  m-auto d-block " style="background-color:aliceblue">
                    <h3><center>Welcom to royal Hotel</center></h3>
                    <br />
                    
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                           
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                        </div>
                        <br />

                        <div class="row">
                                <div class="col-md-6">
                                  
                                    <div class="form-group" >
                                        <a href="user_login.aspx">
                                            <asp:Label ID="Label1" runat="server" style="margin:20px" Text="Label" ><span style="font-size:18px"> User</span></asp:Label>
                                        </a>

                                        <a href="admin_login.aspx">
                                            <asp:Label ID="Label2" runat="server" Text="Label"><span style="font-size:18px">Admin</span> </asp:Label>

                                        </a>
                                        

                                    </div>
                                </div>
                            </div>


                        <br />
                        <center>
                        <button type="submit" class="btn btn-primary btn-sm" >login</button>
                        <a href="Tap_pan_registraion.aspx"><span style="font-size:18px">/ If your are new user create account</span></a></center>
                    <br />
                </div>
               
            </div><br/>
        </div>
    </form>
</body>
</html>
