<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        string filename = Request.MapPath("photos/" + FileUpload1.FileName);
        // Response.Write(filename);
        FileUpload1.SaveAs(filename);
        lblMsg.Text = "Uploaded [" +  FileUpload1.FileName + "] Successfully";
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload Photo</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Upload Photo</h1>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <p />
        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
        <p />
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
        <p />
        <a href="listphotos.aspx">List Photos</a>
    </form>
</body>
</html>
