<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="map.aspx.cs" Inherits="carshop.map" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
<html>
	<head>
		<link
			rel="stylesheet"
			href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
			integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
			crossorigin="anonymous"
		/>
		<script src="https://kit.fontawesome.com/572a14277e.js" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="main.css" />
		<title>Troy's Car Shop - Find Us</title>
	</head>
	<body>
		<div class="container-fluid padding text-center">
			<h1>You don't have to do this alone</h1>
		</div>

		<div class="container-fluid padding">
			<div class="row padding justify-content-center">
				<div class="col-lg-8 col-md-8">
					<div id="googleMap" style="width: 80%; height: 400px" class="row-padding m-auto"></div>
				</div>
			</div>
		</div>
		<div class="col-lg-12 col-md-12 text-center m-auto">
			<h3>Find the closest office to you</h3>
			<h4>Enter your address</h4>
			<input id="usrAdd" type="text" />
			<button onClick="getUserAddress()">Submit me brody</button>
		</div>
		<script
			src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
			integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
			crossorigin="anonymous"
		></script>
		<script
			src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
			integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
			crossorigin="anonymous"
		></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
			integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
			crossorigin="anonymous"
		></script>
		<script src="Scripts/es6/map.js"></script>


	</body>
</html>

</asp:Content>
