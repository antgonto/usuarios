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
                        "u.Descripcion,u.Contrasena,u.Cedula,u.Direccion,u.Telefono,u.Correo, g.Descripcion AS Grupo, r.Descripcion AS Rol" +
                        " FROM ((Usuario AS u INNER JOIN Grupo AS g ON u.GrupoID = g.GrupoID) INNER JOIN Rol AS r ON u.RolID = r.RolID)", con);
                    DataSet ds = new DataSet();
                    da.Fill(ds);

                    SqlDataAdapter daGrupo = new SqlDataAdapter("SELECT GrupoID, Descripcion FROM Grupo", con);
                    DataSet dsGrupo = new DataSet();
                    daGrupo.Fill(dsGrupo);

                    con.Close();

                    gridUsuarios.DataSource = ds.Tables[0];
                    gridUsuarios.DataBind();
                }
            if (!this.IsPostBack)
            {
                if (Request.InputStream.Length > 0)
                {
                    using (StreamReader reader = new StreamReader(Request.InputStream))
                    {
                        string hexString = Server.UrlEncode(reader.ReadToEnd());
                        string imageName = "Cedula" + System.DateTime.Now.ToString("HHmmss");
                        string imagePath = string.Format("~/Captures/{0}.jpg", imageName);//debe cambiarse por una ruta a la base de datos
                        File.WriteAllBytes(Server.MapPath(imagePath), ConvertHexToBytes(hexString));
                        Session["CapturedImage"] = ResolveUrl(imagePath);
                    }
                }
            }
        }
            catch
            {
                Response.Write("<script>alert('Ha ocurrido un error')</script>");
            }
        }

        private static byte[] ConvertHexToBytes(string hex)
        {
            byte[] bytes = new byte[hex.Length / 2];
            for (int i = 0; i < hex.Length; i += 2)
            {
                bytes[i / 2] = Convert.ToByte(hex.Substring(i, 2), 16);
            }
            return bytes;
        }

        [WebMethod(EnableSession = true)]
        public static string GetCapturedImage()
        {
            string url = HttpContext.Current.Session["CapturedImage"].ToString();
            HttpContext.Current.Session["CapturedImage"] = null;
            return url;
        }


        protected void btnCrearUsuario_Click(object sender, EventArgs e)
        {
            if(String.IsNullOrEmpty(txtUsuario.Text) || String.IsNullOrEmpty(txtNombre.Text) || String.IsNullOrEmpty(txtApellido.Text) 
                || String.IsNullOrEmpty(txtSegundoA.Text) || String.IsNullOrEmpty(txtDescripcion.Text) || String.IsNullOrEmpty(txtPassword.Text) 
                || String.IsNullOrEmpty(txtCedula.Text) || String.IsNullOrEmpty(txtDireccion.Text) || String.IsNullOrEmpty(txtTelefono.Text) 
                || String.IsNullOrEmpty(txtCorreo.Text))
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
                    string descripcion = txtDescripcion.Text;
                    string contrasena = txtPassword.Text;
                    int cedula = Int32.Parse(txtCedula.Text);
                    string direccion = txtDireccion.Text;
                    int telefono = Int32.Parse(txtTelefono.Text);
                    string correo = txtCorreo.Text;
                    int grupo = dropDownDescGrupo.SelectedIndex;
                    int rol = ddlRoles.SelectedIndex;

                    int respuesta = 0;
                try
                {
                    using (SqlConnection con = new SqlConnection(baseDeDatos))
                    {
                        con.Open();
                        int cantidad = 0;
                        using(SqlCommand verificacion = new SqlCommand("SELECT COUNT(*) FROM Usuario WHERE Cedula = " + cedula, con))
                        {
                                cantidad = Convert.ToInt32(verificacion.ExecuteScalar());
                        }
                        if(cantidad == 0)
                        { 
                            using (SqlCommand comando = new SqlCommand("INSERT INTO Usuario (Usuario, PrimerNombre, SegundoNombre,PrimerApellido," +
                                "SegundoApellido,Descripcion,Contrasena,Cedula,Direccion,Telefono,Correo,RolID,GrupoID) VALUES ('" + usuario + "', '" + primerNombre + "', '" +
                                segundoNombre + "','" + primerApellido + "', '" + segundoApellido + "', '" + descripcion + "', '" + contrasena + "', " +
                                cedula + ", '" + direccion + "'," + telefono + ",'" + correo + "'," + rol + "," + grupo + ")", con))
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
            try
            {
                if (!string.IsNullOrEmpty(txtCedula.Text))
                {
                    int cedula = Int32.Parse(txtCedula.Text);
                    int respuesta = 0;
                    try
                    {
                        using (SqlConnection con = new SqlConnection(baseDeDatos))
                        {
                            con.Open();
                            using (SqlCommand comando = new SqlCommand("DELETE FROM Usuario WHERE Cedula = " + cedula, con))
                            {
                                respuesta = comando.ExecuteNonQuery();
                            }
                            con.Close();
                        }

                        if (respuesta == 1)
                        {
                            Response.Write("<script>alert('Se elimino el usuario de manera exitosa')</script>");
                            Response.Redirect(Request.RawUrl);
                        }
                        else
                        {
                            Response.Write("<script>alert('No se encuentra un usuario con esa cedula')</script>");
                        }
                    }
                    catch
                    {
                        Response.Write("<script>alert('Parece haber un error con el servidor, por favor vuelva a intentar')</script>");
                    }
                    
                }
                else
                {
                    Response.Write("<script>alert('Por favor introduzca la cedula')</script>");
                }
                
            }
            catch
            {
                Response.Write("<script>alert('La cedula debe ser un numero')</script>");
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            try
            {
                if (!string.IsNullOrEmpty(txtCedulaUser.Text))
                {
                    int cedula = Int32.Parse(txtCedulaUser.Text);
                    try
                    {
                        using(SqlConnection con = new SqlConnection(baseDeDatos))
                        {
                            con.Open();
                            int respuesta = 0;
                            using(SqlCommand comando = new SqlCommand("SELECT COUNT(*) FROM Usuario WHERE Cedula = " + cedula, con))
                            {
                                respuesta = Convert.ToInt32(comando.ExecuteScalar());
                            }
                            con.Close();
                            if(respuesta == 1)
                            {
                                if (!string.IsNullOrEmpty(txtNuevoValor.Text))
                                {
                                    string opcion = Opciones.SelectedValue;
                                    con.Open();
                                    int response = 0;
                                    if (opcion.Equals("Cedula") || opcion.Equals("Telefono"))
                                    {
                                        try
                                        {
                                            int nuevoValor = Int32.Parse(txtNuevoValor.Text);
                                            using (SqlCommand comando = new SqlCommand("UPDATE Usuario SET " + opcion + " = " + nuevoValor + " WHERE Cedula = " + cedula, con))
                                            {
                                                response = comando.ExecuteNonQuery();
                                            }
                                        }
                                        catch
                                        {
                                            Response.Write("<script>alert('Debe ser un numero')</script>");
                                        }
                                    }
                                    else
                                    {
                                        using (SqlCommand comando = new SqlCommand("UPDATE Usuario SET " + opcion + " = '" + txtNuevoValor.Text + "'" + " WHERE Cedula = " + cedula, con))
                                        {
                                            response = comando.ExecuteNonQuery();       
                                        }
                                    }
                                    con.Close();
                                    if(response == 1)
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
                                Response.Write("<script>alert('No se encuentra un usuario con esa cedula')</script>");
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
                    Response.Write("<script>alert('Por favor introduzca la cedula')</script>");
                }
            }
            catch
            {
                Response.Write("<script>alert('La cedula debe ser un numero')</script>");
            }
        }

        protected void btnCapture_Click(object sender, EventArgs e)
        {

        }
    }
}