using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindUniversity();//绑定大学
            bindProvince();//绑定省份
        }
    }
    protected void bindProvince()
    {
        //绑定省份
        string sqlStr;
        sqlStr = "select *,ProvinceName + '-------' + Region as pr from db_Province ";
        DataTable dt = Class1.GetDsFromSql(sqlStr).Tables[0];
        dpProvince.DataSource = dt;
        dpProvince.DataBind();
        dpProvince.Items.Insert(0, "-------请选择-------");
    }
    protected void bindUniversity()
    {
        string sqlStr;
        sqlStr = "select * from db_University ";
        DataTable dt = Class1.GetDsFromSql(sqlStr).Tables[0];
        dlUniversity.DataSource = dt;
        dlUniversity.DataBind();
    }
    protected void dpProvince_SelectedIndexChanged(object sender, EventArgs e)
    {
        //当选择省份发生变化时，绑定相应的大学
        string sqlStr;
        //当用户选择第一项时，显示全部大学，否则选择对应省份的大学；
        if(dpProvince.SelectedIndex==0)
        {
            bindUniversity();
        }
        else
        {
            sqlStr = "select * from db_University where ProvinceName='" + dpProvince.SelectedValue.ToString() + "'";
            DataTable dt = Class1.GetDsFromSql(sqlStr).Tables[0];
            dlUniversity.DataSource = dt;
            dlUniversity.DataBind();
        }
    }
}