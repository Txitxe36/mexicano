<%-- 
    Document   : altaComida
    Created on : 23 abr. 2024, 18:18:12
    Author     : migue
--%>

<%@page import="logica.MasComida"%>
<%@page import="logica.Comida"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp" %>
<%@include file="components/bodyprimeraparte.jsp" %>
<h1>Edición de Comida</h1>
<p>Este es el apartado para modificar una comida del sistema de la sección Más recetas</p>

<% MasComida comida = (MasComida)request.getSession().getAttribute("comidaEditar"); %>


        <form class="user" action="SvEditarMasComida" method="POST">
           <div class="form-group row">
              <div class="col-sm-6 mb-3 mb-sm-0">
                 <input type="text" class="form-control form-control-user" name="nombreComida" id="nombreComida"
                        placeholder="Nombre" value="<%= comida.getNombre()%>">
              </div>
               <div class="col-sm-6">
                    <input type="text" class="form-control form-control-user"
                      name="descripcion"  id="descripcion" placeholder="Descripción" value="<%= comida.getDescripcion()%>">
                    </div>
             
            </div>
            <div class="form-group row">
                 <div class="col-sm-4 mb-3 mb-sm-0">
                     <input type="text" class="form-control form-control-user text-center" name="tiempo" id="tiempo"
                 placeholder="Tiempo" value="<%= comida.getTiempo()%>">
                </div>
                
                <div class="col-sm-4 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user text-center"
                    name="kcal"  id="kcal" placeholder="Kcal" value="<%= comida.getKcal()%>">
                </div>
                 <div class="col-sm-4">
                  <input type="text" class="form-control form-control-user text-center" name="tipo" id="tipo"
                    placeholder="Tipo" value="<%= comida.getTipo()%>">
               </div>
            </div>
             <div class="form-group row">
                 <div class="col-sm-3 mb-3 mb-sm-0">
                     <input type="number" min="1" class="form-control form-control-user text-center" name="porciones" id="porciones"
                 placeholder="porciones" value="<%= comida.getPorciones()%>">
                </div>
                
                <div class="col-sm-9 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user"
                    name="ruta"  id="ruta" placeholder="Ruta" value="<%= comida.getRuta()%>">
                </div>
            </div>
            <div class="form-group row">
                    
                 <div class="col-sm-12">
                     <!-- <input type="textarea" rows="10" cols="50" class="form-control form-control-user"
                      name="ingredientes"  id="ingredientes" placeholder="Ingredientes" value="<%= comida.getIngredientes()%>"> -->  
                      <label for="exampleFormControlTextarea1"></label>
                    <textarea class="form-control " id="exampleFormControlTextarea1" rows="5"  name="ingredientes"  id="ingredientes" placeholder="Ingredientes" value=""><%= comida.getIngredientes()%></textarea>
                    </div>
                    
            </div>
    
                 <div class="form-group row">
                    <div class="col-sm-12">
                        <!--  <input type="textarea" rows="10" cols="50" class="form-control form-control-user"
                      name="modopreparacion"  id="modopreparacion" placeholder="Modo de Preparación" value="<%= comida.getModopreparacion()%>"> --> 
                      <label for="exampleFormControlTextarea1"></label>
                    <textarea class="form-control " id="exampleFormControlTextarea1" rows="5" name="modopreparacion"  id="modopreparacion" placeholder="Modo de Preparación" ><%= comida.getModopreparacion()%></textarea>
                    </div>
                
                    
            </div>
                <button type="submit" class="btn btn-primary btn-user btn-block">
                     Guardar cambios
                </button>
                <hr>
              
             </form>

<%@include file="components/bodyfinal.jsp" %>