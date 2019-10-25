<%@ Page Title="Vehicle Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Vehicle.aspx.cs" Inherits="InformationManagementApp.Vehicle" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-4 productForm">
            <h3>Vehicle Information System</h3>
            <form>
                <div class="form-group">
                    <label for="inputVehicleType" runat="server">Vehicle Type</label>
                    <input type="text" class="form-control" id="inputVehicleType" runat="server" autocomplete="off" placeholder="E.g. Four Wheeler" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="inputVehicleType" Display="Dynamic" ForeColor="Red" ErrorMessage="Type can not be empty"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="inputVehicleCompany">Brand Name</label>
                    <input type="text" class="form-control" autocomplete="off" runat="server" id="inputVehicleCompany" placeholder="E.g. Toyota" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="inputVehicleCompany" Display="Dynamic" ForeColor="Red" ErrorMessage="Brand name can not be empty"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="inputVehicleReg">Registration No.</label>
                    <input type="text" class="form-control" id="inputVehicleReg" autocomplete="off" runat="server" placeholder="Registration" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="inputVehicleReg" Display="Dynamic" ForeColor="Red" ErrorMessage="Registration can not be empty"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="inputVehicleModel">Model No.</label>
                    <input type="text" class="form-control" id="inputVehicleModel" autocomplete="off" runat="server" placeholder="E.g. Ex" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="inputVehicleModel" Display="Dynamic" ForeColor="Red" ErrorMessage="Model can not be empty"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="inputVehicleDealer">Dealer Name</label>
                    <input type="text" class="form-control" id="inputVehicleDealer" autocomplete="off" runat="server" placeholder="Dealer Name" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="inputVehicleDealer" Display="Dynamic" ForeColor="Red" ErrorMessage="Dealer name can not be empty"></asp:RequiredFieldValidator>
                </div>
                <br />
                <asp:Button ID="saveButton" class="btn btn-info" runat="server" Text="Save" OnClick="saveButton_Click" />
                <br />
                <asp:Label ID="msgLabel" runat="server"></asp:Label>
            </form>
        </div>
        
        <br/>
        
        <div class="col-md-8 vehicleGridView">
            <asp:GridView ID="vehicleListGridView" runat="server" AutoGenerateColumns="False" ForeColor="#333333" GridLines="None" CellPadding="4">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                <Columns>
                    <asp:TemplateField HeaderText="Type">
                        <ItemTemplate>
                            <%#Eval("VehicleType") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Brand Name">
                        <ItemTemplate>
                            <%#Eval("VehicleCompany") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Reg No.">
                        <ItemTemplate>
                            <%#Eval("VehicleReg") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Model No.">
                        <ItemTemplate>
                            <%#Eval("VehicleModel") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Dealer">
                        <ItemTemplate>
                            <%#Eval("VehicleDealer") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>

    </div>
</asp:Content>