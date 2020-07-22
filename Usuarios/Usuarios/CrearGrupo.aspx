<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearGrupo.aspx.cs" Inherits="Usuarios.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Crear Grupo</title>
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
    <form id="crearGrupo" runat="server">
        <h2>Crear Grupo</h2>
        <div>

            Id Grupo
            <asp:TextBox ID="txtIdGrupo" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblDescripcion" runat="server" Text="Descripcion"></asp:Label>
            <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnCrearGrupo" runat="server" OnClick="btnCrearGrupo_Click" Text="Crear Grupo" />
            <br />
            <asp:Button ID="btnEliminarGrupo" runat="server" Text="Eliminar Grupo" OnClick="btnEliminarGrupo_Click" />
            <br />
            <br />
            <asp:GridView ID="gridGrupos" runat="server">
            </asp:GridView>
            <br />
            <br />
            Modificar Grupo<br />
            Id Grupo
            <asp:TextBox ID="txtIdGrupoModificar" runat="server"></asp:TextBox>
            <br />
            <asp:DropDownList ID="opcionesGrupo" runat="server">
                <asp:ListItem Value="Nombre"></asp:ListItem>
                <asp:ListItem Value="Descripcion"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:TextBox ID="txtNuevoValorGrupo" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnModificar" runat="server" OnClick="btnModificar_Click" Text="Modificar" />
            <br />
            <br />
            

        </div>
    </form>
    </center>
</body>
</html>
