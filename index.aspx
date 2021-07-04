<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication7.index" %>

<!DOCTYPE html>  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head id="Head1" runat="server">  
    <title>Send Mail using asp.net</title>  
    <style type="text/css">  
        .auto-style1 {  
            color: #FFFFFF;  
            font-weight: bold;  
            background-color: #3399FF;  
        }   
        .auto-style2 {  
            background-color: #3399FF;  
        }  
    </style>  
</head>  
<body>  
    <form id="form1" runat="server">  
        <div>  
            <table style="border-style: solid; border-color: inherit; border-width: 1px; background-color: #49A3FE;" align="center">  
                <tr>  
                    <td colspan="2" align="center" class="auto-style1">Send Mail with Attachment using asp.net  
                    </td>  
                </tr>  
                <tr>  
                    <td class="auto-style1">From:  
                    </td>  
                    <td>  
                        <asp:TextBox ID="txt_from" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td class="auto-style1">To:  
                    </td>  
                    <td>  
                        <asp:TextBox ID="txtTo" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td class="auto-style1">Subject:  
                    </td>  
                    <td>  
                        <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td class="auto-style1">Attach a file:  
                    </td>  
                    <td>  
                        <asp:FileUpload ID="fileUpload1" runat="server" />  
                    </td>  
                </tr>  
                <tr>  
                    <td valign="top" class="auto-style1">Body:  
                    </td>  
                    <td>  
                        <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" Columns="30" Rows="10"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td class="auto-style2"></td>  
                    <td>  
                        <asp:Button ID="btnSubmit" Text="Send" runat="server" OnClick="btnSubmit_Click" Style="height: 26px" />  
                    </td>  
                </tr>  
            </table>  
        </div>  
    </form>  
</body>  
</html> 
