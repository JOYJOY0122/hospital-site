<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplicationHospital.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="styles4.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">幸林春暖陽光醫院</div>
            <h3>病例查詢</h3>
            身分證字號: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;
            <asp:Button ID="Button2" CssClass="btn" runat="server" OnClick="Button2_Click" Text="查詢" />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hhhConnectionString %>" SelectCommand="SELECT * FROM [case] WHERE ([ID] LIKE '%' + @ID + '%')" DeleteCommand="DELETE FROM [case] WHERE [ID] = @ID" InsertCommand="INSERT INTO [case] ([ID], [Name], [Gender], [Height], [Weight], [Birthdate], [PhoneNumber], [Email], [Address]) VALUES (@ID, @Name, @Gender, @Height, @Weight, @Birthdate, @PhoneNumber, @Email, @Address)" UpdateCommand="UPDATE [case] SET [Name] = @Name, [Gender] = @Gender, [Height] = @Height, [Weight] = @Weight, [Birthdate] = @Birthdate, [PhoneNumber] = @PhoneNumber, [Email] = @Email, [Address] = @Address WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Height" Type="Int32" />
                    <asp:Parameter Name="Weight" Type="Int32" />
                    <asp:Parameter Name="Birthdate" Type="DateTime" />
                    <asp:Parameter Name="PhoneNumber" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="ID" PropertyName="Text" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Height" Type="Int32" />
                    <asp:Parameter Name="Weight" Type="Int32" />
                    <asp:Parameter Name="Birthdate" Type="DateTime" />
                    <asp:Parameter Name="PhoneNumber" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="ID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="選取"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" OnClientClick="return confirm('確定刪除?')"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" ReadOnly="True" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Height" HeaderText="Height" SortExpression="Height" />
                    <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                    <asp:BoundField DataField="Birthdate" HeaderText="Birthdate" SortExpression="Birthdate" />
                    <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                </Columns>
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
            </asp:GridView>
        </div>

            <asp:Button ID="Button1" CssClass="btn" runat="server" OnClick="Button1_Click" Text="返回首頁" />

       
    </form>
</body>
</html>
