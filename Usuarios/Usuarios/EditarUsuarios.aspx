<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarUsuarios.aspx.cs" Inherits="Usuarios.EditarUsuarios" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head>
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
        .tableOverflow {
            overflow: auto;
            margin-bottom: 50px;
        }
    </style>
</head>

<body>
    <!-- ======= Header ======= -->
    <header id="header">
        <div class="container">

            <div class="logo float-left">
                <h1 class="text-light"><a href="index.html"><span>Proyecto</span></a></h1>
                <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
            </div>

            <nav class="nav-menu float-right d-none d-lg-block">
                <ul>
                    <li><a href="CrearUsuario.aspx">Inicio</a></li>
                    <li class="drop-down"><a>Usuario</a>
                        <ul>
                            <li><a href="CrearUsuario.aspx">Agregar</a></li>
                            <li class="active"><a href="EditarUsuarios.aspx">Editar</a></li>
                        </ul>
                    </li>
                    <li><a href="CrearGrupo.aspx">Grupos</a></li>
                </ul>
            </nav>
            <!-- .nav-menu -->
        </div>
    </header>
    <!-- End Header -->

    <main id="main">

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
                <!-- ======= Delete Section ======= -->
                <section id="contact" class="contact">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 " data-aos="fade-up" data-aos-delay="300">
                                <form class="php-email-form" id="EditarUsuarios" runat="server">
                                    <div class="section-title">
                                        <h2>Lista de Usuarios</h2>
                                    </div>
                                    <div class="tableOverflow">
                                        <asp:GridView ID="gridUsuarios" runat="server">
                                            <Columns>
                                                <asp:TemplateField HeaderText="Foto">
                                                    <ItemTemplate>
                                                        <asp:Image ID="Foto" runat="server" Height="200px" Width="200px"
                                                            ImageUrl='<%#"data:Image/png;base64," + Convert.ToBase64String((byte[])Eval("Foto")) %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>

                                    <div class="section-title">
                                        <h2>Eliminar Usuario</h2>
                                    </div>
                                    <div class="form-group row">
                                        <label for="cedula" class="col-sm-2 col-form-label">Cédula</label>
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="txtCedula" class="form-control" placeholder="Cédula"
                                                data-rule="minlen:9" data-msg="Please enter at least 9 chars" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="text-center">
                                        <asp:Button ID="btnEliminarUsuario" runat="server" OnClick="btnEliminarUsuario_Click" Text="Eliminar usuario" />
                                    </div>

                                    <section id="contact" class="contact">
                                        <div class="container">
                                            <div class="section-title">
                                                <h2>Editar Usuario</h2>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12" data-aos="fade-up" data-aos-delay="300">
                                                    <div class="form-group row">
                                                        <label for="cedula" class="col-sm-2 col-form-label">Cédula</label>
                                                        <div class="col-sm-10">
                                                            <asp:TextBox ID="txtCedulaUser" class="form-control" placeholder="Cédula" runat="server"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label for="campo" class="col-sm-2 col-form-label">Campo</label>
                                                        <div class="col-sm-10">
                                                            <asp:DropDownList ID="Opciones" class="form-control" runat="server">
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
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label for="newInput" class="col-sm-2 col-form-label">Nuevo Valor</label>
                                                        <div class="col-sm-10">
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
                                </form>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- End Delete Section -->
            </div>
        </section>
    </main><!-- End #main -->

    <!-- ======= Footer ======= -->

    <footer id="footer">
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 footer-info">
                        <h3>Proyecto</h3>
                    </div>
                    <div class="col-md-3 col-lg-4 col-xs-3 ">
                        <h4>Sistema</h4>
                        <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
                    </div>
                    <div class="col-md-3 col-lg-2 col-xs-3 footer-links">
                        <h4>Sitios</h4>
                        <ul>
                            <li><i class="bx bx-chevron-right"></i><a href="index.html">Inicio</a></li>
                            <li><i class="bx bx-chevron-right"></i><a href="addUsers.html">Usuarios</a></li>
                            <li><i class="bx bx-chevron-right"></i><a href="grupos.html">Grupos</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="copyright">
                &copy; Copyright <strong><span>Experiencia Profesional</span></strong>. All Rights Reserved
            </div>
            <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/mamba-one-page-bootstrap-template-free/ -->
                Designed by <a>ULACIT students</a>
            </div>
        </div>
    </footer>
    <!-- End Footer -->

    <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

    <!-- Vendor JS Files -->
    <script src="assets/vendor/jquery/jquery.min.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>
    <script src="assets/vendor/jquery-sticky/jquery.sticky.js"></script>
    <script src="assets/vendor/venobox/venobox.min.js"></script>
    <script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
    <script src="assets/vendor/counterup/counterup.min.js"></script>
    <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="assets/vendor/aos/aos.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>
    <script>
        $('.js-pscroll').each(function () {
            var ps = new PerfectScrollbar(this);

            $(window).on('resize', function () {
                ps.update();
            })
        });


    </script>

</body>

</html>
