using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AJAX_SELECT_2_COMBO
{
    public partial class PaginaInicial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //fazendo a chamada da connectionString
            string conexao = ConfigurationManager.ConnectionStrings["mydata"].ConnectionString;
            if (!Page.IsPostBack)
            {
                using (SqlConnection con = new SqlConnection(conexao))
                {
                    SqlCommand cmd = new SqlCommand("Select Id, Nome from TbClientes", con);
                    con.Open();
                    DropDownList1.DataSource = cmd.ExecuteReader();
                    DropDownList1.DataBind();
                }
            }
        }
    }
}