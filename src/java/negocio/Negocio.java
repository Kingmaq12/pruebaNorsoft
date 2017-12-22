/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package negocio;

import java.util.ArrayList;
import dao.usuarioDAO;
import dto.usuarioDTO;

/**
 *
 * @author CESAR
 */


public class Negocio {
    
    //Crea el objeto usuario para enviarlo al DAO de usuario y validar sus datos.
    public boolean login(String user, String password){
        
        usuarioDTO dto = new usuarioDTO(user, password);
        usuarioDAO dao = new usuarioDAO();
        
        return dao.login(dto);
    }
   
}
