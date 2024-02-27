<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hello.aspx.cs" Inherits="DuAnLamQuen.Hello1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>WELCOME!</h1>
            Họ Tên <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>
            <br />
            Giới Tính <asp:DropDownList ID="ddlGT" runat="server">
                <asp:ListItem Value="Nam" Enabled="true"></asp:ListItem>
                <asp:ListItem Value="Nữ"></asp:ListItem>
            </asp:DropDownList>
            
            <br />
            <asp:Button ID="btnSubmits" runat="server" Text="Button" OnClick="btnSubmits_Click" />

            <p>
                <asp:Label ID="lbNoiDung" runat="server" Text="Label"></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>
