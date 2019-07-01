using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class noticeAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnOK_Click(object sender, EventArgs e)
    {
        //添加notice
        string title, noticeCon, uploader, uploadTime, changeTime, deadline, remark;
        title = txtTitle.Text;
        noticeCon = txtContent.Text;
        uploader = "www";
        changeTime = uploadTime = DateTime.Now.ToString("yyy-MM-dd hh:mm:ss");
        deadline = txtDeadline.Text;
        remark = txtRemark.Text;
        if (deadline.Trim() == "")
        {
            deadline = DateTime.Now.AddDays(7).ToString("yyyy-MM-dd hh:mm:ss");

        } 
        if (title == "" || noticeCon == "")
        {
            lblInfo.Text = "请输入相关信息！";
        }

        else
        {
            string sqlStr = "insert into PM_notice(title,noticeCon,uploader,uploadTime,changeTime,deadline,remark)";
            sqlStr += " values('" + title + "',";
            sqlStr += "'" + noticeCon + "',";
            sqlStr += "'" + uploader + "',";
            sqlStr += "'" + uploadTime + "',";
            sqlStr += "'" + changeTime + "',";
            sqlStr += "'" + deadline + "',";
            sqlStr += "'" + remark + "')";
            if (Class1.ExecuteSql(sqlStr))
            {
                lblInfo.Text = "添加成功！";
            }
            else
            {
                lblInfo.Text = "添加失败！";
            }
        }


    }
}