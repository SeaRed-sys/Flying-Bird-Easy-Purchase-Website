<%@ Page Language="C#" MasterPageFile="~/MasterPage_FeiNiao.master" AutoEventWireup="true" CodeFile="Look.aspx.cs" Inherits="Content_Default2" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
.content5 {

    background-color:lavenderblush;
    display: flex;
    justify-content: space-evenly;
    align-items: center;
    background-size:cover;
}
.content6 {

    background-color:lavenderblush;
    display: flex;
    justify-content: space-evenly;
    align-items: center;
}
.content5 .center {
    width: 1500px;
    height: 450px;
    /* background-color: deepskyblue; */
    top:3rem;
    display: flex;
    flex-direction: column;
    justify-content: space-evenly;
    align-items: center;
    backdrop-filter: blur(4px);
    border-radius: 10px;
    box-shadow: inset 1px 1px 6px rgba(255, 255, 255, 0.3),
                2px 2px 15px rgba(0, 0, 0, 0.5);
    transition: all linear 0.2s;
}
.content5 .center .table{
    width: 800px;
    height: 350px;
    /* background-color: deepskyblue; */
    display: flex;
    flex-direction: column;
    justify-content: space-evenly;
    align-items: center;
    backdrop-filter: blur(4px);
    border-radius: 10px;
    box-shadow: inset 1px 1px 6px rgba(255, 255, 255, 0.3),
                2px 2px 15px rgba(0, 0, 0, 0.5);
    transition: all linear 0.2s;
}

.content5 .center:hover{
    box-shadow: inset 1px 1px 3px rgba(255, 255, 255, 0.9),
                4px 4px 25px rgba(0, 0, 0, 0.9);
    backdrop-filter: blur(7px);
}
.content5 .text {
    color: #120606;
    font-size: 25px;
    vertical-align: middle;
}
.content5 .text .a1,
.content5 .text .a2,
.content5 .text .a3,
.content5 .text .a4 {
    transition: all 0.2s linear;
}
.content5 .text .a1:hover {
    color: deepskyblue;
    text-shadow: 0px 0px 20px deepskyblue;
}
.content5 .text .a2:hover {
    color: #C81D23;
    text-shadow: 0px 0px 20px #C81D23;
}
.content5 .text .a3:hover {
    color: #120606;
    text-shadow: 0px 0px 20px #120606;
}
.content5 .text .a4:hover {
    color: #FFEBD3;
    text-shadow: 0px 0px 20px #FFEBD3;
}

.content5 .main-center {
    position: relative;
}
.content5 .circle span{
    position: absolute;
    border-radius: 50%;
}
.content5 .main-center .circle span:nth-child(1) {
    background: purple;
    top: -37px;
    left: -58px;
    width: 120px;
    height: 120px;
    box-shadow: 1px 1px 30px purple;
}
.content5 .main-center .circle span:nth-child(2) {
    background: cyan;
    top: 51px;
    left: 466px;
    width: 50px;
    height: 50px;
    box-shadow: 1px 1px 30px cyan;
}
.content5 .main-center .circle span:nth-child(3) {
    background: orange;
    top: 318px;
    left: 506px;
    width: 160px;
    height: 160px;
    box-shadow: 1px 1px 30px orange;
}
.content5 .main-center .circle span:nth-child(1) {
    animation: move1 ease-in-out 3s 1s infinite alternate;
}
.content5 .main-center .circle span:nth-child(2) {
    animation: move1 ease-in-out 4s infinite alternate-;
}
.content5 .main-center .circle span:nth-child(3) {
    animation: move1 ease-in-out 2.5s 0.5s infinite alternate;
}
@keyframes move1 {
    0% {transform: translateY(0);}
    100% {transform: translateY(-30px);}
}
.content5 .main-center .circle span:nth-child(4) {
    background: red;
    top: -36px;
    left: 69px;
    width: 130px;
    height: 130px;
    box-shadow: 1px 1px 30px red;
}
.content5 .main-center .circle span:nth-child(5) {
    background: pink;
    top: 167px;
    left: 531px;
    width: 120px;
    height: 120px;
    box-shadow: 1px 1px 30px revert-layer;
}
.content5 .main-center .circle span:nth-child(6) {
    background: deepskyblue;
    top: 318px;
    left: 20px;
    width: 60px;
    height: 60px;
    box-shadow: 1px 1px 30px deepskyblue;
}
.content5 .main-center .circle span:nth-child(1) {
    animation: move2 ease-in-out 4s infinite alternate;
}
.content5 .main-center .circle span:nth-child(2) {
    animation: move2 ease-in-out 3s 1s infinite alternate-reverse;
}
.content5 .main-center .circle span:nth-child(3) {
    animation: move2 ease-in-out 4s 0.5s infinite alternate;
}
@keyframes move2 {
    0% {transform: translateY(0);}
    100% {transform: translateY(-35px);}
}
:root{
    --pink:#e84393;
}

