<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    // Event handler for click event of btnAdd 
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        double num1 = Double.Parse(txtFirst.Text);
        double num2 = Double.Parse(txtSecond.Text);
        double result = num1 + num2;

        if (cbRound.Checked)
            result = Math.Round(result);

        lblSum.Text = result.ToString();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add</title>
    <style>
        .result {
            font-size: 20pt;
            font-weight: bold;
            color: red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Add</h1>
        First Number<br />
        <asp:TextBox ID="txtFirst" runat="server"></asp:TextBox>
        <p />
        Second Number
        <br />
        <asp:TextBox ID="txtSecond" runat="server"></asp:TextBox>
        <p />
        <asp:CheckBox ID="cbRound" runat="server" />Round Result
        <p />
        <asp:Button ID="btnAdd" runat="server" Text="Add Numbers" OnClick="btnAdd_Click" />
        <p />
        <asp:Label ID="lblSum" CssClass="result" runat="server" Text=""></asp:Label>

    </form>
</body>
</html>
