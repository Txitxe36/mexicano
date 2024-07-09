/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Comida;
import logica.Controladora;


@WebServlet(name = "SvComida", urlPatterns = {"/SvComida"})
public class SvComida extends HttpServlet {

    Controladora control = new Controladora();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Comida> listaComidas = new ArrayList<Comida>();
        
        listaComidas = control.getComidas();
        
        HttpSession misesion = request.getSession();
        misesion.setAttribute("listaComidas",listaComidas);
   
        response.sendRedirect("verComidas.jsp");
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        String nombreComida = request.getParameter("nombreComida");
        String tipo = request.getParameter("tipo");
        String tiempo= request.getParameter("tiempo");
        String kcal = request.getParameter("kcal");
        String descripcion = request.getParameter("descripcion");
        String ingredientes = request.getParameter("ingredientes");
        String modoPreparacion = request.getParameter("modopreparacion");
        int porciones = Integer.parseInt(request.getParameter("porciones"));
        String ruta = request.getParameter("ruta");
        
           control.crearComida(nombreComida, tipo, tiempo, kcal, descripcion,ingredientes,modoPreparacion,porciones,ruta);
   
        response.sendRedirect("verComidas.jsp");
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
