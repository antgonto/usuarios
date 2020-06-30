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
        //string baseDeDatos = "Data Source=rodri9920-server.database.windows.net;Initial Catalog=Usuarios;User ID=Usuarios;Password=UlacitSQL2020";
        string baseDeDatos = "Data Source=DESKTOP-A4FEQHU\\SQLEXPRESS;Initial Catalog=Usuarios;Integrated Security=True";

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
                                    Response.Redirect(Request.RawUrl);
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

        protected void btnEliminarGrupo_Click(object sender, EventArgs e)
        {
            try
            {
                if (!string.IsNullOrEmpty(txtIdGrupo.Text))
                {
                    int idGrupo = Int32.Parse(txtIdGrupo.Text);
                    int respuesta = 0;
                    try
                    {
                        using (SqlConnection con = new SqlConnection(baseDeDatos))
                        {
                            con.Open();
                            using (SqlCommand comando = new SqlCommand("DELETE FROM Grupo WHERE GrupoID = " + idGrupo, con))
                            {
                                respuesta = comando.ExecuteNonQuery();
                            }
                            con.Close();
                        }

                        if (respuesta == 1)
                        {
                            Response.Write("<script>alert('Se elimino el grupo de manera exitosa')</script>");
                            Response.Redirect(Request.RawUrl);
                        }
                        else
                        {
                            Response.Write("<script>alert('No se encuentra un grupo con ese id')</script>");
                        }
                    }
                    catch
                    {
                        Response.Write("<script>alert('Parece haber un error con el servidor, por favor vuelva a intentar')</script>");
                    }

                }
                else
                {
                    Response.Write("<script>alert('Por favor introduzca el id')</script>");
                }

            }
            catch
            {
                Response.Write("<script>alert('El id debe ser un número')</script>");
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            try
            {
                if (!string.IsNullOrEmpty(txtIdGrupoModificar.Text))
                {
                    int idGrupoModificar = Int32.Parse(txtIdGrupoModificar.Text);
                    try
                    {
                        using (SqlConnection con = new SqlConnection(baseDeDatos))
                        {
                            con.Open();
                            int respuesta = 0;
                            using (SqlCommand comando = new SqlCommand("SELECT COUNT(*) FROM Grupo WHERE GrupoID = " + idGrupoModificar, con))
                            {
                                respuesta = Convert.ToInt32(comando.ExecuteScalar());
                            }
                            con.Close();
                            if (respuesta == 1)
                            {
                                if (!string.IsNullOrEmpty(txtNuevoValorGrupo.Text))
                                {
                                    string opcion = opcionesGrupo.SelectedValue;
                                    con.Open();
                                    int response = 0;
                                    using (SqlCommand comando = new SqlCommand("UPDATE Grupo SET " + opcion + " = '" + txtNuevoValorGrupo.Text + "'" + " WHERE GrupoID = " + idGrupoModificar, con))
                                    {
                                        response = comando.ExecuteNonQuery();
                                    }
                                    con.Close();
                                    if (response == 1)
                                    {
                                        Response.Write("<script>alert('Se ha modificado la informacion')</script>");
                                        Response.Redirect(Request.RawUrl);
                                    }
                                    else
                                    {
                                        Response.Write("<script>alert('Ocurrio un error, por favor vuelva a intentarlo')</script>");
                                    }
                                }
                                else
                                {
                                    Response.Write("<script>alert('Por favor introduzca el valor a modificar')</script>");
                                }

                            }
                            else
                            {
                                Response.Write("<script>alert('No se encuentra un grupo con ese Id')</script>");
                            }
                        }
                    }
                    catch
                    {
                        Response.Write("<script>alert('Parece haber un error con el servidor, por favor vuelva a intentar')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Por favor introduzca el Id')</script>");
                }
            }
            catch
            {
                Response.Write("<script>alert('El id debe ser un número')</script>");
            }
        }
    }
}