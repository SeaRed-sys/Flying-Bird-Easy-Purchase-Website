<%@ Page Language="C#" MasterPageFile="~/MasterPage_FeiNiao.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="Content_HomePage" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
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
/* 定义外层容器样式 */
.heading1 {
    text-align: center;
    font-size: 2.5rem;
    color: #333;
    padding: 1rem;
    margin: 2rem 0;
    background-color:lavenderblush;
}
     .product{
            width: 100%;
            height:150px;
              border-style:groove;
    border-color:aliceblue;
        }
     .pm{
         width:30%;
         height:80%;
         float:left;
     }
     .pright{
         width:70%;
         height:80%;
        float:right;
     }
.shell1 {
    position:center;
    /* 相对定位 */
    width: 60vw;
    /* 宽度占视口宽度的60% */
    height: 40vw;
    /* 高度占视口高度的40% */
    max-width: 900px;
    /* 最大宽度为380像素 */
    max-height: 250px;
    /* 最大高度为250像素 */
    margin: 0;
    /* 外边距为0 */
    color: white;
    /* 字体颜色为白色 */
    perspective: 1000px;
    /* 透视效果，观察者与z=0平面的距离 */
    transform-origin: center;
    /* 变形原点为中心 */
}

/* 定义内容容器样式 */
.content {
    display: flex;
    /* 设置为弹性盒子布局 */
    justify-content: center;
    /* 主轴居中对齐 */
    align-items: center;
    /* 交叉轴居中对齐 */
    position: absolute;
    /* 绝对定位 */
    width: 100%;
    /* 宽度100% */
    height: 100%;
    /* 高度100% */
    transform-origin: center;
    /* 变形原点为中心 */
    transform-style: preserve-3d;
    /* 保持3D变换 */
    transform: translateZ(-30vw) rotateY(0);
    /* 变换：沿z轴平移-30vw，绕y轴旋转0度 */
    animation: carousel 9s infinite cubic-bezier(0.77, 0, 0.175, 1) forwards;
    /* 动画：名称为carousel，持续时间9秒，无限循环，缓动函数为cubic-bezier(0.77, 0, 0.175, 1)，动画结束后保持最后状态 */
}

/* 定义项目样式 */
.item {
    position: absolute;
    /* 绝对定位 */
    width: 60vw;
    /* 宽度占视口宽度的60% */
    height: 40vw;
    /* 高度占视口高度的40% */
    max-width: 380px;
    /* 最大宽度为380像素 */
    max-height: 250px;
    /* 最大高度为250像素 */
    box-shadow: 0 5px 20px rgba(0, 0, 0, 0.3);
    /* 设置阴影 */
    border-radius: 6px;
    /* 边框圆角半径为6像素 */
    background-size: cover;
    /* 背景图片等比例缩放并覆盖整个容器 */
    -webkit-box-reflect: below 25px -webkit-linear-gradient(transparent 50%, rgba(255, 255, 255, 0.3));
    /* 创建倒影效果 */
}

    /* 第一个项目样式 */
    .item:nth-child(1) {
        background-image: url(/Image/Laptop/hwd14.jpg);
        /* 背景图片为01.jpg */
        transform: rotateY(0) translateZ(35vw);
        /* 变换：绕y轴旋转0度，沿z轴平移35vw */
    }

    /* 第二个项目样式 */
    .item:nth-child(2) {
        background-image: url(/Image/Pad/小新pad22.jpg);
        /* 背景图片为02.jpg */
        transform: rotateY(120deg) translateZ(35vw);
        /* 变换：绕y轴旋转120度，沿z轴平移35vw */
    }

    /* 第三个项目样式 */
    .item:nth-child(3) {
        background-image: url('/Image/Phone/sxs22.jpg');
        /* 背景图片为03.jpg */
        transform: rotateY(240deg) translateZ(35vw);
        /* 变换：绕y轴旋转240度，沿z轴平移35vw */
    }
    /* 第三个项目样式 */
    .item:nth-child(4) {
        background-image: url('/Image/Logo.png');
        /* 背景图片为03.jpg */
    }
    .contact .row{
    display:flex;
    flex-wrap:wrap;
    gap:1.5rem;
    align-items:center;
}
.contact .row .shell{
    flex:1 1 40rem;
    padding:2rem 2.5rem;
    box-shadow:0 .5rem 1.5rem rgba(0,0,0,.1);
    border:.1rem solid rgba(0,0,0,.1);
    background:#fff;
    border-radius:.5rem;
}
.contact .row .image{
    flex:1 1 40rem;
}
.contact .row .image img{
    width:100%
}
.contact .row .shell .box {
        padding: 1rem;
        font-size: 1.7rem;
        color: #333;
        text-transform: none;
        border: .1rem solid rgba(0,0,0,.1);
        border-radius: .5rem;
        margin: .7rem 0;
        width: 100%;
}
.contact .row shell textarea {
        height: 15rem;
        resize: none;
 }
