<<<<<<< HEAD
﻿using System;
=======
﻿using DataAccess;
using Entity;
using System;
>>>>>>> sunkai
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 高校食堂自助配餐系统.using_help.content
{
    public partial class C_user_request : System.Web.UI.UserControl
    {
<<<<<<< HEAD
        protected void Page_Load(object sender, EventArgs e)
        {

=======
        DataTask data;
        protected void Page_Load(object sender, EventArgs e)
        {
            txtFeedBack.Text = "";
            if (Session["UserAccount"] == null)
            {
                Response.Redirect("../login.aspx");
                return;
            }
            data = new DataTask();
        }

        protected void btnSendFeedBack_Click(object sender, EventArgs e)
        {
            if (txtFeedBack.Text.Length <= 0)
            {
                Response.Write(MessagesBox.showMessages("内容不能为空"));
                return;
            }
            String account = Session["UserAccount"].ToString();
            String feedBackText = txtFeedBack.Text;
            feedback_Entity feedbackEntity = new feedback_Entity();
            feedbackEntity.account = account;
            feedbackEntity.reportInfo = feedBackText;
            bool result = data.sendFeedback(feedbackEntity);
            if (result)
            {
                Response.Write(MessagesBox.showMessages("感谢您的反馈！"));
                Response.Write("<script language=javascript>history.go(-1);</script>");
            }
>>>>>>> sunkai
        }
    }
}