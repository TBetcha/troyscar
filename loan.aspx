<%@ Page Title="Loan" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="loan.aspx.cs" Inherits="carshop.loan" Async="true"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

  <!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
      integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <script src="https://kit.fontawesome.com/572a14277e.js" crossorigin="anonymous"></script>
    <title>Troy's Car Shop</title>
  </head>

  <body>
    <!-- Navbar -->

   
    <!-- Navbar -->
    <!-- Two column -->
    <div class="container-fluid padding">
      <div class="row padding">
        <div class="col-lg-4 col-md-4">
          <img src="img/bulb.jpg" class="img-fluid" />
        </div>
        <div class="col-md-8 col-lg-8">
          <h3 class="display-4 font-weight-bold mt-5">Here is a bright idea...<br> Let's save you some money</h3>
        </div>
        <hr>
      </div>
    </div>
    <hr>
    <!-- Two column -->
    <!-- Loan calc -->
    <div class="container-fluid padding">
      <div class="row padding">
        <div class="col-lg-8 col-md-8 m-auto">
          <div id="loan-form">
       <!--  
            <a class="btn-attn btn-danger" data-toggle="collapse" href="#collapseExample" role="button"
              aria-expanded="false" aria-controls="collapseExample">
              <div class="form-group">
                <label for="exampleFormControlSelect1">Click If Top Deal Vehicle</label>
            </a>
            <br>
            <br>
              <div class="collapse" id="collapseExample">
              <div class="card card-body">
           <select id="topDealSelect">
                  <option value="">-</option>
                  <option value="Ford Transit">Ford Transit</option>
                </select>
       
             	<asp:DropDownList ID="Sales" runat="server">
				<asp:ListItem>Car</asp:ListItem>
				<asp:ListItem>Truck</asp:ListItem>
				<asp:ListItem>Van</asp:ListItem>
			</asp:DropDownList>	
	
              </div>
            </div>
           -->
            <div class="form-group">
              <label for="price">Price</label>
          <!--    <input type="number" class="form-control" id="inpPrice" value="">    -->
                <asp:TextBox ID="inputPrice" TextMode="Number" runat="server">
                    <p></p>
                </asp:TextBox>

                   </div>
            <div class="form-group">
              <label for="interest">Interest</label>
       <!--       <input type="text" class="form-control" id="inpInterest" value="">          -->
                <asp:TextBox ID="inputInterest" runat="server" ></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
          <label for="month">Month Term</label>

            <asp:DropDownList ID="interestLen" runat="server" TextMode="Number">

                <asp:ListItem>12</asp:ListItem>
				<asp:ListItem>24</asp:ListItem>
				<asp:ListItem>36</asp:ListItem>
				<asp:ListItem>48</asp:ListItem>
				<asp:ListItem>60</asp:ListItem>
				<asp:ListItem>72</asp:ListItem>

            </asp:DropDownList>


<!--
          <select multiple class="form-control" id="inpMonth">
            <option value="12">12</option>
            <option value="24">24</option>
            <option value="36">36</option>
            <option value="48">48</option>
            <option value="60">60</option>
            <option value="72">72</option>
          </select>
    -->
        </div>
        <div class="ml-4 pl-4">

                <button class="btn-attn btn-danger" id="calcloan">Calculate</button>
          </div>
        <div class="form-group">
          <label for="payment">Monthly Payment</label>
                 <h3><% getPayment(); %></h3>
   <!--       <textarea class="form-control" id="inpPayment" rows="1" placeholder="Affordable!"></textarea>  -->
        </div>
        </div>
      </div>
      <hr>
    </div>
    </div>
    <hr>
    <!-- Loan calc -->

    <!-- connect/footer -->
    <div class="container-fluid padding">
      <div class="row text-center padding">
        <div class="col-12">
          <h2>Connect With Us</h2>
        </div>
        <div class="col-12 social padding">
          <a class="text-info" href="https://facebook.com"><i class="fab fa-facebook"></i></a>
          <a href="https://twitter.com/home"><i class="fab fa-twitter"></i></a>
          <a class="text-danger" href="https://instagram.com"><i class="fab fa-instagram"></i></a>
          <a class="text-danger" href="https://google.com"><i class="fab fa-google-plus-g"></i></a>
        </div>
      </div>
    </div>
    <!-- connect/footer -->

 

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
      integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
      crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
      integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
      crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
      integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
      crossorigin="anonymous"></script>
        <script type="application/json" src="<%= ResolveUrl("deals.json") %>"></script>
        <script type="text/javascrupt" src="<%= ResolveUrl("~/Scripts/es6/loan.js") %>"></script>
  </body>

</html>

</asp:Content>
