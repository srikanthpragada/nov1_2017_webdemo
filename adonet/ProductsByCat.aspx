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
        Category
        <asp:DropDownList ID="ddlCategories" runat="server" AutoPostBack="true" DataSourceID="sdsCategories" DataTextField="catdesc" DataValueField="catcode"></asp:DropDownList>
        <p />
        <asp:SqlDataSource ID="sdsCategories" runat="server" ConnectionString="<%$ ConnectionStrings:localdb %>" SelectCommand="SELECT * FROM [categories]"></asp:SqlDataSource>

        <asp:DataList ID="dlProducts" runat="server" DataSourceID="sdsProducts">
            <ItemTemplate>
                <%# Eval("prodname") %>
                <br />
                <%# Eval("price") %>
            </ItemTemplate>
            <SeparatorTemplate>
                <p />
            </SeparatorTemplate>
        </asp:DataList>

        <asp:SqlDataSource ID="sdsProducts" runat="server"
            ConnectionString="<%$ ConnectionStrings:localdb %>"
            SelectCommand="SELECT * FROM [products] WHERE ([catcode] = @catcode)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlCategories" Name="catcode" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
