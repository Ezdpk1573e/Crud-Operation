﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin panel.aspx.cs" Inherits="Employee__Details_2.Admin_Panel.Admin_panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style3 {
            width: 184px;
            height: 41px;
        }
        .auto-style4 {
            height: 41px;
        }
        .auto-style5 {
            text-decoration: underline;
        }
        .auto-style2 {
            width: 184px;
        }
        .auto-style1 {
            width: 100%;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <h2></h2>
                </td>
                <td class="auto-style4">
                    <h2><em>
                    <strong>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text="Student Details"></asp:Label>
                    </strong>
                    </em></h2>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Enter Name*</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="167px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Enter Address*</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="170px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Enter City*</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="166px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Delete" Width="51px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Enter ID</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="168px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="View" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" BorderWidth="5px" NavigateUrl="~/Login Page.aspx">Back to Admit Login</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink2" runat="server" BorderWidth="5px" NavigateUrl="~/Data View.aspx" Width="82px">Show Data</asp:HyperLink>
                </td>
            </tr>
        </table>
        </form>
</body>
</html>
