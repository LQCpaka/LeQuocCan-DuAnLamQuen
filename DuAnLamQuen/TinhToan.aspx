﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TinhToan.aspx.cs" Inherits="DuAnLamQuen.Hello" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="w-50 m-auto">
            <%--Nhập Họ Tên: <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
    <br />
    <br />
    <asp:Label ID="lbChao" runat="server" Text="xin chào" ForeColor="Yellow"></asp:Label>--%>
            <div class="form-group row">
                <asp:Label ID="lbSo1" runat="server" CssClass="col-sm-2 col-form-label">Nhập Số 1</asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtNhapSoMot" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vfvSo1" ControlToValidate="txtNhapSoMot" runat="server" ErrorMessage="Chưa Nhập Số 1" Display="Dynamic">(*)</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvSo1" runat="server" ControlToValidate="txtNhapSoMot" ErrorMessage="Số 1 không hợp lệ" Operator="DataTypeCheck" Type="Double">(*)</asp:CompareValidator>
                </div>
            </div>
            <div class="form-group row">
                <asp:Label ID="lbSo2" runat="server" CssClass="col-sm-2 col-form-label">Nhập Số 2</asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtNhapSoHai" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vfvSo2" ControlToValidate="txtNhapSoHai" runat="server" ErrorMessage="Chưa Nhập Số 2" Display="Dynamic">(*)</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvSo2" runat="server" ControlToValidate="txtNhapSoHai" ErrorMessage="Số 1 không hợp lệ" Operator="DataTypeCheck" Type="Double">(*)</asp:CompareValidator>

                </div>
            </div>
            <asp:ValidationSummary ID="vTongHopLoi" ShowMessageBox="true" runat="server" />
            <asp:Label ID="lbThongBao" runat="server" Text=""></asp:Label>
            <div>
                <asp:Button ID="btnCong" runat="server" Text="Cộng" CssClass="btn btn-primary" OnClick="btnCong_Click" />
                <asp:Button ID="btnTru" runat="server" Text="Trừ" CssClass="btn btn-primary" OnClick="btnTru_Click" />
                <asp:Button ID="btnNhan" runat="server" Text="Nhân" CssClass="btn btn-primary" OnClick="btnNhan_Click" />
                <asp:Button ID="btnChia" runat="server" Text="Chia" CssClass="btn btn-primary" OnClick="btnChia_Click" />
            </div>


            <div class="form-group row">
                <asp:Label ID="Label1" runat="server" CssClass="col-sm-2 col-form-label">Kết Quả</asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtKetQua" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
        </div>



    </form>
</body>
</html>
