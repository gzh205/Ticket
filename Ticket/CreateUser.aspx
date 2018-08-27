<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="Ticket.CreateUser" MasterPageFile="MasterPage.master" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:Label ID="Label1" runat="server" ForeColor="White" Text="会员注册"></asp:Label>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <asp:Label ID="Label2" runat="server" ForeColor="White" Text="用户名:" Width="120px"></asp:Label>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent" ForeColor="White" ></asp:TextBox>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder4">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder5">
    <asp:Label ID="Label3" runat="server" ForeColor="White" Text="密&amp;nbsp码:"></asp:Label>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder6">
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" BackColor="Transparent" ForeColor="White"></asp:TextBox>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder7">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder8">
    <asp:Label ID="Label4" runat="server" ForeColor="White" Text="验证密码:"></asp:Label>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder9">
    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" BackColor="Transparent" ForeColor="White"></asp:TextBox>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder10">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder11">
    <asp:Label ID="Label5" runat="server" ForeColor="White" Text="姓&amp;nbsp名:"></asp:Label>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder12">
    <asp:TextBox ID="TextBox4" runat="server" BackColor="Transparent" ForeColor="White" ></asp:TextBox>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder13">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder14">
    <asp:Label ID="Label6" runat="server" ForeColor="White" Text="邮&amp;nbsp箱:"></asp:Label>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder15">
    <asp:TextBox ID="TextBox5" runat="server" BackColor="Transparent" ForeColor="White" ></asp:TextBox>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder16">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder17">
    <asp:Label ID="Label7" runat="server" ForeColor="White" Text="验证码:"></asp:Label>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder18">
    <asp:TextBox ID="TextBox6" runat="server" BackColor="Transparent" ForeColor="White"></asp:TextBox>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder19">
    <p>
        <img alt="" src="./CreateKaptcha.aspx" /></p>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder20">
    </asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder21">
    <asp:Button ID="Button1" runat="server" Text="注册" OnClick="Button1_Click" Class="button pill"/>
    &nbsp&nbsp
    <asp:Button ID="Button2" runat="server" Text="返回" OnClick="Button2_Click" Class="button pill"/>
</asp:Content>