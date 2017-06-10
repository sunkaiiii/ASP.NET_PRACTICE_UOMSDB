using DataAccess;
using Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 高校食堂自助配餐系统.using_help.content
{
    public partial class C_honest_report : System.Web.UI.UserControl
    {
        DataTask data;
        protected void Page_Load(object sender, EventArgs e)
        {
            data = new DataTask();
            refreshData();
        }

        private void refreshData()
        {
            prodectList.DataSource = prodectName.Select(DataSourceSelectArguments.Empty);
            prodectList.DataBind();
        }
        protected void sellerNameList_SelectedIndexChanged(object sender, EventArgs e)
        {
            refreshData();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            report_Entity report = new report_Entity();
            report.s_account = sellerNameList.SelectedValue;
            report.p_name = prodectList.SelectedValue;
            report.report = reportInfo.Text;
            if (report.s_account.Length <= 0)
            {
                Response.Write(MessagesBox.showMessages("商家姓名不能为空!"));
                return;
            }
            else if (report.p_name.Length <= 0)
            {
                Response.Write(MessagesBox.showMessages("商品不能为空!"));
                return;
            }
            else if (report.report.Length <= 0)
            {
                Response.Write(MessagesBox.showMessages("内容不能为空!"));
                return;
            }
            bool result = data.sendReport(report);
            if (result)
            {
                reportInfo.Text = "";
                Response.Write(MessagesBox.showMessages("您的反馈我们已经收到，我们会尽快处理！"));
                Response.Write("<script language=javascript>history.go(-1);</script>");
            }
        }
    }
}