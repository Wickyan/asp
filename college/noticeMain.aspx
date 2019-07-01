<%@ Page Language="C#" AutoEventWireup="true" CodeFile="noticeMain.aspx.cs" Inherits="noticeMain" %>

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
            color:black;
            font-weight:bold;
        }
        .column-news-item {
            display: block;
            position: relative;
            border-bottom: 1px dotted #b1b1b1;
            line-height: 30px;
            padding: 5px 0;
        }
        .column-news-title {
            display: block;
            margin-right: 80px;
        }
        .column-news-date {
            display: block;
            text-align: right;
            width: 80px;
            height: 20px;
            line-height: 20px;
            position: absolute;
            right: 0;
            top: 10px;
            color: #999;
            font-weight: normal;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DataList ID="dlNotice" runat="server">
            <ItemTemplate>
                <table width="600px" style="font-size: smaller;">
                    <tr>
                        <td>
                            <img src="images/soft_sign_bg.gif" style="border: 0px;" /></td>
                        <td><a class="column-news-item" id="noticetitle" target="_blank" href='<%# DataBinder.Eval(Container.DataItem,"NoticeID","noticeInfo.aspx?id={0}")  %>'>
                            <span class="column-news-title"><%# DataBinder.Eval(Container.DataItem,"title") %></span>
                            <span class="column-news-date"><%# DataBinder.Eval(Container.DataItem,"UploadTime","{0:yyyy-MM-dd}") %></span>
                        </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
    </form>
</body>
</html>
