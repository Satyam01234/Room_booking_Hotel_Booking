<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="user_login_master.aspx.cs" Inherits="Room_booking_Hotel_Booking.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3 card  m-auto d-block " style="background-color: aliceblue">
                <br />
                <h3>
                    <center>Welcom to royal Hotel</center>
                </h3>
                <br />

                <div class="row">
                    <div class="col-md-6">

                        <div class="text-start">
                            <a href="user_login_master.aspx" class="btn btn-warning btn-sm">
                                <asp:Label ID="Label1" runat="server" Style="margin: 5px" Text="Label"><span style="font-size:12px"> User</span></asp:Label>
                            </a>

                            <a href="admin_login_master.aspx" class="btn btn-warning btn-sm">
                                <asp:Label ID="Label2" runat="server" Text="Label"><span style="font-size:12px">Admin</span> </asp:Label>
                            </a>
                        </div>
                    </div>
                </div>

                <br />

                <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <asp:TextBox ID="email" class="form-control" aria-describedby="emailHelp" autocomplete="off" placeholder="Enter email" runat="server" ValidationGroup="user_login"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server" ErrorMessage="Enter your email" ControlToValidate="email" ValidationGroup="userlogin"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <asp:TextBox ID="loginpassword" class="form-control" autocomplete="off" aria-describedby="emailHelp" placeholder="Password" TextMode="Password" runat="server" ValidationGroup="userlogin"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="Enter your password" ControlToValidate="loginpassword" ValidationGroup="userlogin"></asp:RequiredFieldValidator>
                </div>
                <br />


                <center>
                    <asp:Button ID="loginuserbtn" class="btn btn-primary btn-sm" runat="server" Text="login" OnClick="loginuserbtn_Click" ValidationGroup="userlogin" />
                    <a href="Tap_pan_registraion.aspx"><span style="font-size: 18px">  /  Create Account </span></a>
                </center>
                <br />
            </div>

        </div>
        <br />
    </div>
</asp:Content>
