<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="selectDingDan.aspx.cs" Inherits="Ticket.selectDingDan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 26%;
        }
        .auto-style14 {
            height: 158px;
        }
        .auto-style25 {
            height: 24px;
            width: 1444px;
        }
        .auto-style26 {
            width: 388px;
            height: 24px;
        }
        .auto-style27 {
            width: 388px;
        }
        /*Lets start with the cloud formation rather*/

		/*The container will also serve as the SKY*/

		*{ margin: 0; padding: 0;}

		body {
			/*To hide the horizontal scroller appearing during the animation*/
			overflow: hidden;
		}

		#clouds{
			padding: 100px 0;
			background: transparent;
		}

		/*Time to finalise the cloud shape*/
		.cloud {
			width: 200px; height: 60px;
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
			width: 100px; height: 80px;
			position: absolute; top: -15px; left: 10px;
			
			border-radius: 100px;
			-moz-border-radius: 100px;
			-webkit-border-radius: 100px;
			
			-webkit-transform: rotate(30deg);
			transform: rotate(30deg);
			-moz-transform: rotate(30deg);
		}

		.cloud:after {
			width: 120px; height: 120px;
			top: -55px; left: auto; right: 15px;
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
			left: -250px; top: -200px;
			
			-webkit-transform: scale(0.8);
			-moz-transform: scale(0.8);
			transform: scale(0.8);
			opacity: 0.8; /*opacity proportional to the size*/
			
			-webkit-animation: moveclouds 20s linear infinite;
			-moz-animation: moveclouds 20s linear infinite;
			-o-animation: moveclouds 20s linear infinite;
		}

		.x4 {
			left: 470px; top: -250px;
			
			-webkit-transform: scale(0.75);
			-moz-transform: scale(0.75);
			transform: scale(0.75);
			opacity: 0.75; /*opacity proportional to the size*/
			
			-webkit-animation: moveclouds 18s linear infinite;
			-moz-animation: moveclouds 18s linear infinite;
			-o-animation: moveclouds 18s linear infinite;
		}

		.x5 {
			left: -150px; top: -150px;
			
			-webkit-transform: scale(0.8);
			-moz-transform: scale(0.8);
			transform: scale(0.8);
			opacity: 0.8; /*opacity proportional to the size*/
			
			-webkit-animation: moveclouds 20s linear infinite;
			-moz-animation: moveclouds 20s linear infinite;
			-o-animation: moveclouds 20s linear infinite;
		}

		@-webkit-keyframes moveclouds {
			0% {margin-left: 1000px;}
			100% {margin-left: -1000px;}
		}
		@-moz-keyframes moveclouds {
			0% {margin-left: 1000px;}
			100% {margin-left: -1000px;}
		}
		@-o-keyframes moveclouds {
			0% {margin-left: 1000px;}
			100% {margin-left: -1000px;}
		}
        .auto-style30 {
            margin-left: 0;
        }
        .auto-style31 {
            width: 1444px;
        }
        .auto-style32 {
            height: 351px;
            width: 507px;
        }
    </style>
</head>
<body style="background:url(./timg.jpg); margin-right: 1374;">
    <form id="form1" runat="server" style="text-align:center;">
        <div class="auto-style32">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style26"></td>
                    <td class="auto-style25"></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">
                        <br />
                        <asp:Label ID="Label1" runat="server" ForeColor="White" Text="订单查询结果"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style14">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="BanCiHao" DataSourceID="SqlDataSource1" Font-Names="华文行楷" ForeColor="Black" GridLines="None" ShowHeaderWhenEmpty="True" CssClass="auto-style30" Height="16px" Width="500px">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <Columns>
                                <asp:BoundField DataField="BanCiHao" HeaderText="班次号" ReadOnly="True" SortExpression="BanCiHao" />
                                <asp:BoundField DataField="RenShu" HeaderText="剩余票数" SortExpression="RenShu" />
                                <asp:BoundField DataField="price" HeaderText="价格" SortExpression="price" />
                                <asp:BoundField DataField="daytime" HeaderText="出发日期" SortExpression="daytime" />
                                <asp:BoundField DataField="finishport" HeaderText="目的地" SortExpression="finishport" />
                                <asp:BoundField DataField="startport" HeaderText="出发地点" SortExpression="startport" />
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
                    <td class="auto-style27">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TicketConnectionString %>" SelectCommand="SELECT [BanCiHao], [RenShu], [price], [daytime], [finishport], [startport] FROM [OrderHistory] WHERE ([HuiYuanHao] = @HuiYuanHao)">
                            <SelectParameters>
                                <asp:SessionParameter Name="HuiYuanHao" SessionField="userInfo" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style31">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="返回" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style31">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style31">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style31">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style31">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
    <div id="clouds">
	<div class="cloud x1" style="left: 1408px; top: 3px"></div>
	<div class="cloud x2" style="left: 1627px; top: -154px"></div>
	<div class="cloud x3"></div>
	<div class="cloud x4" style="left: 1375px; top: -344px"></div>
	<div class="cloud x5" style="left: 1290px; top: -279px; margin-right: 1241"></div>
    </div>
</body>
</html>
