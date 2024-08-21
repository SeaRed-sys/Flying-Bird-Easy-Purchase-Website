<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SupplierMaster.aspx.cs" Inherits="Content_Default" %>

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
                <h1 class="heading"><span>供应商</span>管理</h1>
<div class="right">
     <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteSupplier" InsertMethod="InSertSupplier" SelectMethod="GetAllSupplier" TypeName="飞鸟易购网.BLL.SupplierServices" UpdateMethod="UpdateSupplier">
    <DeleteParameters>
      <asp:Parameter Name="suppId" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
      <asp:Parameter Name="供应商ID" Type="Int32" />
      <asp:Parameter Name="供应商名称" Type="String" />
      <asp:Parameter Name="地址1" Type="String" />
      <asp:Parameter Name="地址2" Type="String" />
      <asp:Parameter Name="城市" Type="String" />
      <asp:Parameter Name="地区" Type="String" />
      <asp:Parameter Name="邮政编码" Type="String" />
      <asp:Parameter Name="联系方式" Type="String" />
    </InsertParameters>
    <UpdateParameters>
      <asp:Parameter Name="供应商ID" Type="Int32" />
      <asp:Parameter Name="供应商名称" Type="String" />
      <asp:Parameter Name="地址1" Type="String" />
      <asp:Parameter Name="地址2" Type="String" />
      <asp:Parameter Name="城市" Type="String" />
      <asp:Parameter Name="地区" Type="String" />
      <asp:Parameter Name="邮政编码" Type="String" />
      <asp:Parameter Name="联系方式" Type="String" />
    </UpdateParameters>
  </asp:ObjectDataSource>

  <asp:DetailsView DataSourceID="ObjectDataSource1" AutoGenerateRows="False" AutoGenerateEditButton="True" AutoGenerateInsertButton="True" AutoGenerateDeleteButton="True"
    AllowPaging="True" ID="DetailsView1" OnItemDeleting="DetailsView1_ItemDeleting"
    runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
      <AlternatingRowStyle BackColor="#F7F7F7" />
      <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
    <Fields>
      <asp:BoundField HeaderText="供应商ID" DataField="SuppId" SortExpression="SuppId" />
      <asp:BoundField HeaderText="供应商名称" DataField="Name" SortExpression="Name" />
      <asp:BoundField HeaderText="地址1" DataField="Addr1" SortExpression="Addr1" />
      <asp:BoundField HeaderText="地址2" DataField="Addr2" SortExpression="Addr2" />
      <asp:BoundField HeaderText="城市" DataField="City" SortExpression="City" />
      <asp:BoundField HeaderText="地区" DataField="State" SortExpression="State" />
      <asp:BoundField HeaderText="邮政编码" DataField="Zip" SortExpression="Zip" />
      <asp:BoundField HeaderText="联系方式" DataField="Phone" SortExpression="Phone" />
    </Fields>
      <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
      <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
      <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
      <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
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
