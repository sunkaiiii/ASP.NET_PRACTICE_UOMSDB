﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProductShow.ascx.cs" Inherits="高校食堂自助配餐系统.Control_buyer.ProductShow" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<header>

    <link href="../css/style.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <style type="text/css">
        .auto-style12 {
            width: 92px;
            height: 32px;
        }

        .auto-style13 {
            height: 23px;
            width: 136px;
        }

        .auto-style14 {
            width: 136px;
        }

        .MakeLinkCenter {
            margin-right: 21%;
        }
        .auto-style15 {
            padding: 15px;
            text-align: center;
        }
    </style>
</header>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div class="Navfooter">
            <ul class="nav nav-tabs nav-justified">

                <li>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">半荤菜</asp:LinkButton></li>
                <li>
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">荤菜</asp:LinkButton></li>
                <li>
                    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">面食</asp:LinkButton></li>
                <li>
                    <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">素菜</asp:LinkButton></li>
                <li>
                    <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">汤类</asp:LinkButton></li>
                <li>
                    <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">早餐</asp:LinkButton></li>
                <li>
                    <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">炒饭</asp:LinkButton></li>

            </ul>
        </div>

        <div style="float: right; margin-top: 20px; margin-right: 5%;" class="text-right" id ="div_car">
            <asp:Button ID="Button_car" runat="server" Text="购物车" CssClass="btn btn-info"  ValidateRequestMode="Disabled" UseSubmitBehavior="False" EnableViewState="False" />
            <asp:PopupControlExtender ID="Button_car_PopupControlExtender" runat="server" TargetControlID="Button_car" Position="Bottom" popupcontrolid="Panel_shopping_car" OffsetX="-100">
            </asp:PopupControlExtender>
        </div>

        <div style="float: right; margin-top: 20px; margin-right: 5%;">

            <asp:TextBox ID="txb_serach" runat="server" Height="31px" Width="250px" placeholder="寻找美食~.~"></asp:TextBox>
            <asp:Button ID="btn_serach" runat="server" Text="搜索" CssClass="btn btn-primary" OnClick="btn_serach_Click" Style="margin-left: 10px;" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
        </div>





        <div>
            <p>
                <asp:DataList ID="DataList1" runat="server" Width="100%" Height="400px" RepeatColumns="4" DataKeyField="p_Id" OnItemCommand="DataList1_ItemCommand">
                    <ItemTemplate>
                        <table class="auto-style8">
                            <tr>
                                <td class="auto-style12" rowspan="4">
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Bind("p_photo") %>' OnClick="ImageButton1_Click" CommandArgument='<%#Eval("p_id") %>' CssClass="img-circle" Width="110px" Height="110px" />
                                </td>
                                <td class="auto-style13">商品名称:<asp:Label ID="Label1" runat="server" Text='<%# Bind("p_name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style13">商品价格:<asp:Label ID="Label2" runat="server" Text='<%# Bind("p_price") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style13">商品销量:<asp:Label ID="Label4" runat="server" Text='<%# Bind("p_saleNum") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style14">
                                    <asp:Button ID="Button3" runat="server" Text="添加购物车" OnClick="Button3_Click" CommandArgument='<%#Eval("p_Id") %>' CssClass="btn btn-info" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </p>

            <div style="position: absolute; bottom: 0px;">
                <p class="text-center">
                    <asp:LinkButton ID="上一页" runat="server" CommandName="上一页" OnClick="上一页_Click" CssClass="MakeLinkCenter">上一页</asp:LinkButton>

                    <asp:LinkButton ID="下一页" runat="server" CommandName="下一页" OnClick="下一页_Click" CssClass="MakeLinkCenter">下一页</asp:LinkButton>

                    <asp:LinkButton ID="首页" runat="server" CommandName="首页" OnClick="首页_Click" CssClass="MakeLinkCenter">首页</asp:LinkButton>

                    <asp:LinkButton ID="尾页" runat="server" CommandName="尾页" OnClick="尾页_Click" CssClass="MakeLinkCenter">尾页</asp:LinkButton>
                </p>


                <ul class="nav nav-tabs nav-justified" style="margin-top: 60px;">
                    <li>
                        <h4>当前页:<asp:Label ID="CurrentPageCount" runat="server"></asp:Label></h4>
                    </li>
                    <li>
                        <h4>总页数:<asp:Label ID="TotalPageCount" runat="server"></asp:Label></h4>
                    </li>
                    <li>
                        <asp:TextBox ID="TextBox1" runat="server" Height="27px" TextMode="Number" Width="171px"></asp:TextBox>
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="跳转" CssClass="btn btn-primary" />
                    </li>
                    <li><a href="../buyer/ShoppingCart.aspx">去结算</a></li>
                </ul>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
<asp:Panel ID="Panel_shopping_car" weight ="100px"  runat="server">
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">商品列表</h3>
                </div>
                <div class="auto-style15" >
                  <asp:DataList ID="DataList_shopping_car" runat="server" DataKeyField="p_Id" OnItemCommand="DataList_shopping_car_ItemCommand" DataSourceID="LinqDataSource1">
                    <ItemTemplate>
                        <table class="table">
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Bind("p_photo") %>' OnClick="ImageButton1_Click" CommandArgument='<%#Eval("p_id") %>' Width="60px" Height="60px" />
                                </td>
                                <td >
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("p_name") %>'></asp:Label>
                                </td> 
                                       
                            </tr>
                            <tr>                                  
                                <td>
                                   价格： <asp:Label ID="Label2" runat="server" Text='<%# Bind("p_price") %>'></asp:Label>
                                </td>
                                <td>
                                   数量：<asp:Label ID="Label3" runat="server" Text='<%# Eval("p_num") %>'></asp:Label>
                                &nbsp;</td>
                            </tr>

                        </table>
                    </ItemTemplate>
                </asp:DataList>
                </div>
            </div>

            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataAccess.UOMSDBDataContext" EntityTypeName="" TableName="cart_T" Where="b_account == @b_account">
                <WhereParameters>
                    <asp:SessionParameter Name="b_account" SessionField="UserAccount" Type="String" />
                </WhereParameters>
            </asp:LinqDataSource>








            <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="DataAccess.UOMSDBDataContext" EntityTypeName="" Select="new (p_photo)" TableName="product_T">
            </asp:LinqDataSource>
            <br />








        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />
</asp:Panel>
