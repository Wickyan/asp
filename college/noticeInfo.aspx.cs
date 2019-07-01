using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class noticeInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindNoticeDetail();
        }
    }
    protected void bindNoticeDetail()
    {
        //绑定新闻详情
        string noticeID, sqlStr;
        noticeID = Request.QueryString["id"].ToString();
        sqlStr = "select * from PM_notice where noticeID='" + noticeID + "'";
        DataTable dt = Class1.GetDsFromSql(sqlStr).Tables[0];
        lblTitle.Text = dt.Rows[0]["title"].ToString();
        lblUpload.Text = dt.Rows[0]["uploader"].ToString();
        lblNoticeCon.Text = dt.Rows[0]["noticeCon"].ToString();

    }
}