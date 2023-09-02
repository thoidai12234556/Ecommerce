<%@ Page Title="" Language="C#" MasterPageFile="~/adminpage/admin.Master" AutoEventWireup="true" CodeBehind="loginAdmin.aspx.cs" Inherits="webformTMDT_DoAn.adminpage.loginAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
       
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
        }
        
        .container {
            width: 300px;
            margin: 0 auto;
        }
        
        label {
            display: block;
            margin-bottom: 10px;
        }
        
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="login-container">
            <h2>Admin Login</h2>
            <div class="form-group">
                <label for="txtUsername">Username:</label>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtPassword">Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </div>
           <div class="form-group">
                <asp:Button ID="Login1" runat="server" Text="Login" OnClick="Login1_Click"  />
            </div>
              <asp:Label ID="lblMessage" runat="server" Text="" CssClass="error-message"></asp:Label>
        </div>

   
</asp:Content>
