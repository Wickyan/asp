<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StuInfoMana.aspx.cs" Inherits="StuInfoMana" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <div style="width: 400px">
                <div style="width: 100px; height: 19px; float: left">学号</div>
                <div style="width: 300px; float: right">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></div>
                <div style="width: 100px; height: 19px; float: left">姓名</div>
                <div style="width: 300px; float: right">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></div>
                <div style="width: 100px; height: 19px; float: left">性别</div>
                <div style="width: 300px; float: right">
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div style="width: 100px; height: 19px; float: left">入学年份</div>
                <div style="width: 300px; float: right">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></div>
                <div style="width: 100px; height: 19px; float: left">专业班级</div>
                <div style="width: 300px; float: right">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></div>
                <div style="width: 100px; height: 19px; float: left">联系电话</div>
                <div style="width: 300px; float: right">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></div>

                <asp:Button ID="Button1" runat="server" Text="Button" />

           
        </div>
    </form>
</body>
</html>
