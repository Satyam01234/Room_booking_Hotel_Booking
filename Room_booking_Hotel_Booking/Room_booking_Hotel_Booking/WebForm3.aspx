<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Room_booking_Hotel_Booking.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <br /> <div class="container card " style="height: 670px; width: 30%; background-color: antiquewhite;">

        <h2 class="text-center ">User Registration</h2>
        <div class="form-group" style="display: flex; justify-content: center; align-items: center">

            <div>

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
                    <div class="col-sm">
                        <label>select document type:</label>
                        <select class="form-control text">
                            <option>Default</option>
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
    <br />
</asp:Content>