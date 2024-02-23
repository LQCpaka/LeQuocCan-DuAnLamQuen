<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThongTin.aspx.cs" Inherits="DuAnLamQuen.DangKyThongTin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng Ký Form</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="w-50 m-auto">
            <h2 class="text-center">THÔNG TIN CÁ NHÂN</h2>
            <hr />
            <div class="row mb-2">
                <div class="col-2">
                    Họ Tên
                </div>
                <div class="col-10">
                    <asp:TextBox ID="txtHoTen" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-2">
                    Ngày Sinh
                </div>
                <div class="col-10">
                    <asp:TextBox ID="txtNgaySinh" TextMode="Date" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-10">
                    Giới Tính
                </div>
                <div class="col-8">
                    Nam <asp:RadioButton ID="radNam" Checked="true" runat="server" GroupName="GT" />
                    Nữ <asp:RadioButton ID="radNu" runat="server" GroupName="GT" />
                </div>

            </div>
            <div class="row mb-2">
                <div class="col-2">
                    Trình Độ
                </div>
                <div class="col-10">
                    <asp:DropDownList ID="ddlTtrinhDo" runat="server" CssClass="form-control"></asp:DropDownList>
                </div>

            </div>
            <div class="row mb-2">
                <div class="col-2">
                    Nghề Nghiệp
                </div>
                <div class="col-10">
                    <asp:ListBox ID="lstNgheNghiep" runat="server" CssClass="form-control"></asp:ListBox>
                </div>

            </div>
            <div class="row mb-2">
                <div class="col-2">
                    Hình
                </div>
                <div class="col-10">
                    <asp:FileUpload ID="FHinh" runat="server" CssClass="form-control" />
                </div>

            </div>
            <div class="row mb-2">
                <div class="col-2">
                    Sở Thích
                </div>
                <div class="col-10">
                    <asp:CheckBoxList ID="chckSoThich" runat="server"></asp:CheckBoxList>
                </div>

            </div>
            <div class="row mb-2">

                <div class="col-10">
                    <asp:Button ID="btGui" runat="server" CssClass="btn btn-primary  mr-4" Text="Gửi" OnClick="btGui_Click" />
                    <asp:Button ID="btLamLai" runat="server" CssClass="btn btn-info" Text="Làm Lại" />
                </div>

            </div>
            <div class="row">
                <div class="col-md-12">
                    <asp:Literal ID="lbKetQua" runat="server"></asp:Literal>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
