<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="map.aspx.cs" Inherits="troyscar.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	
<!DOCTYPE html>
	<html>
	<body>
        <div>
		<h1>Troy's Car Shop</h1>
        </div>

		<div id="googleMap" style="width: 80%; height: 400px" class="text-center m-auto"></div>

		<script src="Scripts/es6/map.js"></script>
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBuP4Q4rpVaVhVXRnKdI6hsIpYdaJrqwKQ&callback=makeMap"></script>
	</body>
</html>
</asp:Content>