.home1 {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background: url("../Image/10.jpg") no-repeat center center fixed;
    background-size: cover;


}
/* 按钮样式 */
.button1 {
    display: inline-block;
    position: relative;
    z-index: 1;
    overflow: hidden;
    text-decoration: none;
    font-family: sans-serif;
    font-weight: 600;
    font-size: 2em;
    padding: 0.75em 1em;
    color: #fff;
    border: 0.15em solid white;
    border-radius: 2em;
    transition: 4s;
}

.button1:before,
 .button1:after {
        content: "";
        position: absolute;
        top: -1.5em;
        z-index: -1;
        width: 200%;
        aspect-ratio: 1;
        border: none;
        border-radius: 40%;
        background-color:hotpink;
        transition: 4s;
}

.button1:before {
        left: -80%;
        transform: translate3d(0, 5em, 0) rotate(-340deg);
}
.button1:after {
        right: -80%;
        transform: translate3d(0, 5em, 0) rotate(390deg);
 }

.button:hover,
 .button:focus {
        color: white;
}
.button1:hover:before,
.button1:hover:after,
.button1:focus:before,
 .button1:focus:after {
            transform: none;
            background-color: deeppink;
        }
/* 定义动画 */
@keyframes carousel {

    0%, 17.5% {
        transform: translateZ(-35vw) rotateY(0);
        /* 变换：沿z轴平移-35vw，绕y轴旋转0度 */
    }

    27.5%, 45% {
        transform: translateZ(-35vw) rotateY(-120deg);
        /* 变换：沿z轴平移-35vw，绕y轴旋转-120度 */
    }

    55%, 72.5% {
        transform: translateZ(-35vw) rotateY(-240deg);
        /* 变换：沿z轴平移-35vw，绕y轴旋转-240度 */
    }

    82.5%, 100% {
        transform: translateZ(-35vw) rotateY(-360deg);
        /* 变换：沿z轴平移-35vw，绕y轴旋转-360度 */
    }
}
</style>
   <!-- home section starts -->
    <section class="home1" id="home" style="background-image:url(../Image/12.jpg)">
     <div class="shell1">
     <div class="content">
         <div class="item"></div>
         <div class="item"></div>
         <div class="item"></div>
         <div class="item"></div>
     </div>
    </div>    
 <a href="#Look" class="button1" style="font-size:40px;display:flex;justify-content:center">欢迎 选购</a>
    </section>
        <a href="#home" class="btn1">置顶</a>

   <!-- home section ends -->


   <!-- about section starts -->
