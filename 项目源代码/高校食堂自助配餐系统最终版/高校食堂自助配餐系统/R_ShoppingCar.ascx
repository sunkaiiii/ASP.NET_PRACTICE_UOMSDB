<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="R_ShoppingCar.ascx.cs" Inherits="高校食堂自助配餐系统.R_ShoppingCar" %>

 <%@ Register src="R_ShoppingCar.ascx" tagname="R_ShoppingCar" tagprefix="uc1" %>

 <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />

<asp:Panel ID="Panel_shopping_car" weight ="100px"  runat="server">
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">商品列表</h3>
                </div>
                <div class="panel-body" style="margin-left:30%;">
                  <asp:DataList ID="DataList_shopping_car" runat="server" DataKeyField="p_Id" OnItemCommand="DataList_shopping_car_ItemCommand" DataSourceID="LinqDataSource1">
                    <ItemTemplate>
                        <table class="table">
                            <tr>                                
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
                    <uc1:R_ShoppingCar ID="R_ShoppingCar1" runat="server" />
                </div>
            </div>

            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataAccess.UOMSDBDataContext" EntityTypeName="" TableName="cart_T" Where="b_account == @b_account">
                <WhereParameters>
                    <asp:SessionParameter Name="b_account" SessionField="UserAccount" Type="String" />
                </WhereParameters>
            </asp:LinqDataSource>








        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />
</asp:Panel>
