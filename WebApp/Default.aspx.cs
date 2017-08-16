using System;
using System.Web.UI.WebControls;
using BusinessLayer;
namespace WebApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                filtro();
            }
        }
        public int Count()
        {
            var desc = txtDesc.Text;
            return new ProductoBL().getPaginacionCount(desc);
        }

        private void CargarData(int starIndex, int maxRows)
        {
            gdvLista.DataSource = new ProductoBL().getPaginacionByDes(starIndex,maxRows,txtDesc.Text);
            gdvLista.DataBind();
        }

        private void filtro() {
            gdvLista.VirtualItemCount = Count();
            CargarData(1, 5);
        }
        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            filtro();
        }

        protected void gdvLista_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gdvLista.PageIndex = e.NewPageIndex;
            CargarData(e.NewPageIndex+1, 5);
        }
    }
}