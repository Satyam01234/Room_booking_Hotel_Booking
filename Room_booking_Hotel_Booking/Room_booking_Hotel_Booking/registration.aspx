<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="Room_booking_Hotel_Booking.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <script src="Scripts/jquery-3.6.0.min.js"></script>
    <script src="Scripts/jquery-3.6.0.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <br />
   
    <form id="form1" runat="server">
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
                                                <asp:Label ID="fnamelable" runat="server" Text="First namdoe:"></asp:Label>                                                                                              
                                                <asp:TextBox ID="fname" runat="server" placeholder="Enter First Name" class="form-control" ValidationGroup="user" ></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorfname" ForeColor="Red" runat ="server" ErrorMessage="please enter first name" ControlToValidate="fname" ValidationGroup="user" ></asp:RequiredFieldValidator>
                                            </div>

                                            <br />

                                            <div class="col-sm">

                                                <asp:Label ID="Label2" runat="server" Text="Last name:"></asp:Label>                                                                                              
                                                <asp:TextBox ID="lname" runat="server" placeholder="Enter Last name" class="form-control" ValidationGroup="user" ></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat ="server" ErrorMessage="please enter last name" ControlToValidate="lname" ValidationGroup="user" ></asp:RequiredFieldValidator>
                                            </div>

                                        </div>

                                        <br />

                                        <div class="row">
                                            <div class="col-sm">
                                                 <asp:Label ID="Label3" runat="server" Text="Mobile-No:"></asp:Label>                                                
                                                 <asp:TextBox ID="phone" runat="server" placeholder="Number" class="form-control" ValidationGroup="user" ></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" runat ="server" ErrorMessage="contact number" ControlToValidate="phone" ValidationGroup="user"></asp:RequiredFieldValidator>

                                            </div>

                                            <br />

                                            <div class="col-sm">

                                                <asp:Label ID="Label4" runat="server" Text="E-Mail:"></asp:Label>                                                   
                                                <asp:TextBox ID="email" runat="server" placeholder="E-mail"  TextMode="Email"  class="form-control" ValidationGroup="user"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" runat ="server" ErrorMessage="email is required" ControlToValidate="email" ValidationGroup="user"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>

                                        <br />

                                        <div class="row">
                                            <div class="col-sm">

                                                 <asp:Label ID="Label5" runat="server" Text="Address:"></asp:Label>
                                                <asp:TextBox CssClass="form-control" ID="addres" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2" ValidationGroup="user"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" runat ="server" ErrorMessage="address is required" ControlToValidate="addres" ValidationGroup="user"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>  

                                        <br />

                                        <div class="row">
                                            <div class="col-md-6">
                                                 <asp:Label ID="Label6" runat="server" Text="DOB:"></asp:Label>
                                                <div class="form-group">
                                                    <asp:TextBox CssClass="form-control" ID="dob" runat="server" placeholder="Password" TextMode="Date" ValidateRequestMode="Inherit" ValidationGroup="user"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" runat ="server" ErrorMessage="Date of birth is required" ControlToValidate="dob" ValidationGroup="user" ></asp:RequiredFieldValidator>
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <asp:Label ID="malefemale" runat="server" Text="Gender:"></asp:Label>

                                                <div class="form-group">
                                                    <asp:RadioButtonList ID="RadioButton" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="male" />
                                                        <asp:ListItem Text="Female" />
                                                        <asp:ListItem Text="Other" />

                                                    </asp:RadioButtonList>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator18" ForeColor="Red" runat ="server" ErrorMessage="chose your gender" ControlToValidate="RadioButton" ValidationGroup="user"></asp:RequiredFieldValidator>

                                                    </div>

                                                <%--<div class="form-group">
                                                    <asp:RadioButton ID="RadioButton1" Text="Male" GroupName="gender" runat="server" Style="margin: 8px" ValidationGroup="user" />
                                                    <asp:RadioButton ID="RadioButton2" Text="Female" GroupName="gender" runat="server" Style="margin: 8px" ValidationGroup="user" />
                                                    <asp:RadioButton ID="RadioButton3" Text="Other" GroupName="gender" runat="server" Style="margin: 8px" ValidationGroup="user" />
                                                </div>--%>
                                            </div>
                                        </div>

                                        <br />


                                        <div class="row">
                                            <div class="col-sm">
                                                <label>select document type:</label>
                                                
                                                <asp:DropDownList ID="chosedocument" runat="server" class="form-control text " ValidationGroup="user">
                                <asp:ListItem Value="none">Choose-Id</asp:ListItem>
                                <asp:ListItem>Adhar-Card</asp:ListItem>
                                <asp:ListItem>Pan-card</asp:ListItem>
                                <asp:ListItem>Voter-id </asp:ListItem>
                                
                            </asp:DropDownList>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator6" InitialValue="none" ForeColor="Red" runat ="server" ErrorMessage="please select document" ControlToValidate="chosedocument" ValidationGroup="user"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="col-sm">

                                                <asp:Label ID="Label8" runat="server" Text="Enter Document Number:"></asp:Label>                    
                                                <asp:TextBox ID="docnum" placeholder="Document Number"  class="form-control"  runat="server" ValidationGroup="user"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ForeColor="Red" ErrorMessage="Enter document Number" ControlToValidate="docnum" ValidationGroup="user"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>

                                        <br />



                                        <div class="col-sm">
                                            <div>
                                                <asp:Label ID="Label9" runat="server" Text="Upload Document:"></asp:Label>
                                               
                                                <asp:FileUpload ID="FileUpload1"  class="form-control" runat="server" />
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ForeColor="Red" runat ="server" ErrorMessage="Upload the file required" ControlToValidate="FileUpload1" ValidationGroup="user"></asp:RequiredFieldValidator>
                                            </div>

                                        </div>


                                        <br />

                                        <div class="row">
                                            <div class="col-sm">

                                                <label for="user">Password:</label>
                                                
                                                <asp:TextBox ID="pass" runat="server" TextMode="Password" placeholder="Enter Password" class="form-control" Text="Password:" ValidationGroup="user" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="pass" ValidationGroup="user"></asp:RequiredFieldValidator>
                                            </div>


                                            <br />

                                            <div class="col-sm">

                                                <label for="user">Confirm-Password:</label>
                                                
                                                <asp:TextBox ID="cpass" runat="server" TextMode="Password" placeholder="Enter Confirm Password" class="form-control" Text="Confirm-Password:" ValidationGroup="user" />

                                            </div>
                                        </div>
                                        <br />
                                        <div class="form-group" >
                                            <center>                                               
                                            
                                            <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Button" ValidationGroup="user" OnClick="Button1_Click" /></center>
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
