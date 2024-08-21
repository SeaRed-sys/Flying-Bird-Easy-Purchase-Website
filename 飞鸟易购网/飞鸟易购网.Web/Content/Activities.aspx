<%@ Page Language="C#" MasterPageFile="~/MasterPage_FeiNiao.master" AutoEventWireup="true" CodeFile="Activities.aspx.cs" Inherits="Content_Default2" %>
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
    background: green;
    top: 167px;
    left: 531px;
    width: 120px;
    height: 120px;
    box-shadow: 1px 1px 30px green;
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
    <div style="text-align:center;font-size:20px;   background-image:url('../merry.jpg');">
     <p style="margin-bottom: 20px;"><span style="font-size: 30px;color:crimson;font-weight: bold;text-align:center">最新活动</span></p>
    <ol >
        <li>喜迎元旦活动大酬宾！！
            全场商品满5000立减300！！
        </li>
        <li>最新会员系统登场！！成为会员全场商品全部9折！！</li>
        <li>华为Mate50Pro新品上市立减500!!还有众多新品尽享优惠！！</li>
       
    </ol>
        <br />
        <br />
         <a href="HomePage.aspx" class="button1">敬请期待</a> 
        </div>
               </div>
               </div>
            </div>
        </div>

    </div>
        </div>
        <a href="HomePage.aspx" class="btn1">返回</a>
</section>
</asp:Content>

