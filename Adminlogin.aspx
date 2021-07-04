<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="WebApplication7.Adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <style>
body{

}
.auto-style3 {
height: 49px;
}
.auto-style6 {
height: 69px;
margin-left:50px;
width: 178px;
font-family:Georgia, 'Times New Roman', Times, serif;
font-size:x-large;
font-weight:bold;

}
.auto-style12 {
height: 76px;
width: 178px;
font-family:Georgia, 'Times New Roman', Times, serif;
font-size:x-large;
font-weight:bold;
}
.auto-style13 {
height: 76px;
width: 473px;
}
.auto-style14 {
height: 69px;
margin-left: 50px;
width: 473px;
}
.auto-style17 {
top: 85px;
position: relative;
left: -22px;
}
.auto-style18 {
width: 42%;
height: 183px;
                margin-left: 457px;
            }
.auto-style19 {
height: 96px;
width: 178px;
}
.auto-style21 {
margin-left: 40px;
margin-top: 6px;
font-family:serif;
font-size:large;
font-weight:bold;
}
            .auto-style22 {
                height: 96px;
                width: 473px;
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Admin Login  <i class="fas fa-user-lock"></i>
</div>
<table style="margin-top:200px; background-color: #FFFFFF; border-spacing: 0px;" class="auto-style18">
<tr>
<td class="auto-style12" style="background-color: #000000; font-family: serif; color: #FFFFFF;">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AdminId&nbsp;</td>
<td class="auto-style13" draggable="true" style="background-color: #000000">
&nbsp;<asp:TextBox ID="UserId" runat="server" Height="32px" Width="234px"></asp:TextBox>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" BackColor="White" ControlToValidate="UserId" CssClass="auto-style3" ErrorMessage="Please enter valid ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
</td>
</tr>
<tr>
<td class="auto-style6" style="background-color: #000000; color: #FFFFFF; font-family: serif;">
    &nbsp;&nbsp;&nbsp;&nbsp; Password&nbsp;</td>
<td class="auto-style14" style="background-color: #000000">
&nbsp;<asp:TextBox ID="Password" runat="server" Height="32px" Width="234px" TextMode="Password"></asp:TextBox>
    </td>

</tr>

<tr>
<td class="auto-style19">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ID], [password] FROM [Admin]"></asp:SqlDataSource>
    </td>
<td class="auto-style22">
<asp:Button ID="login" runat="server" Text="LogIn" OnClick="login_Click" CssClass="auto-style21" Height="48px" Width="153px" BackColor="#33CC33" BorderStyle="Solid" BorderColor="#999999" />
    <asp:Label ID="Errorlabel" runat="server" ForeColor="#CC0000"></asp:Label>
</td>

</tr>



</table>
</form>
</body>

</html>
