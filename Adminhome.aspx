<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminhome.aspx.cs" Inherits="WebApplication7.Vaccinatorlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 94%;
            height: 663px;
        }
        .auto-style2 {
            height: 611px;
        }
        .auto-style3 {
            height: 611px;
            width: 645px;
        }
        .auto-style4 {
            width: 645px;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<body>
    <nav class="navbar navbar-dark bg-dark">
  <a class="navbar-brand"><b style="font-family: Serif; font-size: x-large; font-weight: bold; top: 10px; left: 10px">Immune India</b></a>
    
    <a href="Default.aspx" class="btn btn-outline-success my-2 my-sm-0" type="submit" id="logout" style="margin-left: 150px">LogOut</a>
</nav>
    <form id="form1" runat="server">
        <div>
        </div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style2"></td>
          
        </tr>
        <tr>
            
            <td class="auto-style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &emsp;&emsp;&emsp;&emsp;   
                <asp:Button ID="addadmin" runat="server" Text="&#43; Admin" OnClick="addadmin_Click" BackColor="#00CC00" BorderColor="#006600" BorderStyle="Solid"/>
            </td>
            <td>
                &emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="addhospital" runat="server" Text="&#43; Hospital" BackColor="#00CC00" BorderColor="#006600" BorderStyle="Solid" OnClick="addhospital_Click" />
            </td>
        </tr>

    </table>
    </form>
    </body>
</html>
