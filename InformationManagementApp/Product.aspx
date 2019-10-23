<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="InformationManagementApp.Product" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-6 studentForm">
            <h3>Student Information System</h3>
            <form>
                <div class="form-group">
                    <label for="inputStudentName">Student Name</label>
                    <input type="text" class="form-control" id="inputStudentName" runat="server" autocomplete="off" placeholder="Your Name" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="inputStudentName" Display="Dynamic" ForeColor="Red" ErrorMessage="Name can not be empty"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="inputStudentAge">Age</label>
                    <input type="text" class="form-control" autocomplete="off" runat="server" id="inputStudentAge" placeholder="Your Age" />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="inputStudentAge" Operator="DataTypeCheck" Type="Integer" Display="Dynamic" ForeColor="Red" ErrorMessage="Invalid Input"></asp:CompareValidator>
                </div>
                <div class="form-group">
                    <label for="inputStudentRegNo">Registration Number</label>
                    <input type="text" class="form-control" id="inputStudentRegNo" autocomplete="off" runat="server" placeholder="Registration" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="inputStudentRegNo" Display="Dynamic" ForeColor="Red" ErrorMessage="Registration number can not be empty"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="inputStudentMobileNo">Mobile Number</label>
                    <input type="text" class="form-control" id="inputStudentMobileNo" autocomplete="off" runat="server" placeholder="01XXXXXXXXX" />
                </div>
                <div class="form-group">
                    <label for="inputStudentEmail">Email Address</label>
                    <input type="text" class="form-control" id="inputStudentEmail" autocomplete="off" runat="server" placeholder="abc@abc.com" />
                </div>
                <div class="form-group">
                    <label for="inputStudentAddress">Address</label>
                    <input type="text" class="form-control" id="inputStudentAddress" autocomplete="off" runat="server" placeholder="Dhaka, Bangladesh" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="inputStudentAddress" Display="Dynamic" ForeColor="Red" ErrorMessage="Address can not be empty"></asp:RequiredFieldValidator>
                </div>
                <br />
                <asp:Button ID="saveButton" class="btn btn-info" runat="server" Text="Save" OnClick="saveButton_Click" />
                <br />
                <asp:Label ID="msgLabel" runat="server"></asp:Label>
            </form>
        </div>

        <br />

        <div class="col-md-6 studentGridView">
            <asp:GridView ID="studedntListGridView" runat="server" AutoGenerateColumns="False" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
                <Columns>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <%#Eval("StudentName") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Age">
                        <ItemTemplate>
                            <%#Eval("StudentAge") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Registration No">
                        <ItemTemplate>
                            <%#Eval("StudentRegNo") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mobile">
                        <ItemTemplate>
                            <%#Eval(@"StudentMobileNo") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <%#Eval("StudentEmail") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Address">
                        <ItemTemplate>
                            <%#Eval("StudentAddress") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

            </asp:GridView>
        </div>
    </div>

</asp:Content>
