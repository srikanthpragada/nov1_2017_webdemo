<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        List<string> names = Session["names"] as List<String>;
        if(names == null)
        {
            names = new List<string>();
            Session.Add("names", names);
        }
        names.Add(txtName.Text);
        lblMsg.Text = "Name added!";
    }

    protected void lbList_Click(object sender, EventArgs e)
    {
        List<string> names = Session["names"] as List<String>;
        if (names == null)
        {
            lblMsg.Text = "No Names Found!";
            return;
        }

        lblMsg.Text = "";
        foreach (string n in names)
            lblMsg.Text += n + "<br/>";
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        Name :
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <p />
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
        <p />
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
        <p />
        <asp:LinkButton ID="lbList" runat="server" OnClick="lbList_Click">List Names</asp:LinkButton>
    </form>
</body>
</html>
