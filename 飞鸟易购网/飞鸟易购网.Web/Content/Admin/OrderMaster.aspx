<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrderMaster.aspx.cs" Inherits="Content_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="icon" href="../../Logo .ico" type="text/x-html-insertion" />
    <title>个人中心—飞鸟易购网</title>
    <link href="../../App_Themes/样式表/昼夜更替侧边导航栏.css" rel="stylesheet" />
    <link href="../App_Themes/样式表/昼夜更替侧边导航栏.css" rel="stylesheet" />
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
</style>
</head>
<body>
    <form id="form1" runat="server">
    <nav class="shell close">
        <header>
            <div class="image-text">
                <span class="image">
                    <img src="../../Image/10.jpg" alt=""/>
                </span>
                <div class="text logo-text">
                    <span class="name"><asp:Label ID="lblName" runat="server"></asp:Label>管理员</span>
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
                        <a href="CategoryMaster.aspx">
                            <i class="iconfont icon-shoucangxiao icon"></i>
                            <span class="text nac-text">商品分类管理</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="SupplierMaster.aspx">
                            <i class="iconfont icon-lishi icon"></i>
                            <span class="text nac-text">供应商管理</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="ProductMaster.aspx">
                            <i class="iconfont icon-xiaoxi icon"></i>
                            <span class="text nac-text">商品管理</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="OrderMaster.aspx">
                            <i class="iconfont icon-chuangzuo icon"></i>
                            <span class="text nac-text">订单管理</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="Adminmanagement.aspx">
                            <i class="iconfont icon-chuangzuo icon"></i>
                            <span class="text nac-text">回到首页</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="bottom-content">
                <li class="">
                    <a href="../Login.aspx">
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
                    <h3>昵称:<asp:Label ID="lblUser" runat="server" ></asp:Label></h3>
                    <h3>身份：管理员</h3>
                </div>
            </div>
            <div class="Mined" id="Collect">
                <h1 class="heading"><span>订单</span>管理</h1>
        </div>
    <div class="right">

    <asp:Panel ID="pnlOrder" runat="server">
    <asp:GridView ID="gvOrder" runat="server" Width="100%" AutoGenerateColumns="false" AllowPaging="True" PageSize="10" OnPageIndexChanging="gvOrder_PageIndexChanging" PagerSettings-Mode="NextPrevious">
      <PagerSettings FirstPageText="首页" LastPageText="尾页" Mode="NextPrevious" NextPageText="下一页" Position="TopAndBottom" PreviousPageText="上一页" />
      <Columns>
        <asp:TemplateField>
          <ItemTemplate>
            <asp:CheckBox ID="chkChoice" runat="server" />
          </ItemTemplate>
        </asp:TemplateField>
        <asp:HyperLinkField Text="订单详细" DataTextFormatString="{0:c}" DataNavigateUrlFields="OrderId" DataNavigateUrlFormatString="OrderSub.aspx?OrderId={0}" HeaderText="订单详细" />
        <asp:BoundField DataField="OrderId" HeaderText="订单ID" />
        <asp:BoundField DataField="UserName" HeaderText="用户" />
        <asp:BoundField DataField="Status" HeaderText="审核状态" />
      </Columns>
    </asp:GridView>
    <asp:Button ID="btnAudit" runat="server" Text="审核商品" OnClick="btnAudit_Click" />
  </asp:Panel>
  <asp:Label ID="lblOrder" runat="server"></asp:Label>
        </div>
                
            
   
        </section>
        <a href="Adminmanagement.aspx" class="btn1">返回</a>
    </form>
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
