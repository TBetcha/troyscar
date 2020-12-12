<%@ Page Title="Manage Phone" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManagePhone.aspx.cs" Inherits="carshop.Account.ManagePhone" %>
    
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="ml-3"><%: Title %>.</h2>
    <div class="form-horizontal">
        <section id="phoneForm">
            <asp:PlaceHolder runat="server" ID="setPhone" Visible="true">

                <div class="form-horizontal ml-3">
                    <h4 ml-3>Set Phone Number</h4>
                    <asp:ValidationSummary runat="server" ShowModelStateErrors="true" CssClass="text-danger ml-3" />
                    <hr />
                    <div class="form-group ml-3">
                        <p>Current Phone Number: <% getCurrentNum(); %></p>
                        <asp:Label runat="server" AssociatedControlID="newPhone" CssClass="col-md-2 control-label">New Phone Number:</asp:Label>
                        <div class="col-md-10 ml-3">
                            <asp:TextBox runat="server" ID="newPhone"  CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="newPhone"
                                CssClass="text-danger text-center" ErrorMessage="The phone number field is required."
                                Display="Dynamic" ValidationGroup="SetPhone" />
                            <asp:ModelErrorMessage runat="server" ModelStateKey="NewPhone" AssociatedControlID="newPhone"
                                CssClass="text-danger ml-3" SetFocusOnError="true" />
                        </div>
                    </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" Text="Set Phone" ValidationGroup="SetPhone" OnClick="SetPhone_Click" CssClass="btn btn-default ml-2" />
                        </div>
                    </div>
            </asp:PlaceHolder>
        </section>
    </div>
</asp:Content>
