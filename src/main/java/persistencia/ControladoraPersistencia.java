/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package persistencia;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.Comida;
import logica.MasComida;
import logica.Usuario;
import persistencia.exceptions.NonexistentEntityException;


public class ControladoraPersistencia {

    
    ComidaJpaController comidaJPA = new ComidaJpaController();
    UsuarioJpaController usuarioJPA = new UsuarioJpaController();
    MasComidaJpaController masComidaJPA =new MasComidaJpaController();

   
    
    public void crearComida(Comida comida) {
        comidaJPA.create(comida);
    }

    public List<Comida> getComidas() {
       return comidaJPA.findComidaEntities();
    }

    public void borrarComida(int id) {
        try {
            comidaJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Comida traerComida(int id) {
        return comidaJPA.findComida(id);
    }

    public void editarComida(Comida comida) {
        try {
            comidaJPA.edit(comida);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void crearUsuario(Usuario usuario) {
        usuarioJPA.create(usuario);
    }

    public List<Usuario> getUsuarios() {
        return usuarioJPA.findUsuarioEntities();
    }

    public void borrarUsuario(int id) {
        try {
            usuarioJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Usuario traerUsuario(int id) {
        return usuarioJPA.findUsuario(id);
    }

    public void editarUsuario(Usuario usuario) {
        try {
            usuarioJPA.edit(usuario);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
      
    public void crearMasComida(MasComida comida) {
        masComidaJPA.create(comida);
    }

    public List<MasComida> getMasComidas() {
       return masComidaJPA.findMasComidaEntities();
    }

    public void borrarMasComida(int id) {
        try {
            masComidaJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public MasComida traerMasComida(int id) {
        return masComidaJPA.findMasComida(id);
    }

    public void editarMasComida(MasComida comida) {
        try {
            masComidaJPA.edit(comida);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
}
