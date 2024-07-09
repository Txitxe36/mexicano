
<%@page import="logica.MasComida"%>
<%@page import="logica.Controladora"%>
<%@page import="java.util.List"%>
<%@page import="logica.Comida"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">    <title>Fogones Mexicanos</title>
    <link rel="icon" type="image/png" sizes="16x16"  href="/images/fondos/favicon-16x16.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="theme-color" content="#ffffff">
    <link rel="stylesheet" href="./css/style.css">
    <title>Fogones mexicanos</title>
  </head>
<body>
    <!--EMPIEZA EL HEADER-->
        <header class="container">
          
            <nav class="navbar navbar-expand-lg navbar-light ">
                <a class="navbar-brand mr-5 ml-5" href="#"><img src="img/texto.png" style="width: 80px;" alt="imagen de logo" ></a>
                
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
              
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                      <a class="nav-link" href="index.html">Inicio <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="form_contacto.html">Contacto</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="acerca.html">Acerca de</a>
                    </li>
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
                        Recetas
                      </a>
                      <div class="dropdown-menu">
                        <a class="dropdown-item" href="bebidas.html">Bebidas</a>
                        <a class="dropdown-item" href="tacos.html">Tacos</a>
                        <a class="dropdown-item" href="desayuno.html">Desayuno y almuerzo</a>
                        <a class="dropdown-item" href="pescados.html">Pescados y mariscos</a>
                        <div class="dropdown-divider"></div>
                       
                      </div>
                    </li>
                     <li class="nav-item">
                      <a class="nav-link" href="index.jsp">Volver al sistema</a>
                    </li>
                  </ul>
                  <form class="form-inline my-2 my-lg-0 ">
                    <input class="form-control mr-sm-2 form-buscar" type="search" placeholder="Buscar" aria-label="Search">
                    <button class="btn buscar  my-2 my-sm-0 " id="dataTable"  type="submit">Buscar</button>
                  </form>
                </div>
              </nav>
        </header>
       <!--TERMINA EL HEADER-->

        

      <!--EMPIEZA EL MAIN-->
        <main class="container-fluid fondo">
              <h1 class="titulo text-center m-3">Recetas tradicionales de la cocina mexicana</h1>
              <p class="subtitulo text-center mt-5">Explora cientos de recetas mexicanas 100% auténticas con fotos e instrucciones paso a paso fáciles de preparar.</p>
              <p class="subtitulo  text-center ">¡Cocina deliciosos platos tipo restaurante preparados desde la comodidad de tu casa!</p>
        <!--EMPIEZA LA SECCION CON LAS PRIMERAS 4 IMAGENES-->
          <section class="sopas">
               
            <h2 class="titulo-seccion ml-5 mt-5">Nuevas recetas</h2>
                <%
                     HttpSession misession = request.getSession();
                    List<Comida> listaComidas = (List)request.getSession().getAttribute("listaComidas");
                    List<MasComida> listaMasComidas = (List)request.getSession().getAttribute("listaMasComidas");
              %>
            
              <div class=" row justify-content-center ">
                      <% for(Comida comida : listaComidas){%>
                  <div class="col-md-3 card m-3 border-0" style="width: 18rem;">
                       <form name="traer" action="SvTraerReceta" method="GET">
                            <button type="submit" class="btn btn-user btn-block" style="margin-left:5px;">
                                <img src="<%= comida.getRuta()%>" width="450" height="300" class="card-img-top" alt="<%= comida.getNombre()%>">
                                <i class="fas fa-pencil-alt"></i>
                            </button>
                            <input type="hidden" name="id" value="<%= comida.getId_comida()%>">
                        </form>
                    
                      <!-- <a href="<%= comida.getNombre()%>.jsp"><img src="<%= comida.getRuta()%>" width="450" height="300" class="card-img-top" alt="<%= comida.getNombre()%>"></a>  -->     
                    <div class="card-body">
                          
                      <h5 class="card-title" name="nombreComida"><%= comida.getNombre()%></h5>                   
                     </div>
                    <div class="card-body">
                        <!-- <p><%=comida.getDescripcion()%></p> -->  
                      <p><i class="bi bi-clock"></i><%= comida.getTiempo()%></p>          
                    </div>
                      
                  
                  </div>
                    
                  <%}%>
                 
             
            </div>
        </section>
         <!--TERMINA LA SECCION DE IMAGENES-->

          <!--EMPIEZA EL LA SECCION CON NUEVAS RECETAS Y EL VIDEO-->
           <!--aca vamos a separar en otro div al video -->
        <section class=" nuevas-recetas justify-content-center mb-5">
          <div class="nuevas mt-5">

            <div class="video">
              <h3 class="recetas text-center ml-5">Receta del día</h3>
            </div>
           
            <div class="video mt-5 "> 
              <iframe width="50%" height="445" class=" video-youtube" src="https://www.youtube.com/embed/M-nyCFfG5UE?si=ORfUyB-aGzE__1p7" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
            </div>

            <h2 class="titulo-seccion mt-5 ml-5">Más Recetas...</h2>
            
            <!--
            <div class="container-image row justify-content-center">
              <div class="card m-3 border-0" style="width: 18rem;">
               <img src="./images/salsa-de-habanero-cremosa-receta-2-1.jpg" class="card-img-top" alt="salsa de habanero cremosa">      
                    <h5 class="card-title text-center">Salsa de chile habanero cremosa</h5>
                </div>

                <div class="card m-3 border-0" style="width: 18rem;">
                  <img src="./images/Cerdo-Encacahuatado.jpg" class="card-img-top" alt="cerdo encacahuatado">
                  
                    <h5 class="card-title text-center">Cerdo encacahuatado</h5>
                  
                  
                </div>
                <div class="card m-3 border-0" style="width: 18rem;">
                  <img src="./images/Enchiladas-con-cacahuate-y-chile-poblano-1a.jpg" class="card-img-top" alt="Enchiladas de cachuate">
                  
                    <h5 class="card-title">Enchiladas de cacahuate y chile poblano</h5>
                  
                  
                </div>
                <div class="card m-3 border-0" style="width: 18rem;">
                  <img src="./images/Bistec-con-Acelgas-en-tomate-1-1024x1536.jpg" class="card-img-top" alt="Bistec con acelga">
                  
                    <h5 class="card-title">Bistec de res con acelgas</h5>
                  
                 
                </div>

                <div class="card m-3 border-0" style="width: 18rem;">
                  <img src="./images/Margarita-de-mango-congelado-1.jpg" class="card-img-top" alt="Margarita de mango">
                  
                    <h5 class="card-title">Margarita de mango congelado</h5>
                  
                 
                </div>
                <div class="card m-3 border-0" style="width: 18rem;">
                  <img src="./images/Tamales-de-frijol-con-chicharrones-2.jpg" class="card-img-top" alt="Tamales de frijol">
                  
                    <h5 class="card-title">Tamales de frijol con chicharron</h5>
                  
                  
                </div>
                <div class="card m-3 border-0" style="width: 18rem;">
                  <img src="./images/Dessert-empanadas-16.jpg" class="card-img-top" alt="Empanadas dulces">
                  
                    <h5 class="card-title">Empanadas dulces</h5>
                  
                  
                </div>
                <div class="card m-3 border-0" style="width: 18rem;">
                  <img src="./images/Salsa-de-Tomate-chiquito-cherry-2.jpg" class="card-img-top" alt="Salsa de tomate cherry">
                  
                    <h5 class="card-title">Salsa de tomates cherry</h5> 
                </div>
            </div>
          -->
           <div class=" row justify-content-center ">
                      <% for(MasComida masComida : listaMasComidas){%>
                  <div class="col-md-3 card m-3 border-0" style="width: 18rem;">
                       <form name="traer" action="SvTraerMasReceta" method="GET">
                            <button type="submit" class="btn btn-user btn-block" style="margin-left:5px;">
                                <img src="<%= masComida.getRuta()%>" width="450" height="300" class="card-img-top" alt="<%= masComida.getNombre()%>">
                                <i class="fas fa-pencil-alt"></i>
                            </button>
                            <input type="hidden" name="id" value="<%= masComida.getId_masComida()%>">
                        </form>
                    
                      <!-- <a href="<%= masComida.getNombre()%>.jsp"><img src="<%= masComida.getRuta()%>" width="450" height="300" class="card-img-top" alt="<%= masComida.getNombre()%>"></a>  -->     
                    <div class="card-body">
                          
                      <h5 class="card-title" name="nombreComida"><%= masComida.getNombre()%></h5>                   
                     </div>
                    <div class="card-body">
                        <!-- <p><%=masComida.getDescripcion()%></p> -->  
                      <p><i class="bi bi-clock"></i><%= masComida.getTiempo()%></p>          
                    </div>
                      
                  
                  </div>
                    
                  <%}%>
                 
             
            </div>
          <!-- ACA EMPIEZA LAS RECETAS QUE YA ESTABAN EN LA PAGINA 

            <div class=" row justify-content-center">
              <div class="card card-receta m-3 border-0" style="width: 18rem;">
               <a href="salsa_chile.html"><img src="./images/salsa-de-habanero-cremosa-receta-2-1.jpg" class="card-img-top" alt="Sopa de pasta con espinacas"></a>    
                
                  <h5 class="card-title">Salsa de chile habanero</h5>                   
                 
              </div>
              <div class="card card-receta m-3 border-0" style="width: 18rem;">
              <a href="cerdo_encacahuatado.html"><img src="./images/puerco-encacahuatado-500x500.jpg" class="card-img-top" alt="Espagueti rojo a la mexicana en salsa de tomate"></a>  
                <div class="card-body">
                  <h5 class="card-title">Cerdo encacahuatado</h5>
                </div>
              </div>
              <div class="card card-receta m-3 border-0"  style="width: 18rem;">
               <a href="enchiladas.html"><img src="./images/Enchiladas-con-cacahuate-y-chile-poblano-1a.jpg" class="card-img-top" alt="sopa de papa y chile poblano"></a> 
                <div class="card-body">
                  <h5 class="card-title">Enchiladas de cacahuate y chile poblano</h5>
                </div>
              </div>
              <div class="card card-receta m-3 border-0" style="width: 18rem;">
               <a href="bistec_acelgas.html"><img src="./images/Bistec-con-Acelgas-en-tomate-1-1024x1536.jpg" class="card-img-top" alt="Caldo Tlalpeño"></a> 
                <div class="card-body">
                  <h5 class="card-title">Bistec de res con acelgas</h5>
                </div>       
              </div>
              <div class="card card-receta m-3 border-0" style="width: 18rem;">
                <a href="margarita.html"><img src="./images/Margarita-de-mango-congelado-1.jpg" class="card-img-top" alt="Caldo Tlalpeño"></a> 
                 <div class="card-body">
                   <h5 class="card-title">Margarita de mango congelado</h5>
                 </div>       
               </div>
               <div class="card card-receta m-3 border-0" style="width: 18rem;">
                <a href="tamales_frijol.html"><img src="./images/Tamales-de-frijol-con-chicharrones-2.jpg" class="card-img-top" alt="Caldo Tlalpeño"></a> 
                 <div class="card-body">
                   <h5 class="card-title">Tamales de frijol con chicharrón</h5>
                 </div>       
               </div>
               <div class="card card-receta m-3 border-0" style="width: 18rem;">
                <a href="empanadas_dulces.html"><img src="./images//Dessert-empanadas-16.jpg" class="card-img-top" alt="Caldo Tlalpeño"></a> 
                 <div class="card-body">
                   <h5 class="card-title">Empanadas dulces</h5>
                 </div>       
               </div>
               <div class="card card-receta m-3 border-0" style="width: 18rem;">
                <a href="salsa_tomate.html"><img src="./images/Salsa-de-Tomate-chiquito-cherry-2.jpg" class="card-img-top" alt="Caldo Tlalpeño"></a> 
                 <div class="card-body">
                   <h5 class="card-title">Salsa de tomates cherry</h5>
                 </div>       
               </div>
          
          
           Y ACA TERMINAN LAS RECETAS QUE YA ESTABAN EN LA PAGINA-->
          
        </div>
        </section>
        <section>
          <h2 class="titulo-seccion mt-5 ml-5">Recetas de...</h2>
          <div class="container-image row justify-content-center mt-5 mb-3">
            <div class=" m-3 border-0 image-container" style="width: 18rem;">
                <img src="./images/bebidas-categoria-360x360.jpg" class="card-img-top circle" alt="bebidas">
                <div class="overlay">
                  <a href="bebidas.html"> <h5 class="card-title text-center">Bebidas</h5></a>
                </div>
              </div>

              <div class="m-3 border-0 image-container" style="width: 18rem;">
                <img src="./images/desayuno-categoria-360x360.jpg" class="card-img-top circle" alt="Desayunos y almuerzos">
                <div class="overlay">
                <a href="desayuno.html"><h5 class="card-title text-center">Desayunos y Almuerzos</h5></a>  
               </div>
              </div>
              <div class=" m-3 border-0 image-container" style="width: 18rem;">
                <img src="./images/tacos-categoria-360x360.jpg" class="card-img-top circle" alt="Tacos">
                <div class="overlay">
                 <a href="tacos.html"><h5 class="card-title">Tacos</h5></a> 
               </div>
              </div>
              <div class="m-3 border-0 image-container" style="width: 18rem;">
                <img src="./images/pescado-categoria-360x360.jpg" class="card-img-top circle" alt="Pescados y mariscos">
                <div class="overlay">
                 <a href="pescados.html"><h5 class="card-title">Pescados y mariscos</h5></a> 
               </div>
                 
              </div>

            
              
             
             
          </div>
        </section>
         <!--TERMINA LA SECCION DE NUEVAS RECETAS Y VIDEOS--> 
        </main>
         <!--TERMINA EL MAIN-->
          <!--EMPIEZA EL FOOTER-->
        <footer>
          <div class="contenedor text-center">
           
             <div class="sociales ">
              <a target="_blank"    href="https://es-la.facebook.com/"><i class="bi bi-facebook"></i></a>
              <a target="_blank" href="https://www.whatsapp.com/"><i class="bi bi-whatsapp"></i></a>
              <a target="_blank"  href="https://www.instagram.com/fogonesmxcac/"><i class="bi bi-instagram"></i></a>
              <a target="_blank"  href="https://twitter.com/"> <i class="bi bi-twitter-x"></i></a>
             </div>
             <p class="copy mt-2">Grupo 7 - 2024 &copy; Todos los derechos reservados.</p> 
             <p class="mt-2">Web diseñada por Enzo Ranelli, Maximiliano Palacios, Ronaldo Tapia y Miguel García.</p>
          </div>
      </footer>
       <!--TERMINA EL FOOTER-->

              <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
              <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
              <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>    
              <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  </body>
</html>
