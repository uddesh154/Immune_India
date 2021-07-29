<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vaccinate.aspx.cs" Inherits="WebApplication7.vaccinate" %>

<!DOCTYPE html>
<html>

<head runat="server">
    <title></title>
    <style type="text/css">
        table {
            font-family: serif;
            font-size: large;
        }
        #form1 {
            margin-left: 0px;
        }
        .auto-style1 {
            height: 66px;
        }
        .auto-style2 {
            height: 65px;
        }
        .auto-style3 {
            height: 68px;
        }
        .auto-style4 {
            margin-left: 37px;
        }
        .auto-style5 {
            width: 51%;
            margin-top: 60px;
        }
        .auto-style6 {
            margin-left: 64px;
        }
    </style>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-dark bg-dark">
        <a class="navbar-brand"><b style="font-family: Serif; font-size: x-large; font-weight: bold; margin-left: 50px;">Immune India</b></a>
        <a href="Hospitalhome.aspx" class="btn btn-outline-success my-2 my-sm-0" type="submit" style="margin-left: 1000px">Back</a>
        <a href="Default.aspx" class="btn btn-outline-success my-2 my-sm-0" type="submit" style="margin-right: 50px">LogOut</a>
    </nav>
     <div class="auto-style17" style="font-family: serif; font-size: xx-large; font-weight: bold; text-decoration: blink; background-color: #FFFFFF; color: #000000;" >

 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vaccinate&nbsp;<i class="fas fa-tint"></i></div>
        <table style="margin-right: 100px; margin-left: 510px; " class="auto-style5">

            <tr>
                <td class="auto-style1">Certificate ID
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" BackColor="#00CC00" CssClass="auto-style6" Height="31px" OnClick="Button2_Click" Text="Verify" Width="85px" />
                    <asp:Label ID="Errorlabel" runat="server" ForeColor="Red"></asp:Label>
                </td>

            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Parent email" Visible="False"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>

            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Mobile" Visible="False"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid Mobile no" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>

            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Text="Vaccine" Visible="False"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Visible="False">
                 
                    </asp:DropDownList>
                </td>
            </tr>
              <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Date" Visible="False"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Date" Visible="False"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" BackColor="#00CC00" BorderColor="#00CC00" BorderStyle="Solid" CssClass="auto-style4" OnClick="Button1_Click" Text="OK" Visible="False" />
                &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="done1" runat="server" ForeColor="#006600"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
