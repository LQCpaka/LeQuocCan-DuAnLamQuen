<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YeuCau.aspx.cs" Inherits="DuAnLamQuen.YeuCau" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Nhập Họ Tên: <input id="txtTen" name="txtTen" type="text" runat="server" />
            <asp:Button ID="Button1" runat="server" Text="Gửi Đi" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
