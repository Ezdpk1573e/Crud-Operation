<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User panel.aspx.cs" Inherits="Employee__Details_2.User_Panel.User_panel" %>

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
        .auto-style6 {
            width: 184px;
            height: 34px;
        }
        .auto-style7 {
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3"></td>
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
                    <asp:TextBox ID="TextBox1" runat="server" Width="169px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Valid Name" ForeColor="Red"></asp:RequiredFieldValidator>
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Valid Address" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Enter City*</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="168px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Valid City" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" BackColor="Yellow" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">
                    <asp:HyperLink ID="HyperLink1" runat="server" BorderWidth="5px" NavigateUrl="~/Login Page.aspx">Back to User Login</asp:HyperLink>
                </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