<section >
    <div id="Look">
    <div class="heading1">
                <a href="Search.aspx" class="btn-menu" style="background: #73cbff"><img src="../Image/search.jpg"  height="35px"/></a>
                产品搜索&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Activities.aspx" class="btn-menu" style="background: #efb2ff"><img src="../Image/new.jpg" height="35px" /></a>
                最近活动&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Index.aspx" class="btn-menu" style="background: #ffdba3"><img src="../Image/Laptop/暗影精灵8.jpg" height="35px" /></a>
                精品推荐&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#newProduct" class="btn-menu" style="background: #95ffa5"><img src="../Image/优惠.jpg" height="35px" /></a>
                新品优惠
    </div></div>
    <div id="newProduct">
   <div class="heading" style="background-color:aliceblue;height:70px">
     <p style="margin-bottom: 20px;"><span style="font-size: 30px;color:crimson;font-weight: bold;text-align:center">新品优惠</span></p>
      </div>

   <div class="product">
       <div class="pm">
          
           <asp:Button ID="But星15" runat="server"  OnClick="But星15_Click" style="background-image:url('../Image/Laptop/星15.jpg' );height:140px;width:200px;background-size:100% 100%;"/>
       </div>
       <div class="pright">
            <p style="margin-bottom: 20px;"><span style="font-size: 20px;color:crimson;font-weight: bold;">惠普星15  新品直降400！</span></p>
                   <p>评分：4.0 | 月售：98份</p>
                   <p>七天无理由 | 包邮</p>
                        <a href="../Image/Laptop/星15.jpg" ><p style="color:black">点击查看大图</p>
           </a>
         
       </div>

   </div>

       <div class="product">
       <div class="pm">
            <asp:Button ID="btnmate50" runat="server" OnClick="btnmate50_Click" style="background-image:url('../Image/Phone/mate50.jpg' );height:140px;width:200px;background-size:100% 100%;"/>
       </div>
       <div class="pright">
            <p style="margin-bottom: 20px;"><span style="font-size: 20px;color:crimson;font-weight: bold;">华为Mate50Pro  新品直降500！</span></p>
                   <p>评分：4.9 | 月售：198份</p>
                   <p>七天无理由 | 包邮</p>
                      <a href="../Image/Phone/mate50.jpg" ><p style="color:black">点击查看大图</p></a>
       </div>
   </div>
       <div class="product">
       <div class="pm">
     <asp:Button ID="btnhuawpad" runat="server" OnClick="btnhuawpad_Click" style="background-image:url('../Image/Pad/huaweipad.jpg' );height:140px;width:200px;background-size:100% 100%;"/>
          
       </div>
       <div class="pright">
            <p style="margin-bottom: 20px;"><span style="font-size: 20px;color:crimson;font-weight: bold;">华为MatePadPro  新品直降300！</span></p>
                   <p>评分：4.8 | 月售：98份</p>
                   <p>七天无理由 | 包邮</p>
            <a href="../Image/Pad/huaweipad.jpg" ><p style="color:black">点击查看大图</p></a>
           
       </div>
   </div>
       <div class="product">
       <div class="pm">
    <asp:Button ID="btnmipad" runat="server"  OnClick="btnmipad_Click" style="background-image:url('../Image/Pad/mipad.jpg' );height:140px;width:200px;background-size:100% 100%;"/>
      
       </div>
       <div class="pright">
            <p style="margin-bottom: 20px;"><span style="font-size: 20px;color:crimson;font-weight: bold;">小米Pad5Pro  新品直降200！</span></p>
                   <p>评分：4.3 | 月售：98份</p>
                   <p>七天无理由 | 包邮</p>
                  
             <a href="../Image/Pad/mipad.jpg" ><p style="color:black">点击查看大图</p></a>
       </div>
   </div>
       <div class="product">
       <div class="pm">
               <asp:Button ID="But幻16" runat="server"  OnClick="But幻16_Click" style="background-image:url('../Image/Laptop/y9000p.jpg' );height:140px;width:200px;background-size:100% 100%;"/>
           
       </div>
       <div class="pright">
            <p style="margin-bottom: 20px;"><span style="font-size: 20px;color:crimson;font-weight: bold;">幻16  新品直降600！</span></p>
                   <p>评分：4.7 | 月售：98份</p>
                   <p>七天无理由 | 包邮</p>
               <a href="../Image/Laptop/幻16.0.jpg"" ><p style="color:black">点击查看大图</p></a>
            
       </div>
   </div>
    </div>
 
</section>
 
   <!-- about section ends -->
    <!--UI菜单-->

</asp:Content>