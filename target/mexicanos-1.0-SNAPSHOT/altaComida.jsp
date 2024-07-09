<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp" %>
<%@include file="components/bodyprimeraparte.jsp" %>
<h1 class="ml-5">Alta Comida</h1>
<p class="ml-5">Ingrese una nueva receta al sistema</p>

<form class="user" action="SvComida" method="POST">
           <div class="form-group row">
              <div class="col-sm-6 mb-3 mb-sm-0">
                 <input type="text" class="form-control form-control-user" name="nombreComida" id="nombreComida"
                    placeholder="Nombre">
              </div>
               <div class="col-sm-6">
                    <input type="text" class="form-control form-control-user"
                      name="descripcion"  id="descripcion" placeholder="Descripción">
                    </div>
             
            </div>
            <div class="form-group row">
                 <div class="col-sm-4 mb-3 mb-sm-0">
                     <input type="text" class="form-control form-control-user text-center" name="tiempo" id="tiempo"
                 placeholder="Tiempo">
                </div>
                
                <div class="col-sm-4 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user text-center"
                    name="kcal"  id="kcal" placeholder="Kcal">
                </div>
                 <div class="col-sm-4">
                  <input type="text" class="form-control form-control-user text-center" name="tipo" id="tipo"
                    placeholder="Tipo">
               </div>
            </div>
             <div class="form-group row">
                 <div class="col-sm-3 mb-3 mb-sm-0">
                     <input type="number" min="1" class="form-control form-control-user text-center" name="porciones" id="porciones"
                 placeholder="porciones">
                </div>
                
                <div class="col-sm-9 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user"
                    name="ruta"  id="ruta" placeholder="Ruta">
                </div>
            </div>
            <div class="form-group row">
                    
                 <div class="col-sm-12">
                     <!-- <input type="textarea" rows="10" cols="50" class="form-control form-control-user"
                      name="ingredientes"  id="ingredientes" placeholder="Ingredientes"> --> 
                      <label for="exampleFormControlTextarea1"></label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="5" name="ingredientes"  id="ingredientes" placeholder="Ingredientes"></textarea>
                  </div>
                    
            </div>
    
                 <div class="form-group row">
                    <div class="col-sm-12">
                        <!-- <input type="textarea" rows="10" cols="50" class="form-control form-control-user"
                      name="modopreparacion"  id="modopreparacion" placeholder="Modo de Preparación"> --> 
                      <label for="exampleFormControlTextarea1"></label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="5"   name="modopreparacion"  id="modopreparacion" placeholder="Preparación"></textarea>
                    </div>
                
                    
            </div>
                <button type="submit" class="btn btn-primary btn-user btn-block">
                     Agregar Receta
                </button>
                <hr>
              
             </form>

<%@include file="components/bodyfinal.jsp" %>