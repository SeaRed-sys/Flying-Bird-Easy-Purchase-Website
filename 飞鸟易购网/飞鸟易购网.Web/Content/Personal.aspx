<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Personal.aspx.cs" Inherits="Content_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>个人中心—飞鸟易购网</title>
    <link rel="icon" href="../Logo .ico" type="text/x-html-insertion" />
    <link href="../App_Themes/样式表/昼夜更替侧边导航栏.css" rel="stylesheet" />
    <style>
    :root{
    --pink:#e84393;
     }
    .btn{
    display:inline-block;
    margin-top:1rem;
    border-radius:5rem;
    background:#333;
    color:#fff;
    padding:.5rem 2.5rem;
    cursor:pointer;
        }
    .brn:hover{
    background:var(--pink);
    }
/* 按钮样式 */
.button1 {
    display: inline-block;
    position: relative;
    z-index: 1;
    overflow: hidden;
    text-decoration: none;
    font-family: sans-serif;
    padding: 0.75em 1em;
    color: #fff;
    border: 0.15em solid blue;
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
        background-color: rgba(0, 0, 255, 0.25);
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
            background-color: rgba(0, 0, 255, 0.75);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <nav class="shell close">
        <header>
            <div class="image-text">
                <span class="image">
                    <img src="../Image/about us.png" alt=""/>
                </span>
                <div class="text logo-text">
                    <span class="name"><asp:Label ID="lblName" runat="server"></asp:Label></span>
                    <span class="software">-飞鸟易购网-</span>
                </div>
            </div>
            <i class="iconfont icon-xiangyoujiantou toggle"></i>
        </header>
        <div class="menu-bar">
            <div class="menu">
                <li class="search-box">
                    <i class="iconfont icon-sousuo icon"></i>
                    <input type="text" placeholder="搜索..."/>
                </li>
                <ul class="menu-links">
                    <li class="nav-link">
                        <a href="#">
                            <i class="iconfont icon-shouye icon"></i>
                            <span class="text nac-text">我的信息</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="#Collect">
                            <i class="iconfont icon-shoucangxiao icon"></i>
                            <span class="text nac-text">修改信息</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="#Order">
                            <i class="iconfont icon-lishi icon"></i>
                            <span class="text nac-text">我的订单</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="HomePage.aspx">
                            <i class="iconfont icon-chuangzuo icon"></i>
                            <span class="text nac-text">主页</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="bottom-content">
                <li class="">
                    <a href="Login.aspx">
                        <i class="iconfont icon-zhuxiaoyuan icon"></i>
                        <span class="text nac-text">退出登录</span>
                    </a>
                </li>
                <li class="mode">
                    <div class="sun-moon">
                        <i class="iconfont icon-rijian icon sun"></i>
                        <i class="iconfont icon-yejian icon moon"></i>
                    </div>
                    <span class="mode-text text">夜间模式</span>
                    <div class="toggle-switch">
                        <span class="switch"></span>
                    </div>
                </li>
            </div>
        </div>
        
    </nav>
        <section>
            <div class="Mined" id="Mine">
                <h1 class="heading"><span>我的</span>信息</h1>
                <div class="box">
                    <h3>ID:<asp:Label ID="lblID" runat="server" ></asp:Label></h3>
                    <h3>用户名:<asp:Label ID="lblUser" runat="server" ></asp:Label></h3>
                    <h3>邮箱:<asp:Label ID="lblEmail" runat="server" ></asp:Label></h3>
                    <h3>密码:<asp:Label ID="lblPassword" runat="server" ></asp:Label></h3>
                    <h3>用户身份:<asp:Label ID="lblState" runat="server" ></asp:Label></h3>
                </div>
            </div>
            <div class="Mined" id="Collect">
                <h1 class="heading"><span>修改</span>信息</h1>
    <div class="box">

        <h3>昵称：</h3>
        <asp:Label ID="Laname" runat="server" ></asp:Label>    <br />    
        <h2>修改昵称</h2> <br /> 
        <h3>修改昵称：<asp:TextBox ID="Textpetname" runat="server"></asp:TextBox></h3>
        <div class="btn" onclick="showMessage1()"><asp:Button ID="Butpetname" runat="server" OnClick="Butpetname_Click" Text="确认修改" BackColor="Black" ForeColor="White" Font-Size="13px" BorderStyle="None"  /></div> <br />
     &nbsp; &nbsp; &nbsp;
      <div>
          头像：
        <asp:Image ID="Image1" ImageUrl="~/Image/Logo.png"  runat="server" style="height:100px;width:100px;" />
        <br /><h2>更换头像</h2><div class="btn"><asp:FileUpload ID="fupImage" runat="server" /></div>
          <asp:RequiredFieldValidator ID="rfvImage" runat="server" ControlToValidate="fupImage"
            ErrorMessage="不能为空"></asp:RequiredFieldValidator>
         <div class="btn" onclick="showMessage2()"><asp:Button ID="btnphoto" runat="server" OnClick="btnphoto_Click" Text="上传头像" BackColor="Black" ForeColor="White" Font-Size="13px" BorderStyle="None" /></div>
          <br /><br />
          <h2>修改密码</h2><br />
          <h3>原密码：<asp:TextBox ID="textold" runat="server"></asp:TextBox></h3>
          <h3>新密码：<asp:TextBox ID="Textnew1" runat="server"></asp:TextBox></h3>
          <h3>再一次：<asp:TextBox ID="Textnew2" runat="server"></asp:TextBox></h3>
          <br />
          <br />

           <div class="btn" onclick="showMessage3()"><asp:Button ID="Butchangepw" runat="server" OnClick="Butchangepw_Click" Text="确认修改" BackColor="Black" ForeColor="White" Font-Size="13px" BorderStyle="None" /></div><br />
          <asp:Label ID="lblm" runat="server" Text="旧密码错误" Visible="false"></asp:Label>
          </div>
          <div class="button1" onclick="showMessage4()">
          <asp:Button ID="btnVIP" runat="server" OnClick="btnVIP_Click" Text="成为会员" BackColor="#E4E9F7" Font-Size="20px"  BorderStyle="None" />            
          </div> 
        </div>
                
            </div>
            <div class="Mined" id="Order">
                <h1 class="heading"><span>购买</span>记录</h1>
                <asp:GridView ID="gvOrder" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>
     

        </section>
    </form>
<script>
 function showMessage1() {
     var Product = document.getElementById("lblName");
     var message = "您的呢称修改成功。";
     alert(message);
 }
    function showMessage2() {
           var Product = document.getElementById("lblName");
        var message = "您的头像修改成功！"
        alert(message);
    } 
    function showMessage3() {
        var Product = document.getElementById("lblName");
        var message = "您的密码修改成功！"
        alert(message);
    } 
    function showMessage4() {
        var Product = document.getElementById("lblName");
        var message = "恭喜您成为尊贵的VIP用户！"
        alert(message);
    } 

</script>
</body>

<script>
    const body = document.querySelector('body'),
        shell = body.querySelector('nav'),
        toggle = body.querySelector(".toggle"),
        searchBtn = body.querySelector(".search-box"),
        modeSwitch = body.querySelector(".toggle-switch"),
        modeText = body.querySelector(".mode-text");
    // 点击toggle元素时触发事件
    toggle.addEventListener("click", () => {
        // 切换shell元素的close类
        shell.classList.toggle("close");
    })
    // 点击searchBtn元素时触发事件
    searchBtn.addEventListener("click", () => {
        // 移除shell元素的close类
        shell.classList.remove("close");
    })
    // 点击modeSwitch元素时触发事件
    modeSwitch.addEventListener("click", () => {
        // 切换body元素的dark类
        body.classList.toggle("dark");
        // 如果body元素包含dark类
        if (body.classList.contains("dark")) {
            modeText.innerText = "白日模式";
        } else {
            modeText.innerText = "夜间模式";
        }
    });
</script> 

</html>
