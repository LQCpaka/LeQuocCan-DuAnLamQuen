using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DuAnLamQuen
{
    public partial class Hello : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ThucHienPhepTinh(Func<float, float, float> operation)
        {
            if (txtNhapSoMot.Text != string.Empty && txtNhapSoHai.Text != string.Empty)
            {
                float a = float.Parse(txtNhapSoMot.Text);
                float b = float.Parse(txtNhapSoHai.Text);
                txtKetQua.Text = operation(a, b).ToString();
            } else
            {
                lbThongBao.Text = "Lỗi Dữ Liệu";
            }
            

        }
        protected void btnChia_Click(object sender, EventArgs e)
        {
            ThucHienPhepTinh((a, b) => a / b);
        }

        protected void btnNhan_Click(object sender, EventArgs e)
        {
            ThucHienPhepTinh((a, b) => a * b);
        }

        protected void btnTru_Click(object sender, EventArgs e)
        {
            ThucHienPhepTinh((a, b) => a - b);
        }

        protected void btnCong_Click(object sender, EventArgs e)
        {
            ThucHienPhepTinh((a, b) => a + b);
        }
    }
}