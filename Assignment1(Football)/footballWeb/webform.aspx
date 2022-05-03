<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webform.aspx.cs" Inherits="footballWeb.webform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <center>
    <form id="form1" runat="server">

    <table style="background-color:Green; color:white; padding:10px;">
        
        <tr>
            <td>Team Name1</td>
            <td><asp:TextBox ID="txtTeamName1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Team Name2</td>
            <td><asp:TextBox ID="txtTeamName2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Match status</td>
            <td><asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></td>
            <asp:ListItem Text="--Select--" value="0"
            </tr>
        <tr>
            <td>Winning Team</td>
            <td><asp:TextBox ID="txtWinningTeam" runat="server"></asp:TextBox></td>
            </tr>
        <tr>
            <td>Points</td>
            <td><asp:TextBox ID="txtPoints" runat="server"></asp:TextBox></td>
        </tr>
        <tr style="text-align:right">
            <td><asp:Button ID="btnSave" OnClick="btnSave_Click" runat="server" Text="save Match data" /></td>
        </tr>
    </table>



        <div>
        </div>
    </form>
        </center>
</body>
</html>
