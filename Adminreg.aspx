﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminreg.aspx.cs" Inherits="WebApplication7.Adminreg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <style type="text/css">
        .auto-style3 {
            height: 49px;
        }
        .auto-style6 {
            height: 13px;
        }
        .auto-style7 {
            height: 29px;
        }
        .auto-style10 {
            height: 31px;
        }
        .auto-style12 {
            height: 59px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Admin Login</div>
    <table style="width: 58%; height: 294px; margin-left: 216px; margin-top: 107px;">
        <tr>
            <td class="auto-style12">
                <asp:Label ID="lbluser" runat="server" Text="UserId"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="UserId" runat="server" Height="34px" Width="237px" OnTextChanged="UserId_TextChanged"></asp:TextBox>
                <asp:RegularExpressionValidator ID="Errormsg" runat="server" BackColor="White" ControlToValidate="UserId" CssClass="auto-style3" ErrorMessage="Please enter valid ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="lblpassword" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="pass" runat="server" Height="30px" Width="239px"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="registration" runat="server" Text="Register" OnClick="registration_Click" />
            </td>
           
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style10">
                &nbsp;</td>
          
        </tr>

    </table>
    </form>
    </body>
</html>