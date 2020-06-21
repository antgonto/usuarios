using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Usuarios
{
    public partial class CrearUsuario : System.Web.UI.Page
    {
        string baseDeDatos = "Data Source=rodri9920-server.database.windows.net;Initial Catalog=Usuarios;User ID=Usuarios;Password=UlacitSQL2020";

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnCrearUsuario_Click(object sender, EventArgs e)
        {
            if(String.IsNullOrEmpty(txtUsuario.Text) || String.IsNullOrEmpty(txtNombre.Text) || String.IsNullOrEmpty(txtSegundoNom.Text)
                || String.IsNullOrEmpty(txtApellido.Text) || String.IsNullOrEmpty(txtSegundoA.Text) || String.IsNullOrEmpty(txtDescripcion.Text)
                || String.IsNullOrEmpty(txtPassword.Text) || String.IsNullOrEmpty(txtCedula.Text) || String.IsNullOrEmpty(txtDireccion.Text)
                || String.IsNullOrEmpty(txtTelefono.Text) || String.IsNullOrEmpty(txtCorreo.Text))
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

                    int respuesta = 0;
                try
                {
                using (SqlConnection con = new SqlConnection(baseDeDatos))
                {
                    con.Open();
                    using (SqlCommand comando = new SqlCommand("INSERT INTO Usuario (Usuario, PrimerNombre, SegundoNombre,PrimerApellido," +
                        "SegundoApellido,Descripcion,Contrasena,Cedula,Direccion,Telefono,Correo) VALUES ('" + usuario + "', '" + primerNombre + "', '" +
                        segundoNombre + "','" + primerApellido + "', '" + segundoApellido + "', '" + descripcion + "', '" + contrasena + "', " +
                        cedula + ", '" + direccion + "'," + telefono + ",'" + correo + "')", con))
                    {
                        respuesta = comando.ExecuteNonQuery();
                    }
                    con.Close();
                }

                if (respuesta == 1)
                        {
                            Response.Write("<script>alert('Se agregó el usuario de manera correcta')</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('Hubo un error, por favor vuelva a intentarlo')</script>");
                        }
                    }
                    catch
                    {
                        Response.Write("<script>alert('Error con la base de datos')</script>");
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