<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dataGrid.aspx.cs" Inherits="dataGrid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DataGrid ID="dgNotice" Width="80%" DataKeyField="noticeID" AutoGenerateColumns="false" AllowPaging="true" PageSize="5" runat="server" OnPageIndexChanged="dgNotice_PageIndexChanged" OnDeleteCommand="dgNotice_DeleteCommand" OnItemDataBound="dgNotice_ItemDataBound" OnSelectedIndexChanged="dgNotice_SelectedIndexChanged">
            <Columns>
                <asp:BoundColumn DataField="noticeID" Visible="false" HeaderText="ID">
                    <HeaderStyle HorizontalAlign="Center" Font-Bold="true" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundColumn>
                <asp:BoundColumn DataField="title" HeaderText="新闻标题">
                    <HeaderStyle HorizontalAlign="Center" Font-Bold="true" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="noticeCon" HeaderText="新闻正文">
                    <HeaderStyle HorizontalAlign="Center" Font-Bold="true" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="uploader" HeaderText="上传者">
                    <HeaderStyle HorizontalAlign="Center" Font-Bold="true" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundColumn>
                
                <asp:BoundColumn DataField="uploadTime" HeaderText="上传时间">
                    <HeaderStyle HorizontalAlign="Center" Font-Bold="true" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundColumn>

                
                <asp:TemplateColumn HeaderText="选择">
                     <HeaderStyle HorizontalAlign="center" Width="40px" BackColor="ActiveBorder" />
                           <ItemStyle HorizontalAlign="center" />
                              <ItemTemplate >
	                                <asp:LinkButton ID="xz" runat="server" CommandName="select">
		                                <img src="../image/select.gif" />
	                                </asp:LinkButton>
                             </ItemTemplate>
                </asp:TemplateColumn>


                <asp:TemplateColumn HeaderText="删除">
                     <HeaderStyle HorizontalAlign="center" Width="40px" BackColor="ActiveBorder" />
                           <ItemStyle HorizontalAlign="center" />
                              <ItemTemplate >
	                                <asp:LinkButton ID="sc" runat="server" CommandName="delete">
		                                <img src="../image/delete.gif" />
	                                </asp:LinkButton>
                             </ItemTemplate>
                </asp:TemplateColumn>



            </Columns>

            <PagerStyle Mode="NumericPages" />

        </asp:DataGrid>

        <br /> <br /> <br />
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
                <td align="center"><asp:Button ID="btnOK" runat="server" Width="60px" Text="更新" OnClick="btnOK_Click" /></td>
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
