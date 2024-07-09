<%-- 
    Document   : bodyprimeraparte
    Created on : 23 abr. 2024, 18:17:02
    Author     : migue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <body id="page-top">
        <!-- VALIDACION DE INGRESO A LA PAGINA DEL LOGIN,
        SI NO SE LOGUEO NO PUEDE INGRESAR AL SISTEMA-->
        
        <%
        HttpSession misession = request.getSession();
        String usuario = (String) request.getSession().getAttribute("usuario");
       
        if(usuario==null){
        response.sendRedirect("sinLogin.jsp");
            }
        %>

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-success sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.jsp">
                <div class="sidebar-brand-icon rotate-n-15">
                   <i class="fas fa-solid fa-pepper-hot"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Fogones Mexicanos</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">
                   <i class="fas fa-solid fa-bars"></i>
                    <span>Menú</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Gestión
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                 <i class="fas fa-solid fa-utensils"></i>
                    <span>Recetas</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Acciones:</h6>
                        <a class="collapse-item" href="SvComida">Ver Recetas</a>
                        <a class="collapse-item" href="altaComida.jsp">Altas de recetas</a>
                        
                    </div>
                </div>
            </li>
            
            
              <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseOne"
                    aria-expanded="true" aria-controls="collapseOne">
                 <i class="fas fa-solid fa-utensils"></i>
                    <span>Más Recetas</span>
                </a>
                <div id="collapseOne" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Acciones:</h6>
                        <a class="collapse-item" href="SvMasComida">Ver Más Recetas</a>
                        <a class="collapse-item" href="altaMasComida.jsp">Altas de Más recetas</a>
                        
                    </div>
                </div>
            </li>


            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                   <i class="fas fa-solid fa-user"></i>
                    <span>Usuarios</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Acciones:</h6>
                        <a class="collapse-item" href="SvUsuario">Ver Usuarios</a>
                        <a class="collapse-item" href="altaUsuario.jsp">Alta de Usuarios</a>
                        
                    </div>
                </div>
                
                 
            </li>
             <hr class="sidebar-divider">
            
             <li class="nav-item active">
                <a class="nav-link" href="inicio.jsp">               
                   <i class="fas fa-solid fa-globe"></i>
                    <span>Ir a la Web</span></a>
            </li>
              <hr class="sidebar-divider">
            
             <li class="nav-item active">
                <a class="nav-link" href="login.jsp">               
                   <i class="fas fa-solid fa-door-open"></i>
                    <span>Salir</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
           


        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                  
                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                      

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><%=request.getSession().getAttribute("usuario")%></span>
                                <img class="img-profile rounded-circle"
                                    src="img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                   

                  

                </div>
</html>
