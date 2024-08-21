<%@ Page Language="C#" MasterPageFile="~/MasterPage_FeiNiao.master" AutoEventWireup="true" CodeFile="Addpro.aspx.cs" Inherits="Content_Default2" %>

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
        .auto-style1 {
            width: 21%;
        }
        .auto-style2 {
            width: 89%;
        }
        .auto-style3 {
            width: 22%;
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
  <asp:Panel ID="pnlProductMaster" runat="server">
    <table style="width:100%; border:4px solid #fff;">
      <tr>
        <td style="text-align:center; " colspan="2">
          <strong style="font-size:35px">添加商品</strong>
        </td>
      </tr>
      <tr>
        <td style="text-align:right; font-size:16px" class="auto-style3">商品名称:
        </td>
        <td class="auto-style2">
          <asp:TextBox ID="txtName" runat="server" Font-Size="20px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName"
            ErrorMessage="不能为空"></asp:RequiredFieldValidator>
          <asp:Label ID="lblNameErr" runat="server"
            ForeColor="Red"></asp:Label>
        </td>
      </tr>
      <tr>
        <td style="text-align:right; font-size:16px" class="auto-style3">商品分类:
        </td>
        <td class="auto-style2">
          <asp:DropDownList ID="ddlCategoryId" runat="server" Font-Size="20px">
          </asp:DropDownList>
          <asp:RequiredFieldValidator ID="rfvCategoryId" runat="server" ControlToValidate="ddlCategoryId"
            ErrorMessage="不能为空"></asp:RequiredFieldValidator>
        </td>
      </tr>
      <tr>
        <td style="text-align:right;font-size:16px " class="auto-style3">商品单价:
        </td>
        <td class="auto-style2">
          <asp:TextBox ID="txtListPrice" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="rfvListPrice" runat="server" ControlToValidate="txtListPrice"
            ErrorMessage="不能为空"></asp:RequiredFieldValidator>
        </td>
      </tr>
      <tr>
        <td style="text-align:right; font-size:16px" class="auto-style3">提供商:
        </td>
        <td class="auto-style2">
          <asp:DropDownList ID="ddlSuppId" runat="server">
          </asp:DropDownList>
          <asp:RequiredFieldValidator ID="rfvSuppId" runat="server" ControlToValidate="ddlSuppId"
            ErrorMessage="不能为空"></asp:RequiredFieldValidator>
        </td>
      </tr>
      <tr>
        <td style="text-align:right;font-size:16px " class="auto-style3">描述:
        </td>
        <td class="auto-style2">
          <asp:TextBox ID="txtDescn" runat="server" Height="89px" TextMode="MultiLine"
            Width="263px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="rfvDescn" runat="server" ControlToValidate="txtDescn"
            ErrorMessage="不能为空"></asp:RequiredFieldValidator>
        </td>
      </tr>
      <tr>
        <td style="text-align:right;font-size:16px " class="auto-style3">库存:
        </td>
        <td class="auto-style2">
          <asp:TextBox ID="txtQty" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="rfvQty" runat="server" ControlToValidate="txtQty"
            ErrorMessage="不能为空"></asp:RequiredFieldValidator>
        </td>
      </tr>
      <tr>
        <td style="text-align:right; font-size:16px" class="auto-style3">商品图片:
        </td>
        <td class="auto-style2">
          <asp:FileUpload ID="fupImage" runat="server" />
          <asp:RequiredFieldValidator ID="rfvImage" runat="server" ControlToValidate="fupImage"
            ErrorMessage="不能为空"></asp:RequiredFieldValidator>
        </td>
      </tr>
      <tr>
        <td style="text-align:right; " class="auto-style3">&nbsp;
        </td>
        <td class="auto-style2">

        </td>
      </tr>
    </table>
  </asp:Panel>
  <asp:Label ID="lblMsg" runat="server"></asp:Label>
               </div>
               </div>
            </div>
        </div>

    </div>
            <div class="content6">

            <div class="button1" onclick="showMessage1()">
                <asp:Button ID="btnAdd" runat="server" Text="添加商品" OnClick="btnAdd_Click"  BackColor="lavenderblush" Font-Size="35px" />
            </div>       
        </div>
        <a href="ProductMaster.aspx" class="btn1">返回</a>
</section>
</asp:Content>