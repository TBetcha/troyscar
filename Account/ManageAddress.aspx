<%@ Page Title="Manage Address" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageAddress.aspx.cs" Inherits="carshop.Account.ManageAddress" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <h2 class="ml-3"><%: Title %></h2>
    <div class="form-horizontal">
        <section id="addressForm">
            <asp:PlaceHolder runat="server" ID="setAddress" Visible="true">

                <div class="form-horizontal ml-3">
                    <h4 ml-3>Set Address</h4>
                    <asp:ValidationSummary runat="server" ShowModelStateErrors="true" CssClass="text-danger ml-3" />
                    <hr />
                    <div class="form-group ml-3">
                        <p>Current Address: <% getCurrentAddress(); %></p>
                        <asp:Label runat="server" AssociatedControlID="newAddress" CssClass="col-md-2 control-label">New Address:</asp:Label>
                        <div class="col-md-10 ml-3">
                            <asp:TextBox runat="server" ID="newAddress"  CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="newAddress"
                                CssClass="text-danger text-center" ErrorMessage="The address field is required."
                                Display="Dynamic" ValidationGroup="SetPhone" />
                            <asp:ModelErrorMessage runat="server" ModelStateKey="NewAddress" AssociatedControlID="newAddress"
                                CssClass="text-danger ml-3" SetFocusOnError="true" />
                        </div>
                    </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" Text="Set Phone" ValidationGroup="SetAddress" OnClick="SetAddress_Click" CssClass="btn-attn btn-danger pl-2 ml-2" />
                        </div>
                    </div>
            </asp:PlaceHolder>
        </section>
    </div>
</asp:Content> 
