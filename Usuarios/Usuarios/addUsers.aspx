<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addUsers.aspx.cs" Inherits="Usuarios.addUsers" %>

<!DOCTYPE html>
<html lang="en">

<head>
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
                    <li><a href="index.html">Inicio</a></li>
                    <li class="drop-down"><a>Usuario</a>
                        <ul>
                            <li class="active"><a href="addUsers.html">Agregar</a></li>
                            <li><a href="editUsers.html">Editar</a></li>
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

        <!-- ======= Breadcrumbs Section ======= -->
        <section class="breadcrumbs">
            <div class="container">

                <div class="d-flex justify-content-between align-items-center">
                    <ol>
                        <li><a>Inicio</a></li>
                        <li><a>Usuarios</a></li>
                        <li><a href="addUsers.html">Agregar</a></li>

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
                <!-- ======= Contact Us Section ======= -->
                <section id="contact" class="contact">
                    <div class="container">

                        <div class="section-title">
                            <h2>Agregar Usuario</h2>
                        </div>

                        <div class="row">

                            <div class="col-lg-12" data-aos="fade-up" data-aos-delay="300">
                                <form action="forms/contact.php" method="post" role="form" class="php-email-form">
                                    <div class="form-group">
                                        <input type="text" name="user" class="form-control" id="user" placeholder="Usuario"
                                            data-rule="minlen:1" data-msg="Please enter at least 1 chars" />
                                        <div class="validate"></div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-lg-6 form-group">
                                            <input type="text" name="primerNombre" class="form-control" id="primerNombre"
                                                placeholder="Primer Nombre" data-rule="minlen:3" data-msg="Please enter at least 2 chars" />
                                            <div class="validate"></div>
                                        </div>
                                        <div class="col-lg-6 form-group">
                                            <input type="text" name="segundoNombre" class="form-control" id="segundoNombre"
                                                placeholder="Segundo Nombre" data-rule="minlen:3" data-msg="Please enter at least 2 chars" />
                                            <div class="validate"></div>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-lg-6 form-group">
                                            <input type="text" name="primerApellido" class="form-control" id="primerApellido"
                                                placeholder="Primer Apellido" data-rule="minlen:3" data-msg="Please enter at least 2 chars" />
                                            <div class="validate"></div>
                                        </div>
                                        <div class="col-lg-6 form-group">
                                            <input type="text" name="segunoApellido" class="form-control" id="segundoApellido"
                                                placeholder="Segundo Apellido" data-rule="minlen:3" data-msg="Please enter at least 2 chars" />
                                            <div class="validate"></div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="detail" id="detail" placeholder="Detalle"
                                            data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                                        <div class="validate"></div>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" name="password" id="password" placeholder="Contraseña"
                                            data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                                        <div class="validate"></div>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="cedula" id="cedula" placeholder="Cedula"
                                            data-rule="minlen:9" data-msg="Please enter at least 9 chars of subject" />
                                        <div class="validate"></div>
                                    </div>

                                    <div class="form-row">
                                        <div class="col-lg-6 form-group">
                                            <input type="tel" class="form-control" name="phone" id="phone" placeholder="Teléfono"
                                                data-rule="minlen:8" data-msg="Please enter at least 8 chars of subject" />
                                            <div class="validate"></div>
                                        </div>
                                        <div class="col-lg-6 form-group">
                                            <input type="email" class="form-control" name="email" id="email" placeholder="Email"
                                                data-rule="email" data-msg="Please enter a valid email" />
                                            <div class="validate"></div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <textarea class="form-control" name="address" rows="3" data-rule="required"
                                            data-msg="Please write your address" placeholder="Dirección"></textarea>
                                        <div class="validate"></div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-lg-6 form-group">
                                            <label for="grupo" class="col-sm-2 col-form-label">Grupo</label>
                                            <select class="form-control" id="grupo">
                                                <option>Finanzas</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                            </select>
                                        </div>
                                        <div class="col-lg-6 form-group">
                                            <label for="rol" class="col-sm-2 col-form-label">Rol</label>
                                            <select class="form-control" id="rol">
                                                <option>Programador</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                            </select>
                                        </div>

                                    </div>
                                    <div class="form-group">
                                        <label for="addphoto" class="col-sm-2 col-form-label">Fotografía</label>
                                        <input type="file" class="form-control-file" id="addphoto">
                                    </div>

                                    <div class="mb-3">
                                        <div class="loading">Loading</div>
                                        <div class="error-message"></div>
                                        <div class="sent-message">Se agrego el usuario correctamente!</div>
                                    </div>
                                    <div class="text-center">
                                        <button type="submit">Agregar Usuario</button></div>

                                </form>
                            </div>

                        </div>

                    </div>
                </section>
                <!-- End Contact Us Section -->

                <section id="contact" class="contact">
                    <div class="container">

                        <div class="section-title">
                            <h2>Posición GPS</h2>
                            <div class="info-box">
                                <i class="bx bx-map"></i>
                                <h3></h3>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-lg-6 d-flex align-items-stretch" data-aos="fade-up">
                                <div class="info-box">
                                    <h3>Coordenadas</h3>
                                    <form>

                                        <div class="form-group row">
                                            <label for="latitud" class="col-sm-2 col-form-label col-form-label-sm">X</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control form-control-sm" id="latitud" disabled>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Y</label>
                                            <div class="col-sm-8">
                                                <input type="email" class="form-control form-control-sm" id="longitud" disabled>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-primary mb-2">Obtener Posición GPS</button>
                                    </form>
                                </div>
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
                            <li><i class="bx bx-chevron-right"></i><a href="index.html">Inicio</a></li>
                            <li><i class="bx bx-chevron-right"></i><a href="addUsers.html">Usuarios</a></li>
                            <li><i class="bx bx-chevron-right"></i><a href="groupos.html">Grupos</a></li>
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
