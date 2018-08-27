<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newPwd.aspx.cs" Inherits="Ticket.newPwd" MasterPageFile="MasterPage.master" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:Label ID="Label1" runat="server" Text="修改您的密码" ForeColor="White"></asp:Label>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <asp:Label ID="Label2" runat="server" Text="新密码" ForeColor="White" Width="120px"></asp:Label>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder5">
    <asp:Label ID="Label3" runat="server" Text="再输一次" ForeColor="White" Width="120px"></asp:Label>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <asp:TextBox ID="TextBox1" runat="server" Width="185px" BackColor="Transparent" ForeColor="White"></asp:TextBox>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder6">
    <asp:TextBox ID="TextBox2" runat="server" Width="187px" BackColor="Transparent" ForeColor="White"></asp:TextBox>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder9">
    <asp:Button ID="Button1" runat="server" Text="修改密码" class="button pill" OnClick="Button1_Click"/>
</asp:Content>