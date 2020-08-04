using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.Services;

namespace Usuarios
{
    public partial class CrearUsuario : System.Web.UI.Page
    {
        //string baseDeDatos = "Data Source=rodri9920-server.database.windows.net;Initial Catalog=Usuarios;User ID=Usuarios;Password=UlacitSQL2020";
        //string baseDeDatos = "Data Source=localhost;Initial Catalog=Usuarios;Integrated Security=True";
        string baseDeDatos = "Data Source=DESKTOP-A4FEQHU\\SQLEXPRESS;Initial Catalog=Usuarios;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(baseDeDatos))
                {
                    con.Open();

                    SqlDataAdapter da = new SqlDataAdapter("SELECT u.Usuario,u.PrimerNombre,u.SegundoNombre,u.PrimerApellido,u.SegundoApellido," +
                        "u.Detalle,u.Contrasena,u.Cedula,u.Direccion,u.Telefono,u.Correo, g.Descripcion AS Grupo, r.Descripcion AS Rol, u.Foto" +
                        " FROM ((Usuario AS u INNER JOIN Grupo AS g ON u.GrupoID = g.GrupoID) INNER JOIN Rol AS r ON u.RolID = r.RolID)", con);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    con.Close();

                    gridUsuarios.DataSource = ds.Tables[0];
                    gridUsuarios.DataBind();
                }
            }
            catch
            {
                Response.Write("<script>alert('Ha ocurrido un error')</script>");
            }
        }

        protected void btnCrearUsuario_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtUsuario.Text) || String.IsNullOrEmpty(txtNombre.Text) || String.IsNullOrEmpty(txtApellido.Text)
                || String.IsNullOrEmpty(txtSegundoA.Text) || String.IsNullOrEmpty(txtDetalle.Text) || String.IsNullOrEmpty(txtPassword.Text)
                || String.IsNullOrEmpty(txtCedula.Text) || String.IsNullOrEmpty(txtDireccion.Text) || String.IsNullOrEmpty(txtTelefono.Text)
                || String.IsNullOrEmpty(txtCorreo.Text) || !fuFoto.HasFile)
            {
                Response.Write("<script>alert('Por favor llene todos los campos')</script>");
            }
            else
            {
                try
                {
                    string usuario = txtUsuario.Text;
                    string primerNombre = txtNombre.Text;
                    string segundoNombre = txtSegundoNom.Text;
                    string primerApellido = txtApellido.Text;
                    string segundoApellido = txtSegundoA.Text;
                    string detalle = txtDetalle.Text;
                    string contrasena = txtPassword.Text;
                    int cedula = Int32.Parse(txtCedula.Text);
                    string direccion = txtDireccion.Text;
                    int telefono = Int32.Parse(txtTelefono.Text);
                    string correo = txtCorreo.Text;
                    int grupo = dropDownDescGrupo.SelectedIndex;
                    int rol = ddlRoles.SelectedIndex;
                    byte[] foto = fuFoto.FileBytes;
                    int respuesta = 0;
                    string latitud = txtLatitud.Text;
                    string longitud = txtLongitud.Text;
                    try
                    {
                        using (SqlConnection con = new SqlConnection(baseDeDatos))
                        {
                            con.Open();
                            int cantidad = 0;
                            using (SqlCommand verificacion = new SqlCommand("SELECT COUNT(*) FROM Usuario WHERE Cedula = " + cedula, con))
                            {
                                cantidad = Convert.ToInt32(verificacion.ExecuteScalar());
                            }
                            if (cantidad == 0)
                            {
                                using (SqlCommand comando = new SqlCommand("INSERT INTO Usuario (Usuario, PrimerNombre, SegundoNombre,PrimerApellido," +
                                    "SegundoApellido,Detalle,Contrasena,Cedula,Direccion,Telefono,Correo,RolID,GrupoID,Latitud,Longitud) VALUES ('" + usuario + "', '" + primerNombre + "', '" +
                                    segundoNombre + "','" + primerApellido + "', '" + segundoApellido + "', '" + detalle + "', '" + contrasena + "', " +
                                    cedula + ", '" + direccion + "'," + telefono + ",'" + correo + "'," + rol + "," + grupo + "," + latitud + "," + longitud + ")", con))
                                {
                                    respuesta = comando.ExecuteNonQuery();
                                }
                                using (SqlCommand comando = new SqlCommand("UPDATE Usuario SET Foto = @fotoP WHERE Cedula = " + cedula, con))
                                {
                                    comando.Parameters.Add("@fotoP", SqlDbType.VarBinary, foto.Length).Value = foto;
                                    respuesta = comando.ExecuteNonQuery();
                                    //fuFoto.SaveAs(Server.MapPath("~/Fotos/") + cedula + ".jpg");
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
                            }
                            else
                            {
                                Response.Write("<script>alert('Ya la cedula esta registrada')</script>");
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

        protected void btnEliminarUsuario_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
        }

        protected void btnCapture_Click(object sender, EventArgs e)
        {

        }
    }
}