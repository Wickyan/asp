<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        a{
            color:#333;
            text-decoration:none;
        }
        a:hover{
            color:#111;
            font-weight:bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="dpProvince" AutoPostBack="true" DataTextField="pr" DataValueField="ProvinceName" Width="150px" runat="server" OnSelectedIndexChanged="dpProvince_SelectedIndexChanged"></asp:DropDownList><br /><br /><br />
        <asp:DataList ID="dlUniversity" RepeatDirection="Horizontal" RepeatColumns="4" runat="server">
            <ItemTemplate>
                <table style="width:330px;">
                    <tr>
                        <td>
                            <a href="<%#DataBinder.Eval(Container.DataItem,"UniversityURL") %>">
                                <%#DataBinder.Eval(Container.DataItem,"UniversityName") %>
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
    </form>
</body>
</html>
