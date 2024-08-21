<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage_FeiNiao.master"  CodeFile="Adminmanagement.aspx.cs" Inherits="Content_Default2" %>


<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
.btn{
    display:inline-block;
    margin-top:1rem;
    border-radius:5rem;
    background:#333;
    color:#fff;
    padding:.9rem 3.5rem;
    cursor:pointer;
    font-size:1.7rem;
   
}
.btn:hover {
        color: var(--pink);
}
.home .content{
    max-width:200rem;
}
table {

border: 1px solid black;

border-collapse: collapse;

width: 100%;

}

th, td {

border: 1px solid black;

padding: 10px;

text-align: center;

}

th {

background-color: #ccc;

}

td {

background-color: #fff;

}
 </style>
    <!-- home section starts -->

    <section class="home1" id="home" style="background-image:url(../../Image/12.jpg)">


    <ul id="nav">
        <li class="slide1"></li>
        <li class="slide2"></li>
        <li><a href="CategoryMaster.aspx">商品分类管理</a></li>
        <li><a href="SupplierMaster.aspx">供应商管理</a></li>
        <li><a href="ProductMaster.aspx">商品管理</a></li>
        <li><a href="OrderMaster.aspx">订单管理</a></li>

    </ul> 
            <a href="#about" class="button1">添加  商品</a>
        
    </section>

    <!-- home section ends -->


    <!-- about section starts -->
     <h1 class="heading"><span> 添加 </span> 商品 </h1>
    <section class="about" id="about" style="background-image:url(../../Image/12.jpg);">

    <div  >
      <asp:Panel ID="pnlProductMaster" runat="server">
    <table >

      <tr>
        <td style="text-align:right; ">商品名称:
        </td>
        <td >
          <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName"
            ErrorMessage="不能为空"></asp:RequiredFieldValidator>
          <asp:Label ID="lblNameErr" runat="server"
            ForeColor="Red"></asp:Label>
        </td>
      </tr>
      <tr>
        <td style="text-align:right; ">商品分类:
        </td>
        <td>
          <asp:DropDownList ID="ddlCategoryId" runat="server">
          </asp:DropDownList>
          <asp:RequiredFieldValidator ID="rfvCategoryId" runat="server" ControlToValidate="ddlCategoryId"
            ErrorMessage="不能为空"></asp:RequiredFieldValidator>
        </td>
      </tr>
      <tr>
        <td style="text-align:right; ">商品单价:
        </td>
        <td>
          <asp:TextBox ID="txtListPrice" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="rfvListPrice" runat="server" ControlToValidate="txtListPrice"
            ErrorMessage="不能为空"></asp:RequiredFieldValidator>
        </td>
      </tr>
      <tr>
        <td style="text-align:right; ">提供商:
        </td>
        <td>
          <asp:DropDownList ID="ddlSuppId" runat="server">
          </asp:DropDownList>
          <asp:RequiredFieldValidator ID="rfvSuppId" runat="server" ControlToValidate="ddlSuppId"
            ErrorMessage="不能为空"></asp:RequiredFieldValidator>
        </td>
      </tr>
      <tr>
        <td style="text-align:right; ">描述:
        </td>
        <td>
          <asp:TextBox ID="txtDescn" runat="server" Height="89px" TextMode="MultiLine"
            Width="263px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="rfvDescn" runat="server" ControlToValidate="txtDescn"
            ErrorMessage="不能为空"></asp:RequiredFieldValidator>
        </td>
      </tr>
      <tr>
        <td style="text-align:right; ">库存:
        </td>
        <td>
          <asp:TextBox ID="txtQty" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="rfvQty" runat="server" ControlToValidate="txtQty"
            ErrorMessage="不能为空"></asp:RequiredFieldValidator>
        </td>
      </tr>
      <tr>
        <td style="text-align:right; ">商品图片:
        </td>
        <td>
          <asp:FileUpload ID="fupImage" runat="server" />
          <asp:RequiredFieldValidator ID="rfvImage" runat="server" ControlToValidate="fupImage"
            ErrorMessage="不能为空"></asp:RequiredFieldValidator>
        </td>
      </tr>
      <tr>
        <td style="text-align:right; ">&nbsp;
        </td>
        <td>
         <div class="btn"><asp:Button ID="btnAdd" runat="server" Text="添加商品" OnClick="btnAdd_Click" BackColor="Black" Font-Size="20px" ForeColor="White"/></div> 
        </td>
      </tr>
    </table>
  </asp:Panel>
  <asp:Label ID="lblMsg" runat="server" ></asp:Label>
        </div>
    </section>
    <!-- about section ends -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
    $("#nav a").on("click", function () {
        var position = $(this).parent().position();
        var width = $(this).parent().width();
        $("#nav .slide1").css({ opacity: 1, left: +position.left, width: width });
    });
    $("#nav a").on("mouseover", function () {
        var position = $(this).parent().position();
        var width = $(this).parent().width();
        $("#nav .slide2").css({ opacity: 1, left: +position.left, width: width }).addClass("squeeze");
    });
    $("#nav a").on("mouseout", function () {
        $("#nav .slide2").css({ opacity: 0 }).removeClass("squeeze");
    });
    var currentWidth = $("#nav li:nth-of-type(3) a").parent("li").width();
    var current = $("li:nth-of-type(3) a").position();
    $("#nav .slide1").css({ left: +current.left, width: currentWidth });
</script>
</asp:Content>
