<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            for (int i = 1; i <= 31; i++)
                ddlDay.Items.Add(i.ToString());

            for (int i = 1; i <= 12; i++)
                ddlMonth.Items.Add(i.ToString());

            for (int i = 1960; i <= DateTime.Now.Year; i++)
                ddlYear.Items.Add(i.ToString());
        }
    }

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        try
        {
            DateTime dob = new DateTime(
                Int32.Parse(ddlYear.SelectedItem.Value),
                Int32.Parse(ddlMonth.SelectedItem.Value),
                Int32.Parse(ddlDay.SelectedItem.Value));

            TimeSpan ts = DateTime.Today.Subtract(dob);
            int years = ts.Days / 365;
            int months = ts.Days % 365 / 30;
            int days = ts.Days % 365 % 30;

            lblAge.Text = String.Format("{0} Years {1} Months and {2} Days Old!", 
                 years, months, days);
        }
        catch(ArgumentOutOfRangeException ex)
        {
            lblAge.Text = "Sorry! Invalid Date. Please select a valid date!";
        }


    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Age Calculation</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Age Calculation</h1>
        Day
        <asp:DropDownList ID="ddlDay" runat="server"></asp:DropDownList>
        Month
        <asp:DropDownList ID="ddlMonth" runat="server"></asp:DropDownList>
        Year
        <asp:DropDownList ID="ddlYear" runat="server"></asp:DropDownList>
        <p />
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
        <p />
        <asp:Label ID="lblAge" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
