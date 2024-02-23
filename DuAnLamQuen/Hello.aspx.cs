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
        protected void ThucHienPhepTinh(Func<int, int, int> operation)
        {
            int a = int.Parse(txtNhapSoMot.Text);
            int b = int.Parse(txtNhapSoHai.Text);
            txtKetQua.Text = operation(a, b).ToString();
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