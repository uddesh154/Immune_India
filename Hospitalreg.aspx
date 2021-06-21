﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hospitalreg.aspx.cs" Inherits="WebApplication7.Hospitalreg" %>

<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <title></title>  
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
        .auto-style2 {
            height: 463px;
            width: 617px;
            margin-left: 377px;
            margin-top: 107px;
        }
        .auto-style3 {
            height: 29px;
            width: 323px;
        }
        .auto-style4 {
            width: 323px;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>  
<body>  
     <nav class="navbar navbar-dark bg-dark">
  <a class="navbar-brand"><b style="font-family: Serif; font-size: x-large; font-weight: bold; top: 10px; left: 10px">Immune India</b></a>
    <a href="Adminhome.aspx" class="btn btn-outline-success my-2 my-sm-0" type="submit" style="margin-left: 150px">Back</a>
    <a href="Default.aspx" class="btn btn-outline-success my-2 my-sm-0" type="submit"  style="margin-left: 350px">LogOut</a>
         
</nav>
    <form id="form1" runat="server">  
        <div>  
            <table class="auto-style2">  
                <tr>  
                    <td class="auto-style1">Name :</td>  
                    <td class="auto-style3">  
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
                    </td>  
  
               </tr>  
                <tr>  
                    <td>Password</td>  
                     <td class="auto-style4"> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>  
                </tr>  
                <tr>  
                    <td>Confirm Password</td>  
                    <td class="auto-style4">  
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td>Location</td>  
                    <td class="auto-style4">  
                        <asp:DropDownList ID="DropDownList1" runat="server">  
                            <asp:ListItem Text="Select City" Value="select" Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="Bangalore" Value="Bangalore"></asp:ListItem>  
                            <asp:ListItem Text="Mysore" Value="Mysore"></asp:ListItem>  
                            <asp:ListItem Text="Hubli" Value="hubli"></asp:ListItem>  
                        </asp:DropDownList>  
                    </td>  
                </tr>  
                <tr>  
                    <td>Gender</td>  
                    <td class="auto-style4">  
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">  
                            <asp:ListItem>Male</asp:ListItem>  
                            <asp:ListItem>Female</asp:ListItem>  
                        </asp:RadioButtonList>  
                    </td>  
               </tr>  
                <tr>  
                    <td>Gmail</td>  
                    <td class="auto-style4">  
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td>  
                        <asp:Button ID="Button1" runat="server" Text="Register" />  
                    </td>  
                </tr>  
            </table>  
        </div>  
    </form>  
</body>  
</html> 
