<%@ Page Language="C#" %>
<%@ import Namespace="System.Data.SqlClient"%>
<%@ import Namespace="System.Data"%>

<!DOCTYPE html>

<script runat="server">

    protected void btnGet_Click(object sender, EventArgs e)
    {

        try
        {
            using (SqlConnection con = new SqlConnection(Database.ConnectionString))
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("select * from products where prodid = @prodid", con);
                cmd.Parameters.AddWithValue("@prodid", txtId.Text);

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    txtName.Text = dr["prodname"].ToString();
                    txtPrice.Text = dr["price"].ToString();
                    lblMsg.Text = "";
                }
                else
                {
                    lblMsg.Text = "Sorry! Product Id Not Found!";
                    txtName.Text = "";
                    txtPrice.Text = "";
                }

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
        <h2>Product Details</h2>
        Product Id
        <br />
        <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
        <asp:Button ID="btnGet" runat="server" Text="Get" OnClick="btnGet_Click" />
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
        <p />
        Name
        <br />
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <p />
        Price
        <br />
        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
        <p />
       
    </form>
</body>
</html>
