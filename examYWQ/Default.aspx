<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <div>
            <img src="images/top.png" style="margin: 0 auto; display: block;" />
        </div>
        <div style="margin: 0 auto; width: 250px; margin-top: 50px">
            <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="密码：       "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <div style="width: 100px; margin: 0 auto">
                <asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" Style="float: left" />

                <asp:Button ID="Button2" runat="server" Text="取消" OnClick="Button2_Click" Style="float: right" />
                
            </div>
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        </div>

        </div>

    </form>
</body>
</html>
