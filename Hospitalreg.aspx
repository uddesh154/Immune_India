<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hospitalreg.aspx.cs" Inherits="WebApplication7.Hospitalreg" %>

<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <title></title>  
    <style type="text/css">
        .auto-style2 {
            height: 463px;
            width: 649px;
            margin-left: 519px;
            margin-top: 107px;
        }
        .auto-style3 {
            height: 29px;
            width: 323px;
        }
        .auto-style4 {
            width: 323px;
        }
        table{
           font-family:serif;
           font-size:large;

        }
        .auto-style6 {
            width: 182px;
        }
    </style>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>  
<body>  
   <nav class="navbar navbar-dark bg-dark">
  <a class="navbar-brand"><b style="font-family: Serif; font-size: x-large; font-weight: bold; margin-left:50px;">Immune India</b></a>
              <a href="Adminhome.aspx" class="btn btn-outline-success my-2 my-sm-0" type="submit" style="margin-left: 1000px">Back</a>
    <a href="Default.aspx" class="btn btn-outline-success my-2 my-sm-0" type="submit"  style="margin-right: 50px">LogOut</a>
</nav>
    <div class="auto-style17" style="font-family: serif; font-size: xx-large; font-weight: bold; text-decoration: blink; background-color: #FFFFFF; color: #000000;" >
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hospital Registration  <i class="fas fa-hospital"></i>
</div>
    <form id="form1" runat="server">  
        <div>  
            <table class="auto-style2">  
                <tr>  
                    <td class="auto-style6" >Name :
                        </td>
                    <td class="auto-style3">  
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
                    </td>  
  
               </tr>  
                <tr>  
                    <td class="auto-style6">Password</td>  
                     <td class="auto-style4"> <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td>  
                </tr>  
                
                <tr>  
                    <td class="auto-style6">Location</td>  
                    <td class="auto-style4">  
                        <asp:DropDownList ID="DropDownList1" runat="server">  
                            <asp:ListItem Text="Select City" Value="select" Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="Bangalore" Value="Bangalore"></asp:ListItem>  
                            <asp:ListItem Text="Pune" Value="Pune"></asp:ListItem>  
                            <asp:ListItem Text="Mumbai" Value="Mumbai"></asp:ListItem>  
                        </asp:DropDownList>  
                    </td>  
                </tr>  
                
                <tr>  
                    <td class="auto-style6">Email-Id</td>  
                    <td class="auto-style4">  
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>  
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter valid Email" ForeColor="Red" ControlToValidate="TextBox4" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>  
                </tr>  
                <tr>  
                    <td class="auto-style6">  
                        <asp:Button ID="Button1" runat="server" Text="Register" CssClass="auto-style21" Height="48px" Width="153px" BackColor="#33CC33" BorderStyle="Solid" BorderColor="#999999" style="margin-left: 43px" OnClick="Button1_Click"/>  
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name], [password], [location], [emailID] FROM [Hospital]"></asp:SqlDataSource>
                        
                    </td>  
                    <td>
                        <asp:Label ID="Errorlabel" runat="server" BackColor="White" BorderColor="White" ForeColor="#CC0000"></asp:Label>
                    </td>
                </tr>  
            </table>  
        </div>  
    </form>  
</body>  
</html> 
