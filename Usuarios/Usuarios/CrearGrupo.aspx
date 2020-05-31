<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearGrupo.aspx.cs" Inherits="Usuarios.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="crearGrupo" runat="server">
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
            

        </div>
    </form>
</body>
</html>
