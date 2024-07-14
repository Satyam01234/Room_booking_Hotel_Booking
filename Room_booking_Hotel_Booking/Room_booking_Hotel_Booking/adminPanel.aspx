<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminPanel.aspx.cs" Inherits="Room_booking_Hotel_Booking.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="container">
        <ul class="nav nav-tabs">
            <li class="nav-item"><a class="nav-link active" href="#h1" data-toggle="tab">user mangement </a></li>
            <li class="nav-item"><a class="nav-link  active " href="#h2" data-toggle="tab">admin management</a></li>
            <li class="nav-item"><a class="nav-link  active " href="#h3" data-toggle="tab">document management</a></li>
            <li class="nav-item"><a class="nav-link active" href="#h4" data-toggle="tab">Room-Manage</a></li>
            <li class="nav-item"><a class="nav-link active" href="#h5" data-toggle="tab">Room confirmation </a></li>

        </ul>

        <div class="tab-content container" style="background-color: gainsboro">
            <div class="tab-pane active" id="h1">
                <br />
                <div class="container-fluid">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <div class="row">
                                <div class="col-4"></div>
                                <div class="col-4">
                                    <h1 class="text-success">User Management</h1>
                                </div>
                                <div class="col--4"></div>

                                <div class="row"></div>
                                <div class="col-md-3" style="background-color: aquamarine">


                                    <div class="md-3">
                                        <%-- <label>ID</label>--%>
                                        <asp:TextBox ID="id" Visible="false" class="form-control" placeholder="id" runat="server"></asp:TextBox>
                                    </div>

                                    <div class="md-3">
                                        <label>First Name</label>
                                        <asp:TextBox ID="firstname" class="form-control" placeholder="first name" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorfname" ForeColor="Red" runat="server" ErrorMessage="please enter first name" ControlToValidate="firstname" ValidationGroup="userregistration" Display="static" SetFocusOnError="True"></asp:RequiredFieldValidator>

                                    </div>
                                    

                                    <div class="md-3">
                                        <label>Last Name</label>
                                        <asp:TextBox ID="lastname" class="form-control" placeholder="last name" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ForeColor="Red" runat="server" ErrorMessage="please enter last name" ControlToValidate="lastname" ValidationGroup="userregistration" SetFocusOnError="True"></asp:RequiredFieldValidator>

                                    </div>

                                    <div class="md-3">
                                        <label>contact</label>
                                        <asp:TextBox ID="contact" class="form-control" placeholder="Enter enter contact" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" runat="server" ErrorMessage="Enter contact number" ControlToValidate="contact" ValidationGroup="user" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"
                                            ErrorMessage="Invalid Mobile No" Style="float: left;" Font-Size="14px" ForeColor="Red"
                                            ValidationExpression="^[0-9]{10}$" ValidationGroup="user"
                                            ControlToValidate="contact" SetFocusOnError="True"></asp:RegularExpressionValidator>
                                    </div>

                                    <div class="md-3">
                                        <label>Email</label>
                                        <asp:TextBox ID="email" class="form-control" placeholder="Enter email" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" runat="server" ErrorMessage="email is required" ControlToValidate="email" ValidationGroup="user" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" Style="float: left;" Font-Size="14px" runat="server" ErrorMessage="Invalid Email" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ValidationGroup="user" SetFocusOnError="True" />
                                    </div>

                                    <div class="md-3">
                                        <label>address</label>
                                        <asp:TextBox ID="address" class="form-control" placeholder="Enter address" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" runat="server" ErrorMessage="address is required" ControlToValidate="address" ValidationGroup="user" SetFocusOnError="True"></asp:RequiredFieldValidator>

                                    </div>

                                    <div class="md-3">
                                        <label>Gender:-</label>
                                        <asp:DropDownList ID="Gender1" class="form-control" runat="server">
                                            <asp:ListItem Value="None">please select gender</asp:ListItem>
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:DropDownList>

                                    </div>
                                    <br />

                                    <div class="md-3">
                                        <label>Status:-</label>

                                        <asp:DropDownList ID="Status1" class="form-control" runat="server">
                                            <asp:ListItem Value="None">None</asp:ListItem>
                                            <asp:ListItem>Active</asp:ListItem>
                                            <asp:ListItem>InActive</asp:ListItem>
                                        </asp:DropDownList>

                                    </div>
                                    <br />

                                    <div class="md-3">

                                        <asp:Button ID="Button1" runat="server" Text="Insert" Width="90px" OnClick="Button1_Click" />
                                        <asp:Button ID="Button2" runat="server" Text="Update" Width="90px" OnClick="Button2_Click" />
                                        <asp:Button ID="Button3" runat="server" Text="delete" Width="90px" OnClick="Button3_Click" />


                                    </div>

                                    <br />
                                </div>
                                <br />
                                <div class="col-md-9">
                                    <asp:GridView ID="usergridView" runat="server"
                                        CssClass="Table" Height="198px" Width="819px"
                                        AutoGenerateColumns="False" BackColor="White"
                                        BorderColor="#CCCCCC" BorderStyle="None" OnRowCommand="usergridView_RowCommand1"
                                        BorderWidth="2px" CellPadding="4" ForeColor="Black">
                                        <Columns>
                                            <asp:TemplateField HeaderText="ID">
                                                <ItemTemplate>
                                                    <asp:Label ID="iduser" runat="server" Text='<%# Eval("id") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                            <asp:TemplateField HeaderText="First Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="firstnameuser" runat="server" Text='<%# Eval("first_name") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                            <asp:TemplateField HeaderText="Last Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="lastnameuser" runat="server" Text='<%# Eval("Last_name") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                            <asp:TemplateField HeaderText="Contact">
                                                <ItemTemplate>
                                                    <asp:Label ID="contactuser" runat="server" Text='<%# Eval("contact") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Email">
                                                <ItemTemplate>
                                                    <asp:Label ID="emailuser" runat="server" Text='<%# Eval("email") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Adress">
                                                <ItemTemplate>
                                                    <asp:Label ID="addressuser" runat="server" Text='<%# Eval("address") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                            <asp:TemplateField HeaderText="Gender">
                                                <ItemTemplate>
                                                    <asp:Label ID="genderuser" runat="server" Text='<%# Eval("gender") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                            <asp:TemplateField HeaderText="Status">
                                                <ItemTemplate>
                                                    <asp:Label ID="statususer" runat="server" Text='<%# Eval("Status") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                            <asp:TemplateField HeaderText="Select">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" Text="Edit" CommandArgument='<%# Eval("id")%>' CommandName="EditRecord" />
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                        </Columns>
                                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                        <SortedDescendingHeaderStyle BackColor="#242121" />
                                    </asp:GridView>
                                </div>
                                <br />

                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <br />
            </div>

            <%--//admin management--%>



            <div class="tab-pane " id="h2">

                <br />
                <div class="container-fluid">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>

                            <div class="row">
                                <div class="col-4">
                                    <h1 class="text-success">Admin Detail</h1>
                                </div>
                                <div class="col--4"></div>
                                <div class="row"></div>

                                <div class="col-md-3" style="background-color: lightsalmon">


                                    <div class="md-3">
                                        <%--<label>ID</label>--%>
                                        <asp:TextBox ID="admin_id" Visible="false" class="form-control" placeholder="id" runat="server"></asp:TextBox>
                                    </div>

                                    <div class="md-3">
                                        <label>First Name</label>
                                        <asp:TextBox ID="admin_fistname" class="form-control" placeholder="first name" runat="server"></asp:TextBox>
                                    </div>
                                    <br />

                                    <div class="md-3">
                                        <label>Last Name</label>
                                        <asp:TextBox ID="admin_lastname" class="form-control" placeholder="last name" runat="server"></asp:TextBox>
                                    </div>
                                    <br />


                                    <div class="md-3">
                                        <label>contact</label>
                                        <asp:TextBox ID="admin_contact" class="form-control" placeholder="Enter enter contact" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" runat="server" ErrorMessage="Enter contact number" ControlToValidate="admin_contact" ValidationGroup="user" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                                            ErrorMessage="Invalid Mobile No" Style="float: left;" Font-Size="14px" ForeColor="Red"
                                            ValidationExpression="^[0-9]{10}$" ValidationGroup="user"
                                            ControlToValidate="admin_contact" SetFocusOnError="True"></asp:RegularExpressionValidator>
                                    </div>
                          

                                    <div class="md-3">
                                        <label>Email</label>
                                        <asp:TextBox ID="admin_email" class="form-control" placeholder="Enter email" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" runat="server" ErrorMessage="email is required" ControlToValidate="email" ValidationGroup="admin_manage" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator12" Style="float: left;" Font-Size="14px" runat="server" ErrorMessage="Invalid Email" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ValidationGroup="admin_manage" SetFocusOnError="True" />
                                    </div>
                        


                                    <div class="md-3">
                                        <label>address</label>
                                        <asp:TextBox ID="admin_address" class="form-control" placeholder="Enter address" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server" ErrorMessage="address is required" ControlToValidate="admin_address" ValidationGroup="user" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    </div>
                                  


                                    <div class="md-3">
                                        <label>Employee-ID</label>
                                        <asp:TextBox ID="employee_id" class="form-control" placeholder="Enter Employee Id" runat="server"></asp:TextBox>
                                    </div>
                                    <br />

                                    <div class="md-3">
                                        <label>Gender:-</label>
                                        <asp:DropDownList ID="adminGender" class="form-control" runat="server">
                                            <asp:ListItem Value="None">please select gender</asp:ListItem>
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:DropDownList>

                                    </div>
                                    <br />

                                    <div class="md-3">
                                        <label>Status:-</label>

                                        <asp:DropDownList ID="adminStatues" class="form-control" runat="server">
                                            <asp:ListItem Value="None">None</asp:ListItem>
                                            <asp:ListItem>Active</asp:ListItem>
                                            <asp:ListItem>InActive</asp:ListItem>
                                        </asp:DropDownList>

                                    </div>
                                    <br />

                                    <div class="md-3">
                                        <asp:Button ID="Button7" runat="server" Text="Insert" Width="90px" OnClick="Button7_Click" />
                                        <asp:Button ID="Button4" runat="server" Text="update" Width="90px" OnClick="Button4_Click" />
                                        <asp:Button ID="Button5" runat="server" Text="Delete" Width="90px" OnClick="Button5_Click" />
                                    </div>
                                    <br />
                                </div>

                                
                                <div class="col-md-9">

                                    <asp:GridView runat="server" AutoGenerateColumns="False"
                                        BackColor="#FCDFFF" OnRowCommand="adminGridview_RowCommand"
                                        GridLines="None"
                                        BorderColor="#CCCCCC" BorderStyle="None"
                                        CssClass="Table" Height="198px" Width="859px" ID="adminGridview">

                                        <Columns>
                                            <asp:TemplateField HeaderText="ID">
                                                <ItemTemplate>
                                                    <asp:Label ID="adminid" runat="server" Text='<%# Eval("id") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                            <asp:TemplateField HeaderText="First Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="adminfirstname" runat="server" Text='<%# Eval("first_name") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                            <asp:TemplateField HeaderText="Last Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="adminlastname" runat="server" Text='<%# Eval("Last_name") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                            <asp:TemplateField HeaderText="Contact">
                                                <ItemTemplate>
                                                    <asp:Label ID="admincontact" runat="server" Text='<%# Eval("contact") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Email">
                                                <ItemTemplate>
                                                    <asp:Label ID="adminemail" runat="server" Text='<%# Eval("Email") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Address">
                                                <ItemTemplate>
                                                    <asp:Label ID="adminaddress" runat="server" Text='<%# Eval("address") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                            <asp:TemplateField HeaderText="EmployeeId">
                                                <ItemTemplate>
                                                    <asp:Label ID="employeeid" runat="server" Text='<%# Eval("Employee_id") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                            <asp:TemplateField HeaderText="Gender">
                                                <ItemTemplate>
                                                    <asp:Label ID="admingender" runat="server" Text='<%# Eval("gender") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                            <asp:TemplateField HeaderText="Status">
                                                <ItemTemplate>
                                                    <asp:Label ID="adminstatus" runat="server" Text='<%# Eval("Status") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                            <asp:TemplateField HeaderText="Select">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton2" runat="server" Text="Edit" CommandArgument='<%# Eval("id")%>' CommandName="EditAdminRecord" />
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                        </Columns>
                                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                        <SortedDescendingHeaderStyle BackColor="#242121" />
                                    </asp:GridView>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>


 <%------------------------------------------------------------------------------------------document type------------------------------------------------------------------------------%>
            <div class="tab-pane" id="h3">
                <br />
                <div class="container-fluid">

                                         <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                        <ContentTemplate>

                    <div class="row">
                        <div class="col-4">
                            <h1 class="text-success-center">Document master</h1>
                        </div>
                        <div class="col--4"></div>
                        <div class="row"></div>
                        <div class="col-md-3" style="background-color: lightsalmon">

                            <div class="md-3">
                                <%--<label>ID</label>--%>
                                <asp:TextBox ID="Document_id" Visible="false" class="form-control" placeholder="ID" runat="server"></asp:TextBox>
                            </div>


                            <div class="md-3">
                                <label>User Email</label>
                                <asp:TextBox ID="useremail" class="form-control" placeholder="User email" runat="server"></asp:TextBox>
                            </div>
                            <br />

                            <div class="md-3">
                                <label>Document Type</label>
                                <asp:TextBox ID="documenttype" class="form-control" placeholder="document type" runat="server"></asp:TextBox>
                            </div>
                            <br />

                            <div class="md-3">
                                <asp:Label ID="document" runat="server" Text="User Document Number:"></asp:Label>
                                <asp:TextBox ID="documentnumber" placeholder="Document Number" class="form-control" runat="server" ValidationGroup="user"></asp:TextBox>
                            </div>
                            <br />

                            <div class="md-3">
                                <%--<asp:Label ID="Label9" runat="server" Text="User Uploaded Document:"></asp:Label>--%>
                                <asp:FileUpload ID="FileUpload1" Visible="false" class="form-control" runat="server" />
                                <asp:HiddenField ID="documenthiddenfield" runat="server" />
                            </div>
                            <br />


                            <div class="md-3">
                                <label>User Document  status :-</label>

                                <asp:DropDownList ID="Document_status" class="form-control" runat="server">
                                    <asp:ListItem Text="--select document status--" Value="none"></asp:ListItem>
                                    <asp:ListItem Text="Active" Value="Active">  </asp:ListItem>
                                    <asp:ListItem Text="InActive" Value="InActive"></asp:ListItem>
                                </asp:DropDownList>

                            </div>
                            <br />
                            <br />
                            <div class="md-3">

                                <asp:Button ID="Button13" runat="server" Text="Update" OnClick="Button13_Click" />
                                <asp:Button ID="deleteDocument" runat="server" Text="delete" OnClick="deleteDocument_Click" />

                            </div>
                            <br />
                        </div>
                        <br />

                        <div class="col-md-9">

                            <asp:GridView ID="DocumentmanagementGridview" Height="198px" Width="900px"
                                AutoGenerateColumns="False" OnRowCommand="DocumentmanagementGridview_RowCommand"
                                BackColor="White" runat="server">
                                <Columns>
                                    <asp:TemplateField HeaderText="ID">
                                        <ItemTemplate>
                                            <asp:Label ID="Documentid" runat="server" Text='<%# Eval("id") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Email">
                                        <ItemTemplate>
                                            <asp:Label ID="documentemail" runat="server" Text='<%# Eval("email") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Document type">
                                        <ItemTemplate>
                                            <asp:Label ID="doc_type" runat="server" Text='<%# Eval("documentType") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Document Number">
                                        <ItemTemplate>
                                            <asp:Label ID="Doc_number" runat="server" Text='<%# Eval("documentNumber") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Uploaded Document">
                                        <ItemTemplate>
                                            <asp:Label ID="Updoaded_Doc" runat="server" Text='<%# Eval("Upload_document") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Document Status">
                                        <ItemTemplate>
                                            <asp:Label ID="doc_Status" runat="server" Text='<%# Eval("userdocumentstatus") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Select">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton3" runat="server" Text="Edit" CommandArgument='<%# Eval("id")%>' CommandName="DocumentRowCommandEditing" />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                </Columns>
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                <SortedDescendingHeaderStyle BackColor="#242121" />
                            </asp:GridView>
                        </div>


                    </div>
                    </ContentTemplate>
                    </asp:UpdatePanel>
                    <br />
                </div>
            </div>




            <%--//Room-Manage--%>


            <div class="tab-pane" id="h4">
                <br />
                <div class="container-fluid">
                     <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                        <ContentTemplate>

                    <div class="row">
                        <div class="col-4">
                            <h1 class="text-success">Room Master</h1>
                        </div>
                        <div class="col--4"></div>
                        <div class="row"></div>
                        <div class="col-md-3" style="background-color: lightsalmon">


                            <div class="md-3">
                                <%--<label>Room ID</label>--%>
                                <asp:TextBox ID="roomid" class="form-control" Visible="false" placeholder="id" runat="server"></asp:TextBox>
                            </div>
                            <br />

                            <div class="md-3">
                                <label>Room-No</label>
                                <asp:TextBox ID="roomno" class="form-control" placeholder="Enter room NO" runat="server"></asp:TextBox>
                            </div>
                            <br />

                            <div class="md-3">
                                <label>Price</label>
                                <asp:TextBox ID="roomprize" class="form-control" placeholder="Enter Prize" runat="server"></asp:TextBox>
                                
                            </div>
                            <br />

                            <div class="md-3">
                                <asp:Label ID="uploadImage" runat="server" Text="upload_image"></asp:Label>
                                <asp:FileUpload ID="upload_Image" class="form-control" runat="server" AllowMultiple="true" />
                                <asp:HiddenField ID="imageupload"  runat="server" />
                            </div>
                            <br />

                            <div class="md-3">
                                <label>Cancellation Charge</label>
                                <asp:TextBox ID="cnlcharge" class="form-control" placeholder="Cancel charge" runat="server"  onTextChanged="cnlcharge_TextChanged1" AutoPostBack="true"></asp:TextBox>
                                <asp:Label ID="cancelprice" runat="server" Text="Roomprice is greater than cancel price" ForeColor="Red">  </asp:Label>
                            </div>
                            <br />


                            <div class="md-3">
                                <label>Room Type:-</label>
                                <asp:DropDownList ID="roomtypedlist" class="form-control" runat="server">
                                    <asp:ListItem Text="Enter room type" Value="None" />
                                    <asp:ListItem Text="Single Room" Value="Single Room" />
                                    <asp:ListItem Text="Twin Room" Value="Twin Room" />
                                    <asp:ListItem Text="Triple Room" Value="Triple Room" />
                                </asp:DropDownList>
                            </div>
                            <br />

                            <div class="md-3">
                                <label>Status:-</label>

                                <asp:DropDownList ID="statuslist" class="form-control" runat="server">
                                    <%-- <asp:ListItem Value="None">--None--</asp:ListItem>
                                    <asp:ListItem>Available </asp:ListItem>
                                    <asp:ListItem>unavailable</asp:ListItem>--%>

                                    <asp:ListItem Text=" room status" Value="None" />
                                    <asp:ListItem Text="unavailable" Value="unavailable" />
                                    <asp:ListItem Text="Available" Value="Available" />
                                </asp:DropDownList>

                            </div>
                            <br />

                            <div class="md-3">
                                <asp:Button ID="Button10" runat="server" Text="Insert" Width="90px" OnClick="Button10_Click" />
                                <asp:Button ID="Button6" runat="server" Text="Update" Width="90px" OnClick="Button6_Click" />
                                <asp:Button ID="Button8" runat="server" Text="Delete" Width="90px" OnClick="Button8_Click" />
                            </div>
                            <br />

                        </div>
                        <br />
                        <div class="col-md-9">
                            <asp:GridView ID="RoomMasterGridview" BackColor="White" OnRowCommand="RoomMasterGridview_RowCommand" Height="100px" Width="900px" AutoGenerateColumns="False" runat="server">

                                <Columns>
                                    <asp:TemplateField HeaderText="ID">
                                        <ItemTemplate>
                                            <asp:Label ID="room_id" runat="server" Text='<%# Eval("roomid") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Room No">
                                        <ItemTemplate>
                                            <asp:Label ID="Room_no" runat="server" Text='<%# Eval("roomNo") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Room Type">
                                        <ItemTemplate>
                                            <asp:Label ID="room_type" runat="server" Text='<%# Eval("roomtype") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Price">
                                        <ItemTemplate>
                                            <asp:Label ID="room_price" runat="server" Text='<%# Eval("price","{0:c0}") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Cencel charge">
                                        <ItemTemplate>
                                            <asp:Label ID="room_cancel" runat="server" Text='<%# Eval("Cancelcharge","{0:c0}") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Room Image">
                                        <ItemTemplate>
                                            <asp:Label ID="room_image" runat="server" Text='<%# Eval("roomImage") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    

                                    <asp:TemplateField HeaderText="Room Status">
                                        <ItemTemplate>
                                            <asp:Label ID="Room_status" runat="server" Text='<%# Eval("RoomStatus") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Select">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton4" runat="server" Text="Edit" CommandArgument='<%# Eval("roomid")%>' CommandName="EditGridViewRecord" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                <SortedDescendingHeaderStyle BackColor="#242121" />
                            </asp:GridView>
                        </div>
                    </div>
                            <br />
                     </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>


            <div class="tab-pane" id="h5">
                <br />
                <div class="container-fluid">
                    <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                        <ContentTemplate>
                            <div class="row">
                                <div class="col-4">
                                    <h1 class="text-success">Confirm Room</h1>
                                </div>
                                <div class="col--4"></div>
                                <div class="col--4"></div>
                                <div class="row">
                                    <div class="col-md-3" style="background-color: lightsalmon">

                                        <div class="md-3">
                                            <label visible="false" Text="ID"></label>
                                            <asp:TextBox ID="confirmroomid" class="form-control" placeholder="ID" runat="server"  Visible="false"></asp:TextBox>
                                        </div>


                                        <div class="md-3">
                                            <label>email</label>
                                            <asp:TextBox ID="conemail" class="form-control" TextMode="Email" placeholder="Email" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="md-3">
                                            <label>Room No</label>
                                            <asp:TextBox ID="Confroomno" class="form-control" placeholder="Room No" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="md-3">
                                            <label>Room Type </label>
                                            <asp:TextBox ID="confirm_romtype" class="form-control" placeholder="Room Type " runat="server"></asp:TextBox>
                                        </div>



                                        <div class="md-3">
                                            <label>confiramation</label>

                                            <asp:DropDownList ID="adminConfirmation" class="form-control" runat="server">
                                                <asp:ListItem Text="panding" Value="None" />
                                                <asp:ListItem Text="cancel" Value="cancel" />
                                                <asp:ListItem Text="confirm" Value="confirm" />
                                            </asp:DropDownList>

                                        </div>
                                        <br />

                                        <div class="md-3">
                                            <asp:Button ID="update" runat="server" Text="Update" OnClick="update_Click1" />
                                        </div>
                                        <br />

                                    </div>
                                    <br />
                                    <div class="col-md-9">
                                        <asp:GridView ID="confirmbookinggridview" BackColor="White" AutoGenerateColumns="False" OnRowCommand="confirmbookinggridview_RowCommand" Height="100px" Width="900px" runat="server">
                                            <Columns>
                                                <asp:TemplateField HeaderText="ID">
                                                    <ItemTemplate>
                                                        <asp:Label ID="c_ID" runat="server" Text='<%# Eval("roomid") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="User Email">
                                                    <ItemTemplate>
                                                        <asp:Label ID="c_useremail" runat="server" Text='<%# Eval("useremail") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Room_NO">
                                                    <ItemTemplate>
                                                        <asp:Label ID="c_roomNO" runat="server" Text='<%# Eval("roomNo") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Room Type">
                                                    <ItemTemplate>
                                                        <asp:Label ID="C_roomtype" runat="server" Text='<%# Eval("roomtype") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Confirmation">
                                                    <ItemTemplate>
                                                        <asp:Label ID="c_userconfirm" runat="server" Text='<%# Eval("userConfirmation") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Select">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="LinkButton5" runat="server" Text="Edit" CommandArgument='<%# Eval("roomid")%>' CommandName="roomConfirmationedit" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>

                                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                            <SortedDescendingHeaderStyle BackColor="#242121" />
                                        </asp:GridView>
                                    </div>
                                </div>
                                
                            </div>
                            <br />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <br />
            </div>      
 <%-----------------------------------------------------------------------------------------------------end-----------------------------------------------------------------------------------------------%>
        </div>
    </div>
</asp:Content>

