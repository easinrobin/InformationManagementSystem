<%@ Page Title="Employee" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="InformationManagementApp.Employee" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-6 employeeForm">
            <h3>Employee Information System</h3>
            <form>
                <div class="form-group">
                    <label for="inputEmployeeName">Employee Name</label>
                    <input type="text" class="form-control" id="inputEmployeeName" runat="server" autocomplete="off" placeholder="Employee Name" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="inputEmployeeName" Display="Dynamic" ForeColor="Red" ErrorMessage="Name can not be empty"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="inputEmployeeAge">Age</label>
                    <input type="text" class="form-control" autocomplete="off" runat="server" id="inputEmployeeAge" placeholder="Age" />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="inputEmployeeAge" Operator="DataTypeCheck" Type="Integer" Display="Dynamic" ForeColor="Red" ErrorMessage="Invalid Input"></asp:CompareValidator>
                </div>
                <div class="form-group">
                    <label for="inputEmployeeMobile">Mobile Number</label>
                    <input type="text" class="form-control" id="inputEmployeeMobile" autocomplete="off" runat="server" placeholder="01XXXXXXXXX" />
                </div>
                <div class="form-group">
                    <label for="inputEmployeeExperience">Years of Experience</label>
                    <input type="text" class="form-control" id="inputEmployeeExperience" autocomplete="off" runat="server" placeholder="In Years" />
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="inputEmployeeExperience" Operator="DataTypeCheck" Type="Integer" Display="Dynamic" ForeColor="Red" ErrorMessage="Invalid Input"></asp:CompareValidator>
                </div>
                <div class="form-group">
                    <label for="inputEmployeeDegree">Employee Degree</label>
                    <input type="text" class="form-control" id="inputEmployeeDegree" autocomplete="off" runat="server" placeholder="Educational Degree" />
                </div>
                <div class="form-group">
                    <label for="inputEmployeeSalary">Salary</label>
                    <input type="text" class="form-control" id="inputEmployeeSalary" autocomplete="off" runat="server" placeholder="Salary" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="inputEmployeeSalary" Display="Dynamic" ForeColor="Red" ErrorMessage="Salary can not be empty"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="inputEmployeeSalary" Operator="DataTypeCheck" Type="Integer" Display="Dynamic" ForeColor="Red" ErrorMessage="Invalid Input"></asp:CompareValidator>
                </div>
                <div class="form-group">
                    <label for="inputEmployeeAddress">Address</label>
                    <input type="text" class="form-control" id="inputEmployeeAddress" autocomplete="off" runat="server" placeholder="Dhaka" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="inputEmployeeAddress" Display="Dynamic" ForeColor="Red" ErrorMessage="Address can not be empty"></asp:RequiredFieldValidator>
                </div>
                <br />
                <asp:Button ID="saveButton" class="btn btn-info" runat="server" Text="Save" OnClick="saveButton_Click" />
                <br />
                <asp:Label ID="msgLabel" runat="server"></asp:Label>
            </form>
        </div>
        
        <br/>

        <div class="col-md-6">
            <asp:GridView ID="employeeGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                <Columns>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <%#Eval("EmployeeName") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Experience">
                        <ItemTemplate>
                            <%#Eval("EmployeeExperience") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mobile No">
                        <ItemTemplate>
                            <%#Eval("EmployeeMobile") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Degree">
                        <ItemTemplate>
                            <%#Eval("EmployeeDegree") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Salary">
                        <ItemTemplate>
                            <%#Eval("EmployeeSalary") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
