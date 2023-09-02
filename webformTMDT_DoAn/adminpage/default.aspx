<%@ Page Title="" Language="C#" MasterPageFile="~/adminpage/admin.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="webformTMDT_DoAn.adminpage._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>NKTECH SHOP - Chào mừng đến</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333333;
            text-align: center;
        }

        p {
            color: #666666;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container">
            <h1>NKTECH SHOP</h1>
            <p>Chào mừng đến với NKTECH SHOP!</p>
        <br />
        <h2>VUI LÒNG ĐĂNG NHẬP ĐỂ SỬ DỤNG CÁC CHỨC NĂNG CỦA ADMIN NKTECH SHOP</h2>
         <h3> <a href="\adminpage\loginAdmin.aspx">LOGIN</a>  </h3>
        </div>
</asp:Content>
