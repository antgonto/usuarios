<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearUsuario.aspx.cs" Inherits="Usuarios.CrearUsuario" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

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
    <link href="assets/css/style.css" type="text/css" rel="stylesheet">

    <style>
        .tableOverflow {
            overflow: auto;
            margin-bottom: 50px;
        }

        #map {
            height: 230px;
            width: 90%;
            margin: auto;
        }
    </style>
</head>

<body onload="getLocation()">
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
                            <li class="active"><a href="CrearUsuario.aspx">Agregar</a></li>
                            <li><a href="EditarUsuarios.aspx">Editar</a></li>
                        </ul>
                    </li>
                    <li><a href="CrearGrupo.aspx">Grupos</a></li>
                    <li><a href="CrearRol.aspx">Roles</a></li>
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
                        <li><a>Usuarios</a></li>
                        <li><a href="CrearUsuario.aspx">Agregar</a></li>
                    </ol>
                </div>
            </div>
        </section>
        <!-- End Breadcrumbs Section -->
        <section class="inner-page">
            <div class="container">
                <div class="portfolio-description">

                    <!-- ======= Contact Us Section ======= -->
                    <section id="contact" class="contact">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12" data-aos="fade-up" data-aos-delay="300">
                                    <form class="php-email-form" id="CrearUsuario" runat="server">
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
                                            <h2>Agregar Usuario</h2>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="txtUsuario" class="form-control" placeholder="Usuario" data-rule="minlen:1" data-msg="Please enter at least 1 chars" runat="server"></asp:TextBox>
                                            <div class="validate"></div>
                                        </div>
                                        <div class="form-row">
                                            <div class="col-lg-6 form-group">
                                                <asp:TextBox ID="txtNombre" class="form-control" placeholder="Primer Nombre" data-rule="minlen:3" data-msg="Please enter at least 2 chars" runat="server"></asp:TextBox>
                                                <div class="validate"></div>
                                            </div>
                                            <div class="col-lg-6 form-group">
                                                <asp:TextBox ID="txtSegundoNom" class="form-control" placeholder="Segundo Nombre" data-rule="minlen:3" data-msg="Please enter at least 2 chars" runat="server"></asp:TextBox>
                                                <div class="validate"></div>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="col-lg-6 form-group">
                                                <asp:TextBox ID="txtApellido" class="form-control" runat="server" placeholder="Primer Apellido" data-rule="minlen:3" data-msg="Please enter at least 2 chars"></asp:TextBox>
                                                <div class="validate"></div>
                                            </div>
                                            <div class="col-lg-6 form-group">
                                                <asp:TextBox ID="txtSegundoA" class="form-control" placeholder="Segundo Apellido" data-rule="minlen:3" data-msg="Please enter at least 2 chars" runat="server"></asp:TextBox>
                                                <div class="validate"></div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="txtDetalle" class="form-control" placeholder="Detalle"
                                                data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" runat="server"></asp:TextBox>
                                            <div class="validate"></div>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="txtPassword" class="form-control" placeholder="Contraseña"
                                                data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" runat="server"></asp:TextBox>
                                            <div class="validate"></div>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="txtCedula" class="form-control" placeholder="Cedula" data-rule="minlen:9" data-msg="Please enter at least 9 chars of subject" runat="server"></asp:TextBox>
                                            <div class="validate"></div>
                                        </div>
                                        <div class="form-row">
                                            <div class="col-lg-6 form-group">
                                                <asp:TextBox ID="txtTelefono" class="form-control" placeholder="Teléfono"
                                                    data-rule="minlen:8" data-msg="Please enter at least 8 chars of subject" runat="server"></asp:TextBox>
                                                <div class="validate"></div>
                                            </div>
                                            <div class="col-lg-6 form-group">
                                                <asp:TextBox ID="txtCorreo" class="form-control" placeholder="Email"
                                                    data-rule="email" data-msg="Please enter a valid email" runat="server"></asp:TextBox>
                                                <div class="validate"></div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="txtDireccion" class="form-control" Rows="3" data-rule="required"
                                                data-msg="Please write your address" placeholder="Dirección" runat="server"></asp:TextBox>
                                            <div class="validate"></div>
                                        </div>
                                        <div class="form-row">
                                            <div class="col-lg-6 form-group">
                                                <label for="rol" class="col-sm-2 col-form-label">Grupo</label>
                                                <asp:DropDownList ID="dropDownDescGrupo" runat="server" DataSourceID="GruposDB" DataTextField="Descripcion" DataValueField="GrupoID" class="form-control"></asp:DropDownList>
                                                <asp:SqlDataSource ID="GruposDB" runat="server" ConnectionString="<%$ ConnectionStrings:UsuariosConnectionString %>" SelectCommand="SELECT * FROM [Grupo]"></asp:SqlDataSource>
                                            </div>
                                            <div class="col-lg-6 form-group">
                                                <label for="rol" class="col-sm-2 col-form-label">Rol</label>
                                                <asp:DropDownList ID="ddlRoles" class="form-control" runat="server" DataSourceID="RolDatabase" DataTextField="Descripcion" DataValueField="RolID"></asp:DropDownList>
                                                <asp:SqlDataSource ID="RolDatabase" runat="server" ConnectionString="<%$ ConnectionStrings:UsuariosConnectionString %>" SelectCommand="SELECT * FROM [Rol]"></asp:SqlDataSource>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="addphoto" class="col-sm-2 col-form-label">Fotografía</label>
                                            <asp:FileUpload ID="fuFoto" class="form-control-file" runat="server" />
                                        </div>


                                        <div class="row">
                                            <div class="col-lg-6 d-flex align-items-stretch">
                                                <div class="info-box">
                                                    <h3>Coordenadas</h3>
                                                    <div class="form-group row">
                                                        <label for="latitud" class="col-sm-2 col-form-label col-form-label-sm">X</label>
                                                        <div class="col-sm-8">
                                                            <asp:TextBox ID="txtLatitud" class="form-control latitud" name="latitud" 
                                                                runat="server" ></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Y</label>
                                                        <div class="col-sm-8">
                                                        <asp:TextBox ID="txtLongitud" class="longitud form-control" name="longitud" 
                                                            runat="server" ></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 d-flex align-items-stretch" data-aos="fade-up">
                                                <div class="info-box">
                                                    <div id="map"></div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="text-center">
                                            <asp:Button ID="btnCrearUsuario" runat="server" OnClick="btnCrearUsuario_Click" Text="Crear Usuario" />
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- End Contact Us Section -->
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
    
    <script src="assets/js/script.js"></script>
    <script
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBxs6kENvU9MF7qMBw-DXIbdQFHMRLaiNs&callback=iniciarMap"></script>
    
    <script>
        $('.js-pscroll').each(function () {
            var ps = new PerfectScrollbar(this);

            $(window).on('resize', function () {
                ps.update();
            })
        });

    </script>
    
    <script type="module" src="assets/js/setValues.js"></script>

</body>
    <script src="assets/js/setCoordenatesValues.js"></script>
    <script src="assets/js/Mapa.js"></script>

</html>
