<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication7.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <style>
body{

}
.auto-style6 {
height: 69px;
margin-left:50px;
width: 228px;
font-family:Georgia, 'Times New Roman', Times, serif;
font-size:x-large;
font-weight:bold;

}
.auto-style12 {
height: 76px;
width: 228px;
font-family:Georgia, 'Times New Roman', Times, serif;
font-size:x-large;
font-weight:bold;
}
.auto-style13 {
height: 76px;
width: 496px;
}
.auto-style14 {
height: 69px;
margin-left: 50px;
width: 496px;
}
.auto-style17 {
top: 85px;
position: relative;
left: -22px;
}
.auto-style18 {
width: 58%;
height: 183px;
                margin-left: 432px;
            }
.auto-style19 {
height: 96px;
width: 228px;
}
            .auto-style22 {
                height: 96px;
                width: 496px;
            }
            .auto-style23 {
                margin-left: 6px;
            }
        </style>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<body>
      <nav class="navbar navbar-dark bg-dark">
  <a class="navbar-brand"><b style="font-family: Serif; font-size: x-large; font-weight: bold; margin-left:50px;">Immune India</b></a>
          <a href="Default.aspx" class="btn btn-outline-success my-2 my-sm-0" type="submit" style="margin-right: 95px">Back</a>
  
</nav>
<form id="form2" runat="server">
<div class="auto-style17" style="font-family: serif; font-size: xx-large; font-weight: bold; text-decoration: blink; background-color: #FFFFFF; color: #000000;" >
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Parent Login  <i class="fas fa-user-lock"></i>
</div>
<table style="margin-top:200px; background-color: #FFFFFF; border-spacing: 0px;" class="auto-style18">
<tr>
<td class="auto-style12" style="background-color: #000000; font-family: serif; color: #FFFFFF;">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ID&nbsp;</td>
<td class="auto-style13" draggable="true" style="background-color: #000000">
&nbsp;<asp:TextBox ID="UserId" runat="server" Height="32px" Width="234px"></asp:TextBox>
</td>
</tr>
<tr>
<td class="auto-style6" style="background-color: #000000; color: #FFFFFF; font-family: serif;">
    &nbsp;&nbsp;&nbsp;&nbsp; Password&nbsp;</td>
<td class="auto-style14" style="background-color: #000000">
&nbsp;    <asp:TextBox ID="Password" runat="server" Height="32px" Width="234px" TextMode="Password"></asp:TextBox>
    </td>

</tr>

<tr>
<td class="auto-style19">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [KidRecords]"></asp:SqlDataSource>
    </td>
<td class="auto-style22">
    <asp:Button ID="parentlogin" runat="server" BackColor="#00CC00" CssClass="auto-style23" Height="50px" Text="Login" Width="87px" OnClick="parentlogin_Click" />
    <asp:Label ID="Errorlabel" runat="server" ForeColor="#CC0000"></asp:Label>
</td>

</tr>



</table>
</form>
</body>

</html>