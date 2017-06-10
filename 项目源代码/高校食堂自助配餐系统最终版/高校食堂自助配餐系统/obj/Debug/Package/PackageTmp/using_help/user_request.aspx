<%@ Page Title="" Language="C#" MasterPageFile="~/ModifyUser.master" AutoEventWireup="true" CodeBehind="user_request.aspx.cs" Inherits="高校食堂自助配餐系统.seller.login" %>
<%@ Register Src="~/using_help/content/C_user_request.ascx" TagPrefix="uh3" TagName="user_request" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uh3:user_request runat="server" ID="user_request" />
</asp:Content>