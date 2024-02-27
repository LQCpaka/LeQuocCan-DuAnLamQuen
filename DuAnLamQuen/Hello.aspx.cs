using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DuAnLamQuen
{
    public partial class Hello1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
            else
            {
                string hoTen = txtHoTen.Text;
                string gt = ddlGT.SelectedValue;
                lbNoiDung.Text = $"Chào {gt} <b> {hoTen} </b> đến với ASP.NET";
            }
            
        }

        protected void btnSubmits_Click(object sender, EventArgs e)
        {

        }
    }
}