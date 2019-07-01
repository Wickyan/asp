using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)

    {
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = TextBox2.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String sql = "select * from YWQ_StuInfo where StuName='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
        DataTable dt = Class1.GetDsFromSql(sql).Tables[0];
        if (dt.Rows.Count > 0)
        {
            Label3.Text = "登录成功";
            Session["UserName"] = dt;
            Response.Redirect("StuInfoMana.aspx");


        }
        else
        {
            Label3.Text = "登录失败";
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}