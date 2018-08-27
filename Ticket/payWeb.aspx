<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payWeb.aspx.cs" Inherits="Ticket.payWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 547px;
        }
        .auto-style3 {
            height: 173px;
        }
        .auto-style5 {
            height: 173px;
            width: 599px;
        }
        .auto-style7 {
            width: 599px;
        }
        .auto-style10 {
            height: 216px;
            width: 599px;
        }
        .auto-style11 {
            height: 216px;
        }
        .auto-style12 {
            height: 173px;
            width: 307px;
        }
        .auto-style13 {
            width: 307px;
        }
        .auto-style14 {
            height: 173px;
            width: 261px;
        }
        .auto-style15 {
            width: 261px;
        }
    </style>
</head>
<body style="background:url(./timg.jpg); height: 551px;">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style14"></td>
                <td class="auto-style12"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TicketConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [BanCi] WHERE ([BanCiHao] = @BanCiHao)">
                        <SelectParameters>
                            <asp:SessionParameter Name="BanCiHao" SessionField="select" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style11" colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="班次编号:"></asp:Label>
                    <asp:Label ID="lblBanCi" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="发车点:"></asp:Label>
                    <asp:Label ID="lblStart" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="目的地:"></asp:Label>
                    <asp:Label ID="lblDist" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="票价:"></asp:Label>
                    <asp:Label ID="lblPrice" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="发车时间:"></asp:Label>
                    <asp:Label ID="lblTime" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="是否支付?"></asp:Label>
                    <br />
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/payAli.png" Visible="False" />
                </td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style15">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="假设我支付了" />
                </td>
                <td class="auto-style13">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="我不想支付了" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
