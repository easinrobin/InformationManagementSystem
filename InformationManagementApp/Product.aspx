<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="InformationManagementApp.Product" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        //$( function() {
        //    $( ".datepicker" ).datepicker();
        //    $( "#slideDown" ).on( "change", function() {
        //        $( ".datepicker" ).datepicker( "option", "showAnim", $( this ).val() );
        //    });
        //} );
        $(function () {
            $('.datepicker').datepicker({ dateFormat: 'yy-mm-dd' }).val();
            $(".datepicker").datepicker();
            $(".datepicker").datepicker("option", "showAnim", 'slideDown');
        });
    </script>

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

        <br />

        <div class="col-md-6 productGridView">
            <asp:GridView ID="productListGridView" runat="server" AutoGenerateColumns="False" ForeColor="#333333" GridLines="None" CellPadding="4">
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
                            <%#Eval("ProductName") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Code">
                        <ItemTemplate>
                            <%#Eval("ProductCode") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <%#Eval("ProductPrice") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mfg Date">
                        <ItemTemplate>
                            <%#Eval(@"ProductMfgDate") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Exp Date">
                        <ItemTemplate>
                            <%#Eval("ProductExpDate") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>

</asp:Content>
