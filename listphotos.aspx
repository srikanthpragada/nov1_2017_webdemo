<%@ Page Language="C#" %>
<%@ Import Namespace="System.IO" %>


<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        string path = Request.PhysicalApplicationPath + "photos";
        DirectoryInfo dinfo = new DirectoryInfo(path);
        string output = "";
        foreach(FileInfo finfo in  dinfo.GetFiles())
        {
           output += string.Format("<img title='{0}' width='200px' height='200px' alt='{0}' src='photos/{0}' /><p/>", finfo.Name);
        }
        lblPhotos.Text = output;
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
      <a href="uploadphoto.aspx">Upload Photo</a>
      <h2>List Of Photos</h2>
      <asp:Label ID="lblPhotos" runat="server" Text=""></asp:Label>
  </form>
</body>
</html>
