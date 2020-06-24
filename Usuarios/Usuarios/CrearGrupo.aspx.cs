using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Usuarios
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string baseDeDatos = "Data Source=rodri9920-server.database.windows.net;Initial Catalog=Usuarios;User ID=Usuarios;Password=UlacitSQL2020";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(baseDeDatos))
                {
                    con.Open();

                    SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Grupo", con);
                    DataSet ds = new DataSet();
                    da.Fill(ds);

                    con.Close();

                    gridGrupos.DataSource = ds.Tables[0];
                    gridGrupos.DataBind();
                }
            }
            catch
            {
                Response.Write("<script>alert('Ha ocurrido un error')</script>");
            }
        }

        protected void btnCrearGrupo_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtDescripcion.Text))
            {
                Response.Write("<script>alert('Por favor llene todos los campos')</script>");
            }
            else
            {
                try
                {
                    string descripcion = txtDescripcion.Text;

                    int respuesta = 0;
                    try
                    {
                        using (SqlConnection con = new SqlConnection(baseDeDatos))
                        {
                            con.Open();
                            
                                using (SqlCommand comando = new SqlCommand("INSERT INTO Grupo (Descripcion) VALUES ('" + descripcion + "')", con))
                                {
                                    respuesta = comando.ExecuteNonQuery();
                                }
                                if (respuesta == 1)
                                {
                                    Response.Write("<script>alert('Se agregó el usuario de manera correcta')</script>");
                                }
                                else
                                {
                                    Response.Write("<script>alert('Hubo un error, por favor vuelva a intentarlo')</script>");
                                }
                            con.Close();
                        }
                    }
                    catch
                    {
                        Response.Write("<script>alert('Parece haber un error con el servidor, por favor vuelva a intentar')</script>");
                    }
                }
                catch
                {
                    Response.Write("<script>alert('Debe escribir los datos de manera correcta')</script>");
                }
            }
        }
    }
}