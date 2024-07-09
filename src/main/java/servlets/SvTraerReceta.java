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
import logica.Controladora;


@WebServlet(name = "SvTraerReceta", urlPatterns = {"/SvTraerReceta"})
public class SvTraerReceta extends HttpServlet {

   Controladora control = new Controladora();
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id = Integer.parseInt(request.getParameter("id"));
        
        Comida comida = control.traerComida(id);
        
        HttpSession misession = request.getSession();
        misession.setAttribute("comidaTraer", comida);
        
        
        response.sendRedirect("Guisado.jsp");
        
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
      /*  String nombreComida = request.getParameter("nombreComida");
        String tipoComida = request.getParameter("tipo");
        String tiempoComida = request.getParameter("tiempo");
        String kcalComida = request.getParameter("kcal");
        String descripcionComida = request.getParameter("descripcion");
        
        
        Comida comida = (Comida)request.getSession().getAttribute("comidaTraer");
        
        comida.setNombre(nombreComida);
        comida.setTipo(tipoComida);
        comida.setTiempo(tiempoComida);
        comida.setKcal(kcalComida);
        comida.setDescripcion(descripcionComida);
        
        control.edtarComida(comida);
        
        response.sendRedirect("SvComida");*/
    }   

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
