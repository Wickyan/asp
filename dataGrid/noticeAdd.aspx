<%@ Page Language="C#" AutoEventWireup="true" CodeFile="noticeAdd.aspx.cs" Inherits="noticeAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table>
            <tr>
                <td><asp:Label ID="lblBT" runat="server" Text="标题："></asp:Label></td>
                <td><asp:TextBox ID="txtTitle" runat="server" Width="200px"></asp:TextBox></td>
                <td>过期时间：</td>
                <td><asp:TextBox ID="txtDeadline" runat="server" ></asp:TextBox></td>
            </tr>
            <tr>
                <td>内容：</td>
                <td colspan="3" style=" "><asp:TextBox ID="txtContent" Width="600px" Height="150px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td>备注：</td>
                <td colspan="3" style=" "><asp:TextBox ID="txtRemark" Width="600px" Height="80px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td align="center"><asp:Button ID="btnOK" runat="server" Width="60px" Text="添加" OnClick="btnOK_Click" /></td>
                <td></td>
                <td align="center"><asp:Button ID="btnCancel" runat="server" Width="60px" Text="取消" /></td>
            </tr>
            <tr>
                <td colspan="4"><asp:Label ID="lblInfo" runat="server"></asp:Label></td>
            </tr>
        </table>

    </div>
    </form>
</body>
</html>
