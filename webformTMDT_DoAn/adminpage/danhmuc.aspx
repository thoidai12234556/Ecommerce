<%@ Page Title="" Language="C#" MasterPageFile="~/adminpage/admin.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="danhmuc.aspx.cs" Inherits="webformTMDT_DoAn.adminpage.danhmuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
            <style>
         body {
            margin: 0;
            padding: 0;
        }

        .cart-header {
            padding: 0 120px;
            height: 120px;
            width: 1405px;
            display: flex;
            align-items: center;
            background-color: #fd5e32;
        }

        .cart-name-shop {
            color: black;
            text-transform: uppercase;
            font-weight: 600;
            margin-left: 5px;
            font-size: 20px;
            padding-right: 15px;
            border-right: 1px solid gray;
        }

        .information {
            margin: 0 10px;
        }


            .information span {
                font-weight: 500;
                font-size: 18px;
            }

        .cart-content {
            background-color: #f5f5f5;
            padding: 0 120px;
            min-height: 100vh;
        }

        .list {
            padding: 30px 0;
        }

        table {
            border-collapse: collapse;
            text-align: center;
        }

            table tr td {
                border: 1px solid black;
                padding: 10px 0px;
                font-size: 18px;
            }

            table tr th {
                border: 1px solid black;
                padding: 10px 0px;
                font-size: 20px;
            }

        .update {
            text-decoration: none;
            background-color: #ffc107;
            color: black;
            padding: 6px 20px;
            border-radius: 5px;
            margin-right: 10px;
        }

        .delete {
            text-decoration: none;
            background-color: #dc3545;
            color: black;
            padding: 6px 20px;
            border-radius: 5px;
        }

        .cart {
            padding-left: 15px;
        }

        .cart-iamge {
            width: 100px;
            height: 100px;
            object-fit: cover;
        }

        .create-product-success {
            color: greenyellow;
            font-weight: bold;
        }

        .create-product-error {
            color: red;
            font-weight: bold;
        }

        .content-heading {
            margin-bottom: 20px;
        }

            .content-heading i {
                color: chartreuse;
                font-size: 22px;
                margin-left: 8px;
            }

        .logo-link {
            text-decoration: none;
            color: black;
        }

        .noOder {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 30px;
        }

         .noOder i{
        font-size: 40px;
    color: red;
        }

         .noOder span {
             font-weight: 600;
    margin-top: 20px;
    font-size: 30px;
         }


         .search-container {
             margin-top:15px;
    display: flex;
    align-items: center;
}

.search-input {
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 4px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div>
            <div class="cart-header">
                <asp:LinkButton CssClass="logo-link" ID="LinkButton1" runat="server" >
                    
                <span class="cart-name-shop">NKTECH SHOP</span>
                <div class="information">
                </div>
                </asp:LinkButton>
                <span class="cart">CHỈNH SỬA DANH MỤC SẢN PHẨM</span>

            </div>
        <div class="search-container">

           <div class="search-container">
              <asp:TextBox ID="searchname" runat="server" style="margin-left: 120px" Width="864px" ></asp:TextBox>
              <asp:Button ID="searchbutton" runat="server" Text="search" OnClick="searchbutton_Click" Width="142px"  />
           </div>
       </div>
            <div class="cart-content">
                <div class="list">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  Width="1046px"    >   
                        <%--  --%>
                            <Columns>
                                <asp:TemplateField HeaderText="MÃ DANH MỤC VÀ TÊN DANH MỤC">
                                    <ItemTemplate>
                                        MÃ DANH MỤC: <asp:TextBox ID="madanhmuc" runat="server" Text='<%# Eval("MADANHMUC") %>'></asp:TextBox>
                                        <br />
                                        TÊN DANH MỤC:<asp:TextBox ID="tendanhmuc" runat="server" Text='<%# Eval("TENDANHMUC") %>' style="margin-left: 0px"></asp:TextBox>

                                        <asp:Button ID="Button1" runat="server" Text="Sửa" CommandArgument='<%# Eval("MADANHMUC") %>' OnClick="Button1_Click" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Xóa">
                               <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("MADANHMUC") %>' OnClick="LinkButton2_Click" >Xóa</asp:LinkButton>
                             </ItemTemplate>
                            </asp:TemplateField>
            
                            </Columns>

                    </asp:GridView>
                     <asp:Label ID="lb_thongbao" runat="server" Text=""></asp:Label>

                     
                    
                </div>
            </div>
       
        <div class="contact-form">
        <h2>TẠO MỚI DANH MỤC</h2>
        
            <div class="form-group">
                <label for="name">Mã Danh Mục:</label>
                
                <asp:TextBox ID="madanhmuc" runat="server" type="text"  name="name" Width="316px" ></asp:TextBox>
            </div>
            
            <div class="form-group">
                <label for="name">Tên Danh Mục:</label>
                <asp:TextBox ID="tenkhanhmuc" runat="server" type="text"  name="message" Width="310px" ></asp:TextBox>
            </div>
          
        <asp:Button type="submit" ID="Button1" runat="server" Text="Tạo Mới" OnClick="Button1_Click1"  />

        
    </div>
    <asp:Label ID="lb_thong_bao" runat="server" Text=""></asp:Label>
        </div>

</asp:Content>
