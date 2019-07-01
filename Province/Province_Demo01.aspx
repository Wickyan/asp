<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Province_Demo01.aspx.cs" Inherits="Province_Demo01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="选择省"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataTextField="ProvinceName" DataValueField="ProvinceCode" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server"  AutoPostBack="True" DataTextField="ProvinceName" DataValueField="ProvinceCode" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <asp:DropDownList ID="DropDownList3" AutoPostBack="True" DataTextField="ProvinceName" DataValueField="ProvinceCode" runat="server">
        </asp:DropDownList>
    <div>
    
    </div>
    </form>
</body>
</html>
