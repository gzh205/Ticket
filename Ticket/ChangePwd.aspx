<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePwd.aspx.cs" Inherits="Ticket.ChangePwd" MasterPageFile="MasterPage.master"%>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:Label ID="Label1" runat="server" Text="我们需要验证您是否为本人操作" ForeColor="White"></asp:Label>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <asp:Label ID="Label2" runat="server" Text="用户名:" ForeColor="White" Width="120px"></asp:Label>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent"></asp:TextBox>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder5">
    <asp:Label ID="Label3" runat="server" Text="密&amp;nbsp码:" ForeColor="White"></asp:Label>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder6">
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" BackColor="Transparent"></asp:TextBox>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder8">
    <asp:Label ID="Label4" runat="server" Text="验证码:" ForeColor="White"></asp:Label>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder9">
    <asp:TextBox ID="TextBox3" runat="server" BackColor="Transparent"></asp:TextBox>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder10">
    <img alt="" src="./CreateKaptcha.aspx" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder12">
    <asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" Class="button pill"/>
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="忘记密码" Class="button pill"/>
</asp:Content>