using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StuInfoMana : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
               DataTable  dt =  (DataTable)Session["UserName"];
               TextBox1.Text = dt.Rows[0][0].ToString();
               TextBox2.Text = dt.Rows[0][1].ToString();
             //  TextBox3.Text = dt.Rows[0][2].ToString();
               TextBox4.Text = dt.Rows[0][3].ToString();
               TextBox5.Text = dt.Rows[0][4].ToString();
              


        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}