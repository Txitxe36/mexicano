/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Comida implements Serializable {
     @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id_comida;
    private String nombre;
    private String tipo;
    private String tiempo;
    private String kcal;
    private String descripcion;
    private String ingredientes;
    private String modopreparacion;
    private int porciones;
    private String ruta;
    

    public Comida() {
    }

   /* public Comida(int id_comida,String nombre, String tipo, String tiempo, String kcal, String descripcion) {
        this.id_comida = id_comida;
        this.nombre = nombre;
        this.tipo = tipo;
        this.tiempo = tiempo;
        this.kcal = kcal;
        this.descripcion = descripcion;
    }*/

    public Comida(int id_comida, String nombre, String tipo, String tiempo, String kcal, String descripcion, String ingredientes, String modopreparacion, int porciones, String ruta) {
        this.id_comida = id_comida;
        this.nombre = nombre;
        this.tipo = tipo;
        this.tiempo = tiempo;
        this.kcal = kcal;
        this.descripcion = descripcion;
        this.ingredientes = ingredientes;
        this.modopreparacion = modopreparacion;
        this.porciones = porciones;
        this.ruta = ruta;
    }

    public String getIngredientes() {
        return ingredientes;
    }

    public void setIngredientes(String ingredientes) {
        this.ingredientes = ingredientes;
    }

    public String getModopreparacion() {
        return modopreparacion;
    }

    public void setModopreparacion(String modopreparacion) {
        this.modopreparacion = modopreparacion;
    }

    public int getPorciones() {
        return porciones;
    }

    public void setPorciones(int porciones) {
        this.porciones = porciones;
    }

    public String getRuta() {
        return ruta;
    }

    public void setRuta(String ruta) {
        this.ruta = ruta;
    }

    
    public int getId_comida() {
        return id_comida;
    }

    public void setId_comida(int id_comida) {
        this.id_comida = id_comida;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getTiempo() {
        return tiempo;
    }

    public void setTiempo(String tiempo) {
        this.tiempo = tiempo;
    }

    public String getKcal() {
        return kcal;
    }

    public void setKcal(String kcal) {
        this.kcal = kcal;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    
}
