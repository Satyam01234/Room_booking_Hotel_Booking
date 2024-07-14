<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Tap_pan_registraion.aspx.cs" Inherits="Room_booking_Hotel_Booking.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="Scripts/jquery-3.6.0.js"></script>

    <style>
        .card-body {
            background-color: aliceblue;           
        }

        .form-control:focus {
            color: black;
           /* background-color: lightsteelblue;*/
            border-color: #171717;
            outline: 0;
            box-shadow: 10px 10px 10px gray;
            transition-duration: 0.3s;
            transition-timing-function: ease-in-out;
            caret-shape: underscore;
            caret-color: grey;
        }

        .tab-content container {
            animation: formAnimation 0.5s ease-in-out 0s 1 normal none;
        }


        .card {
            background-color: lightskyblue;
            box-shadow: 0 0 0 0.25rem rgba(238, 236, 236, 0.25);
            padding: 10px;
            border-radius: 1px;
            margin: 5px;
        }
    </style>
    <script>
        $(document).ready(function () {
            $('[id$=fname],[id$=lname],[id$=firstName],[id$=LastName]').keypress(function (e) {
                var regex = new RegExp("^[a-zA-Z]+$");
                var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
                if (regex.test(str)) {
                    return true;
                }
                else {
                    e.preventDefault();
                    var msg = 'Please Enter Alphabate Only';
                    alert(msg);
                    return false;
                }

            })

            $('[id$=empid]').keypress(function (e) {
                var regex = new RegExp("^[0-9]+$");
                var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
                if (regex.test(str)) {
                    return true;
                }
                else {
                    e.preventDefault();
                    var msg = ' Please enter  number ';
                    alert(msg);
                    return false;
                }
            })
        })
    </script>
    <div class="container">
        <h3>Registration Page</h3>
        <ul class="nav nav-tabs">
            <li class="nav-item"><a class="nav-link active" href="#h1" data-toggle="tab">User Form</a></li>
            <li class="nav-item"><a class="nav-link  active " href="#h2" data-toggle="tab">Admin form</a></li>
        </ul>

        <div class="tab-content container" style="background-color: gainsboro">
            <div class="tab-pane active" id="h1">
                <br />
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-5 m-auto d-block ">

                            <div class="card">
                                <div class="card-body">

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
                                            <asp:Label ID="fnamelable" runat="server" Text="First name:"></asp:Label>
                                            <asp:TextBox ID="fname" runat="server" AutoCompleteType="Disabled" placeholder="Enter First Name" class="form-control" ValidationGroup="user"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorfname" ForeColor="Red" runat="server" ErrorMessage="please enter first name" ControlToValidate="fname" ValidationGroup="user" Display="static" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </div>



                                        <div class="col-sm">

                                            <asp:Label ID="Label2" runat="server" Text="Last name:"></asp:Label>
                                            <asp:TextBox ID="lname" runat="server" AutoCompleteType="Disabled" placeholder="Enter Last name" class="form-control" ValidationGroup="user"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server" ErrorMessage="please enter last name" ControlToValidate="lname" ValidationGroup="user" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </div>

                                    </div>



                                    <div class="row">
                                        <div class="col-sm">
                                            <asp:Label ID="Label3" runat="server" Text="Mobile-No:"></asp:Label>
                                            <asp:TextBox ID="phone" runat="server" MaxLength="10" AutoCompleteType="Disabled" placeholder="Number" class="form-control" ValidationGroup="user"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" runat="server" ErrorMessage="Enter contact number" ControlToValidate="phone" ValidationGroup="user" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"
                                                ErrorMessage="Invalid Mobile No" Style="float: left;" Font-Size="14px" ForeColor="Red"
                                                ValidationExpression="^[0-9]{10}$" ValidationGroup="user"
                                                ControlToValidate="phone" SetFocusOnError="True"></asp:RegularExpressionValidator>
                                        </div>



                                        <div class="col-sm">

                                            <asp:Label ID="Label4" runat="server" Text="E-Mail:"></asp:Label>
                                            <asp:TextBox ID="email" AutoCompleteType="Disabled" runat="server" placeholder="E-mail" TextMode="Email" class="form-control" ValidationGroup="user"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" runat="server" ErrorMessage="email is required" ControlToValidate="email" ValidationGroup="user" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Style="float: left;" Font-Size="14px" runat="server" ErrorMessage="Invalid Email" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ValidationGroup="user" SetFocusOnError="True">
                                            </asp:RegularExpressionValidator>
                                        </div>
                                    </div>



                                    <div class="row">
                                        <div class="col-sm">

                                            <asp:Label ID="Label5" runat="server" Text="Address:"></asp:Label>
                                            <asp:TextBox CssClass="form-control" AutoCompleteType="Disabled" ID="addres" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2" ValidationGroup="user"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" runat="server" ErrorMessage="address is required" ControlToValidate="addres" ValidationGroup="user" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <br />

                                    <div class="row">
                                        <div class="col-md-6">
                                            <asp:Label ID="Label6" runat="server" Text="DOB:"></asp:Label>
                                            <div class="form-group">
                                                <asp:TextBox CssClass="form-control" AutoCompleteType="Disabled" ID="dob" runat="server" placeholder="Password" TextMode="Date" ValidateRequestMode="Inherit" ValidationGroup="user"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" runat="server" ErrorMessage="Date of birth is required" ControlToValidate="dob" ValidationGroup="user" SetFocusOnError="True"></asp:RequiredFieldValidator>
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
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" ForeColor="Red" runat="server" ErrorMessage="chose your gender" ControlToValidate="RadioButton" ValidationGroup="user" SetFocusOnError="True"></asp:RequiredFieldValidator>

                                            </div>
                                        </div>
                                    </div>




                                    <div class="row">
                                        <div class="col-sm-6">
                                            <label>select document type:</label>

                                            <asp:DropDownList ID="chosedocument" runat="server" class="form-control text" ValidationGroup="user">
                                                <asp:ListItem Value="0" Text="Choose-Id">none</asp:ListItem>
                                                <asp:ListItem Text="Adhar-Card" Value="adhar" ></asp:ListItem>
                                                <asp:ListItem Text="Pan-card" Value="pancard" disabled></asp:ListItem>
                                                <asp:ListItem Text="Voter-id" Value="voterid" disabled></asp:ListItem>

                                            </asp:DropDownList>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" InitialValue="none" ForeColor="Red" runat="server" ErrorMessage="please select atleast one document" ControlToValidate="chosedocument" ValidationGroup="user" SetFocusOnError="True"></asp:RequiredFieldValidator>

                                        </div>
                                        <div class="col-sm-6">
                                            <asp:Label ID="Label8" runat="server" Text="Enter Document Number:"></asp:Label>
                                            <asp:TextBox ID="docnum" placeholder="Document Number" MaxLength="12" minLength="10" AutoCompleteType="Disabled" class="form-control" runat="server" ValidationGroup="user"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ForeColor="Red" ErrorMessage="Enter document Number" ControlToValidate="docnum" ValidationGroup="user" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                             <asp:RegularExpressionValidator ID="RegularExpressionValidator7" Style="float: left;" Font-Size="14px" runat="server" ErrorMessage="please enter 12 digit" ControlToValidate="docnum" ValidationExpression="^[0-9]{12}$" ForeColor="Red" ValidationGroup="user" SetFocusOnError="True">
                                            </asp:RegularExpressionValidator>

                                        </div>
                                    </div>





                                    <div class="col-sm">
                                        <div>
                                            <asp:Label ID="Label9" runat="server" Text="Upload Document:"></asp:Label>
                                            <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ForeColor="Red" runat="server" ErrorMessage="Upload the file required" ControlToValidate="FileUpload1" ValidationGroup="user" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </div>

                                    </div>



                                    <div class="row">
                                        <div class="col-sm">

                                            <label for="user">Password:</label>

                                            <asp:TextBox ID="pass" runat="server" Minlength="8" AutoCompleteType="Disabled" TextMode="Password" placeholder="Enter Password" class="form-control" Text="Password:" ValidationGroup="user" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ForeColor="Red" runat="server" ErrorMessage="Please Enter the password " ControlToValidate="pass" ValidationGroup="user" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator Display="Static" ControlToValidate="pass" ID="RegularExpressionValidatorForPassword" ValidationExpression="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" runat="server" ErrorMessage="Must contain at least 1  number , 1 uppercase and lowercase letter, and at least 8 or more characters" Font-Size="14px" ForeColor="Red" Style="float: left;" ValidationGroup="user" SetFocusOnError="True"></asp:RegularExpressionValidator>
                                        </div>




                                        <div class="col-sm">

                                            <label for="user">Confirm-Password:</label>

                                            <asp:TextBox ID="cpass" runat="server" TextMode="Password" Minlength="8" AutoCompleteType="Disabled" placeholder="Enter Confirm Password" class="form-control" Text="Confirm-Password:" ValidationGroup="user" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ErrorMessage="please Re-type your password" ControlToValidate="cpass" ForeColor="Red" Style="float: right;" Font-Size="14px" ValidationGroup="user" SetFocusOnError="True">
                                            </asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not match" ControlToCompare="pass" ControlToValidate="cpass" Font-Size="14px" ForeColor="Red" Style="float: left;" ValidationGroup="user" SetFocusOnError="True">
                                            </asp:CompareValidator>

                                        </div>
                                    </div>
                                    <br />
                                    <div class="form-group">
                                        <center>
                                            <asp:Button ID="Button3" runat="server" class="btn btn-primary" Text="Create" ValidationGroup="user" OnClick="Button3_Click" UseSubmitBehavior="false" />
                                        </center>
                                    </div>

                                </div>

                            </div>

                        </div>
                    </div>

                </div>

            </div>


            <br />
            <div class="tab-pane" id="h2">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-5 m-auto d-block ">

                            <div class="card">
                                <div class="card-body">

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
                                            <label>First Name</label>
                                            <div class="form-group">
                                                <asp:TextBox CssClass="form-control" AutoCompleteType="Disabled" ID="firstName" runat="server" placeholder="First Name"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ForeColor="Red" runat="server" ErrorMessage="please Enter  first name" ControlToValidate="firstName" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <label>Last Name</label>
                                            <div class="form-group">
                                                <asp:TextBox CssClass="form-control" AutoCompleteType="Disabled" ID="LastName" runat="server" placeholder="Last Name"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" ForeColor="Red" runat="server" ErrorMessage="please Enter last name" ControlToValidate="LastName" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="row">

                                        <div class="col-md-6">
                                            <label>Date of Birth</label>
                                            <div class="form-group">
                                                <asp:TextBox CssClass="form-control" AutoCompleteType="Disabled" ID="dob2" runat="server" TextMode="Date"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ForeColor="Red" runat="server" ErrorMessage="Please enter date of birth" ControlToValidate="dob2" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>



                                        <div class="col-md-6">
                                            <label>Contact No</label>
                                            <div class="form-group">
                                                <asp:TextBox CssClass="form-control" AutoCompleteType="Disabled" ID="empcontact" runat="server" placeholder="Contact No"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ForeColor="Red" runat="server" ErrorMessage="please enter the contact number" ControlToValidate="empcontact" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                                    ErrorMessage="Invalid Mobile No" Style="float: left;" Font-Size="14px" ForeColor="Red"
                                                    ValidationExpression="^[0-9]{10}$" ValidationGroup="user"
                                                    ControlToValidate="empcontact" SetFocusOnError="True"></asp:RegularExpressionValidator>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">

                                        <div class="col-md-6">
                                            <label>Company-Email ID</label>
                                            <div class="form-group">
                                                <asp:TextBox CssClass="form-control" AutoCompleteType="Disabled" ID="compemail" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="compemail" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Style="float: left;" Font-Size="14px" runat="server" ErrorMessage="Invalid Email" ControlToValidate="compemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ValidationGroup="user" SetFocusOnError="True">
                                                </asp:RegularExpressionValidator>
                                            </div>

                                        </div>




                                        <div class="col-md-6">
                                            <label>Gender</label>
                                            <div class="form-group">
                                                <asp:RadioButtonList ID="RadioButton2" runat="server" RepeatDirection="Horizontal">
                                                    <asp:ListItem Text="male" />
                                                    <asp:ListItem Text="Female" />
                                                    <asp:ListItem Text="Other" />

                                                </asp:RadioButtonList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" ForeColor="Red" runat="server" ErrorMessage="chose your gender" ControlToValidate="RadioButton2" SetFocusOnError="True"></asp:RequiredFieldValidator>

                                            </div>

                                        </div>
                                    </div>

                                    <br />
                                    <div class="row">
                                        <div class="col">
                                            <label>Full Address</label>
                                            <div class="form-group">
                                                <asp:TextBox CssClass="form-control" ID="fulladdres" AutoCompleteType="Disabled" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" ForeColor="Red" runat="server" ErrorMessage="Please fill the address" ControlToValidate="fulladdres" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-4">
                                            <label>Employee-ID</label>
                                            <div class="form-group">
                                                <asp:TextBox class="form-control"  ID="empid" AutoCompleteType="Disabled" runat="server" placeholder="Employee ID"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ForeColor="Red" runat="server" ErrorMessage="Employee id is required" ControlToValidate="empid" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server"
                                                    ErrorMessage="Invalid Employee code" Style="float: left;" Font-Size="14px" ForeColor="Red"
                                                    ValidationExpression="^[0-9]{5}$" ValidationGroup="user"
                                                    ControlToValidate="empid" SetFocusOnError="True"></asp:RegularExpressionValidator>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <label>Password</label>
                                            <div class="form-group">
                                                <asp:TextBox class="form-control" ID="pass2" runat="server" AutoCompleteType="Disabled" placeholder="Password" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ForeColor="Red" runat="server" ErrorMessage="Password is required " ControlToValidate="pass2"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator Display="Static" ControlToValidate="pass2" ID="RegularExpressionValidator5" ValidationExpression="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" runat="server" ErrorMessage="Must contain at least 1  number , 1 uppercase and lowercase letter, and at least 8 or more characters" Font-Size="14px" ForeColor="Red" Style="float: left;" ValidationGroup="user" SetFocusOnError="True"></asp:RegularExpressionValidator>

                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <label>Confirm Password</label>
                                            <div class="form-group">
                                                <asp:TextBox class="form-control" ID="cpass2" runat="server" AutoCompleteType="Disabled" placeholder="Password" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ForeColor="Red" runat="server" ErrorMessage="Confirm password is required" ControlToValidate="cpass2" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Password not match" ControlToCompare="pass2" ControlToValidate="cpass2" Font-Size="14px" ForeColor="Red" Style="float: left;" ValidationGroup="user" SetFocusOnError="True">
                                                </asp:CompareValidator>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">

                                        <center>

                                            <asp:Button class="btn btn-primary btn-block btn-md" ID="Creat_buton_A" runat="server" Text="Create" OnClick="Creat_buton_A_Click1" />

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
</asp:Content>
