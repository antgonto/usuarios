<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearRol.aspx.cs" Inherits="Usuarios.CrearRol" %>

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
                <h1 class="text-light"><a href="Index.html"><span>Proyecto</span></a></h1>
                <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
            </div>

            <nav class="nav-menu float-right d-none d-lg-block">
                <ul>
                    <li><a href="Index.html">Inicio</a></li>
                    <li class="drop-down"><a>Usuario</a>
                        <ul>
                            <li><a href="CrearUsuario.aspx">Agregar</a></li>
                            <li><a href="EditarUsuarios.aspx">Editar</a></li>
                        </ul>
                    </li>
                    <li><a href="CrearGrupo.aspx">Grupos</a></li>
                    <li class="active"><a href="CrearRol.aspx">Roles</a></li>
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
                        <li><a href="CrearRol.aspx">Roles</a></li>

                    </ol>
                </div>

            </div>
        </section>
        <!-- End Breadcrumbs Section -->
        <section class="inner-page">
            <div class="container">
                <form class="php-email-form" id="crearGrupo" runat="server">
                    <div class="portfolio-description">
                        <div class="section-title">
                            <h2>Lista de Roles</h2>
                        </div>
                        <div class="tableOverflow">
                            <asp:GridView ID="gridRoles" runat="server">
                            </asp:GridView>
                        </div>
                    </div>
                    <!-- ======= Contact Us Section ======= -->
                    <section id="contact" class="contact">
                        <div class="container">

                            <div class="section-title">
                                <h2>Agregar Roles</h2>
                            </div>

                            <div class="row">

                                <div class="col-lg-12" data-aos="fade-up" data-aos-delay="300">
                                    <div class="info-box">

                                    <div class="form-group">
                                        <asp:TextBox ID="txtDescripcion" class="form-control" placeholder="Descripción"
                                            data-rule="minlen:6" data-msg="Please enter at least 8 chars of subject" runat="server"></asp:TextBox>
                                        <div class="validate"></div>
                                    </div>
                                    <div class="text-center">
                                        <asp:Button ID="btnCrearRol" runat="server" OnClick="btnCrearRol_Click" Text="Crear Rol" />
                                    </div>
                                        </div>


                                </div>

                            </div>

                        </div>
                    </section>
                    <!-- End Contact Us Section -->

                    <section id="contact" class="contact">
                        <div class="container">
                            <div class="section-title">
                                <h2>Modificar Rol</h2>
                            </div>

                            <div class="row">
                                <div class="col-lg-6 d-flex align-items-stretch" data-aos="fade-up">
                                    <div class="info-box">
                                        <h3>Editar</h3>
                                        <div class="form-group row">
                                            <label for="groupID" class="col-sm-2 col-form-label col-form-label-sm">Rol ID</label>
                                            <div class="col-sm-8">
                                                <asp:TextBox ID="txtIdRolModificar" class="form-control form-control-sm" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Descripción</label>
                                            <div class="col-sm-8">
                                                <asp:TextBox ID="txtNuevoValorRol" class="form-control form-control-sm" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <asp:Button ID="btnModificar" class="btn btn-primary mb-2" runat="server" OnClick="btnModificar_Click" Text="Modificar" />
                                    </div>
                                </div>
                                <div class="col-lg-6 d-flex align-items-stretch" data-aos="fade-up">
                                    <div class="info-box">
                                        <h3>Eliminar</h3>
                                        <div class="form-group row">
                                            <label for="id" class="col-sm-2 col-form-label col-form-label-sm">Grupo ID</label>
                                            <div class="col-sm-8">
                                                <asp:TextBox ID="txtIdRol" class="form-control form-control-sm" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <asp:Button ID="btnEliminarRol" class="btn btn-primary mb-2" runat="server" Text="Eliminar Rol" OnClick="btnEliminarGrupo_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- End Contact Us Section -->
                </form>
            </div>

        </section>
    </main><!-- End #main -->
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
                            <li><i class="bx bx-chevron-right"></i><a href="Index.html">Inicio</a></li>
                            <li><i class="bx bx-chevron-right"></i><a href="CrearUsuario.aspx">Usuarios</a></li>
                            <li><i class="bx bx-chevron-right"></i><a href="CrearGrupo.aspx">Grupos</a></li>
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

