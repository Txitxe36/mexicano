
<%@page import="logica.Comida"%>
<%@page import="logica.MasComida"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
     <% Comida comida = (Comida)request.getSession().getAttribute("comidaTraer");
       
       %>
    <meta charset="UTF-8">
    <title><%= comida.getNombre()%> - Fogones mexicanos</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">    <title>Fogones Mexicanos</title>
    <link rel="icon" type="image/png" sizes="16x16"  href="/img/favicon-16x16.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="theme-color" content="#ffffff">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/nueva.css">
    
  </head>
<body>
    <!--EMPIEZA EL HEADER-->
        <header class="container">
          
            <nav class="navbar navbar-expand-lg navbar-light ">
                <a class="navbar-brand mr-5 ml-5" href="#"><img src="img/texto.png"  style="width: 80px;" alt="imagen de logo" ></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
              
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                      <a class="nav-link" href="inicio.jsp">Inicio <span class="sr-only">(current)</span></a>
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
                  <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2 form-buscar" type="search" placeholder="Buscar" aria-label="Search">
                    <button class="btn buscar  my-2 my-sm-0" type="submit">Buscar</button>
                  </form>
                </div>
              </nav>
        </header>
       <!--TERMINA EL HEADER-->
       
      

        <section class="container-nueva">
          <h1 class="text-center titulo mt-5 mb-5" name="nombreComida"><%= comida.getNombre()%>!!!</h1>
          <p class=" subtitulo text-center m-5"><%= comida.getDescripcion()%></p>
            <div class="formulario row">
                
                <div class="imagen col-3">
                  <img src="<%= comida.getRuta()%>" width="300px" height="260px" alt="" srcset="">
                </div>
               
                <div class="lista col-9">  
                 <b> Ingredientes:</b>
                  <ul>                          
                      <!-- comment   <li>1 cucharada. Aceite de Maíz Mazol</li>
                  <li>¾ tazas de zanahorias peladas y cortadas en cubitos</li>
                  <li>1 jitomate/tomate grande o 2 tomates roma picados</li>
                  <li>⅛ de una cebolla blanca grande picada</li>
                  <li>1 diente de ajo pequeño picado</li> 
                  </ul>
                </div>
                <div class="lista col-3">  
                  <ul>    
                   <li>4 tazas de agua</li>
                   <li>1 taza de pasta con forma de conchas pequeñas</li>
                   <li>2 cucharaditas Caldo de pollo</li>
                   <li>1½ taza de hojas espinacas cortadas</li>
                   <li>Sal al gusto</li>-->
                      <li>  <%= comida.getIngredientes()%></li>
                  </ul>
                </div>
            </div>

            <div class="row preparacion mt-4">
              <div class="row detalle ">
                <div class="col-3 text-center">
                  <p><b>TIEMPO DE PREPARACION</b> </p>
                  <p>5 mins</p>
                </div>
                <div class=" col-3 text-center">
                  <p> <b>TIEMPO DE COCCION</b> </p>
                  <p>20 mins</p>
                </div>
                <div class="col-3 text-center">
                  <p> <b>TIEMPO TOTAL</b> </p>
                  <p><%= comida.getTiempo()%></<p>
                </div>
              </div>            
              <div class="row detalle">
                  <div class="col-4 text-center">
                    <p><b>PLATO</b>  </p>
                    <p><%= comida.getTipo()%></p>
                  </div>
                  <div class="col-4 text-center">
                    <p> <b>CALORIAS</b> </p>
                    <p><%= comida.getKcal()%></p>
                  </div>
                  <div class="col text-center">
                    <p> <b>PORCIONES</b> </p>
                    <p><%= comida.getPorciones()%></p>
                  </div>
                </div>             
            </div>

            <div class="row preparacion">
              <div class="pasos col-12 text-center">
                <h4 class="mt-3 mb-3"><b>Preparación</b> </h4>
                <!-- comment   <p>Calienta el aceite en una olla mediana a fuego medio-alto.</p>
                <p>Una vez que el aceite esté caliente, agrega las zanahorias picadas y sofreir durante unos 5 minutos. Pasado este tiempo, deben verse semicocidas y tener un color naranja brillante.</p>    
                <p>Mientras se cocinan las zanahorias, coloca los tomates picados, la cebolla, el ajo y 2 tazas de agua en una licuadora. Procesar para hacer una salsa tersa. Reserva.</p>   
                <p> Ahora que sus zanahorias se han estado cocinando durante 5 minutos, añade la pasta y sofreir durante unos 3 minutos. Revuelve constantemente hasta obtener un color dorado claro en la pasta. Está bien si la pasta tiene algunas partes más doradas. ¡Esto agrega más sabor!</p>
                <p>Vierte la salsa de tomate, más 2 tazas adicionales de agua, en la cacerola. Agrega el caldo de pollo en polvo, y verifica si no necesita más sal (según tu gusto). Lleva la sopa a ebullición rápida subiendo el fuego a temperatura alta.</p>
                <p>Una vez que la sopa comience a hervir, cocinar a fuego bajo y cubre la cacerola. Cocina por 10 minutos a fuego lento. Por último, ya pasado este tiempo, añade las espinacas y revuelve, luego cocina por 5 minutos más. Retira la cacerola del fuego, ya que no quieres que las espinacas se cocinen demasiado. ¡Sirve en tazones pequeños y disfruta de tu Sopa de Pasta con espinacas!</p> 
                 -->  
                 <p><%= comida.getModopreparacion()%></p>
                </div>
            </div>

        </section>


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
  </body>
  </html>
