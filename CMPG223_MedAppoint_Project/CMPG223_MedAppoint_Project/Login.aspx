<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CMPG223_MedAppoint_Project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 6px;
            color: #0099CC;
        }
        .newStyle2 {
            font-size: 24px;
            font-family: "Arial Narrow";
            text-transform: inherit;
            font-variant: normal;
            font-style: normal;
            font-weight: bold;
            color: #0099CC;
        }
        #form1 {
            width: 431px;
            height: 402px;
        }
        .newStyle3 {
            color: #FF0000;
        }
        .newStyle4 {
            color: #FF0000;
        }
        .newStyle5 {
            font-weight: bold;
            font-size: large;
        }
        .newStyle6 {
            font-weight: lighter;
            font-size: medium;
        }
        .newStyle7 {
            font-weight: bolder;
        }
        .newStyle8 {
            background-color: #CCCCCC;
        }
        .newStyle9 {
            color: #00CCFF;
        }
        .newStyle10 {
            font-family: Arial;
            font-size: x-large;
            font-weight: bolder;
            font-style: normal;
            color: #00CCFF;
        }
        .newStyle11 {
            text-decoration: underline;
            color: #00CCFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="newStyle8">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" CssClass="newStyle10" Text="Welcome to MedAppoint!"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Enter Email Address:"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtEmail" runat="server" Height="21px" Width="165px"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" CssClass="newStyle3" ErrorMessage="Please Enter Correct Format of Email*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email is Required*</asp:RegularExpressionValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Enter Password:"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPassword" runat="server" Height="21px" Width="165px"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="newStyle4" ErrorMessage="Please Enter the Correct Format of Password(1 uppercase )">Password is Required*</asp:RequiredFieldValidator>
        <br />
        <br />
&nbsp;&nbsp;
        <asp:Button ID="btnLogin" runat="server" BackColor="#0066CC" BorderColor="#0066CC" BorderStyle="Groove" CssClass="newStyle7" ForeColor="White" Height="47px" OnClick="btnLogin_Click" Text="Login" Width="279px" />
        <br />
&nbsp;
        <br />
&nbsp;&nbsp;
        <asp:Label ID="lblDisplay" runat="server"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp; Don&#39;t have an account?<asp:HyperLink ID="HyperLink1" runat="server" CssClass="newStyle11">Sign Up</asp:HyperLink>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </form>
</body>
</html>
