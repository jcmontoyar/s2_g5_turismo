/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.uniandes.csw.turismo.entities;

import java.io.Serializable;
import javax.persistence.Entity;

/**
 *
 * @author lf.rivera10
 */
@Entity
public class ComentarioEntity extends BaseEntity implements Serializable {
    
    private String comentario;
   
    

    /**
     * @return El contenido del comentario
     */
    public String getComentario() {
        return comentario;
    }
 /**
     * @param comentario El nuevo contenido del comentario 
     */
    public void setComentario(String comentario) {
        this.comentario = comentario;
    }
    
    
}