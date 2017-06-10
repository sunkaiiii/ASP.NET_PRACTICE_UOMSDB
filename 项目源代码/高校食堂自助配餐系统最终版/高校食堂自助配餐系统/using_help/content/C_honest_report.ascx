<<<<<<< HEAD
﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="C_honest_report.ascx.cs" Inherits="高校食堂自助配餐系统.using_help.content.about_us" %>
=======
﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="C_honest_report.ascx.cs" Inherits="高校食堂自助配餐系统.using_help.content.C_honest_report" %>
<style type="text/css">
    .auto-style1 {
        margin-bottom: 0px;
    }
</style>
&nbsp;&nbsp;&nbsp;
卖家名称：<asp:DropDownList ID="sellerNameList" runat="server" DataSourceID="sellerName" DataTextField="s_account" DataValueField="s_account" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="sellerNameList_SelectedIndexChanged">
</asp:DropDownList>
<asp:SqlDataSource ID="sellerName" runat="server" ConnectionString="<%$ ConnectionStrings:UOMSDBConnectionString %>" SelectCommand="SELECT [s_account] FROM [seller_T]"></asp:SqlDataSource>
<p>
    &nbsp;</p>
<p>
    &nbsp;&nbsp;&nbsp;
    商品名称：<asp:DropDownList ID="prodectList" runat="server" DataTextField="p_name" DataValueField="p_name" CssClass="auto-style1">
    </asp:DropDownList>
    <asp:SqlDataSource ID="prodectName" runat="server" ConnectionString="<%$ ConnectionStrings:UOMSDBConnectionString %>" SelectCommand="SELECT [p_name] FROM [product_T] WHERE ([s_account] = @s_account)">
        <SelectParameters>
            <asp:ControlParameter ControlID="sellerNameList" Name="s_account" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;&nbsp;&nbsp;
    举报内容：</p>
<p>
    &nbsp;</p>
&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="reportInfo" runat="server" Height="375px" Width="898px" TextMode="MultiLine"></asp:TextBox>

<br />
<br />
&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button1" runat="server" Height="21px" Text="提交" Width="62px" OnClick="Button1_Click" />


>>>>>>> sunkai
