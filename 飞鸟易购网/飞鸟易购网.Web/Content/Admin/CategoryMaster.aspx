<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CategoryMaster.aspx.cs" Inherits="Content_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>个人中心—飞鸟易购网</title>
    <link rel="icon" href="../../Logo .ico" type="text/x-html-insertion" />
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
                <h1 class="heading"><span>商品</span>管理</h1>
<div class="box" style="align-items:center">
   <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteCategory" InsertMethod="InSertCategory" SelectMethod="GetAllCategory" TypeName="飞鸟易购网.BLL.CategoryServices" UpdateMethod="UpdateCategory">
    <DeleteParameters>
      <asp:Parameter Name="categoryId" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
      <asp:Parameter Name="商品分类ID" Type="Int32" />
      <asp:Parameter Name="分类名称" Type="String" />
      <asp:Parameter Name="分类描述" Type="String" />
    </InsertParameters>
    <UpdateParameters>
      <asp:Parameter Name="商品分类ID" Type="Int32" />
      <asp:Parameter Name="分类名称" Type="String" />
      <asp:Parameter Name="分类描述" Type="String" />
    </UpdateParameters>
  </asp:ObjectDataSource>
      <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="ObjectDataSource1" AutoGenerateRows="False" AutoGenerateEditButton="True" AutoGenerateInsertButton="True" AutoGenerateDeleteButton="True"
    AllowPaging="True"  OnItemDeleting="DetailsView1_ItemDeleting" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" >
          <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
    <Fields>
      <asp:BoundField HeaderText="商品分类ID" DataField="CategoryId" SortExpression="CategoryId" />
      <asp:BoundField HeaderText="商品名称" DataField="Name" SortExpression="Name" />
      <asp:BoundField HeaderText="商品描述" DataField="Descn" SortExpression="Descn" />
    </Fields>
          <FooterStyle BackColor="White" ForeColor="#333333" />
          <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
          <RowStyle BackColor="White" ForeColor="#333333" />
  </asp:DetailsView>
  <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
        </div>               
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
