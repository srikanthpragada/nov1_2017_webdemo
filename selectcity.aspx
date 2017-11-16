<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnSave_Click(object sender, EventArgs e)
    {
        HttpCookie c = new HttpCookie("city", ddlCity.SelectedItem.Value);
        c.Expires = DateTime.Today.AddDays(7);
        Response.Cookies.Add(c);
        Response.Redirect("movies.aspx");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
  Select City :
       <asp:DropDownList ID="ddlCity" runat="server">
           <asp:ListItem>Vizag</asp:ListItem>
           <asp:ListItem>Hyderabad</asp:ListItem>
           <asp:ListItem>Chennai</asp:ListItem>
           <asp:ListItem>Bangalore</asp:ListItem>
      </asp:DropDownList>
      <p />
      <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
  </form>
</body>
</html>
