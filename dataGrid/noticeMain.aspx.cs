using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class noticeMain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindNotice();
        }
    }
    protected void bindNotice()
    {
        //绑定通知公告
        string sqlStr;
        sqlStr = "select top 10 * from PM_notice";
        DataTable dt = Class1.GetDsFromSql(sqlStr).Tables[0];
        dlNotice.DataSource = dt;
        dlNotice.DataBind();
    }
}