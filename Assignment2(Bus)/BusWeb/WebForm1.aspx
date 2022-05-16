<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BusWeb.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
        <center>
    <form id="form2" runat="server">

    <table style="background-color:Grey; color:white; padding:10px;">
        
        <tr>
            <td></td>
            <td>ect ID="Boarding P<asp:DropDownList runat="server" Height="22px" Width="155px">
                <asp:ListItem>select</asp:ListItem>
                <asp:ListItem>MUM</asp:ListItem>
                <asp:ListItem>PUN</asp:ListItem>
                <asp:ListItem>HYD</asp:ListItem>
                <asp:ListItem>BGL</asp:ListItem>
                <asp:ListItem>CHN</asp:ListItem>
                </asp:DropDownList>
               </td>
    
            </tr>
        <tr>
            <td>Travel Date</td>
            <td><asp:TextBox ID="txtTravelDate" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
        
            <td>Amount</td>
            <td><asp:TextBox ID="txtAmount" runat="server"></asp:TextBox></td>
            </tr>
        <tr>
            <td>Rating</td>
            <td><asp:TextBox ID="txtrating" runat="server"></asp:TextBox></td>
        </tr>
        <tr style="text-align:right">
            <td><asp:Button ID="btnSave" OnClick="btnSave_Click" runat="server" Text="save Match data" /></td>
        </tr>
    </table>
        <div>
        </div>
    </form>
</body>
</html>
