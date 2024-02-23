<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MinhHoa.aspx.cs" Inherits="DuAnLamQuen.MinhHoa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Chọn Ngành <select id="ddlNganh" name="ddlNganh" runat="server">
                <option></option>

            </select>
            <br />
            <br />
            <asp:Button ID="btnGui" runat="server" Text="Button" OnClick="btnGui_Click" 
                OnClientClick="Confirm"/>
            <br />
            <br />
            <asp:Label ID="lbKetQua" runat="server" Text="" ForeColor="#333300"></asp:Label>
        </div>
    </form>
</body>
</html>
