<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addBanCi.aspx.cs" Inherits="Ticket.addBanCi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 150px;
        }
        .auto-style3 {
            height: 151px;
        }
        .auto-style4 {
            height: 151px;
            width: 750px;
        }
        .auto-style5 {
            width: 750px;
        }
        .auto-style6 {
            width: 18px;
        }
    </style>
</head>
<body style="background:url(./adminBack.jpg);background-size:100%">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" ForeColor="White" Text="班次列表"></asp:Label>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TicketConnectionString %>" DeleteCommand="DELETE FROM [BanCi] WHERE [BanCiHao] = @original_BanCiHao AND [startport] = @original_startport AND [finishport] = @original_finishport AND (([daytime] = @original_daytime) OR ([daytime] IS NULL AND @original_daytime IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([RenShu] = @original_RenShu) OR ([RenShu] IS NULL AND @original_RenShu IS NULL))" InsertCommand="INSERT INTO [BanCi] ([BanCiHao], [startport], [finishport], [daytime], [price], [RenShu]) VALUES (@BanCiHao, @startport, @finishport, @daytime, @price, @RenShu)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [BanCi]" UpdateCommand="UPDATE [BanCi] SET [startport] = @startport, [finishport] = @finishport, [daytime] = @daytime, [price] = @price, [RenShu] = @RenShu WHERE [BanCiHao] = @original_BanCiHao AND [startport] = @original_startport AND [finishport] = @original_finishport AND (([daytime] = @original_daytime) OR ([daytime] IS NULL AND @original_daytime IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([RenShu] = @original_RenShu) OR ([RenShu] IS NULL AND @original_RenShu IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_BanCiHao" Type="String" />
                                <asp:Parameter Name="original_startport" Type="String" />
                                <asp:Parameter Name="original_finishport" Type="String" />
                                <asp:Parameter Name="original_daytime" Type="DateTime" />
                                <asp:Parameter Name="original_price" Type="Double" />
                                <asp:Parameter Name="original_RenShu" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="BanCiHao" Type="String" />
                                <asp:Parameter Name="startport" Type="String" />
                                <asp:Parameter Name="finishport" Type="String" />
                                <asp:Parameter Name="daytime" Type="DateTime" />
                                <asp:Parameter Name="price" Type="Double" />
                                <asp:Parameter Name="RenShu" Type="Int32" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="startport" Type="String" />
                                <asp:Parameter Name="finishport" Type="String" />
                                <asp:Parameter Name="daytime" Type="DateTime" />
                                <asp:Parameter Name="price" Type="Double" />
                                <asp:Parameter Name="RenShu" Type="Int32" />
                                <asp:Parameter Name="original_BanCiHao" Type="String" />
                                <asp:Parameter Name="original_startport" Type="String" />
                                <asp:Parameter Name="original_finishport" Type="String" />
                                <asp:Parameter Name="original_daytime" Type="DateTime" />
                                <asp:Parameter Name="original_price" Type="Double" />
                                <asp:Parameter Name="original_RenShu" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style3" colspan="2">
                        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="BanCiHao" DataSourceID="SqlDataSource1" Font-Names="华文行楷" Font-Size="Larger" Height="50px" Width="384px">
                            <Fields>
                                <asp:BoundField DataField="BanCiHao" HeaderText="班次号" ReadOnly="True" SortExpression="BanCiHao" />
                                <asp:BoundField DataField="startport" HeaderText="起始地点" SortExpression="startport" />
                                <asp:BoundField DataField="finishport" HeaderText="目的地" SortExpression="finishport" />
                                <asp:BoundField DataField="daytime" HeaderText="触发事件" SortExpression="daytime" />
                                <asp:BoundField DataField="price" HeaderText="价格" SortExpression="price" />
                                <asp:BoundField DataField="RenShu" HeaderText="人数" SortExpression="RenShu" />
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                            </Fields>
                        </asp:DetailsView>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" ForeColor="White" Text="修改管理员密码:"></asp:Label>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="修改" Class="editorModeOverlay"/>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
