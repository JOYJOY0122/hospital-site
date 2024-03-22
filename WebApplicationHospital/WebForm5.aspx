<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebApplicationHospital.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="styles2.css" />
</head>
<body>
        <form id="form1" runat="server">
        <div class="header">
            幸林春暖陽光醫院
        </div>
            <p>
                <div class="MedicalRecord">
                <asp:Label ID="Label3" runat="server" Text="使用者登入"></asp:Label>
                </div>
            </p>
            <div class="TotalBox">
            <p class="box">
                <asp:Label ID="Label1" class="gender txt1" runat="server" Text="ID:"></asp:Label>
                <asp:TextBox ID="TextBox1" CssClass="inp inpwid" runat="server"></asp:TextBox>
            </p>
            <p class="box">
                <asp:Label ID="Label2" class="gender txt1" runat="server" Text="Password:"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="inp inpwid" TextMode="Password"></asp:TextBox>
            </p>
            </div>
            <div class="button">
                <asp:Button ID="Button1" class="btn" runat="server" OnClick="Button1_Click" Text="login" />
                <asp:Button ID="Button2" class="btn" runat="server" Text="back" OnClick="Button2_Click" />
            </div>
        </form>
</body>
</html>
