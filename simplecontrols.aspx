<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Write("Selected Month : " + DropDownList1.SelectedItem.Text);
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
      <asp:Button ID="Button1" runat="server" Text="Button" />
      <p />
      <asp:DropDownList ID="DropDownList1" runat="server" 
          AutoPostBack="true" 
          OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
          <asp:ListItem Value="1" Text="Jan" />
          <asp:ListItem Value="2" Text="Feb" />
          <asp:ListItem Value="3" Text="Mar" />
          <asp:ListItem Value="11">Nov</asp:ListItem>
      </asp:DropDownList>
      <p />
      <asp:CheckBox ID="CheckBox1" runat="server" />CheckBox
  </form>
</body>
</html>
