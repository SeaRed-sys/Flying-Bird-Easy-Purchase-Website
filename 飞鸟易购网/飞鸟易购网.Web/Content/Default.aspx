<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage_FeiNiao.master"  CodeFile="Default.aspx.cs" Inherits="Content_Default2" %>


<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
.shell1 {
    position: relative;
    /* 相对定位 */
    width: 60vw;
    /* 宽度占视口宽度的60% */
    height: 40vw;
    /* 高度占视口高度的40% */
    max-width: 800px;
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
.home1 {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background: url("../Image/Signup.png") no-repeat center center fixed;
    background-size: cover;
}
.home1 .content1{
    max-width:40rem;
}
.home1 .content1 h3{
    font-size:2.5rem;
    line-height:1.5;
}
.home1 .content1 span{
    font-size:4.5rem;
    color:var(--pink);
    padding:1rem 0;
    line-height:1.2;
}

.home1 .content1 p{
    font-size:1.5rem;
    color:black;
    padding:1rem 0;
    line-height:1.5;
}
</style> 
    <!-- home section starts -->

    <section class="home1" id="home" style="background-image:url(../Image/12.jpg)">
                    <!---主页展示--> 
   <div class="shell1">
   <div class="content">
       <div class="item"></div>
       <div class="item"></div>
       <div class="item"></div>
       <div class="item"></div>
   </div>
  </div>
        <div class="content1">
            <h3>f飞鸟易购网</h3>
            <span>High-quality & Electronics</span>
            <p>飞鸟易购网——专业手机零售O2O平台,正品手机、笔记本、平板电脑，正品行货，确保低价，配送及时！
            </p>
            <a href="Login.aspx" class="button1" style="">登录 Now</a>
            <a href="#about" class="button1">关于 我们</a>

        </div>
    
    <!-- contact section starts-->
    </section>

    <!-- home section ends -->


    <!-- about section starts -->

    <section class="about" id="about">

        <h1 class="heading"><span> 关于 </span> 我们 </h1>

        <div class="row">
            <div class="video-container">
                <asp:Image ID="img_about" runat="server" ImageUrl="~/Image/about us.png" />
                <h3>best Electronics sellers</h3>
            </div>
            <div class="content1">
                <h3>why choose us?</h3>
                <p>飞鸟易购网购物平台是一个为消费者提供电脑、手机、平板以及配件等电子产品的电子商务网站，
                    你可以通过本网站购买心仪且可靠的电子产品。
                </p>
                <p>我们会确保价格优惠和产品的质量以及提供良好的售后来保障消费者的权益，更有专业微信客服可以解答用户的使用问题。
                </p>
                <p>So，选择我们吧
                </p>
                <a href="#" class="btn">开始 购物吧！</a>
            </div>
        </div>
    </section>
    <!-- about section ends -->

</asp:Content>
