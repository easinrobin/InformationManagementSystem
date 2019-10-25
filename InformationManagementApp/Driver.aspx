<%@ Page Title="Driver Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Driver.aspx.cs" Inherits="InformationManagementApp.Driver" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="row">
        <div class="col-md-4 productForm">
            <h3>Driver Information System</h3>
            <form>
                <div class="form-group">
                    <label for="inputDriverName" runat="server">Driver Name</label>
                    <input type="text" class="form-control" id="inputDriverName" runat="server" autocomplete="off" placeholder="Driver Name" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="inputDriverName" Display="Dynamic" ForeColor="Red" ErrorMessage="Name can not be empty"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="inputDriverAge">Age</label>
                    <input type="text" class="form-control" autocomplete="off" runat="server" id="inputDriverAge" placeholder="Age" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="inputDriverAge" Display="Dynamic" ForeColor="Red" ErrorMessage="Age can not be empty"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="inputDriverAge" Type="Integer" Operator="DataTypeCheck" Display="Dynamic" ForeColor="Red" ErrorMessage="Invalid Input"></asp:CompareValidator>
                </div>
                <div class="form-group">
                    <label for="inputDriverMobile">Mobile No.</label>
                    <input type="text" class="form-control" id="inputDriverMobile" autocomplete="off" runat="server" placeholder="01XXXXXXXXX" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="inputDriverMobile" Display="Dynamic" ForeColor="Red" ErrorMessage="Mobile No. can not be empty"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="inputDriverMobile" Type="Integer" Operator="DataTypeCheck" Display="Dynamic" ForeColor="Red" ErrorMessage="Invalid Input"></asp:CompareValidator>
                </div>
                <div class="form-group">
                    <label for="inputDriverAddress">Address</label>
                    <input type="text" class="form-control" id="inputDriverAddress" autocomplete="off" runat="server" placeholder="Dhaka" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="inputDriverAddress" Display="Dynamic" ForeColor="Red" ErrorMessage="Address can not be empty"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="inputDriverExperience">Experience</label>
                    <input type="text" class="form-control" id="inputDriverExperience" autocomplete="off" runat="server" placeholder="In Years" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="inputDriverExperience" Display="Dynamic" ForeColor="Red" ErrorMessage="Experience can not be empty"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="inputDriverExperience" Type="Integer" Operator="DataTypeCheck" Display="Dynamic" ForeColor="Red" ErrorMessage="Invalid Input"></asp:CompareValidator>
                </div>
                <br />
                <asp:Button ID="saveButton" class="btn btn-info" runat="server" Text="Save" OnClick="saveButton_Click" />
                <br />
                <asp:Label ID="msgLabel" runat="server"></asp:Label>
            </form>
        </div>
        
        <br/>

        <div class="col-md-8 driverGridView">
            <asp:GridView ID="driverListGridView" runat="server" AutoGenerateColumns="False" ForeColor="#333333" GridLines="None" CellPadding="4" Width="551px">
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
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <%#Eval("DriverName") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Age">
                        <ItemTemplate>
                            <%#Eval("DriverAge") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mobile">
                        <ItemTemplate>
                            <%#Eval("DriverMobile") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Address">
                        <ItemTemplate>
                            <%#Eval("DriverAddress") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Experience">
                        <ItemTemplate>
                            <%#Eval("DriverExperience") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

            </asp:GridView>
        </div>

    </div>

</asp:Content>