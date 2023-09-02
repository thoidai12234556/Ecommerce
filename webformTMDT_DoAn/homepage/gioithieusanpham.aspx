<%@ Page Title="" Language="C#" MasterPageFile="~/homepage/homeMaster.Master" AutoEventWireup="true" CodeBehind="gioithieusanpham.aspx.cs" Inherits="webformTMDT_DoAn.gioithieusanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #container {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
}

h1 {
    text-align: center;
}

#product-info {
    margin-top: 30px;
    text-align: center;
}

img {
    max-width: 100%;
}

ul {
    list-style-type: none;
    padding: 0;
}

.price {
    font-weight: bold;
    font-size: 20px;
    margin-top: 10px;
}

.btn {
    display: inline-block;
    padding: 10px 20px;
    background-color: #337ab7;
    color: #fff;
    text-decoration: none;
    border-radius: 5px;
    margin-top: 20px;
}

.btn:hover {
    background-color: #23527c;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container">
        <h1>Giới thiệu sản phẩm máy tính điện thoại đẹp</h1>
        <div id="product-info">
            <img src="\images\dienthoai.jfif" alt="Máy tính điện thoại đẹp" />
            <p>
                Máy tính điện thoại đẹp là một sản phẩm công nghệ tiên tiến nhất trên thị trường.
                Với thiết kế sang trọng, màn hình sắc nét và hiệu suất mạnh mẽ, nó sẽ mang đến trải nghiệm tuyệt vời cho người dùng.
            </p>
            <ul>
                <li>Màn hình: 6 inch Super AMOLED</li>
                <li>Hệ điều hành: Android 10</li>
                <li>Bộ nhớ trong: 128GB</li>
                <li>RAM: 8GB</li>
                <li>Camera: 48MP chất lượng cao</li>
            </ul>
            <p class="price">Giá: $999</p>
            <a href="\homepage\default.aspx" class="btn">Mua ngay</a>
        </div>
    </div>
</asp:Content>
