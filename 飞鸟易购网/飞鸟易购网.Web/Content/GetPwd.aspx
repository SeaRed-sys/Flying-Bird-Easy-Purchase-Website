<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GetPwd.aspx.cs" Inherits="Content_Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>找回密码—飞鸟易购网</title>
    <link rel="icon" href="../Logo .ico" type="text/x-html-insertion" />
    <link href="../App_Themes/样式表/登录样式.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 88px;
        }
        .auto-style2 {
            text-align: right;
            width: 88px;
        }
    </style>
</head>
<body style="background-image:url(../Image/10.jpg)">
    <form id="form1" runat="server">
        <div class="shell">
            <h3 class="title" style="font-size:50px">Get Back Pwd</h3>
            <table style="border-collapse:collapse">
                <tr>
                    <td  class="auto-style1">用户名：</td>
                    <td><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="rfvName" ControlToValidate="txtName" runat="server" Display="Dynamic" ForeColor="Red" ErrorMessage="必填"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="auto-style1">邮箱：</td>
                    <td><asp:TextBox ID="txtEmail" runat ="server" ></asp:TextBox> </td>
                    <td><asp:RequiredFieldValidator ID="rfvEmail" runat="server" Display="Dynamic" ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="必填"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="tdright" colspan="2">
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="邮箱格式不正确"
                             ControlToValidate="txtEmail"  Display="Dynamic" ForeColor="Red" 
                              ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="tdright " colspan="2">
                        <asp:Button ID="brnResetPwd" runat="server" Text="找回密码" OnClick="brnResetPwd_Click" />
                    </td>
                </tr>
            </table>
            <div class="Remember">
                 <lable colspan="2" class="Password">找回密码，需要验证邮箱！</lable>
                 <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
            </div>

        </div>
    </form>
</body>

</html>