.btn1 {
    display: inline-block;
    margin-top: 1rem;
    border-radius: 5rem;
    background: #333;
    color: #fff;
    padding: .9rem 3.5rem;
    cursor: pointer;
    font-size: 1.7rem;
    position:fixed;
    bottom:0;
    right:0;
    
}

    .btn1:hover {
        color: var(--pink);
    }
</style>
<section>
   <div class="content5">
       <div class="main-center">
           <div class="circle">
               <span></span>
               <span></span>
               <span></span>
               <span></span>
               <span></span>
               <span></span>
           </div>
           <div class="center">
               <div class="table">
       <div style="text-align:center;">
     <asp:TextBox ID="txtSearch" runat="server"  Text=" "></asp:TextBox>

<asp:Button ID="btnSearch" runat="server" Text="搜索"  OnClick="btnSearch_Click"/>
        </div>
       <asp:GridView ID="gvProduct" runat="server" AllowPaging="True" AutoGenerateColumns="false" OnPageIndexChanging="gvProduct_PageIndexChanging" PagerSettings-Mode="NextPrevious" PageSize="4" Width="100%">
    <PagerSettings FirstPageText="首页" LastPageText="尾页" Mode="NextPrevious" NextPageText="下一页" Position="TopAndBottom" PreviousPageText="上一页" />
    <Columns>
      <asp:TemplateField>
        <ItemTemplate>
          <table style="border: 1px solid #ccc; width: 100%;">
            <tr>
              <td style="text-align: center; vertical-align: middle; width: 40%;" rowspan="7">
                <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Bind("Image") %>' Height="157px" Width="235px" />
              </td>
              <td style="border: 1px solid #808080; width: 40%;">商品编号： </td>
              <td style="border: 1px solid #808080; width: 20%;">
                <asp:Label ID="lblProductId" runat="server" Text='<%# Bind("ProductId") %>'></asp:Label>
              </td>
            </tr>
            <tr>
              <td style="border: 1px solid #808080;">商品分类： </td>
              <td style="border: 1px solid #808080;">
                <asp:Label ID="lblCategoryId" runat="server" Text='<%# Bind("CategoryId") %>'></asp:Label>
              </td>
            </tr>
            <tr>
              <td style="border: 1px solid #808080;">商品名称： </td>
              <td style="border: 1px solid #808080;">
                <asp:Label ID="lblName" runat="server" ForeColor="Red" Text='<%# Bind("Name") %>'></asp:Label>
              </td>
            </tr>
            <tr>
              <td style="border: 1px solid #808080;">商品价格： </td>
              <td style="border: 1px solid #808080;">
                <asp:Label ID="lblListPrice" runat="server" Text='<%# Bind("ListPrice") %>'></asp:Label>
              </td>
            </tr>
            <tr>
              <td style="border: 1px solid #808080;">商品描述： </td>
              <td style="border: 1px solid #808080;">
                <asp:Label ID="lblDescn" runat="server" Text='<%# Bind("Descn") %>'></asp:Label>
              </td>
            </tr>
            <tr>
              <td style="border: 1px solid #808080;">库存： </td>
              <td style="border: 1px solid #808080;">
                <asp:Label ID="lblQty" runat="server" Text='<%# Bind("Qty") %>'></asp:Label>
              </td>
            </tr>
          </table>
        </ItemTemplate>
      </asp:TemplateField>
      <asp:HyperLinkField DataNavigateUrlFields="ProductId" DataNavigateUrlFormatString="ShopCart.aspx?ProductId={0}" DataTextFormatString="{0:c}" HeaderText="放入购物车" Text="购买" />
    </Columns>
  </asp:GridView>
               </div>
               </div>
            </div>
        </div>

    </div>
            <div class="content6">
  <asp:Label ID="lblError" runat="server"></asp:Label>      
        </div>
        <a href="HomePage.aspx" class="btn1">返回</a>
</section>
    <script>
        function showMessage1() {
            var Product = document.getElementById("lblName");
            var message = "感谢您的订购,谢谢光临！"
            alert(message);
        } 
    </script>
</asp:Content>