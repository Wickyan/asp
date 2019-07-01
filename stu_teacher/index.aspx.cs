using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnOK_Click(object sender, EventArgs e)
    {
        string sql = "select * from db_User where UserID = '" + txtUserId.Text + "'and Password='" + txtPassword.Text + "'" +"and Role=";

        string ss = "";
        if (RadioButton1.Checked)
        {
            ss = "teacherMain.aspx";
            sql += "'teacher'";
        }
        else
        {
            ss = "studentMain.aspx";
            sql += "'student'";
        }
        DataTable td = PubClass.GetDsFromSql(sql).Tables[0];
        if (td.Rows.Count > 0)
        {
            labInfo.Text = "登录成功" + ss;
            Response.Redirect(ss + "?name=" + td.Rows[0]["UserID"].ToString()); 
        }
        else
        {
            labInfo.Text = "登录失败" + td.Rows.Count;
        }
    }
}