<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="booking.aspx.cs" Inherits="Room_booking_Hotel_Booking.WebForm10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <%--    <script src="jquery-ui-1.13.2/jquery-ui-1.13.2/jquery-ui.min.js"></script>
    <link href="jquery-ui-1.13.2/jquery-ui-1.13.2/jquery-ui.min.css" rel="stylesheet" />
    <link href="jquery-ui-1.13.2/jquery-ui-1.13.2/jquery-ui.structure.min.css" rel="stylesheet" />--%>

    <link href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

    <script>
        //$(document).ready(function () {
        //    $(function () {
        //        var dateToday = new Date();
        //        var dates = $("#checkin", "#Checkout").datepicker({
        //            defaultDate: "+1w",
        //            changeMonth: true,
        //            numberOfMonths: 1,
        //            minDate: dateToday,
        //            onSelect: function (selectedDate) {
        //                var option = this.id = "checkin" ? "minDate" : "maxDate",
        //                    instance = $(this).data("datepicker"),
        //                    date = $.datepicker.parseDate(instance.settings.dateFormate || $.datepicker._default.dateFormat, selectedDate, instance.settings);
        //                dates.not(this).datepicker("option", option, date);
        //            }
        //        });
        //    });
        //});

        $(document).ready(function () {
            $('#checkin').datepicker({
                dateFormat: 'dd-mm-yy',
                changeMonth: 'true',
                changeYear: 'ture',
                maxDate: new Date('18/11/2022'),
                minDate: 0
            });

            $('#Checkout').datepicker({
                dateFormat: 'dd-mm-yy',
                changeMonth: 'true',
                changeYear: 'ture',
                maxDate: new Date(' 18/11/2022'),
                minDate: 0
            });
        });


    </script>



</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div>
        <center>
            <div class="card" style="width: 600px; height: 600px" background-color="light-greeen">
                <h1>Book Room</h1>


                <div class="card-body" style="background-color: darkgrey">


                    <div class="col-md-6">
                        <asp:Label ID="Label1" runat="server" Text="Room-NO:"></asp:Label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="txtroomno" runat="server" placeholder="roomno" TextMode="Number" disabled></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <asp:Label ID="Label2" runat="server" Text="Room-Type:"></asp:Label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="roomtype" runat="server" placeholder="Room-Type" TextMode="SingleLine" disabled></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <asp:Label ID="Label3" runat="server" Text="Room-Price:"></asp:Label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="price" runat="server" placeholder="price" TextMode="SingleLine" disabled></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <asp:Label ID="Label4" runat="server" Text="Cencel-Charge:"></asp:Label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="cencel_charge" runat="server" placeholder="cencel_charge" TextMode="Number" disabled></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="col-md-6">
                        <asp:Label ID="from" runat="server" Text="From"></asp:Label>
                        <div class="form-group">
                            <asp:TextBox ClientIDMode="static" CssClass="form-control" ID="checkin" runat="server" AutoCompleteType="Disabled" placeholder="DD-MM-YYYY" ValidationGroup="bookroom" />
                            <%--<asp:Label ID="validatecheckin" Text="date is  required" runat="server"> </asp:Label>--%>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="checkin" runat="server" ErrorMessage="Please select  date" ForeColor="#ff3300"></asp:RequiredFieldValidator>
                        </div>
                    </div>


                    <div class="col-md-6">
                        <asp:Label ID="to" runat="server" Text="To:"></asp:Label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="Checkout" runat="server" placeholder="DD-MM-YYYY" ClientIDMode="static" ValidationGroup="bookroom" />
                            <%--<asp:Label ID="validatecheckout" runat="server" Text="Label"></asp:Label>    --%>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="Checkout" runat="server" ErrorMessage="Please select date" ForeColor="#ff3300"></asp:RequiredFieldValidator>
                            <div>
                                <asp:Label ID="checkout_val" runat="server" ForeColor="Red" Text="Check out date must be greater than check in date" Visible="false"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <asp:Button ID="bookingbtn" class="btn btn-success" runat="server" Text="Confirm" Style="margin: 20px" OnClick="bookingbtn_Click" />
                        <asp:Button ID="Button2" class="btn btn-danger" runat="server" ValidationGroup="bookroom" Text="Cencel" Style="margin: 20px" OnClick="Button2_Click1" />
                    </div>
                </div>
            </div>
        </center>
    </div>

</asp:Content>
