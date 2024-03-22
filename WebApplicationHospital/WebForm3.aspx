<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplicationHospital.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="styles3.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            幸林春暖陽光醫院
        </div>
        <div id="thank">
            已填寫完成病歷，謝謝配合。
        </div>
        <div class="button">
        	<asp:Button ID="Button1" CssClass="btn" runat="server" OnClick="Button1_Click" Text="返回首頁"/>
        </div>
    </form>
</body>
</html>
