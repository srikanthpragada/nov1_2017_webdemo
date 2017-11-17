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
        <h2>Session Count : 
  <%
      Response.Write(Application.Get("count"));
  %>
        </h2>
    </form>
</body>
</html>
