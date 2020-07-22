<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarUsuarios.aspx.cs" Inherits="Usuarios.EditarUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Usuarios</title>
    <meta content="" name="descriptison">
    <meta content="" name="keywords">

    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,600,600i,700,700i,900"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
    <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">

    <style>
        .tableOverflow{
            overflow: auto;
        }
    </style>
</head>
<body>
    <header id="header">
        <div class="container">

            <div class="logo float-left">
                <h1 class="text-light"><a href="index.html"><span>Proyecto</span></a></h1>
                <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
            </div>

            <nav class="nav-menu float-right d-none d-lg-block">
                <ul>
                    <li><a href="index.html">Inicio</a></li>
                    <li class="drop-down"><a>Usuario</a>
                        <ul>
                            <li><a href="addUsers.html">Agregar</a></li>
                            <li class="active"><a href="editUsers.html">Editar</a></li>

                        </ul>
                    </li>
                    <li><a href="grupos.html">Grupos</a></li>

                </ul>
            </nav>
            <!-- .nav-menu -->
        </div>
    </header>
    <!-- End Header -->
    <main id="main">
        <form id="EditorUsuarios" class="php-email-form" runat="server">




            <!-- ======= Breadcrumbs Section ======= -->
            <section class="breadcrumbs">
                <div class="container">

                    <div class="d-flex justify-content-between align-items-center">
                        <ol>
                            <li><a>Inicio</a></li>
                            <li>Usuarios</li>
                            <li><a href="editUsers.html">Editar</a></li>

                        </ol>
                    </div>

                </div>
            </section>
            <!-- End Breadcrumbs Section -->

            <section class="inner-page">
                <div class="container">
                    <div class="portfolio-description">
                        <div class="section-title">
                            <h2>Lista de Usuarios</h2>
                        </div>
                        <div class="limiter">
                            <div class="container-table100">
                                <div class="wrap-table100">
                                    <div class="table100 ver4 m-b-110">
                                        <div class="table100-head">
                                            <table>
                                                <thead>
                                                    <tr class="row100 head">
                                                        <th class="cell100 column4">Fotografía</th>
                                                        <th class="cell100 column4">Usuario</th>
                                                        <th class="cell100 column4">Primer Nombre</th>
                                                        <th class="cell100 column4">Segundo Nombre</th>
                                                        <th class="cell100 column4">Primer Apellido</th>
                                                        <th class="cell100 column4">Segundo Apellido</th>
                                                        <th class="cell100 column4">Detalle</th>
                                                        <th class="cell100 column4">Contraseña</th>
                                                        <th class="cell100 column4">Cédula</th>
                                                        <th class="cell100 column4">Dirección</th>
                                                        <th class="cell100 column4">Teléfono</th>
                                                        <th class="cell100 column4">Email</th>
                                                        <th class="cell100 column4">Grupo</th>
                                                        <th class="cell100 column4">Rol</th>
                                                    </tr>
                                                </thead>
                                            </table>
                                        </div>

                                        <div class="table100-body js-pscroll">
                                            <table>
                                                <tbody>
                                                    <tr class="row100 body">
                                                        <td class="cell100 column4">
                                                            <img src="assets/img/about.png" alt="" height="100" width="100"></img>
                                                        </td>
                                                        <td class="cell100 column4">79</td>
                                                        <td class="cell100 column4">Arnoldo</td>
                                                        <td class="cell100 column4">v</td>
                                                        <td class="cell100 column4">Salazar</td>
                                                        <td class="cell100 column4">Contreras</td>
                                                        <td class="cell100 column4">usuario</td>
                                                        <td class="cell100 column4">AContreras294</td>
                                                        <td class="cell100 column4">1128405893</td>
                                                        <td class="cell100 column4">San José</td>
                                                        <td class="cell100 column4">88930489</td>
                                                        <td class="cell100 column4">acontreras@gmail.com</td>
                                                        <td class="cell100 column4">Finanzas</td>
                                                        <td class="cell100 column4">Programador</td>
                                                    </tr>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- ======= Delete Section ======= -->
                    <section class="contact">
                        <div class="container">

                            <div class="section-title">
                                <h2>Eliminar Usuario</h2>
                            </div>

                            <div class="row">

                                <div class="col-md-12 " data-aos="fade-up" data-aos-delay="300">

                                    <div class="form-group row">
                                        <asp:Label ID="lblCedulaEliminar" class="col-sm-2 col-form-label" runat="server" Text="Cedula de Usuario"></asp:Label>
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="txtCedula" class="form-control" placeholder="Cédula"
                                                data-rule="minlen:9" data-msg="Please enter at least 9 chars" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="text-center">
                                        <asp:Button ID="btnEliminarUsuario" runat="server" OnClick="btnEliminarUsuario_Click" Text="Eliminar usuario" />
                                    </div>

                                </div>

                            </div>

                        </div>
                    </section>
                    <!-- End Delete Section -->

                    <!-- ======= Edit Section ======= -->
                    <section class="contact">
                        <div class="container">

                            <div class="section-title">
                                <h2>Editar Usuario</h2>
                            </div>

                            <div class="row">

                                <div class="col-lg-12" data-aos="fade-up" data-aos-delay="300">

                                    <div class="form-group row">
                                        <asp:Label ID="lblModificar" class="col-sm-2 col-form-label" runat="server" Text="Cedula de Usuario"></asp:Label>
                                        <div class="col-sm-10">
                                            <asp:Label ID="lblCampoUser" runat="server" Text="Campo"></asp:Label>
                                            <asp:TextBox ID="txtCedulaUser" class="form-control" placeholder="Cédula" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        &nbsp;<div class="col-sm-10">
                                            <asp:DropDownList ID="Opciones" runat="server">
                                                <asp:ListItem Value="Usuario">Usuario</asp:ListItem>
                                                <asp:ListItem Value="PrimerNombre">Primer Nombre</asp:ListItem>
                                                <asp:ListItem Value="SegundoNombre">Segundo Nombre</asp:ListItem>
                                                <asp:ListItem Value="PrimerApellido">Primer Apellido</asp:ListItem>
                                                <asp:ListItem Value="SegundoApellido">Segundo Apellido</asp:ListItem>
                                                <asp:ListItem Value="Detalle">Detalle</asp:ListItem>
                                                <asp:ListItem Value="Contrasena">Contraseña</asp:ListItem>
                                                <asp:ListItem Value="Cedula">Cedula</asp:ListItem>
                                                <asp:ListItem Value="Direccion">Direccion</asp:ListItem>
                                                <asp:ListItem Value="Telefono">Telefono</asp:ListItem>
                                                <asp:ListItem Value="Correo">Correo</asp:ListItem>
                                                <asp:ListItem Value="RolID">Rol</asp:ListItem>
                                                <asp:ListItem Value="GrupoID">Grupo</asp:ListItem>
                                                <asp:ListItem Value="Foto">Foto</asp:ListItem>
                                            </asp:DropDownList>
                                            <br />
                                            
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        
                                        <div class="col-sm-10">
                                            <asp:Label ID="lblNuevoValor" runat="server" Text="Nuevo Valor"></asp:Label>
                                            <asp:TextBox ID="txtNuevoValor" class="form-control" runat="server"></asp:TextBox>
                                            <br />
                                            <asp:FileUpload ID="fuNuevaFoto" class="form-control" runat="server" />
                                        </div>
                                    </div>
                                    <div class="text-center">
                                        <asp:Button ID="btnModificar" runat="server" OnClick="btnModificar_Click" Text="Editar Usuario" />
                                    </div>


                                </div>

                            </div>

                        </div>
                    </section>
                    <!-- End Edit Section -->



                </div>

            </section>
        </form>
    </main><!-- End #main -->

</body>
</html>
