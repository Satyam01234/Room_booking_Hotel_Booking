<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demo.aspx.cs" Inherits="Room_booking_Hotel_Booking.WebForm11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-10" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="transfer to webform 2" OnClick="Button1_Click" /><br />
            <asp:Button ID="Button2" runat="server" Text="transfer to external Website" />

           
        </div>
    </form>
</body>
</html>
