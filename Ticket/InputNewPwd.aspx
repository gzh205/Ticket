<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InputNewPwd.aspx.cs" Inherits="Ticket.InputNewPwd" MasterPageFile="MasterPage.master"%>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:Label ID="Label1" runat="server" Text="请输入新密码:" ForeColor="White"></asp:Label>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder6">
    <asp:Button ID="Button1" runat="server" Text="提交修改" OnClick="Button1_Click" class="button pill"/>
</asp:Content>