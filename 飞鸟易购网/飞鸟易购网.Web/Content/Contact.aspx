<%@ Page Language="C#"MasterPageFile="~/MasterPage_FeiNiao.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Content_Contact" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>

/* 定义外层容器样式 */
.shell1 {
    position: relative;
    /* 相对定位 */
    width: 60vw;
    /* 宽度占视口宽度的60% */
    height: 40vw;
    /* 高度占视口高度的40% */
    max-width: 380px;
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
</style> 
    
    <!---主页展示--> 
       <div class="shell1">
       <div class="content">
           <div class="item"></div>
           <div class="item"></div>
           <div class="item"></div>
           <div class="item"></div>
       </div>
      </div>
    <!-- contact section starts-->
    <a href="#" class="btn1">返回</a>
    <section  class="review" id="review">
        <h1 class="heading">用户 <span>评价</span></h1>
        <div class="box-container">
            <div class="box">
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <p>惠普暗影精灵9拥有一线品牌的售后服务优势，屏幕显示素质优秀，支持2.5K分辨率，240Hz刷新率，同价位少见，支持高色域，屏幕亮度是300nit，亮度显示中规中矩，稍微不足的地方就是依旧是16:9的显示比例，屏幕大下巴。
                </p>
                <div class="user">
                    <img src="../Image/pic1.jpg" alt="" />
                    <div class="user-info">
                        <h3>john deo</h3>
                        <span >happy customer</span>
                    </div>
                </div>
                <span class="fa fa-quote-right"></span>
            </div>
            <div class="box">
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <p>HUAWEI P60 Pro，超聚光夜视长焦，超大进光量，F2.1 超大光圈，200 倍变焦范围1。光影百变，洞见万千HUAWEI Mate 50 Pro，F1.4-F4.0 物理光圈十档可变，景深范围和虚化程度随心变化。色彩风，自成一派原色、鲜艳、明快，独具一格的影像格调，XMAGE 风格再现每段故事的生动情绪。理由 2：掌间与众不同凝光设计，独一无二HUAWEI P60 Pro，洛可可白，采用独特的凝光贝母工艺，融入天然材质，每一支都理由

                </p>
                <div class="user">
                    <img src="../Image/pic2.jpg" alt="" />
                    <div class="user-info">
                        <h3>john deo</h3>
                        <span >happy customer</span>
                    </div>
                </div>
                <span class="fas fa-quote-right"></span>
            </div>
            <div class="box">
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <p>易于使用：苹果手机的操作系统（iOS）以用户友好著称，容易学习和使用。这使其成为智能手机市场的首选之一，特别是对于首次购买者。高质量的硬件：苹果手机使用高质量的材料和组件，包括高清晰度的屏幕、出色的摄像头和音频系统。这意味着用户可以期待出色的娱乐和拍摄体验。高安全性：苹果手机的操作系统在安全性方面表现出色，可以保护用户的个人信息和数据不受恶意软件和黑客攻击的威胁。高稳定性：苹果手机的硬件和软件经过精心设计和测试，因此在稳定性方面表现优异，不易出现崩溃和故障。
                </p>
                <div class="user">
                    <img src="../Image/2.jpg" alt="" />
                    <div class="user-info">
                        <h3>john deo</h3>
                        <span >happy customer</span>
                    </div>
                </div>
                <span class="fas fa-quote-right"></span>
            </div>
        </div>
    </section>
      
    <!-- review section ends-->

    <!-- contact section starts-->

    <section class="contact" id="contact">
        <h1 class="heading"><span>联系</span> 我们 </h1>
        <div class="row">
            <div class="shell">
                <div class="box">
                    用户名：<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </div>
                <div class="box">
                    邮箱：<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </div>
                <div class="box">
                    意见：<asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="10"></asp:TextBox>
                </div>
                <div class="btn" onclick="showMessage()" >
                    <asp:Button ID="btnSubmit" runat="server" Text="Send Message" OnClick="btnSubmit_Click" BackColor="#000000" ForeColor="White" BorderStyle="None"/>
                </div>

        </div>
            <div class="image">
                <img src="../Image/Login.png" alt="" />
            </div>
       </div>
    </section>

    <!-- contact section ends-->
    <script>
        function showMessage() {
            var Product = document.getElementById("lblName");
            var message = "感谢你的反馈，您的支持是我们的动力！"
            alert(message);
        } 
    </script>
</asp:Content>