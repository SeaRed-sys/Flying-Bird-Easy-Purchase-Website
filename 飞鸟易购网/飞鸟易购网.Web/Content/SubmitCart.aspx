<%@ Page Language="C#" MasterPageFile="~/MasterPage_FeiNiao.master" AutoEventWireup="true" CodeFile="SubmitCart.aspx.cs" Inherits="Content_Default2" %>

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
      <asp:Panel ID="pnlConsignee" runat="server">
    <table style="border: 2px solid #fff;" class="auto-style34">
      <tr>
        <td style="text-align: center;" colspan="2">
          <strong style="font-size:35px">填写收货地址</strong>
        </td>
      </tr>
      <tr>
        <td style="text-align: right; font-size:20px" class="auto-style35 ">收货地址：
        </td>
        <td class="auto-style36">
          <asp:TextBox ID="txtAddr1" runat="server" Font-Size="20px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="rfvAddr1" runat="server" ErrorMessage="不能为空" ControlToValidate="txtAddr1" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
      </tr>
      <tr>
        <td style="text-align: right;font-size:20px" class="auto-style43">发票寄送地址：
        </td>
        <td>
          <asp:TextBox ID="txtAddr2" runat="server" Font-Size="20px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="rfvAddr2" runat="server" ControlToValidate="txtAddr2" ErrorMessage="不能为空" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
      </tr>
      <tr>
        <td style="text-align: right;font-size:20px" class="auto-style43">城市：
        </td>
        <td>
          <asp:TextBox ID="txtCity" runat="server" Font-Size="20px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="txtCity" ErrorMessage="不能为空" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
      </tr>
      <tr>
        <td style="text-align: right;font-size:20px" class="auto-style43">省（自治区、直辖市）：
        </td>
        <td>
          <asp:TextBox ID="txtState" runat="server" Font-Size="20px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="rfvState" runat="server" ControlToValidate="txtState" ErrorMessage="不能为空" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
      </tr>
      <tr>
        <td style="text-align: right;font-size:20px" class="auto-style43">邮编：
        </td>
        <td>
          <asp:TextBox ID="txtZip" runat="server" Font-Size="20px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="rfvZip" runat="server" ControlToValidate="txtZip" ErrorMessage="不能为空" ForeColor="#FF3300"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="revZip" runat="server" ErrorMessage="邮编错误！" ControlToValidate="txtZip" ValidationExpression="\d{6}" ForeColor="#FF3300"></asp:RegularExpressionValidator>
        </td>
      </tr>
      <tr>
        <td style="text-align: right;font-size:20px" class="auto-style33">联系电话：
        </td>
        <td class="auto-style29">
          <asp:TextBox ID="txtPhone" runat="server" Font-Size="20px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="不能为空" ForeColor="#FF3300"></asp:RequiredFieldValidator>
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
                <asp:Button ID="btnSubmit" runat="server" Text="提交结算" OnClick="btnSubmit_Click" BackColor="lavenderblush" Font-Size="35px" />
            </div>       
        </div>
        <a href="ShopCart.aspx" class="btn1">返回</a>
</section>
    <script>
        function showMessage1() {
            var Product = document.getElementById("lblName");
            var message = "感谢您的订购,谢谢光临！"
            alert(message);
        } 
    </script>
</asp:Content>