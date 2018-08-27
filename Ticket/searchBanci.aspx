<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="searchBanci.aspx.cs" Inherits="Ticket.searchBanci" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 261px;
        }

        .auto-style3 {
            width: 531px;
        }

        .auto-style5 {
            width: 72px;
        }

        .auto-style6 {
            width: 327px;
        }

        .auto-style7 {
            width: 531px;
            height: 201px;
        }

        .auto-style8 {
            height: 201px;
        }

        .auto-style9 {
            margin-left: 0px;
        }
        /*Lets start with the cloud formation rather*/

        /*The container will also serve as the SKY*/

        * {
            margin: 0;
            padding: 0;
        }

        body {
            /*To hide the horizontal scroller appearing during the animation*/
            overflow: hidden;
        }

        #clouds {
            padding: 100px 0;
            background: transparent;
        }

        /*Time to finalise the cloud shape*/
        .cloud {
            width: 200px;
            height: 60px;
            background: #fff;
            border-radius: 200px;
            -moz-border-radius: 200px;
            -webkit-border-radius: 200px;
            position: relative;
        }

            .cloud:before, .cloud:after {
                content: '';
                position: absolute;
                background: #fff;
                width: 100px;
                height: 80px;
                position: absolute;
                top: -15px;
                left: 10px;
                border-radius: 100px;
                -moz-border-radius: 100px;
                -webkit-border-radius: 100px;
                -webkit-transform: rotate(30deg);
                transform: rotate(30deg);
                -moz-transform: rotate(30deg);
            }

            .cloud:after {
                width: 120px;
                height: 120px;
                top: -55px;
                left: auto;
                right: 15px;
            }

        /*Time to animate*/
        .x1 {
            -webkit-animation: moveclouds 15s linear infinite;
            -moz-animation: moveclouds 15s linear infinite;
            -o-animation: moveclouds 15s linear infinite;
        }

        /*variable speed, opacity, and position of clouds for realistic effect*/
        .x2 {
            left: 200px;
            -webkit-transform: scale(0.6);
            -moz-transform: scale(0.6);
            transform: scale(0.6);
            opacity: 0.6; /*opacity proportional to the size*/
            /*Speed will also be proportional to the size and opacity*/
            /*More the speed. Less the time in 's' = seconds*/
            -webkit-animation: moveclouds 25s linear infinite;
            -moz-animation: moveclouds 25s linear infinite;
            -o-animation: moveclouds 25s linear infinite;
        }

        .x3 {
            left: -250px;
            top: -200px;
            -webkit-transform: scale(0.8);
            -moz-transform: scale(0.8);
            transform: scale(0.8);
            opacity: 0.8; /*opacity proportional to the size*/
            -webkit-animation: moveclouds 20s linear infinite;
            -moz-animation: moveclouds 20s linear infinite;
            -o-animation: moveclouds 20s linear infinite;
        }

        .x4 {
            left: 470px;
            top: -250px;
            -webkit-transform: scale(0.75);
            -moz-transform: scale(0.75);
            transform: scale(0.75);
            opacity: 0.75; /*opacity proportional to the size*/
            -webkit-animation: moveclouds 18s linear infinite;
            -moz-animation: moveclouds 18s linear infinite;
            -o-animation: moveclouds 18s linear infinite;
        }

        .x5 {
            left: -150px;
            top: -150px;
            -webkit-transform: scale(0.8);
            -moz-transform: scale(0.8);
            transform: scale(0.8);
            opacity: 0.8; /*opacity proportional to the size*/
            -webkit-animation: moveclouds 20s linear infinite;
            -moz-animation: moveclouds 20s linear infinite;
            -o-animation: moveclouds 20s linear infinite;
        }

        @-webkit-keyframes moveclouds {
            0% {
                margin-left: 1000px;
            }

            100% {
                margin-left: -1000px;
            }
        }

        @-moz-keyframes moveclouds {
            0% {
                margin-left: 1000px;
            }

            100% {
                margin-left: -1000px;
            }
        }

        @-o-keyframes moveclouds {
            0% {
                margin-left: 1000px;
            }

            100% {
                margin-left: -1000px;
            }
        }
    </style>


</head>
<body style="background: url(./timg.jpg)">
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TicketConnectionString %>" SelectCommand="SELECT [cityname] FROM [city]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Label ID="Label1" runat="server" ForeColor="White" Text="选择出发点"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="cityname" DataValueField="cityname" AutoPostBack="True" OnSelectedIndexChanged="drop_Click">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" ForeColor="White" Text="选择目的地"></asp:Label>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="cityname" DataValueField="cityname" AutoPostBack="True" OnSelectedIndexChanged="drop_Click">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TicketConnectionString %>" SelectCommand="SELECT [cityname] FROM [city]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style8" colspan="3">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" CssClass="auto-style9" DataKeyNames="BanCiHao" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="None" Height="16px" Width="626px" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Font-Names="华文行楷" ShowHeaderWhenEmpty="True">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" SelectText="预定" />
                                <asp:BoundField DataField="BanCiHao" HeaderText="班次号" ReadOnly="True" SortExpression="BanCiHao" />
                                <asp:BoundField DataField="startport" HeaderText="起始地点" SortExpression="startport" />
                                <asp:BoundField DataField="finishport" HeaderText="目的地" SortExpression="finishport" />
                                <asp:BoundField DataField="daytime" HeaderText="出发日期" SortExpression="daytime" />
                                <asp:BoundField DataField="price" HeaderText="价格" SortExpression="price" />
                                <asp:BoundField DataField="RenShu" HeaderText="剩余票数" SortExpression="RenShu" />
                            </Columns>
                            <FooterStyle BackColor="Tan" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <SortedAscendingCellStyle BackColor="#FAFAE7" />
                            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                            <SortedDescendingCellStyle BackColor="#E1DB9C" />
                            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TicketConnectionString %>" SelectCommand="SELECT * FROM [BanCi]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="查看我的订单" />
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="退出登录" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">

                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:TicketConnectionString %>" SelectCommand="SELECT * FROM [BanCi] WHERE (([startport] = @startport) AND ([finishport] = @finishport))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="startport" PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="DropDownList2" Name="finishport" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
    <div id="clouds">
        <div class="cloud x1" style="left: 737px; top: -77px"></div>
        <div class="cloud x2" style="left: 882px; top: -209px; margin-top: 0; height: 60px;"></div>
        <div class="cloud x3" style="left: 1088px; top: -420px;"></div>
        <div class="cloud x4" style="left: 989px; top: -405px"></div>
        <div class="cloud x5" style="left: 1029px; top: -335px"></div>
    </div>
</body>
</html>
