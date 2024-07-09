<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp" %>
<%@include file="components/bodyprimeraparte.jsp" %>
<h1>Alta Usuario</h1>
<p>agregue un nuevo usuario al sistema</p>

<form class="user" action="SvUsuario" method="POST">
           <div class="form-group row">
              <div class="col-sm-6 mb-3 mb-sm-0">
                 <input type="text" class="form-control form-control-user" name="nombreUsuario" id="nombreUsuario"
                    placeholder="Nombre de usuario">
              </div>
              <div class="col-sm-6">
                  <input type="password" class="form-control form-control-user" name="pass" id="pass"
                    placeholder="Contraseña">
               </div>
            </div>
            <div class="form-group row">
                 <div class="col-sm-6 mb-3 mb-sm-0">
                     <input type="text" class="form-control form-control-user" name="rol" id="rol"
                 placeholder="Rol">
                </div>
               
            </div>
           
                <button type="submit" class="btn btn-primary btn-user btn-block">
                     Agregar Usuario
                </button>
                <hr>
              
             </form>

<%@include file="components/bodyfinal.jsp" %>