using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DuAnLamQuen
{
    public partial class DangKyThongTin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Code kkhoi tao du lieu cho  cac dieu khien
            if(!Page.IsPostBack)
            {
                //Khoi tao ddlTrinhDo
                ddlTtrinhDo.Items.Add(new ListItem("Trung Cấp"));
                ddlTtrinhDo.Items.Add(new ListItem("Đại Học"));
                ddlTtrinhDo.Items.Add(new ListItem("Cao Đẳng"));

                //Khoi tao cho lstNgheNghiep
                lstNgheNghiep.Items.Add(new ListItem("Công Nhân"));
                lstNgheNghiep.Items.Add(new ListItem("Lập Trình Viên"));
                lstNgheNghiep.Items.Add(new ListItem("Kỹ Sư"));

                //Khoi Tao cho checkListSoThich
                chckSoThich.Items.Add(new ListItem("Mua Sắm"));
                chckSoThich.Items.Add(new ListItem("Xem Phim"));
                chckSoThich.Items.Add(new ListItem("Chơi Game"));
            }
        }

        protected void btGui_Click(object sender, EventArgs e)
        {
            string kq = "";
            kq += "<h2> Thông Tin Đăng ký của bạn</h2>";
            kq += "<ul>";
            //Lay thong tin ho ten
            kq += $"<li>Họ Tên {txtHoTen.Text}</li>";
            //tuong tu voi cac thong tin khac
            kq += string.Format($"<li>Ngày Sinh: {txtNgaySinh.Text}</li>");
            if (radNam.Checked)
            {
                kq += $"<li>Giới Tính: {radNam.Text}</li>";
            }
            else
            {
                kq += $"<li>Giới Tính: {radNu.Text}</li>";

            }


            kq += $"<li>Trình Độ: {ddlTtrinhDo.SelectedItem.Text}</li>";
            kq += $"<li>Nghề Nghiệp: {lstNgheNghiep.SelectedItem.Text}</li>";
            if (FHinh.HasFile)
            {
                string path = Server.MapPath("~/Uploads");

                FHinh.SaveAs(path + "/" + FHinh.FileName);

                kq += $"<li> Ảnh: <img src='./Uploads/{FHinh.FileName}'> </li>";
            }
            string sothich = "";
            
            foreach(ListItem x in chckSoThich.Items)
            {
                if (x.Selected)
                {
                    sothich += x.Text + "; ";
                }
            }
            kq += $"<li>Sở Thích: {sothich}</li>";
            kq += "<ul>";

            lbKetQua.Text = kq;
            
        }
    }
}