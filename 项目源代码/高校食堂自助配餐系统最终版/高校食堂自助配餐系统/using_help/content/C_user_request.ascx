<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="C_user_request.ascx.cs" Inherits="高校食堂自助配餐系统.using_help.content.C_user_request" %>
<style type="text/css">
    .auto-style1 {
        text-align: center;
    }
</style>

<p class="auto-style1">
    <strong>请在这里写下要对我们说的话：</strong></p>
<p class="auto-style1">
    <asp:TextBox ID="txtFeedBack" runat="server" Height="581px" Width="665px" TextMode="MultiLine"></asp:TextBox>
</p>
<p class="auto-style1">
    <asp:Button ID="btnSendFeedBack" runat="server" Text="提交" OnClick="btnSendFeedBack_Click" />
</p>

