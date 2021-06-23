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
    </style>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<body>
    <nav class="navbar navbar-dark bg-dark">
        <a class="navbar-brand"><b style="font-family: Serif; font-size: x-large; font-weight: bold; margin-left: 50px;">Immune India</b></a>
        <a href="Hospitalhome.aspx" class="btn btn-outline-success my-2 my-sm-0" type="submit" style="margin-left: 1000px">Back</a>
        <a href="Default.aspx" class="btn btn-outline-success my-2 my-sm-0" type="submit" style="margin-right: 50px">LogOut</a>
    </nav>
    <form id="form1" runat="server">
        <table style="width: 100%;">

            <tr>
                <td class="auto-style20">Certificate ID
                </td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td class="auto-style20">Parent Email
                </td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td class="auto-style20">Mobile
                </td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td>Vaccine</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem Text="Select Vaccine" Value="select" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="BCG" Value="BCG"></asp:ListItem>
                        <asp:ListItem Text="Booster" Value="Booster"></asp:ListItem>
                        <asp:ListItem Text="TT" Value="TT"></asp:ListItem>
                        <asp:ListItem Text="Rota virus" Value="Rota virus"></asp:ListItem>
                        <asp:ListItem Text="Polio" Value="Polio"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
