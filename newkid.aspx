<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newkid.aspx.cs" Inherits="WebApplication7.newkid" %>

<!DOCTYPE html>

<head runat="server">  
    <title></title>  
    <style type="text/css">
        table{
           font-family:serif;
           font-size:large;
           margin-left:510px;
        }
        .auto-style17 {
            height: 109px;
            width: 1513px;
        }
        .auto-style18 {
            width: 61%;
            height: 869px;
            margin-right: 0px;
            margin-top: 0px;
            margin-left: 510px;
        }
        .auto-style19 {
            margin-left: 39px;
        }
        .auto-style20 {
            height: 66px;
        }
        .auto-style21 {
            height: 68px;
        }
        .auto-style22 {
            height: 67px;
        }
        .auto-style23 {
            height: 180px;
        }
        .auto-style24 {
            width: 294px;
            height: 112px;
        }
        .auto-style25 {
            height: 73px;
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
        <div class="auto-style17" style="font-family: serif; font-size: xx-large; font-weight: bold; text-decoration: blink; background-color: #FFFFFF; color: #000000;" >

 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kid Registration &nbsp;<i class="fas fa-baby"></i></div>
    <form id="form1" runat="server">  
     

    <table class="auto-style18">
        
            <tr>  
                    <td class="auto-style20" >First Name 
                        </td>
                    <td class="auto-style20">  
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
                    </td>  
  
               </tr> 
        <tr>  
                    <td class="auto-style21" >Middle Name 
                        </td>
                    <td class="auto-style21">  
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>  
                    </td>  
  
               </tr> 
        <tr>  
                    <td class="auto-style20" >Last Name 
                        </td>
                    <td class="auto-style20">  
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>  
                    </td>  
  
               </tr> 
        <tr>  
                    <td class="auto-style22" >Mother Name 
                        </td>
                    <td class="auto-style22">  
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>  
                    </td>  
  
               </tr>
        <tr>  
                    <td class="auto-style21" >Date 
                        </td>
                    <td class="auto-style21">  
                        <asp:TextBox ID="TextBox5" runat="server" TextMode="Date"></asp:TextBox>  
                    </td>  
  
               </tr> 
         <tr>  
                    <td class="auto-style20" >Time 
                        </td>
                    <td class="auto-style20">  
                        <asp:TextBox ID="TextBox6" runat="server" TextMode="Time"></asp:TextBox>  
                    </td>  
  
               </tr> 
        <tr>
             <td>Gender</td>  
                    <td>  
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="auto-style19">  
                            <asp:ListItem>Male</asp:ListItem>  
                            <asp:ListItem>Female</asp:ListItem>  
                        </asp:RadioButtonList>  
                    </td>
        </tr>
         <tr>  
                    <td class="auto-style20" >Parent Email 
                        </td>
                    <td class="auto-style20">  
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>  
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter valid email " ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>  
  
               </tr> 
         <tr>
                <td class="auto-style22">Mobile
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid Mobile no" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>

            </tr>
        <tr>
            <td class="auto-style23">Address
            </td>
               <td class="auto-style23">

                   <textarea id="TextArea1" class="auto-style24" name="S1"></textarea></td>
        </tr>
        <tr>
           <td class="auto-style25" >Password
                        </td>
                    <td class="auto-style25">  
                        <asp:TextBox ID="TextBox8" runat="server" TextMode="Password"></asp:TextBox>  
                    </td> 
        </tr>
        <tr>
<td class="auto-style19"></td>
<td class="auto-style22">
<asp:Button ID="register" runat="server" Text="Register" OnClick="login_Click" CssClass="auto-style21" Height="48px" Width="153px" BackColor="#33CC33" BorderStyle="Solid" BorderColor="#999999" />
</td>

</tr>
          
        
       
       
    </table>
         </form>

</body>  
</html> 
