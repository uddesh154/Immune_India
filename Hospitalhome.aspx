<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminhome.aspx.cs" Inherits="WebApplication7.Vaccinatorlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <style type="text/css">
        .auto-style1 {
            width: 1027px;
            height: 356px;
            margin-top: 91px;
            margin-left: 388px;
        }
        .auto-style3 {
            width: 422px;
        }
        .icon{
            color:#000000;
        }
        .auto-style4 {
            width: 343px;
        }
        .auto-style5 {
            width: 4px;
        }
        a{
            color:#000000;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-dark bg-dark">
  <a class="navbar-brand"><b style="font-family: Serif; font-size: x-large; font-weight: bold; margin-left:50px;">Immune India</b></a>
    
    <a href="Default.aspx" class="btn btn-outline-success my-2 my-sm-0" type="submit" style="margin-right:50px" >LogOut</a>
</nav>
    <form id="form1" runat="server">
        

       
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4"><b style="font-family: serif; font-size: xx-large; font-weight: bold; background-color: #000000; color: #FFFFFF;">&nbsp; Register Kid&nbsp;&nbsp; <br />
                        </b><br /><br />
                        <a href="newkid.aspx"><i class="fas fa-baby fa-9x" style="height: 46px; width: 71px; margin-left: 64px" ></i></a>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3"><b style="font-family: serif; font-size: xx-large; font-weight: bold; background-color: #000000; color: #FFFFFF;">&nbsp; Vaccinate Kid &nbsp; <br />
                        </b><br /><br />
                        <a href="vaccinate.aspx"><i class="fas fa-eye-dropper fa-9x" style="height: 46px; width: 72px; margin-left: 67px" ></i></a>
                    </td>
                </tr>
               
            </table>
    

    </form>
    </body>
</html>
