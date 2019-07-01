using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dataGrid : System.Web.UI.Page
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
        string sql;
        sql = "select *  from PM_notice order by noticeID";
        DataTable dt = Class1.GetDsFromSql(sql).Tables[0];
        dgNotice.DataSource = dt;
        dgNotice.DataBind();
    }
    protected void dgNotice_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        dgNotice.CurrentPageIndex = e.NewPageIndex;
        bindNotice();
    }
    protected void dgNotice_DeleteCommand(object source, DataGridCommandEventArgs e)
    {
        string noticeID, sqlStr;
        noticeID = dgNotice.DataKeys[e.Item.ItemIndex].ToString();
        sqlStr = "delete from PM_notice where noticeID ='" + noticeID + "';";
        Class1.ExecuteSql(sqlStr);
        int result = dgNotice.Items.Count % dgNotice.PageSize;
        if (result == 1)
        {
            dgNotice.CurrentPageIndex = (dgNotice.PageCount - 2);
        }   
        bindNotice();
       
    }
    protected void dgNotice_ItemDataBound(object sender, DataGridItemEventArgs e)
    {
        LinkButton hint = e.Item.FindControl("sc") as LinkButton;
        if (hint != null)
        {
            hint.Attributes.Add("onclick", "var d = '您确定要删除该条记录吗？';return window.confirm(d);");
        }
        //int result = dgNotice.Items.Count % dgNotice.PageSize;
        //if (result == 1)
        //{
        //    dgNotice.CurrentPageIndex = (dgNotice.PageCount - 2);
        //}   
    }
    protected void dgNotice_SelectedIndexChanged(object sender, EventArgs e)
    {
        //绑定相关信息到文本框中;
        //获取主键的值
        //去数据库里面取其他数据的值
        int index = dgNotice.SelectedIndex;
        string id = dgNotice.Items[index].Cells[0].Text.Trim();
        DataBindNoticeSelect(id);

    }

    protected void DataBindNoticeSelect(string id)
    {
        string sqlStr = "select * from PM_notice where NoticeID = '" + id + "'";
        DataTable dt = Class1.GetDsFromSql(sqlStr).Tables[0];

        txtContent.Text = dt.Rows[0]["noticeCon"].ToString();
        txtDeadline.Text = dt.Rows[0]["deadline"].ToString();
        txtRemark.Text = dt.Rows[0]["remark"].ToString();
        txtTitle.Text = dt.Rows[0]["title"].ToString();
    }
    protected void btnOK_Click(object sender, EventArgs e)
    {
        string noticeID = dgNotice.Items[dgNotice.SelectedIndex].Cells[0].Text.Trim();
        string sql = "update PM_notice set ";
        sql += "remark='" + txtRemark.Text + "',";
        sql += "deadline='" + txtDeadline.Text + "',";
        sql += "title='" + txtTitle.Text + "',";
        sql += "noticeCon='" + txtContent.Text + "' where noticeID='" + noticeID + "'";
        if (Class1.ExecuteSql(sql))
        {
            lblInfo.Text = "添加成功！";
            bindNotice();
            cleanAll();
        }
        else
        {
            lblInfo.Text = "添加失败！";
        }
    }

    private void cleanAll()
    {
        txtRemark.Text = txtDeadline.Text = txtTitle.Text = txtContent.Text = "";
    }
}