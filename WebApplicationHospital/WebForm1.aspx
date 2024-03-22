<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplicationHospital.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link rel="stylesheet" type="text/css" href="styles1.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
      
            幸林春暖陽光醫院
        </div>
        <div class="button-container">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="患者填寫病例資料請按這" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="醫護人員查看病歷資料請按這" />
        </div>
            <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hhhConnectionString %>" ProviderName="<%$ ConnectionStrings:hhhConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [case]"></asp:SqlDataSource>
    </form>
</body>
</html>
