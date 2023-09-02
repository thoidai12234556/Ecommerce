<%@ Page Title="" Language="C#" MasterPageFile="~/homepage/homeMaster.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="webformTMDT_DoAn.homepage._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2><a href="">DANH MỤC SẢN PHẨM</a></h2>
    <asp:DataList ID="ddl_mathang" runat="server" BorderColor="#3366CC" CellPadding="4" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Smaller" Font-Strikeout="False" Font-Underline="False" RepeatColumns="3" BackColor="White" BorderStyle="None" BorderWidth="1px" GridLines="Both">
         <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
         <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
         <ItemStyle BackColor="White" ForeColor="#003399" />

        <ItemTemplate>

            <div class="cardDefault">
                 <asp:ImageButton ID="ImageButton1" runat="server" Height="150px" Width="130px" CommandArgument='<%# Eval("MATHIETBI") %>' ImageUrl='<%# "~/images/"+Eval("HINHANH") %>' OnClick="ImageButton1_Click1"   />
            <br />
           Tên Thiết Bị: <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("MATHIETBI") %>' Text='<%# Eval("TENTHIETBI") %>' OnClick="LinkButton1_Click1"  ></asp:LinkButton>
            <br />
           Gía: <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("MATHIETBI") %>' Text='<%# Eval("DONGIA") %>' OnClick="LinkButton2_Click1"  ></asp:LinkButton>
            </div>
           
        </ItemTemplate>

         <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    </asp:DataList>


</asp:Content>
