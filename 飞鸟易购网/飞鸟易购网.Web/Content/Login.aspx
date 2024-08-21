<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Content_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录—飞鸟易购网</title>
    <link rel="icon" href="../Logo .ico" type="text/x-html-insertion" />
    <link href="../App_Themes/样式表/登录样式.css" rel="stylesheet" />
</head>
<body style="background-image:url(../Image/10.jpg)">
    <form id="form1" runat="server">
        <div class="shell">
            <h3 class="title">Login</h3>
            <table style="border-collapse:collapse;">    
                <tr>
                    <td class="tdright">用户名：</td>
                    <td><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="rfvName" runat="server" Display="Dynamic" ForeColor="Red"  ControlToValidate="txtName" ErrorMessage="必填"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="tdright" >密码：</td>
                    <td><asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox></td>
                    <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtPwd" ForeColor="Red" Display="Dynamic" ErrorMessage="必填"></asp:RequiredFieldValidator>
                </tr>
                <tr>
                    <td colspan="2" class="tdright">
                        <asp:Button ID="btnLogin" runat="server" Text="立即登录" OnClick="btnLogin_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="tdright">
                        <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
            <div class="footer">
                <div class="Remember">
                    <input type="checkbox" id="rememberMe" />
                    <label for="rememberMe" >记住我&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="SignUp.aspx" class="Password" >我要注册！</a>
                    <a href="GetPwd.aspx" class="Password">&nbsp;忘记密码？</a>
                </div>
            </div>           
        </div>
    </form>
</body>
</html>
