<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="book_room.aspx.cs" Inherits="Room_booking_Hotel_Booking.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--   <div runat="server" id="maindiv"></div>--%>

    <script>
        $(document).ready(function () {
            $('.btn-outline-success').click(function () {
                $(this).attr('attrclickbook');
                var RoomID = $(this).attr('attrclickbook');
                window.location.replace("booking.aspx?RoomID=" + RoomID);
           });
       });
    </script>




    <div class="container">
        <ul class="nav nav-tabs">
            <li class="nav-item"><a class="nav-link active" href="#h1" data-toggle="tab">Book-Room </a></li>
            <li class="nav-item"><a class="nav-link  active " href="#h2" data-toggle="tab">History</a></li>
        </ul>
        <div class="tab-content container" style="background-color: lavender">

            <div class="tab-pane active" id="h1">
                <br />
                <div class="container-fluid">
                    <div class='row' runat="server" id="DivStatus"></div>

                   
                </div >
                
               <%-- <asp:HiddenField ID="HiddenFieldbook" runat="server" />
                <asp:Button ID="bookingbtn" style="display:none;"  runat="server" Text="Button" OnClick="bookingbtn_Click2" />--%>
                
            </div>

            <br />


            <div class="tab-pane " id="h2">
                <br />
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-9">

                            <asp:GridView ID="historygridview" AutoGenerateColumns="False"  BorderWidth="2px" CellPadding="4"
                                
                                CssClass="Table" BackColor="White" Height="108px" Width="950px" runat="server">
                                <Columns>
                                    <asp:TemplateField HeaderText="ID">
                                        <ItemTemplate>
                                            <asp:Label ID="historuid" runat="server" Text='<%# Eval("roomid") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="User Name">
                                        <ItemTemplate>
                                            <asp:Label ID="historyusername" runat="server" Text='<%# Eval("useremail") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Room NO">
                                        <ItemTemplate>
                                            <asp:Label ID="historyroomno" runat="server" Text='<%# Eval("roomNo") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Room Type">
                                        <ItemTemplate>
                                            <asp:Label ID="historyroomtype" runat="server" Text='<%# Eval("roomtype") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="In-Date" >
                                        <ItemTemplate>
                                            <asp:Label ID="historytimein" runat="server" Text='<%# Eval("time_in","{0:dd/MM/yyyy}") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Out-Date">
                                        <ItemTemplate>
                                            <asp:Label ID="historytimeout" runat="server" Text='<%# Eval("time_out","{0:dd/MM/yyyy}") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Confirmation">
                                        <ItemTemplate>
                                            <asp:Label ID="adminconfirmation" runat="server" Text='<%# Eval("userConfirmation") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                </Columns>

                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F7F7F7 " />
                                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                <SortedDescendingHeaderStyle BackColor="#242121" />
                            </asp:GridView>
                        </div>
                    </div>
                    <br />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
