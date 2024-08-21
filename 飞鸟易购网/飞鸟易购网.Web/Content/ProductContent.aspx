<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage_FeiNiao.master" CodeFile="ProductContent.aspx.cs" Inherits="Content_ProductContent" %>
<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
.content5 {
    height: 550px;
    width: 1500px;
    background-color:lavenderblush;
    display: flex;
    justify-content: space-evenly;
    align-items: center;
}
.content6 {
    height: 80px;
    width: 1500px;
    background-color:lavenderblush;
    display: flex;
    justify-content: space-evenly;
    align-items: center;
}
.content5 .left {
    width: 500px;
    height: 400px;
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
.content5 .left .img{
    width: 300px;
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
.content5 .right {
    width: 800px;
    height: 400px;
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
.content5 .left:hover,.right:hover {
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
.content5 .left .bz .img-bz {
    width: 90px;
    height: 90px;
    background-image: url('./images/bilibili.webp');
    background-size: cover;
    background-repeat: no-repeat;
    vertical-align: middle;
    cursor: pointer;
}
.content5 .left .gitee .img-gitee {
    width: 90px;
    height: 90px;
    background-image: url('./images/gitee.webp');
    background-size: cover;
    background-repeat: no-repeat;
    vertical-align: middle;
    cursor: pointer;
}
.content5 .right .github .img-github {
    width: 90px;
    height: 90px;
    background-image: url('./images/github.webp');
    background-size: cover;
    background-repeat: no-repeat;
    vertical-align: middle;
    cursor: pointer;
}
.content5 .right .csdn .img-csdn {
    width: 90px;
    height: 90px;
    background-image: url('./images/csdn.webp');
    background-size: cover;
    background-repeat: no-repeat;
    vertical-align: middle;
    cursor: pointer;
}
.content5 .main-left,
.content5 .main-right {
    position: relative;
}
.content5 .circle span{
    position: absolute;
    border-radius: 50%;
}
.content5 .main-left .circle span:nth-child(1) {
    background: purple;
    top: -37px;
    left: -58px;
    width: 120px;
    height: 120px;
    box-shadow: 1px 1px 30px purple;
}
.content5 .main-left .circle span:nth-child(2) {
    background: cyan;
    top: 51px;
    left: 466px;
    width: 50px;
    height: 50px;
    box-shadow: 1px 1px 30px cyan;
}
.content5 .main-left .circle span:nth-child(3) {
    background: orange;
    top: 318px;
    left: 506px;
    width: 160px;
    height: 160px;
    box-shadow: 1px 1px 30px orange;
}
.content5 .main-left .circle span:nth-child(1) {
    animation: move1 ease-in-out 3s 1s infinite alternate;
}
.content5 .main-left .circle span:nth-child(2) {
    animation: move1 ease-in-out 4s infinite alternate-;
}
.content5 .main-left .circle span:nth-child(3) {
    animation: move1 ease-in-out 2.5s 0.5s infinite alternate;
}
@keyframes move1 {
    0% {transform: translateY(0);}
    100% {transform: translateY(-30px);}
}
.content5 .main-right .circle span:nth-child(1) {
    background: red;
    top: -36px;
    left: 69px;
    width: 130px;
    height: 130px;
    box-shadow: 1px 1px 30px red;
}
.content5 .main-right .circle span:nth-child(2) {
    background: green;
    top: 167px;
    left: 531px;
    width: 120px;
    height: 120px;
    box-shadow: 1px 1px 30px green;
}
.content5 .main-right .circle span:nth-child(3) {
    background: deepskyblue;
    top: 318px;
    left: 20px;
    width: 60px;
    height: 60px;
    box-shadow: 1px 1px 30px deepskyblue;
}
.content5 .main-right .circle span:nth-child(1) {
    animation: move2 ease-in-out 4s infinite alternate;
}
.content5 .main-right .circle span:nth-child(2) {
    animation: move2 ease-in-out 3s 1s infinite alternate-reverse;
}
.content5 .main-right .circle span:nth-child(3) {
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
<!--Product Detail Contant Starts--->
    <div class="content5">
        <div class="main-left">
            <div class="circle">
                <span></span>
                <span></span>
                <span></span>
            </div>
            <div class="left">
                <div class="img">
                    <asp:Image ID="Image1" runat="server" Height="241px" Width="248px"/>
                </div>
                <div class="text">
                    <asp:Label ID="lblProductName" runat="server" Font-Size="45px"></asp:Label></div>
        </div>
        </div>
        <div class="main-right">
            <div class="circle">
                <span></span>
                <span></span>
                <span></span>
            </div>
            <div class="right">
                <div class="text">
                    <span>商品名称：</span><asp:Label ID="lblName" runat="server"></asp:Label><br />
                    <span>商品类别：</span><asp:Label ID="lblCategory" runat="server"></asp:Label><br />
                    <span>原价：</span><asp:Label ID="lblOldPrice" runat="server"></asp:Label><br />
                    <span>优惠价：</span><asp:Label ID="lblNewPrice" runat="server"></asp:Label><br />
                    <span>货源地：</span><asp:Label ID="lblSupplier" runat="server"></asp:Label><br />
                </div>
            </div>
                           
        </div> 
    </div>
        <div class="content6">
            <div class="button1" onclick="showMessage1()">
                <asp:Button ID="btn_Buy" runat="server" Text="购买 Now" OnClick="btn_Buy_Click" BackColor="lavenderblush" Font-Size="35px" />
            </div>
            <div class="button1" onclick="showMessage2()">
                <asp:Button ID="btn_Cart" runat="server" Text="收藏 Now" OnClick="btn_Cart_Click" BackColor="lavenderblush" Font-Size="35px" />
            </div>
        </div>
        <a href="Product.aspx" class="btn1">返回</a>
    <script>
        function showMessage1() {
            var Product = document.getElementById("lblName");
            var message = "感谢您的订购,可查看你的订单！"
            alert(message);
        } 
        function showMessage2() {
            var Product = document.getElementById("lblName");
            var message = "您已成功将商品放入您的购物车，可查看你的购物车！"
            alert(message);
        } 
    </script>
<!--Product Detail Contant Ends--->
</asp:Content>