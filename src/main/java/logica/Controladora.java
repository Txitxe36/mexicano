/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

import java.util.ArrayList;
import java.util.List;

import persistencia.ControladoraPersistencia;


public class Controladora {
    
    ControladoraPersistencia controlPersis = new ControladoraPersistencia();
    
    public void crearComida(String nombre, String tipo,String tiempo,String kcal,String descripcion,String ingredientes,String modopreparacion,int porciones,String ruta){
       Comida comida = new Comida();
       comida.setNombre(nombre);
       comida.setTipo(tipo);
       comida.setTiempo(tiempo);
       comida.setKcal(kcal);
       comida.setDescripcion(descripcion);
       comida.setIngredientes(ingredientes);
       comida.setModopreparacion(modopreparacion);
       comida.setPorciones(porciones);
       comida.setRuta(ruta);
        
        controlPersis.crearComida(comida);
    }

    public List<Comida> getComidas() {
       return controlPersis.getComidas();
    }

    public void borrarComida(int id) {
        controlPersis.borrarComida(id);
    }

    public Comida traerComida(int id) {
        return controlPersis.traerComida(id);
    }

    public void edtarComida(Comida comida) {
        controlPersis.editarComida(comida);
    }
}
