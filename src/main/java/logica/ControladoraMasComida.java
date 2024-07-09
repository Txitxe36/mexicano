/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

import java.util.List;
import persistencia.ControladoraPersistencia;

/**
 *
 * @author migue
 */
public class ControladoraMasComida {
    
      
    ControladoraPersistencia controlPersis = new ControladoraPersistencia();
    
    public void crearMasComida(String nombre, String tipo,String tiempo,String kcal,String descripcion,String ingredientes,String modopreparacion,int porciones,String ruta){
       MasComida comida = new MasComida();
       comida.setNombre(nombre);
       comida.setTipo(tipo);
       comida.setTiempo(tiempo);
       comida.setKcal(kcal);
       comida.setDescripcion(descripcion);
       comida.setIngredientes(ingredientes);
       comida.setModopreparacion(modopreparacion);
       comida.setPorciones(porciones);
       comida.setRuta(ruta);
        
        controlPersis.crearMasComida(comida);
    }

    public List<MasComida> getComidas() {
       return controlPersis.getMasComidas();
    }

    public void borrarComida(int id) {
        controlPersis.borrarComida(id);
    }

    public MasComida traerComida(int id) {
        return controlPersis.traerMasComida(id);
    }

    public void edtarComida(MasComida comida) {
        controlPersis.editarMasComida(comida);
    }
}
