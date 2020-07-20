<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearUsuario.aspx.cs" Inherits="Usuarios.CrearUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Crear Usuario</title>
    <link rel="stylesheet" href="style.css" type="text/css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style type="text/css">
        .auto-style2 {
            float: left;
            width: 12%;
            height: 53px;
            margin-left: 30px;
            margin-right: 30px;
            margin-top: 10px;
            margin-bottom: 30px;
        }

        * {
            box-sizing: border-box;
            
        }
        /* Create two equal columns that floats next to each other */
        .column {
            float: left;
            width: 50%;
            padding: 10px;
            height: 300px; /* Should be removed. Only for demonstration */
        }

        /* Clear floats after the columns */
        .row:after {
            content: "";
            display: table;
            clear: both;
        }

        .botonAceptar{
              position: absolute;
              top: 750px;
              left: 48%;
        }
    </style>
</head>
<body>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src='<%=ResolveUrl("~/jQuery-webcam-master/jquery.webcam.js") %>' type="text/javascript"></script>
    <script type="text/javascript">
    var pageUrl = '<%=ResolveUrl("~/CrearUsuario.aspx") %>';

    $(function () {
        jQuery("#webcam").webcam({
            width: 320,
            height: 240,
            mode: "save",
            swffile: '<%=ResolveUrl("~/jQuery-webcam-master/jscam.swf") %>',

            onSave: function (data) {
                $.ajax({
                    type: "POST",
                    url: pageUrl + "/GetCapturedImage",
                    data: '',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (r) {
                        $("[id*=imgCapture]").css("visibility", "visible");
                        $("[id*=imgCapture]").attr("src", r.d);
                    },
                    failure: function (response) {
                        alert(response.d);
                    }
                });
            },

            onCapture: function () {
                webcam.save(pageUrl);
            }
        });

    });

    function Capture() {
        webcam.capture();
        return false;
    }

</script>
    <div class="header" id="header">
        <input type="checkbox" id="chk"/>
        <label for="chk" class="show-menu-btn"><i class="fa fa-bars"></i></label>

        <ul class="menu">
          <a href="CrearUsuario.aspx">Crear Usuario</a>
          <a href="CrearGrupo.aspx">Crear Grupo</a>      
        </ul>
        <div class="auto-style2">
          &nbsp;<a href="#">Logo</a> 
        </div>
    </div>
    <center>
    <form id="crearUsuario" runat="server">

        <h2>Crear Usuario</h2>

        <div>

            <asp:Label ID="lblUsuario" runat="server" Text="Usuario"></asp:Label>
            <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblNombre" runat="server" Text="Primer Nombre"></asp:Label>
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblSegundoNombre" runat="server" Text="Segundo Nombre"></asp:Label>
            <asp:TextBox ID="txtSegundoNom" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblApellido" runat="server" Text="Primer Apellido"></asp:Label>
            <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblSegundoA" runat="server" Text="Segundo Apellido"></asp:Label>
            <asp:TextBox ID="txtSegundoA" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblDescripcion" runat="server" Text="Descripcion"></asp:Label>
            <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblPassword" runat="server" Text="Contraseña"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblCedula" runat="server" Text="Cedula"></asp:Label>
            <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblDireccion" runat="server" Text="Direccion"></asp:Label>
            <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblTelefono" runat="server" Text="Telefono"></asp:Label>
            <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblCorreo" runat="server" Text="Correo"></asp:Label>
            <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>

            <br />
            Grupo<asp:DropDownList ID="dropDownDescGrupo" runat="server" DataSourceID="GruposDB" DataTextField="Descripcion" DataValueField="GrupoID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="GruposDB" runat="server" ConnectionString="<%$ ConnectionStrings:UsuariosConnectionString %>" SelectCommand="SELECT * FROM [Grupo]"></asp:SqlDataSource>
            <asp:Label ID="lblRol" runat="server" Text="Rol"></asp:Label>
            <asp:DropDownList ID="ddlRoles" runat="server" DataSourceID="RolDatabase" DataTextField="Descripcion" DataValueField="RolID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="RolDatabase" runat="server" ConnectionString="<%$ ConnectionStrings:UsuariosConnectionString %>" SelectCommand="SELECT * FROM [Rol]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Button ID="btnCrearUsuario" runat="server" OnClick="btnCrearUsuario_Click" Text="Crear Usuario" />

            <br />
            <asp:Button ID="btnEliminarUsuario" runat="server" OnClick="btnEliminarUsuario_Click" Text="Eliminar usuario" />

            <br />
            <br />
            <br />
            <asp:Label ID="lblLista" runat="server" Text="Lista de Usuarios"></asp:Label>
            <br />
            <asp:GridView ID="gridUsuarios" runat="server">
            </asp:GridView>
            <br />
            <br />
            Modificar Usuario<br />
            <asp:Label ID="lblModificar" runat="server" Text="Cedula de Usuario"></asp:Label>
            <asp:TextBox ID="txtCedulaUser" runat="server"></asp:TextBox>
            <br />
            <asp:DropDownList ID="Opciones" runat="server">
                <asp:ListItem>Usuario</asp:ListItem>
                <asp:ListItem Value="PrimerNombre">Primer Nombre</asp:ListItem>
                <asp:ListItem Value="SegundoNombre">Segundo Nombre</asp:ListItem>
                <asp:ListItem Value="PrimerApellido">Primer Apellido</asp:ListItem>
                <asp:ListItem Value="SegundoApellido">Segundo Apellido</asp:ListItem>
                <asp:ListItem>Descripcion</asp:ListItem>
                <asp:ListItem Value="Contrasena">Contraseña</asp:ListItem>
                <asp:ListItem>Cedula</asp:ListItem>
                <asp:ListItem>Direccion</asp:ListItem>
                <asp:ListItem>Telefono</asp:ListItem>
                <asp:ListItem>Correo</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:TextBox ID="txtNuevoValor" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnModificar" runat="server" OnClick="btnModificar_Click" Text="Modificar" />
            <br />

        </div>
        <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td align="center">
                <u>Camara</u>
            </td>
            <td>
            </td>
            <td align="center">
                <u>Foto</u>
            </td>
        </tr>
        <tr>
            <td>
                <div id="webcam">
                </div>
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                <asp:Image ID="imgCapture" runat="server" Style="visibility: hidden; width: 320px;
                    height: 240px" />
            </td>
        </tr>
    </table>
    <br />
    <asp:Button ID="btnCapture" Text="Tomar foto" runat="server" OnClientClick="return Capture();" OnClick="btnCapture_Click" />
    <br />
    <span id="camStatus"></span>
    </form>

    </center>
</body>
</html>
