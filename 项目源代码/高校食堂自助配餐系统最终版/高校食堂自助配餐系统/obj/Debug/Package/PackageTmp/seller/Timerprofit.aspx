﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ModifyUser.Master" AutoEventWireup="true" CodeBehind="Timerprofit.aspx.cs" Inherits="高校食堂自助配餐系统.seller.Timerprofit" %>

<%@ Register Src="~/Control_seller/C_LoginStatus.ascx" TagPrefix="uc1" TagName="C_LoginStatus" %>
<%@ Register Src="~/Control_seller/C_NavStatus.ascx" TagPrefix="uc1" TagName="C_NavStatus" %>
<%@ Register Src="~/Control_seller/C_Timerprofit.ascx" TagPrefix="uc1" TagName="C_Timerprofit" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <uc1:C_LoginStatus runat="server" ID="C_LoginStatus" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <uc1:C_NavStatus runat="server" ID="C_NavStatus" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:C_Timerprofit runat="server" ID="C_Timerprofit" />
</asp:Content>
