<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        Username
        <br />
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
            runat="server" 
            ControlToValidate="txtUsername"
            ErrorMessage="Userame is required"></asp:RequiredFieldValidator>
        <p />
        Password
        <br />
        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
             runat="server" 
             ControlToValidate="txtPassword"
             ValidationExpression="[0-9A-Za-z_#]{6,}"
             ErrorMessage="Invalid Password!"></asp:RegularExpressionValidator>
        <p />
        <asp:Button ID="Button1" runat="server" Text="Login" />
    </form>
</body>
</html>
