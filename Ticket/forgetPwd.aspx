<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgetPwd.aspx.cs" Inherits="Ticket.forgetPwd" MasterPageFile="MasterPage.master"%>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <asp:Label ID="Label1" runat="server" ForeColor="White" Text="验证码:" Width="120px"></asp:Label>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <asp:TextBox ID="TextBox1" runat="server" Width="187px" BackColor="Transparent"  ForeColor="White"></asp:TextBox>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder4">
    <asp:Button ID="Button1" runat="server" Text="确认" class="button pill" OnClick="Button1_Click"/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:Label ID="Label2" runat="server" ForeColor="White" Text="选择用户名后点击发送按钮,我们就会将验证码发送到了您预留的邮箱，请打开邮箱查看"></asp:Label>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder6">
    <asp:Label ID="Label3" runat="server" ForeColor="White" Text="若收不到邮件重新点击发送按钮"></asp:Label>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder8">
    <asp:Label ID="Label4" runat="server" ForeColor="White" Text="用户名:"></asp:Label>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder9">
    <asp:TextBox ID="TextBox2" runat="server" Width="190px" BackColor="Transparent"></asp:TextBox>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder10">
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="发送" Class="button pill"/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder12">
    <asp:Button ID="Button3" runat="server" Text="返回" class="button pill" OnClick="Button3_Click"/>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">

</asp:Content>
