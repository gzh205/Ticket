<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Ticket.index" MasterPageFile="MasterPage.master"%>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:Label ID="Label1" runat="server" Text="网上订票系统" ForeColor="White"></asp:Label>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <asp:Label ID="Label2" runat="server" Text="用户名:" ForeColor="White" Width="120px"></asp:Label>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent" ForeColor="White"></asp:TextBox>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder5">
    <asp:Label ID="Label3" runat="server" Text="密&amp;nbsp码:" ForeColor="White"></asp:Label>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder6">
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" BackColor="Transparent" ForeColor="White"></asp:TextBox>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder8">
    <asp:Label ID="Label4" runat="server" Text="验证码:" ForeColor="White"></asp:Label>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder9">
    <asp:TextBox ID="TextBox3" runat="server" BackColor="Transparent" ForeColor="White" ></asp:TextBox>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder10">
    <img alt="" src="./CreateKaptcha.aspx" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder11">
    <asp:Button ID="Button1" runat="server" Text="密码修改" OnClick="Button1_Click" Class="button pill"/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder12">
    <div style="text-align:center">
    <asp:Button ID="Button2" runat="server" Text="登录" OnClick="Button2_Click" Class="button pill"/>
    &nbsp
    <asp:Button ID="Button3" runat="server" Text="注册" OnClick="Button3_Click" Class="button pill"/>
    </div>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style30 {
            left: -1px;
            top: 0px;
        }
        .auto-style31 {
            left: 1px;
            top: 0px;
        }
    </style>
</asp:Content>