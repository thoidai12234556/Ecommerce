<%@ Page Title="" Language="C#" MasterPageFile="~/homepage/homeMaster.Master" AutoEventWireup="true" CodeBehind="chitiet.aspx.cs" Inherits="webformTMDT_DoAn.homepage.chitiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<style>
.lbThongBao {
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: rgba(83, 84, 212, 0.1);
    padding: 10px;
}

.lbThongBao label {
    font-size: 16px;
    font-weight: bold;
}

    .td-style {
    padding: 5px;   
    font-size: 14px;    
    background-color:rgba(83, 84, 212, 0.1);

}
    .ghichu-textbox {
    padding: 8px;
    width: 100%;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 14px;
    box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2);
    background-color: #f5f5f5;
    border-color: #dcdcdc;
    padding-bottom:10px;
}

.image-shadow {
    box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2);
}
.my-button-style {
    margin-top:10px;
    background-color:  rgb(83, 84, 212);
    color: white;
    border: none;
    padding: 10px 20px;
    cursor: pointer;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    border-radius: 5px;
}

</style>



    <h2 style="font-size:30px; font-weight:bold; color: rgb(83, 84, 212);">CHI TIẾT SẢN PHẨM</h2>
    <asp:DataList ID="DataList1" runat="server" >
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td rowspan="4" style="padding-right:20px">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/images/"+Eval("HINHANH") %>' CssClass="image-shadow"  />
                    </td>
                    <td >
                        <div class="td-style">Tên hàng&nbsp;:&nbsp;<asp:Label ID="Label1" runat="server" Text='<%# Eval("TENTHIETBI") %>' CommandArgument='<%# Eval("MATHIETBI") %>'></asp:Label></div> 
                    </td>
                </tr>
                <tr>
                    <td > <div class="td-style"> Mô tả&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("MOTA") %>' CommandArgument='<%# Eval("MATHIETBI") %>'></asp:Label></div>                      
                    </td>
                </tr>
                <tr>
                    <td >
                        <div class="td-style">  Đơn giá&nbsp;&nbsp; :&nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("DONGIA") %>' CommandArgument='<%# Eval("MATHIETBI") %>'></asp:Label></div>                    
                    </td>
                </tr>                            
                <tr>
                    <td>
                        Ghi Chú:<asp:TextBox ID="ghichu" runat="server" Text="" CssClass="ghichu-textbox" ></asp:TextBox>   
                        <br />
                            Số Lượng: <asp:TextBox ID="txt_soluong" runat="server" Text="" CssClass="ghichu-textbox"></asp:TextBox>
                             <br />
                              <asp:Button ID="Button1" runat="server" Text='MUA' OnClick="Button1_Click" CommandArgument='<%# Eval("MATHIETBI") %>' CssClass="my-button-style" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    

    <div class="lbThongBao">
        <asp:Label ID="lb_thong_bao" runat="server" Text="NOTE: " ></asp:Label>
    </div>

</asp:Content>
