<%@ Page Title="Vehicle Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Vehicle.aspx.cs" Inherits="InformationManagementApp.Vehicle" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-6 productForm">
            <h3>Product Information System</h3>
            <form>
                <div class="form-group">
                    <label for="inputProductName" runat="server">Product Name</label>
                    <input type="text" class="form-control" id="inputProductName" runat="server" autocomplete="off" placeholder="Product Name" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="inputProductName" Display="Dynamic" ForeColor="Red" ErrorMessage="Name can not be empty"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="inputProductCode">Product Code</label>
                    <input type="text" class="form-control" autocomplete="off" runat="server" id="inputProductCode" placeholder="Product Code" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="inputProductCode" Display="Dynamic" ForeColor="Red" ErrorMessage="Product Code can not be empty"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="inputProductPrice">Product Price</label>
                    <input type="text" class="form-control" id="inputProductPrice" autocomplete="off" runat="server" placeholder="Price" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="inputProductPrice" Display="Dynamic" ForeColor="Red" ErrorMessage="Price can not be empty"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="inputProductMfgDate">Manufacturing Date</label>
                    <input type="text" class="form-control datepicker" id="inputProductMfgDate" autocomplete="off" runat="server" placeholder="YYYY-MM-DD" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="inputProductMfgDate" Display="Dynamic" ForeColor="Red" ErrorMessage="Date can not be empty"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="inputProductExpDate">Expiry Date</label>
                    <input type="text" class="form-control datepicker" id="inputProductExpDate" autocomplete="off" runat="server" placeholder="YYYY-MM-DD" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="inputProductExpDate" Display="Dynamic" ForeColor="Red" ErrorMessage="Date can not be empty"></asp:RequiredFieldValidator>
                </div>
                <br />
                <asp:Button ID="saveButton" class="btn btn-info" runat="server" Text="Save" OnClick="saveButton_Click" />
                <br />
                <asp:Label ID="msgLabel" runat="server"></asp:Label>
            </form>
        </div>
</asp:Content>