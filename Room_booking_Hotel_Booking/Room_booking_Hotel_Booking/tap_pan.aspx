<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tap_pan.aspx.cs" Inherits="Room_booking_Hotel_Booking.tap_pan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.6.0.min.js"></script>
    <script src="Scripts/bootstrap.bundle.js"></script>
    

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
    <title></title>
</head>
<body>
   <form id="form1" runat="server">
    <div class="container">
        <h3>Registration Page</h3>
        <ul class="nav nav-tabs">
            <li class="nav-item"><a class="nav-link active" href="#h1" data-toggle="tab" >User Form</a></li>
            <li class="nav-item"><a class="nav-link  active " href="#h2" data-toggle="tab" >Admin form</a></li>
        </ul>

        <div class="tab-content container" style="background-color:gainsboro">
            <div class="tab-pane active" id="h1" >   
                <br />
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-5 m-auto d-block ">

                                <div class="card">
                                    <div class="card-body" style="background-color: burlywood;">

                                        <div class="row">
                                            <div class="col">
                                                <center>
                                                    <h2>User Registraion</h2>
                                                </center>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col">
                                                <hr>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-sm">
                                                <label for="First_Name">First name:</label>
                                                <input type="text" name="username" id="fname" class="form-control" />

                                            </div>

                                            <br />

                                            <div class="col-sm">

                                                <label for="lastname">Last Name:</label>
                                                <input type="text" name="username" id="lname" class="form-control" />

                                            </div>

                                        </div>

                                        <br />

                                        <div class="row">
                                            <div class="col-sm">

                                                <label for="numbe">Mobile No:</label>
                                                <input type="text" name="username" id="number" class="form-control" />

                                            </div>

                                            <br />

                                            <div class="col-sm">

                                                <label for="email">Email-Id:</label>
                                                <input type="email" name="username" id="email" class="form-control" />

                                            </div>
                                        </div>

                                        <br />

                                        <div class="row">
                                            <div class="col-sm">

                                                <label for="address">Address:</label>
                                                <input type="text" name="address" id="address" rows="2" class="form-control" />

                                            </div>
                                        </div>

                                        <br />

                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Date of Birth</label>
                                                <div class="form-group">
                                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <label>Gender</label>
                                                <div class="form-group">
                                                    <asp:RadioButton ID="RadioButton1" Text="Male" GroupName="gender" runat="server" Style="margin: 8px" />
                                                    <asp:RadioButton ID="RadioButton2" Text="Female" GroupName="gender" runat="server" Style="margin: 8px" />
                                                    <asp:RadioButton ID="RadioButton3" Text="Other" GroupName="gender" runat="server" Style="margin: 8px" />

                                                </div>
                                            </div>
                                        </div>

                                        <br />


                                        <div class="row">
                                            <div class="col-sm">
                                                <label>select document type:</label>
                                                <select class="form-control text">
                                                    <option>adhar_card</option>
                                                    <option>pan card</option>
                                                    <option>driving Licence</option>
                                                </select>
                                            </div>
                                            <div class="col-sm">

                                                <label for="user">Enter Document Number:</label>
                                                <input type="text" name="document" id="docnum" rows="2" class="form-control" />

                                            </div>
                                        </div>

                                        <br />



                                        <div class="col-sm">
                                            <div>

                                                <label for="user">Upload Document:</label>
                                                <input type="file" name="document" id="docnm" class="form-control" />

                                            </div>

                                        </div>


                                        <br />

                                        <div class="row">
                                            <div class="col-sm">

                                                <label for="user">Password:</label>
                                                <input type="password" name="username" id="pass" class="form-control" />

                                            </div>


                                            <br />

                                            <div class="col-sm">

                                                <label for="user">Confirm Password:</label>
                                                <input type="password" name="username" id="cpass" class="form-control" />

                                            </div>
                                        </div>
                                        <br />
                                        <div>
                                            <center>
                                                <button type="button" class="btn btn-primary">SUBMIT</button></center>
                                        </div>

                                    </div>

                                </div>

                            </div>
                        </div>

                    </div>
                
            </div>
     
                <div class="tab-pane" id="h2" ">
                <br />
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-5 m-auto d-block ">

                                <div class="card">
                                    <div class="card-body" style="background-color: burlywood;">

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
                                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                                                </div>
                                            </div>

                                        </div>
                                        <br />
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Contact No</label>
                                                <div class="form-group">
                                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <label>Company-Email ID</label>
                                                <div class="form-group">
                                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                                                </div>

                                            </div>
                                        </div>

                                        <br />
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Gender</label>
                                                <div class="form-group">
                                                    <asp:RadioButton ID="RadioButton4" Text="Male" GroupName="gender" runat="server" Style="margin: 10px" />
                                                    <asp:RadioButton ID="RadioButton5" Text="Female" GroupName="gender" runat="server" Style="margin: 10px" />
                                                    <asp:RadioButton ID="RadioButton6" Text="Other" GroupName="gender" runat="server" Style="margin: 10px" />

                                                </div>
                                            </div>
                                        </div>

                                        <br />
                                        <div class="row">
                                            <div class="col">
                                                <label>Full Address</label>
                                                <div class="form-group">
                                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
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
                  </div>                
            </div>        

    </div>
    </form>
</body>
  
</html>
