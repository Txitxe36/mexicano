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
import logica.ControladoraUsuario;
import logica.Usuario;


@WebServlet(name = "SvEditarUsuario", urlPatterns = {"/SvEditarUsuario"})
public class SvEditarUsuario extends HttpServlet {

    ControladoraUsuario control = new ControladoraUsuario();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id = Integer.parseInt(request.getParameter("id"));
        
        Usuario usuario = control.traerUsuario(id);
        
        HttpSession misession = request.getSession();
        
        misession.setAttribute("usuarioEditar", usuario);
        
        response.sendRedirect("editarUsuario.jsp");
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        String nombreUsuario = request.getParameter("nombreUsuario");
        String pass = request.getParameter("pass");
        String rol = request.getParameter("rol");
        
        Usuario usuario = (Usuario)request.getSession().getAttribute("usuarioEditar");
        
        usuario.setNombre_usuario(nombreUsuario);
        usuario.setPassword(pass);
        usuario.setRol(rol);
        
        control.editarUsuario(usuario);
        
        response.sendRedirect("SvUsuario");
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
