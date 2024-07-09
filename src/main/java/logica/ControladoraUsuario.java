
package logica;

import java.util.ArrayList;
import java.util.List;
import persistencia.ControladoraPersistencia;


public class ControladoraUsuario {
    
     ControladoraPersistencia controlPersis = new ControladoraPersistencia();
     
     public void crearUsuario(String nombre_usuario,String password,String rol){
         Usuario usuario = new Usuario();
         usuario.setNombre_usuario(nombre_usuario);
         usuario.setPassword(password);
         usuario.setRol(rol);
         
         controlPersis.crearUsuario(usuario);
     }
     
     public List<Usuario> getUsuarios(){
         return controlPersis.getUsuarios();
     }
    
     public void borrarUsuario(int id){
         controlPersis.borrarUsuario(id);
     }
     
     public Usuario traerUsuario(int id){
         return controlPersis.traerUsuario(id);
     }
     
     public void editarUsuario(Usuario usuario){
         controlPersis.editarUsuario(usuario);
     }

    public boolean comprobarIngreso(String usuario, String pass) {
      
        boolean ingreso = false;
        
        List<Usuario> listaUsuarios= new ArrayList<Usuario>();
        listaUsuarios= controlPersis.getUsuarios();
        for(Usuario usu : listaUsuarios){
            if(usu.getNombre_usuario().equals(usuario)){
                if(usu.getPassword().equals(pass)){
                    ingreso = true;
                }else{
                    ingreso = false;
                }
            }
        }
        return ingreso;
    }
    
    
}
