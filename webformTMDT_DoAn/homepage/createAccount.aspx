<%@ Page Title="" Language="C#" MasterPageFile="~/homepage/homeMaster.Master" AutoEventWireup="true" CodeBehind="createAccount.aspx.cs" Inherits="webformTMDT_DoAn.homepage.createAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="~/css\login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2><a href="">TẠO TÀI KHOẢN MỚI</a></h2>
        <div class="container">
            <h1>Login</h1>
            <div class="form-group">
                <label for="txtUsername">Username:</label>
                <asp:TextBox ID="txtUsername" runat="server" Width="290px"></asp:TextBox>
            </div>
            <%--<div class="form-group">
                <label for="txtPassword">Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="290px"></asp:TextBox>
            </div>
             <div class="form-group">
                <label for="txtPassword">Password:</label>
                <asp:TextBox ID="txtPassword2" runat="server" TextMode="Password" Width="288px"></asp:TextBox>
                
            </div>--%>
            <div class="form-group">
                <label for="txtPassword">Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="290px"></asp:TextBox>
            </div>
             <div class="form-group">
                <label for="checkPassword">Confirm Password:</label>
                <asp:TextBox ID="txtPassword2" runat="server" TextMode="Password" Width="288px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="MẬT KHẨU KHÔNG KHỚP"
                 ControlToValidate="txtPassword2"  ControlToCompare="txtPassword" Display="Dynamic" Type="String"></asp:CompareValidator>
                
            </div>

            <%--CHECK EMAIL--%>

            <div>
                <div class="form-group">
            Email: <asp:TextBox ID="email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                ErrorMessage="Email không được để trống" ControlToValidate="email"
                Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server"
                ErrorMessage="Email không đúng định dạng" ControlToValidate="email"
                Display="Dynamic"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
              </div>
        </div>

        






           
            <div class="form-group">
                <label >DIA CHI:</label>
                <asp:TextBox ID="diachi" runat="server" Width="286px" ></asp:TextBox>
            </div>
            <div class="form-group">
                <label >SỐ ĐIỆN THOẠI:</label>
                <asp:TextBox ID="sodienthoai" runat="server" Width="232px" ></asp:TextBox>
            </div>
            

            <div class="form-group">
                <asp:Button ID="Login1" runat="server" Text="CREATE" OnClick="Login1_Click"   />
            </div>
            <asp:Label ID="lblMessage" runat="server" Text="" CssClass="error-message"></asp:Label>
        </div>
</asp:Content>
