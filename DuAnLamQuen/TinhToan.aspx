<%@ Page Language="C#" AutoEventWireup="true"  Inherits="DuAnLamQuen.TinhToan" %>

<!DOCTYPE html>
<script runat="server">

    protected void btnTinh_Click(object sender, EventArgs e)
    {
        lbTinhToan.Text = "1+2 = " + (1 + 2);
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnTinh" runat="server" Text="Button" OnClick="btnTinh_Click" />
            <br />
            <br />

            <asp:Label ID="lbTinhToan" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
