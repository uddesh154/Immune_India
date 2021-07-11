<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ParentHome.aspx.cs" Inherits="WebApplication7.ParentHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Parent Home</title>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <style type="text/css">
        .auto-style1 {
            width: 585px;
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
            <b>Welcome!!!</b>
        </div>
     <table style="width:100%;" border="1">
         <th>Vaccine</th>
         <th class="auto-style1">Duration</th>
         <th>Status</th>
         <tr>
             <td>BCG</td>
             <td class="auto-style1">within 24 hrs</td>
             <td>
                 <asp:Label ID="BCG" runat="server" Text="-"></asp:Label>
             </td>
         </tr>
         <tr>
             <td>Oral Polio</td>
             <td class="auto-style1">within 1st week</td>
             <td>
                 <asp:Label ID="Polio" runat="server" Text="-"></asp:Label>
             </td>
         </tr>
         <tr>
             <td>Rotavirus</td>
             <td class="auto-style1">In 4th month</td>
             <td>
                 <asp:Label ID="Rotavirus" runat="server" Text="-"></asp:Label>
             </td>
         </tr>
          <tr>
             <td>Hepatatis A</td>
             <td class="auto-style1">In 12th month</td>
             <td>
                 <asp:Label ID="hepatatis" runat="server" Text="-"></asp:Label>
             </td>
         </tr>
          <tr>
             <td>Influanzae</td>
             <td class="auto-style1">within 10 year</td>
             <td>
                 <asp:Label ID="influe" runat="server" Text="-"></asp:Label>
             </td>
         </tr>
     </table>
    </form>
     </body>
</html>
