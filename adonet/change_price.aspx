<%@ Page Language="C#" %>
<%@ import Namespace="System.Data.SqlClient"%>
<%@ import Namespace="System.Data"%>

<!DOCTYPE html>

<script runat="server">

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            using (SqlConnection con = new SqlConnection (Database.ConnectionString))
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("sp_update_price", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@prodid", txtId.Text);
                cmd.Parameters.AddWithValue("@newprice", txtPrice.Text);

                cmd.ExecuteNonQuery();
                lblMsg.Text = "Updates Successfully!";
            }

        }
        catch(Exception ex)
        {
            lblMsg.Text = "Error  : " + ex.Message;
        }


    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Update Price</h2>
        Product Id
        <br />
        <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
        <p />
        New Price
        <br />
        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
        <p />
        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
        <p />
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
