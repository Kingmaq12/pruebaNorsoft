/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.usuarioDTO;
import interf.IUsuarioDAO;

/**
 *
 * @author CESAR
 */
public class usuarioDAO implements IUsuarioDAO{
    
    /**
     * valida si los datos del usuario son los correctos para ingresar.
     * @param dto
     * @return true si es valido, false si no.
     */
    public boolean login(usuarioDTO dto){
        
        if(dto.getUser().equalsIgnoreCase("user")&& dto.getPassword().equalsIgnoreCase("12345")){
          return true;
        }
        return false;
    }
    
   
    
}
