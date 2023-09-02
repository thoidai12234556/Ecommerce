<%@ Page Title="" Language="C#" MasterPageFile="~/homepage/homeMaster.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="webformTMDT_DoAn.homepage.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="~/css\login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <h2><a href="">DĂNG NHẬP FORM TRƯỚC KHI MUA SẢN PHẨM</a></h2>
        <div class="container">
            <h1>Login</h1>
            <div class="form-group">
                <label for="txtUsername">Username:</label>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtPassword">Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <h4>NẾU BẠN CHƯA CÓ TÀI KHOẢN HÃY ĐĂNG KÍ BẰNG CÁCH CLICK DƯỚI ĐÂY</h4>
            <div class="form-group">
                <asp:Button ID="Login1" runat="server" Text="Login" OnClick="Login1_Click"  />
                <h3> <a href="\homepage\createAccount.aspx">Register</a> </h3>
            </div>
            <asp:Label ID="lblMessage" runat="server" Text="" CssClass="error-message"></asp:Label>
        </div>
    
</asp:Content>
