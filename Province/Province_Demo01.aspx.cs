using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Province_Demo01 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            DataBindProvince();
        }
    }
   

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string ss = Label2.Text = DropDownList1.SelectedValue.ToString();
        ss =  Label2.Text = ss.Substring(0,2);
        DataBindProvince2(ss);
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        string ss = Label3.Text = DropDownList2.SelectedValue.ToString();
        ss = Label3.Text = ss.Substring(0, 4);
        DataBindProvince3(ss);
    }






    protected void DataBindProvince()
    {
        string sql;
        sql = "select * from Province_Info  where ProvinceCode like '%0000'";
        DataTable dt;
        dt = MyClass.GetDsFromSql(sql).Tables[0];
        DropDownList1.DataSource = dt;
        DropDownList1.DataBind();
    }
    protected void DataBindProvince2(string ss)
    {
        string sql;
        sql = "SELECT ProvinceID, ProvinceName, ProvinceCode FROM Province_Info WHERE (ProvinceCode LIKE '" + ss + "%') AND (ProvinceCode LIKE '%00') AND (ProvinceCode NOT LIKE '" + ss + "00%')";
        DataTable dt;
        dt = MyClass.GetDsFromSql(sql).Tables[0];
        DropDownList2.DataSource = dt;
        DropDownList2.DataBind();
    }
    protected void DataBindProvince3(string ss)
    {
        string sql;
        sql = "select * from Province_Info  where ProvinceCode  like'" + ss + "%' AND (ProvinceCode not LIKE '%00') ";
        DataTable dt;
        dt = MyClass.GetDsFromSql(sql).Tables[0];
        DropDownList3.DataSource = dt;
        DropDownList3.DataBind();
    }





    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}