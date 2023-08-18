using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace ASP_SP.Sources.Pages
{
    public partial class FrmBuscarUsuarios1 : System.Web.UI.Page
    {
        readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);

        public static int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            string valorBusqueda = Request.QueryString["valorBusqueda"];
            if (!string.IsNullOrEmpty(valorBusqueda) && int.TryParse(valorBusqueda, out id))
            {
                using (SqlCommand cmd = new SqlCommand("Perfil", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@Id", SqlDbType.Int).Value = id;
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read() == true)
                    {
                        image.ImageUrl = "/Sources/Pages/FrmImagen.aspx?id=" + id;
                        this.tbNombres.Text = dr["Nombres"].ToString();
                        this.tbApellidos.Text = dr["Apellidos"].ToString();
                        this.tbFecha.Text = dr["Fecha"].ToString();
                        tbFecha.Text = DateTime.Now.ToString("dd-MM-yyyy");

                        dr.Close();
                    }
                    else
                    {
                        Response.Redirect("/Sources/Pages/FrmIndex.aspx");
                    }
                    con.Close();

                }
                // Aquí puedes usar el valor numérico de "id" para realizar tu búsqueda en la base de datos
            }
            else
            {
                Response.Redirect("/Sources/Pages/FrmIndex.aspx");
                // Aquí puedes manejar el caso en que "valorBusqueda" no sea un número válido
            }

           
        }
    }
}