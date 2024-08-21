<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrderSub.aspx.cs" Inherits="Content_Default" %>

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
                        <a href="../HomePage.aspx">
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
                </div>
            </div>
            <div class="Mined" id="Collect">
                <h1 class="heading"><span>订单</span>管理</h1>
        </div>
    <div class="right">
     订单主表
  <asp:GridView ID="gvOrder" runat="server" AutoGenerateColumns="false"
    Width="100%">
    <Columns>
      <asp:TemplateField>
        <ItemTemplate>
          <table style="width: 100%; border: 1px solid #ccc;">
            <tr>
              <td style="width: 20%; border: 1px solid #ccc; height: 24px; text-align: right;">订单ID：
              </td>
              <td style="width: 80%;">
                <asp:Label ID="lblOrderId" runat="server" Text='<%# Bind("OrderId") %>'></asp:Label>
              </td>
            </tr>
            <tr>
              <td style="border: 1px solid #ccc; height: 24px; text-align: right;">客户名称：
              </td>
              <td style="border: 1px solid #ccc; height: 24px;">
                <asp:Label ID="lblUserName" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
              </td>
            </tr>
            <tr>
              <td style="border: 1px solid #ccc; height: 24px; text-align: right;">订购时间：
              </td>
              <td style="border: 1px solid #ccc; height: 24px;">
                <asp:Label ID="lblOrderDate" runat="server" Text='<%# Bind("OrderDate") %>'></asp:Label>
              </td>
            </tr>
            <tr>
              <td style="border: 1px solid #ccc; height: 24px; text-align: right;">地址1：
              </td>
              <td style="border: 1px solid #ccc; height: 24px;">
                <asp:Label ID="lblAddr1" runat="server" Text='<%# Bind("Addr1") %>'></asp:Label>
              </td>
            </tr>
            <tr>
              <td style="border: 1px solid #ccc; height: 24px; text-align: right;">地址2：
              </td>
              <td style="border: 1px solid #ccc; height: 24px;">
                <asp:Label ID="lblAddr2" runat="server" Text='<%# Bind("Addr2") %>'></asp:Label>
              </td>
            </tr>
            <tr>
              <td style="border: 1px solid #ccc; height: 24px; text-align: right;">城市：
              </td>
              <td style="border: 1px solid #ccc; height: 24px;">
                <asp:Label ID="lblCity" runat="server" Text='<%# Bind("City") %>'></asp:Label>
              </td>
            </tr>
            <tr>
              <td style="border: 1px solid #ccc; height: 24px; text-align: right;">区域：
              </td>
              <td style="border: 1px solid #ccc; height: 24px;">
                <asp:Label ID="lblState" runat="server" Text='<%# Bind("State") %>'></asp:Label>
              </td>
            </tr>
            <tr>
              <td style="border: 1px solid #ccc; height: 24px; text-align: right;">邮编：
              </td>
              <td style="border: 1px solid #ccc; height: 24px;">
                <asp:Label ID="lblZip" runat="server" Text='<%# Bind("Zip") %>'></asp:Label>
              </td>
            </tr>
            <tr>
              <td style="border: 1px solid #ccc; height: 24px; text-align: right;">手机：
              </td>
              <td style="border: 1px solid #ccc; height: 24px;">
                <asp:Label ID="lblPhone" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
              </td>
            </tr>
            <tr>
              <td style="border: 1px solid #ccc; height: 24px; text-align: right;">审核状态：
              </td>
              <td style="border: 1px solid #ccc; height: 24px;">
                <asp:Label ID="lblStatus" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
              </td>
            </tr>
                  <tr>
              <td style="border: 1px solid #ccc; height: 24px; text-align: right;">实付：
              </td>
              <td style="border: 1px solid #ccc; height: 24px;">
                <asp:Label ID="lblActualpayment" runat="server" Text='<%# Bind("Actualpayment") %>'></asp:Label>
              </td>
            </tr>
          </table>
        </ItemTemplate>
      </asp:TemplateField>
    </Columns>
  </asp:GridView>
  购买详细
  <asp:GridView ID="gvOrderItem" runat="server" Width="100%" AllowPaging="True" OnPageIndexChanging="gvOrderItem_PageIndexChanging"
    PagerSettings-Mode="NextPrevious" CellPadding="4" ForeColor="#333333"
    GridLines="None" AutoGenerateColumns="False">
    <PagerSettings FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" Position="TopAndBottom" PreviousPageText="上一页" />
    <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
    <RowStyle BackColor="#E3EAEB" />
    <Columns>
      <asp:TemplateField>
        <ItemTemplate>
             <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Bind("Image") %>' Height="157px" Width="235px" />
        </ItemTemplate>
      </asp:TemplateField>
      <asp:BoundField DataField="ItemId" HeaderText="序列号" />
      <asp:BoundField DataField="OrderId" HeaderText="订单号" />
      <asp:BoundField DataField="ProName" HeaderText="商品名称" />
      <asp:BoundField DataField="ListPrice" HeaderText="商品单价" />
      <asp:BoundField DataField="Qty" HeaderText="购买数量" />
      <asp:BoundField DataField="TotalPrice" HeaderText="总价" />
    </Columns>
    <PagerStyle BackColor="#ffffff" HorizontalAlign="Left" />
    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    <HeaderStyle BackColor="#ccccd4" Font-Bold="True" ForeColor="Black" />
    <EditRowStyle BackColor="#7C6F57" />
    <AlternatingRowStyle BackColor="White" />
  </asp:GridView>
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
