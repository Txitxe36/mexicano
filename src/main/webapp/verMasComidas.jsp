<%@page import="logica.MasComida"%>
<%@page import="java.util.List"%>
<%@page import="logica.Comida"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="components/header.jsp" %>
<%@include file="components/bodyprimeraparte.jsp" %>

 <div class="container-fluid">

                        <h1>Más Recetas</h1>
 <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Lista de recetas</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>Nombre</th>
                                            <th>Tipo</th>
                                            <th>Tiempo</th>
                                            <th>Kcal</th>
                                            <th>descripción</th>
                                            <th>Porciones</th>
                                           
                                            <th style="width: 210px">Acción</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Id</th>
                                            <th>Nombre</th>
                                            <th>Tipo</th>
                                            <th>Tiempo</th>
                                            <th>Kcal</th>
                                            <th>descripción</th>
                                             <th>Porciones</th>
                                             <th style="width: 210px">Acción</th>
                                        </tr>
                                    </tfoot>
                                    <%
                                    List<MasComida> listaComidas = (List)request.getSession().getAttribute("listaMasComidas");
                                    %>
                                    <tbody>
                                        <% for(MasComida comida : listaComidas){%>
                                        
                                       
                                        <tr>
                                            <td id="id_comida<%=comida.getId_masComida()%>"><%=comida.getId_masComida()%></td>
                                            <td><%= comida.getNombre()%></td>
                                            <td><%= comida.getTipo()%></td>
                                            <td><%= comida.getTiempo() %></td>
                                            <td><%= comida.getKcal() %></td>
                                            <td><%= comida.getDescripcion() %></td> 
                                            <td><%= comida.getPorciones() %></td>
                                            <td style="display:flex;width:230px;">
                                                <form name="eliminar" action="SvEliminarComida" method="POST">
                                                    <button type="submit" class="btn btn-primary btn-user btn-block" 
                                                            style="background-color: red;margin-right:5px;">
                                                        <i class="fas fa-trash-alt"></i>Eliminar
                                                 
                                                    </button>
                                                    <input type="hidden" name="id" value="<%=comida.getId_masComida()%>">
                                                </form>
                                                 <form name="editar" action="SvEditarComida" method="GET">
                                                    <button type="submit" class="btn btn-primary btn-user btn-block" 
                                                            style="margin-left:5px;">
                                                        <i class="fas fa-pencil-alt"></i>Editar
                                                 
                                                    </button>
                                                    <input type="hidden" name="id" value="<%=comida.getId_masComida()%>">
                                                </form>
                                            </td>
                                        </tr>
                                      <%}%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->


<%@include file="components/bodyfinal.jsp" %>
