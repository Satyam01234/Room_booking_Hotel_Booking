<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_registraion.aspx.cs" Inherits="Room_booking_Hotel_Booking.admin_registraion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <br />
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-5 m-auto d-block ">

                    <div class="card">
                        <div class="card-body" style="background-color:burlywood;">

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h2>Admin Registraion</h2>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Full Name</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Date of Birth</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                               
                            </div>
                             <br />
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Contact No</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Company-Email ID</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                                    </div>

                                </div>
                            </div>

                            <br />
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Gender</label>
                                    <div class="form-group">
                                        <asp:RadioButton ID="RadioButton1" Text="Male" GroupName="gender" runat="server" Style="margin: 10px" />
                                        <asp:RadioButton ID="RadioButton2" Text="Female" GroupName="gender" runat="server" Style="margin: 10px" />
                                        <asp:RadioButton ID="RadioButton3" Text="Other" GroupName="gender" runat="server" Style="margin: 10px" />

                                    </div>
                                </div>
                            </div>

                            <br />
                            <div class="row">
                                <div class="col">
                                    <label>Full Address</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-4">
                                    <label>Employee-ID</label>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Employee ID" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Password</label>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Confirm Password</label>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-8 mx-auto">
                                    <center>
                                        <div class="form-group">
                                            <asp:Button class="btn btn-primary btn-block btn-md" ID="Button1" Style="margin: 10px" runat="server" Text="Create" />

                                            <asp:Button class="btn btn-primary btn-block btn-md" ID="Button2" runat="server" Text="login" />
                                        </div>
                                    </center>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
