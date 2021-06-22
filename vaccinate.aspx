<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vaccinate.aspx.cs" Inherits="WebApplication7.vaccinate" %>

<!DOCTYPE html>

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
              <a href="Hospitalhome.aspx" class="btn btn-outline-success my-2 my-sm-0" type="submit" style="margin-left: 1000px">Back</a>
    <a href="Default.aspx" class="btn btn-outline-success my-2 my-sm-0" type="submit"  style="margin-right: 50px">LogOut</a>
</nav>  
    <form id="form1" runat="server">  
        <div>  
            <table class="auto-style1">  
                <tr>  
                    <td>Name :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
                    </td>  
  
               </tr>  
                <tr>  
                    <td>Password</td>  
                     <td> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>  
                </tr>  
                <tr>  
                    <td>Confirm Password</td>  
                    <td>  
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td>City</td>  
                    <td>  
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
                    <td>  
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">  
                            <asp:ListItem>Male</asp:ListItem>  
                            <asp:ListItem>Female</asp:ListItem>  
                        </asp:RadioButtonList>  
                    </td>  
               </tr>  
                <tr>  
                    <td>Gmail</td>  
                    <td>  
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td>  
                        <asp:Button ID="Button1" runat="server" Text="Button" />  
                    </td>  
                </tr>  
            </table>  
        </div>  
    </form>  
</body>  
</html> 
