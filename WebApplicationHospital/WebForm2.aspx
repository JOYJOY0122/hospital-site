<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplicationHospital.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="styles2.css" />
</head>
<body>
    <form id="form1" runat= "server"          >
        <div class="header">
            幸林春暖陽光醫院
        </div>
        <div class="MedicalRecord">
            病歷表
        </div>
        <br />
        <div class="TotalBox">
            <div class="box">
                <asp:Label ID="Label" class="gender txt1" runat="server" Text="身分證字號" ></asp:Label>
                <asp:TextBox ID="TextBox1" CssClass="inp inpwid" runat="server"></asp:TextBox>
            </div>
            <div class="box">
                <asp:Label ID="Label2" class="gender txt1" runat="server" Text="姓名" ></asp:Label>
                <asp:TextBox ID="TextBox2" CssClass="inp inpwid" runat="server"></asp:TextBox>
            </div>
            <div class="Gender box">
                <asp:Label ID="Label3" class="txt1" runat="server" Text="性別" ></asp:Label>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem class="gender">Male</asp:ListItem>
                    <asp:ListItem class="gender">Female</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div class="box">
                <asp:Label ID="Label4" class="gender txt1" runat="server" Text="身高" ></asp:Label>
                <asp:TextBox ID="TextBox3" CssClass="inp inpwid" runat="server"></asp:TextBox>
            </div>
            <div class="box">
                <asp:Label ID="Label5" class="gender txt1" runat="server" Text="體重" ></asp:Label>
                <asp:TextBox ID="TextBox4" CssClass="inp inpwid" runat="server"></asp:TextBox>
            </div>
            <div class="box">
                <asp:Label ID="Label6" class="gender txt1" runat="server" Text="出生日期" ></asp:Label>
                <asp:TextBox ID="TextBox5" CssClass="inp inpwid" runat="server"></asp:TextBox>
            </div>
            <div class="box">
                <asp:Label ID="Label7" class="gender txt1" runat="server" Text="電話號碼" ></asp:Label>
                <asp:TextBox ID="TextBox6" CssClass="inp inpwid" runat="server"></asp:TextBox>
            </div>
            <div class="box">
                <asp:Label ID="Label8" class="gender txt1" runat="server" Text="電子郵件" ></asp:Label>
                <asp:TextBox ID="TextBox7" CssClass="inp inpwid" runat="server"></asp:TextBox>
            </div>
            <div class="box">
                <asp:Label ID="Label9" class="gender txt1" runat="server" Text="住址" ></asp:Label>
                <asp:TextBox ID="TextBox8" CssClass="inp inpwid" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="button">
            <asp:Button ID="Button1" class="btn" runat="server" OnClick="Button1_Click" Text="Add" />
            <asp:Button ID="Button2" class="btn" runat="server" OnClick="Button2_Click" Text="Back" />
        </div>
    </form>
</body>
</html>
