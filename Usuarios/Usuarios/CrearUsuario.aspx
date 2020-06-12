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

        .auto-style3 {
            width: 204px;
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
            <asp:Label ID="lblNombre" runat="server" Text="Nombre Completo"></asp:Label>
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
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

        </div>
    </form>
    </center>
</body>
</html>
