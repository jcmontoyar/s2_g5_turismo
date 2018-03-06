/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.uniandes.csw.turismo.dtos;

import co.edu.uniandes.csw.turismo.entities.UsuarioEntity;

/**
 * UsuarioDTO Objeto de transferencia de datos de Usuaro. Los DTO contienen las
 * represnetaciones de los JSON que se transfieren entre el cliente y el
 * servidor.
 * 
 * Al serializarse como JSON esta clase implementa el siguiente modelo: <br>
 * <pre>
 *   {
 *      "id": number,
 *      "nombre": string,
 *      "apellido": string,
 *      "contrasenia": string,
 *      "correo": string,
 *      "telefono": number,
 *      "idioma": string,
 *      "esAdministrador": boolean
 *   }
 * </pre>
 * Por ejemplo un usuario se representa asi:<br>
 * 
 * <pre>
 * 
 *   {
 *      "id": 534682,
 *      "nombre": Juan,
 *      "apellido": Perez,
 *      "contrasenia": rplc6519,
 *      "correo": jperez@gmail.com,
 *      "telefono": 3103334455,
 *      "idioma": Ingles,
 *      "esAdministrador": false
 *   }
 *
 * </pre>
 * @author jf.gutierrez13
 */
public class UsuarioDTO 
{
    private Long id;
    private String nombre;
    private String apellido;
    private String contrasenia;
    private String correo;
    private Integer telefono;
    private String idioma;
    private Boolean esAdministrador;
    
    /**
     * Constructor por defecto
     */
    public UsuarioDTO()
    {
        
    }
    
    /**
     * Crea un nuevo UsuarioDTO con los valores recibidos por parametro.
     * @param id id del usuario
     * @param nombre nombre del usuario
     * @param apellido apellido del usuario
     * @param contrasenia contrasenia del usuario
     * @param correo correo del usuario
     * @param telefono telefono del usuario
     * @param idioma idioma del usuario
     * @param esAdministrador indica si el usuario es o no administrador
     */
    public UsuarioDTO(Long id, String nombre, String apellido, String contrasenia, String correo, int telefono, String idioma, boolean esAdministrador)
    {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.contrasenia = contrasenia;
        this.correo = correo;
        this.telefono = telefono;
        this.idioma = idioma;
        this.esAdministrador =esAdministrador;
    }

    /**
     * @return El id del usuario
     */
    public Long getId() {
        return id;
    }
    
    /**
     * @param id Nuevo ID del usuario
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * @return El nombre del usuario 
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre El nuevo nombre del usuario 
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return El apellido del usuario 
     */
    public String getApellido() {
        return apellido;
    }
    
    /**
     * @param apellido El nuevo apellido del usuario
     */
    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    /**
     * @return La contraseña del usuario 
     */
    public String getContrasenia() {
        return contrasenia;
    }

    /**
     * @param contrasenia La nueva contraseña del usuario
     */
    public void setContrasenia(String contrasenia) {
        this.contrasenia = contrasenia;
    }

    
    /**
     * @return El correo del usuario 
     */
    public String getCorreo() {
        return correo;
    }

    /**
     * @param correo El nuevo correo del usuario
     */
    public void setCorreo(String correo) {
        this.correo = correo;
    }

    
    /**
     * @return El telefono del usuario 
     */
    public Integer getTelefono() {
        return telefono;
    }

    /**
     * @param telefono El nuevo telefono del usuario
     */
    public void setTelefono(Integer telefono) {
        this.telefono = telefono;
    }

    
    /**
     * @return El idioma del usuario 
     */
    public String getIdioma() {
        return idioma;
    }

    /**
     * @param idioma El nuevo idioma del usuario
     */
    public void setIdioma(String idioma) {
        this.idioma = idioma;
    }

    /**
     * @return true si es un usuario administrador, false de lo contrario
     */
    public Boolean isEsAdministrador() {
        return esAdministrador;
    }

    /**
     * @param esAdministrador El nuevo estado de la cuenta, true si es administrador, false de lo contrario.
     */
    public void setEsAdministrador(Boolean esAdministrador) {
        this.esAdministrador = esAdministrador;
    }
    
    public UsuarioEntity toEntity()
    {
        UsuarioEntity entity = new UsuarioEntity();
        entity.setApellido(this.apellido);
        entity.setName(this.nombre);
        entity.setContrasenia(this.contrasenia);
        entity.setCorreo(this.correo);
        entity.setEsAdministrador(this.esAdministrador);
        entity.setTelefono(this.telefono);
        return entity;
    }
    
    public UsuarioDTO(UsuarioEntity entity)
    {
        if(entity != null)
        {
            this.nombre = entity.getName();
            this.apellido = entity.getApellido();
            this.correo = entity.getCorreo();
            this.contrasenia = entity.getContrasenia();
            this.idioma = entity.getIdioma();
            this.telefono = entity.getTelefono();
            this.id = entity.getId();
            this.esAdministrador = entity.getEsAdministrador();
        }
    }
}