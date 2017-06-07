<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="高校食堂自助配餐系统.test" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:PopupControlExtender id="PopupControlExtender1" runat="server" popupcontrolid="Panel1" position="Bottom" CommitProperty="value" targetcontrolid="TextBox1">
        </asp:PopupControlExtender>

        <br />
        &nbsp;
        <asp:Panel ID="Panel1" runat="server" Height="114px" CssClass="popupClass" Width="125px">
            &nbsp;
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                &nbsp;<asp:RadioButtonList ID="RadioButtonList11" runat="server" Height="96px" Width="80px" OnSelectedIndexChanged="RadioButtonList11_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem>eat</asp:ListItem>
                <asp:ListItem>sleep</asp:ListItem>
                <asp:ListItem>walk</asp:ListItem>
                <asp:ListItem>speak</asp:ListItem>
            </asp:RadioButtonList>

            </ContentTemplate>
        </asp:UpdatePanel>
        </asp:Panel>

</form>
</body>
</html>
