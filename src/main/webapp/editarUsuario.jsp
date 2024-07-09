<%@page import="logica.Usuario"%>
<%@page import="logica.Comida"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp" %>
<%@include file="components/bodyprimeraparte.jsp" %>
<h1>Edición de Usuario</h1>
<p>Este es el apartado para modificar un usuario del sistema</p>

<% Usuario usuario = (Usuario)request.getSession().getAttribute("usuarioEditar"); %>

<form class="user" action="SvEditarUsuario" method="POST">
           <div class="form-group row">
              <div class="col-sm-6 mb-3 mb-sm-0">
                 <input type="text" class="form-control form-control-user" name="nombreUsuario" id="nombreUsuario"
                        placeholder="Nombre" value="<%=usuario.getNombre_usuario()%>">
              </div>
              <div class="col-sm-6">
                  <input type="text" class="form-control form-control-user" name="pass" id="pass"
                         placeholder="Contraseña" value="<%=usuario.getPassword()%>">
               </div>
            </div>
            <div class="form-group row">
                 <div class="col-sm-6 mb-3 mb-sm-0">
                     <input type="text" class="form-control form-control-user" name="rol" id="rol"
                 placeholder="Rol" value="<%=usuario.getRol()%>">
                </div>
                
               
            </div>
            
                <button type="submit" class="btn btn-primary btn-user btn-block">
                     Guardar Modificación
                </button>
                <hr>
              
             </form>

<%@include file="components/bodyfinal.jsp" %>