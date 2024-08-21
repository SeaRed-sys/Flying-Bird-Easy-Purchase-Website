<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="Content_SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>注册—飞鸟易购网</title>
    <link rel="icon" href="../Logo .ico" type="text/x-html-insertion" />
    <link href="../App_Themes/样式表/登录样式.css" rel="stylesheet" />
</head>
<body style="background-image:url(../Image/10.jpg)">
    
    <form id="form1" runat="server">
        <div class="shell">
            <h2 class="title">Register</h2>
            <table class="leftside">
                <tr>
                    <td class="tdright">用户名:&nbsp</td>
                    <td><asp:TextBox ID="txtName" runat="server" ></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ControlToValidate="txtName" Display="Dynamic"
                             ForeColor="Red" ID="rfvName" runat="server" ErrorMessage="必填"></asp:RequiredFieldValidator>                    </td>
                </tr>
                <tr>
                    <td class="tdright">邮箱:&nbsp</td>
                    <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ControlToValidate="txtEmail" runat="server"
                         ForeColor="Red" Display="Dynamic" ID="rfvEmail" ErrorMessage="必填">
                        </asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="tdright" colspan="2">
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" Display="Dynamic"
                             ErrorMessage="邮箱格式不正确！" ControlToValidate="txtEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w)*"></asp:RegularExpressionValidator>                    </td>
                </tr>
                <tr>
                    <td class="tdright">密码:&nbsp</td>
                    <td><asp:TextBox ID="txtPassword" runat="server"  TextMode="Password"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="rfvPassword" runat="server" Display="Dynamic" ForeColor="Red" ErrorMessage="必填" ControlToValidate="txtPassword"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="tdright">确认密码:&nbsp</td>
                    <td>
                        <asp:TextBox ID="txtPwdAgain" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td><asp:RequiredFieldValidator ID="rfvPwdAgain" ControlToValidate="txtPwdAgain" runat="server" Display="Dynamic" ForeColor="Red" ErrorMessage="必填"></asp:RequiredFieldValidator></td>
                </tr>
                <tr >
                   <td class="tdright" colspan="2"> 
                       <asp:CompareValidator ID="cvPwd" runat="server" Display="Dynamic" ControlToCompare="txtPassword" ControlToValidate="txtPwdAgain" ForeColor="Red"  ErrorMessage="两次密码不一样">
                       </asp:CompareValidator></td>
                </tr>
                <tr>
                    <td class="tdright" colspan="2">
                        <asp:Button ID="btnReg" runat="server" Text="立即注册" OnClick ="btnReg_Click" />
                    </td>                
                </tr>
                
            </table>
            <div class="footer">
                <div class="Remember">
                    <a href="Login.aspx" class="Password" >我要登录</a>
                    <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
