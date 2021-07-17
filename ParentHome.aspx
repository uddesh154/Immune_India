<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ParentHome.aspx.cs" Inherits="WebApplication7.ParentHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Parent Home</title>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <style type="text/css">
        table, th, td {
        border: 1px solid black;
        margin-left : 100px;
        margin-right : 100px;
        text-align:center;
         }
        .auto-style2 {
            width: 202px;
        }
        .auto-style3 {
            width: 180px;
        }
        .auto-style5 {
            width: 72%;
            margin-left: 215px;
            margin-top: 119px;
        }
        .auto-style6 {
            width: 369px;
        }
    </style>
</head>
<body>
     <nav class="navbar navbar-dark bg-dark">
  <a class="navbar-brand"><b style="font-family: Serif; font-size: x-large; font-weight: bold; margin-left:50px;">Immune India</b></a>
    <a href="Default.aspx" class="btn btn-outline-success my-2 my-sm-0" type="submit"  style="margin-right: 50px">LogOut</a>
</nav>
    <form id="form1" runat="server">
        <div style="font-family: serif; font-size: large">
            <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome!!!</b>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Here is your Kid&#39;s vaccination schedule</div>
     <table class="auto-style5">
         <th class="auto-style3">Vaccine</th>
         <th class="auto-style6">Duration</th>
         <th class="auto-style2">Status</th>
         <tr>
             <td class="auto-style3">BCG</td>
             <td class="auto-style6">&nbsp;&nbsp;&nbsp; within 24 hrs</td>
             <td class="auto-style2">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="BCG" runat="server" Text="-"></asp:Label>
             </td>
         </tr>
         <tr>
             <td class="auto-style3">Oral Polio</td>
             <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; within 1st week</td>
             <td class="auto-style2">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Polio" runat="server" Text="-"></asp:Label>
             </td>
         </tr>
         <tr>
             <td class="auto-style3">Rotavirus</td>
             <td class="auto-style6">&nbsp;&nbsp;&nbsp; In 4th month</td>
             <td class="auto-style2">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Rotavirus" runat="server" Text="-"></asp:Label>
             </td>
         </tr>
          <tr>
             <td class="auto-style3">Hepatatis A</td>
             <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In 12th month</td>
             <td class="auto-style2">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="hepatatis" runat="server" Text="-"></asp:Label>
             </td>
         </tr>
            <tr>
             <td class="auto-style3">Booster</td>
             <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;within 12-23 months</td>
             <td class="auto-style2">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Booster" runat="server" Text="-"></asp:Label>
             </td>
         </tr>
           <tr>
             <td class="auto-style3">TT</td>
             <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;within 4-7 years</td>
             <td class="auto-style2">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="TT" runat="server" Text="-"></asp:Label>
             </td>
         </tr>
          <tr>
             <td class="auto-style3">Influanzae</td>
             <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;within 10 years</td>
             <td class="auto-style2">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="influe" runat="server" Text="-"></asp:Label>
             </td>
         </tr>
         
         
     </table>
    </form>
     </body>
</html>
