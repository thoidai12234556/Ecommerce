<%@ Page Title="" Language="C#" MasterPageFile="~/adminpage/admin.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="thietbi.aspx.cs" Inherits="webformTMDT_DoAn.adminpage.thietbi" %>
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
                <span class="cart">CHỈNH SỬA THÔNG TIN THIẾT BỊ</span>

            </div>

            <div class="cart-content">
                <div class="list">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  Width="1046px"     >   
                        <%--  --%>
                            <Columns>
                                <asp:TemplateField HeaderText="MÃ DANH MỤC VÀ TÊN DANH MỤC">
                                    <ItemTemplate>
                                        MÃ THIẾT BỊ: <asp:TextBox ID="mathietbi" runat="server" Text='<%# Eval("MATHIETBI") %>' Width="385px"></asp:TextBox>
                                        <br />
                                        TÊN THIẾT BỊ:<asp:TextBox ID="tenthietbi" runat="server" Text='<%# Eval("TENTHIETBI") %>' Width="376px"></asp:TextBox>
                                        <br />
                                        MÔ TẢ:<asp:TextBox ID="mota" runat="server" Text='<%# Eval("MOTA") %>' Width="432px"></asp:TextBox>
                                         <br />
                                        MÀU SẮC:<asp:TextBox ID="mausac" runat="server" Text='<%# Eval("MAUSAC") %>' Width="413px"></asp:TextBox>

                                         <br />
                                        ĐƠN GIÁ:<asp:TextBox ID="dongia" runat="server" Text='<%# Eval("DONGIA") %>' Width="412px"></asp:TextBox>
                                         <br />
                                        HÌNH ẢNH:<asp:TextBox ID="hinhanh" runat="server" Text='<%# Eval("HINHANH") %>' Width="371px"></asp:TextBox>


                                        <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("MATHIETBI") %>' OnClick="Button1_Click" Text="Sửa" Width="61px" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Xóa">
                               <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("MATHIETBI") %>' OnClick="LinkButton2_Click" >Xóa</asp:LinkButton>
                             </ItemTemplate>
                            </asp:TemplateField>
            
                            </Columns>

                    </asp:GridView>
                     <asp:Label ID="lb_thongbao" runat="server" Text=""></asp:Label>

                     
                    
                </div>
            </div>
          <div class="contact-form">
        <h2>TẠO MỚI THIẾT BỊ</h2>
        
            <div class="form-group">
                <label for="name">Mã Thiết bị:</label>
                
                <asp:TextBox ID="thietbin" runat="server" type="text"  name="name" Width="506px" style="margin-left: 3px" ></asp:TextBox>
            </div>
            
            <div class="form-group">
                <label for="name">Tên Thiết Bị:</label>
                <asp:TextBox ID="tenthietbin" runat="server" type="text"  name="message" Width="512px" ></asp:TextBox>
            </div>
              <div class="form-group">
                <label for="name">MÔ Tả:</label>
                <asp:TextBox ID="motan" runat="server" type="text"  name="message" Width="513px" style="margin-left: 29px" ></asp:TextBox>
            </div>
              <div class="form-group">
                <label for="name">Màu Sắc:</label>
                <asp:TextBox ID="mausacn" runat="server" type="text"  name="message" Width="514px" style="margin-left: 18px" ></asp:TextBox>
            </div>
              <div class="form-group">
                <label for="name">Đơn Gía:</label>
                <asp:TextBox ID="dongian" runat="server" type="text"  name="message" Width="514px" style="margin-left: 25px" ></asp:TextBox>
            </div>
              <div class="form-group">
                <label for="name">hinhanh:</label>
                <asp:TextBox ID="hinhanhn" runat="server" type="text"  name="message" Width="512px" style="margin-left: 29px" ></asp:TextBox>
            </div>
              <div class="form-group">
                <label for="name">Mã Danh Mục:</label>
                <asp:TextBox ID="madanhmucn" runat="server" type="text"  name="message" Width="497px" ></asp:TextBox>
            </div>
          
        <asp:Button type="submit" ID="Button1" runat="server" Text="Tạo Mới" OnClick="Button1_Click1"   />

        
    </div>
    <asp:Label ID="lb_thong_bao" runat="server" Text=""></asp:Label>
        </div>
</asp:Content>
