<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>FACTURACIONUDEC</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="robots" content="all,follow">
        <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/fontastic.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
        <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
        <link rel="stylesheet" href="css/custom.css">
        <link rel="shortcut icon" href="img/favicon.ico">
    </head>
    <body>
        <div class="page">
            <!-- Main Navbar-->
            <header class="header">
                <nav class="navbar" style="padding-bottom: 0px !important;padding-top: 7px">

                    <div class="container-fluid">
                        <div class="navbar-holder d-flex align-items-center justify-content-between" >
                            <!-- Navbar Header-->
                            <div class="navbar-header">
                                <!-- Navbar Brand --><a href="#" class="navbar-brand d-none d-sm-inline-block">
                                    <div class="brand-text d-none d-lg-inline-block"><img width="75px"src="img/Logo.png"></div>
                                    <!--<div class="brand-text d-none d-lg-inline-block"><span>Bootstrap </span><strong>Dashboard</strong></div>-->
                                    <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>BD</strong></div></a>
                                <!-- Toggle Button--><a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
                            </div>
                            <!-- Navbar Menu -->
                            <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">

                                <!-- Notifications-->
                                <!--                                <li class="nav-item dropdown"> <a id="notifications" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-bell-o"></i><span class="badge bg-red badge-corner">12</span></a>
                                                                    <ul aria-labelledby="notifications" class="dropdown-menu">
                                                                        <li><a rel="nofollow" href="#" class="dropdown-item"> 
                                                                                <div class="notification">
                                                                                    <div class="notification-content"><i class="fa fa-envelope bg-green"></i>You have 6 new messages </div>
                                                                                    <div class="notification-time"><small>4 minutes ago</small></div>
                                                                                </div></a></li>
                                                                        <li><a rel="nofollow" href="#" class="dropdown-item"> 
                                                                                <div class="notification">
                                                                                    <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>
                                                                                    <div class="notification-time"><small>4 minutes ago</small></div>
                                                                                </div></a></li>
                                                                        <li><a rel="nofollow" href="#" class="dropdown-item"> 
                                                                                <div class="notification">
                                                                                    <div class="notification-content"><i class="fa fa-upload bg-orange"></i>Server Rebooted</div>
                                                                                    <div class="notification-time"><small>4 minutes ago</small></div>
                                                                                </div></a></li>
                                                                        <li><a rel="nofollow" href="#" class="dropdown-item"> 
                                                                                <div class="notification">
                                                                                    <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>
                                                                                    <div class="notification-time"><small>10 minutes ago</small></div>
                                                                                </div></a></li>
                                                                        <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>view all notifications                                            </strong></a></li>
                                                                    </ul>
                                                                </li>-->

                                <!-- Languages dropdown    -->

                                <!-- Logout    -->
                                <form action="LogoutController" method="post" id="logout">
                                    <li class="nav-item" style="cursor: pointer;"><a onclick="document.getElementById('logout').submit()" class="nav-link logout"> <span class="d-none d-sm-inline">Cerrar sesion</span><i class="fa fa-sign-out"></i></a></li>
                                </form>
                            </ul>
                        </div>
                    </div>
                </nav>
            </header>
            <div class="page-content d-flex align-items-stretch"> 
                <!-- Side Navbar -->
                <nav class="side-navbar">
                    <!-- Sidebar Header-->
                    <div class="sidebar-header d-flex align-items-center">
                        <div class="avatar"><img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>
                        <div class="title">
                            <h1 class="h4"><c:out value="${usu}" /></h1>
                            <p>Administrador</p>
                        </div>
                    </div>
                    <!-- Sidebar Navidation Menus--><span class="heading">Menu</span>
                    <ul class="list-unstyled">
                        <form id="crearUsuario" method="post" action="AdministradorControllerCrearUsuario">
                            <li>


                                <a onclick="document.getElementById('crearUsuario').submit()"> <i class="fa fa-users"></i>Crear usuarios</a>
                                <input hidden type="text" name="usu" value="<c:out value="${usu}" />">

                            </li>
                        </form>

                        <form id="crearCliente" method="post" action="AdministradorControllerCrearCliente">
                            <li class="active">


                                <a onclick="document.getElementById('crearCliente').submit()"> <i class="fa fa-star"></i>Crear cliente </a>
                                <input hidden type="text" name="usu" value="<c:out value="${usu}" />">



                            </li>
                        </form>
                        <form id="crearProducto" method="post" action="AdministradorControllerCrearProducto">
                            <li>


                                <a onclick="document.getElementById('crearProducto').submit()"> <i class="fa fa-barcode"></i>Crear producto </a>
                                <input hidden type="text" name="usu" value="<c:out value="${usu}" />">



                            </li>
                        </form>
                        <form id="crearFactura" method="post" action="AdministradorControllerCrearFactura">
                            <li>


                                <a onclick="document.getElementById('crearFactura').submit()">  <i class="icon-padnote"></i>Crear factura </a>
                                <input hidden type="text" name="usu" value="<c:out value="${usu}" />">



                            </li>
                        </form>

                    </ul>
                </nav>
                <div class="content-inner">
                    <!-- Page Header-->
                    <header class="page-header">
                        <div class="container-fluid">
                            <h2 class="no-margin-bottom">Crear clientes</h2>
                        </div>
                    </header>
                    <!-- Dashboard Counts Section-->
                    <section class="dashboard-counts no-padding-bottom">
                        <div class="container-fluid">
                            <div class="row bg-white has-shadow">
                                <div class="col-4"></div>
                                <div class="col-8">
                                    <form class="form-horizontal" method="post" action="CrearNuevoCliente">
                                        <input hidden type="text" name="usu" value="<c:out value="${usu}" />">
                                        <fieldset>

                                            <!-- Form Name -->
                                            <div class="form-group">
                                                <label class="col-md-6 control-label" for="tipDoc">Tipo de documento</label>
                                                <div class="col-md-6">
                                                    <select id="tipDoc" name="tipDoc" class="form-control">
                                                        <option value="" selected disabled >Seleccione una opcion</option>
                                                        <option value="CC">Cedula de ciudadania</option>
                                                        <option value="NIT">Número de Identificación Tributaria</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-md-6 control-label" for="numDoc">Numero:</label>  
                                                <div class="col-md-6">
                                                    <input id="numDoc" name="numDoc" type="text" placeholder="Ingrese numero" class="form-control input-md" required="">

                                                </div>
                                            </div>

                                            <!-- Password input-->
                                            <div class="form-group">
                                                <label class="col-md-6 control-label" for="nom">Nombre:</label>
                                                <div class="col-md-6">
                                                    <input id="nom" name="nom" type="text" placeholder="Ingrese nommbre" class="form-control input-md" required="">

                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-md-6 control-label" for="tel">Telefono</label>
                                                <div class="col-md-6">
                                                    <input id="tel" name="tel" type="text" onkeyup="this.value = this.value.replace(/[^\d]/, '')" placeholder="Ingrese telefono" class="form-control input-md" required="">

                                                </div>
                                            </div>

                                            <!-- Select Basic -->
                                            <div class="form-group">
                                                <label class="col-md-6 control-label" for="tipUser">Tipo de usuario</label>
                                                <div class="col-md-6">
                                                    <select id="tipUser" name="tipUser" class="form-control">
                                                        <option value="" selected disabled >Seleccione una opcion</option>
                                                        <option value="Natural">Natural</option>
                                                        <option value="Juridico">Juridica</option>
                                                        <option value="Empresa">Empresa</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-md-6 control-label" for="razon">Razon social:</label>
                                                <div class="col-md-6">
                                                    <input id="nom" name="razon" type="razon" placeholder="Ingrese razon social" class="form-control input-md" required="">

                                                </div>
                                            </div>

                                            <!-- Button -->
                                            <div class="form-group">
                                                <label class="col-md-6 control-label" for="btnUsu"></label>
                                                <div class="col-md-6">
                                                    <button id="btnUsu" name="btnUsu" class="btn btn-success">Crear</button>
                                                </div>
                                            </div>

                                        </fieldset>
                                    </form>

                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="tables">   
                        <div class="container-fluid">
                            <div class="row">

                                <div class="col-lg-12">
                                    <div class="card">

                                        <div class="card-header d-flex align-items-center">
                                            <h3 class="h4">Clientes creados</h3>
                                        </div>
                                        <div class="card-body">
                                            <div class="table-responsive">                       
                                                <table class="table table-striped table-hover">
                                                    <thead>
                                                        <tr>
                                                            <th>#</th>
                                                            <th>TipDoc.</th>
                                                            <th>Numero</th>
                                                            <th>Nombre</th>
                                                            <th>Telefono</th>
                                                            <th>Tipo</th>
                                                            <th>Razon Social</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="item" items="${lstClientes}" varStatus="loop">
                                                            <tr>
                                                                <th scope="row"><c:out value="${loop.index+1}" /></th>
                                                                <td><c:out value="${item.getTipDoc()}" /></td>
                                                                <td><c:out value="${item.getNumdoc()}" /></td>
                                                                <td><c:out value="${item.getNombre()}" /></td>
                                                                <td><c:out value="${item.getTelefono()}" /></td>
                                                                <td><c:out value="${item.getTipo()}" /></td>
                                                                <td><c:out value="${item.getRazonSocial()}" /></td>


                                                            </tr>

                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </section>

                    <footer class="main-footer">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-sm-6">
                                    <p>Your company &copy; 2017-2019</p>
                                </div>
                                <div class="col-sm-6 text-right">
                                    <p>Design by <a href="https://bootstrapious.com/p/admin-template" class="external">Bootstrapious</a></p>
                                    <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
                                </div>
                            </div>
                        </div>
                    </footer>
                </div>
            </div>
        </div>
        <!-- JavaScript files-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/popper.js/umd/popper.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="vendor/jquery.cookie/jquery.cookie.js"></script>
        <script src="vendor/chart.js/Chart.min.js"></script>
        <script src="vendor/jquery-validation/jquery.validate.min.js"></script>
        <script src="js/charts-home.js"></script>
        <script src="js/index.js"></script>
        <!-- Main File-->
        <script src="js/front.js"></script>

    </body>
</html>