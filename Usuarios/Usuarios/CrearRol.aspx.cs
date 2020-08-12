using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Usuarios
{
    public partial class CrearRol : System.Web.UI.Page
    {

        string baseDeDatos = "Data Source=DESKTOP-A4FEQHU\\SQLEXPRESS;Initial Catalog=Usuarios;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(baseDeDatos))
                {
                    con.Open();

                    SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Rol", con);
                    DataSet ds = new DataSet();
                    da.Fill(ds);

                    con.Close();

                    gridRoles.DataSource = ds.Tables[0];
                    gridRoles.DataBind();
                }
            }
            catch
            {
                Response.Write("<script>alert('Ha ocurrido un error')</script>");
            }

        }

        protected void btnCrearRol_Click(object sender, EventArgs e)
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

                            using (SqlCommand comando = new SqlCommand("INSERT INTO Rol (Descripcion) VALUES ('" + descripcion + "')", con))
                            {
                                respuesta = comando.ExecuteNonQuery();
                            }
                            if (respuesta == 1)
                            {
                                Response.Write("<script>alert('Se agregó el rol de manera correcta')</script>");
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

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            try
            {
                if (!string.IsNullOrEmpty(txtIdRolModificar.Text))
                {
                    int idRolModificar = Int32.Parse(txtIdRolModificar.Text);
                    try
                    {
                        using (SqlConnection con = new SqlConnection(baseDeDatos))
                        {
                            con.Open();
                            int respuesta = 0;
                            using (SqlCommand comando = new SqlCommand("SELECT COUNT(*) FROM Rol WHERE RolID = " + idRolModificar, con))
                            {
                                respuesta = Convert.ToInt32(comando.ExecuteScalar());
                            }
                            con.Close();
                            if (respuesta == 1)
                            {
                                if (!string.IsNullOrEmpty(txtNuevoValorRol.Text))
                                {
                                    con.Open();
                                    int response = 0;
                                    using (SqlCommand comando = new SqlCommand("UPDATE Rol SET Descripcion = '" + txtNuevoValorRol.Text + "'" + " WHERE RolID = " + idRolModificar, con))
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
                                Response.Write("<script>alert('No se encuentra un rol con ese Id')</script>");
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

        protected void btnEliminarGrupo_Click(object sender, EventArgs e)
        {
            try
            {
                if (!string.IsNullOrEmpty(txtIdRol.Text))
                {
                    int idRol = Int32.Parse(txtIdRol.Text);
                    int respuesta = 0;
                    try
                    {
                        using (SqlConnection con = new SqlConnection(baseDeDatos))
                        {
                            con.Open();
                            using (SqlCommand comando = new SqlCommand("DELETE FROM Rol WHERE RolID = " + idRol, con))
                            {
                                respuesta = comando.ExecuteNonQuery();
                            }
                            con.Close();
                        }

                        if (respuesta == 1)
                        {
                            Response.Write("<script>alert('Se elimino el rol de manera exitosa')</script>");
                            Response.Redirect(Request.RawUrl);
                        }
                        else
                        {
                            Response.Write("<script>alert('No se encuentra un rol con ese id')</script>");
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
    }
}