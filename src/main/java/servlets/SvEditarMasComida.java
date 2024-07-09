/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Comida;
import logica.ControladoraMasComida;
import logica.MasComida;

/**
 *
 * @author migue
 */
@WebServlet(name = "SvEditarMasComida", urlPatterns = {"/SvEditarMasComida"})
public class SvEditarMasComida extends HttpServlet {
    
    ControladoraMasComida controlMas = new ControladoraMasComida();

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        
        MasComida comida = controlMas.traerComida(id);
        
        HttpSession misession = request.getSession();
        misession.setAttribute("comidaEditar", comida);
        
        
        response.sendRedirect("editarMasComida.jsp");
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
         String nombreComida = request.getParameter("nombreComida");
        String tipoComida = request.getParameter("tipo");
        String tiempoComida = request.getParameter("tiempo");
        String kcalComida = request.getParameter("kcal");
        String descripcionComida = request.getParameter("descripcion");
        String ingredientes = request.getParameter("ingredientes");
        String modopreparacion = request.getParameter("modopreparacion");
        int porciones = Integer.parseInt(request.getParameter("porciones"));
        String ruta = request.getParameter("ruta");
        
        
        MasComida comida = (MasComida)request.getSession().getAttribute("comidaEditar");
        
        comida.setNombre(nombreComida);
        comida.setTipo(tipoComida);
        comida.setTiempo(tiempoComida);
        comida.setKcal(kcalComida);
        comida.setDescripcion(descripcionComida);
        comida.setIngredientes(ingredientes);
        comida.setModopreparacion(modopreparacion);
        comida.setPorciones(porciones);
        comida.setRuta(ruta);
        
        controlMas.edtarComida(comida);
        
        response.sendRedirect("SvMasComida");
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
