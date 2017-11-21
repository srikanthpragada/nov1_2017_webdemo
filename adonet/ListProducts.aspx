<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Products List</title>
</head>
<body>
  <form id="form1" runat="server">
  <h2>List Of Products</h2> 
      <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
           Width="100%"
           AutoGenerateColumns="False" DataSourceID="sdsProducts" PageSize="5">
          <Columns>
              <asp:BoundField DataField="prodid" HeaderText="ID" />
              <asp:BoundField DataField="prodname" HeaderText="Name"/>
              <asp:BoundField DataField="price" HeaderText="Price"
                  DataFormatString="{0:#####}"
                  ItemStyle-HorizontalAlign="Right" />
              <asp:BoundField DataField="qoh" HeaderText="Quantity" />
              <asp:BoundField DataField="catcode" HeaderText="Category" />
          </Columns>
          <HeaderStyle BackColor="Blue" Font-Bold="True" ForeColor="White" />
      </asp:GridView>
      <asp:SqlDataSource ID="sdsProducts" runat="server" 
          ConnectionString="<%$ ConnectionStrings:localdb %>" 
          SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>
  </form>
</body>
</html>
