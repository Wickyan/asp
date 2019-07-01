<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        用户名：<asp:TextBox ID="txtUserId" runat="server"></asp:TextBox><br />
        密  码：<asp:TextBox ID="txtPassword" runat="server"></asp:TextBox><br />
        <asp:RadioButton ID="RadioButton1" runat="server" Text="教师" GroupName="ST" />
        <asp:RadioButton ID="RadioButton2" runat="server" Text="学生" GroupName="ST"  Checked="True"/>
        <br />
        <asp:Button ID="btnOK" runat="server" Text="登录" OnClick="btnOK_Click"/><br />
        <asp:Label ID="labInfo" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>
