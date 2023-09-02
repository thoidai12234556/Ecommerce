<%@ Page Title="" Language="C#" MasterPageFile="~/homepage/homeMaster.Master" AutoEventWireup="true" CodeBehind="lienhe.aspx.cs" Inherits="webformTMDT_DoAn.homepage.lienhe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .contact-form {
            width:1000px;
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f4f4f4;
            border-radius: 5px;
        }

        .contact-form h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .contact-form .form-group {
            margin-bottom: 20px;
        }

        .contact-form label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .contact-form input,
        .contact-form textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .contact-form button {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .contact-form button:hover {
            background-color: #45a049;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact-form">
        <h2>Liên hệ với chúng tôi</h2>
        
            <div class="form-group">
                <label for="name">Họ và tên:</label>
                
                <asp:TextBox ID="name" runat="server" type="text"  name="name" ></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                
                 <asp:TextBox ID="email" runat="server" type="text"  name="email" ></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="message">Nội dung:</label>
                <asp:TextBox ID="message" runat="server" type="text"  name="message" ></asp:TextBox>
            </div>
          
        <asp:Button type="submit" ID="Button1" runat="server" Text="GỬI" OnClick="Button1_Click1" />

        
    </div>
    <asp:Label ID="lb_thong_bao" runat="server" Text=""></asp:Label>
</asp:Content>

