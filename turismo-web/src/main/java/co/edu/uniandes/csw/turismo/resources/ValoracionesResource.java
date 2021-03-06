/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.uniandes.csw.turismo.resources;

import co.edu.uniandes.csw.turismo.dtos.ValoracionesDTO;
import co.edu.uniandes.csw.turismo.ejb.ValoracionesLogic;
import co.edu.uniandes.csw.turismo.entities.ValoracionesEntity;
import co.edu.uniandes.csw.turismo.exceptions.BusinessLogicException;
import co.edu.uniandes.csw.turismo.mappers.BusinessLogicExceptionMapper;
import java.util.ArrayList;
import java.util.List;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.WebApplicationException;

/**
 * <pre>Clase que implementa el recurso "valoraciones".
 * URL: /api/valoraciones
 * </pre>
 * <i>Note que la aplicación (definida en {@link RestConfig}) define la ruta "/api" y
 * este recurso tiene la ruta "valoraciones".</i>
 *
 * <h2>Anotaciones </h2>
 * <pre>
 * Path: indica la dirección después de "api" para acceder al recurso
 * Produces/Consumes: indica que los servicios definidos en este recurso reciben y devuelven objetos en formato JSON
 * RequestScoped: Inicia una transacción desde el llamado de cada método (servicio). 
 * </pre>
 * @author jf.gutierrez13  
 * @version 1.0
 */
@Path("valoraciones")
@Produces("application/json")
@Consumes("application/json")
@RequestScoped
public class ValoracionesResource 
{
    @Inject
    ValoracionesLogic logic;
    
    private List<ValoracionesDTO> listEntityToDTO(List<ValoracionesEntity> entityList) {
        List<ValoracionesDTO> list = new ArrayList<>();
        for(ValoracionesEntity entity : entityList) {
            list.add(new ValoracionesDTO(entity));
        }
        return list;
    }
    /**
     * <h1>POST /api/valoraciones : Crear una valoracion.</h1>
     * 
     * <pre>Cuerpo de petición: JSON {@link ValoracionesDetailDTO}.
     * 
     * Crea una nueva valoracion con la informacion que se recibe en el cuerpo 
     * de la petición y se regresa un objeto identico con un id auto-generado 
     * por la base de datos.
     * 
     * Codigos de respuesta:
     * <code style="color: mediumseagreen; background-color: #eaffe0;">
     * 200 OK Creó la nueva valoracion .
     * </code>
     * <code style="color: #c7254e; background-color: #f9f2f4;">
     * 412 Precodition Failed: Ya existe la valoracion.
     * </code>
     * </pre>
     * @param valoracion {@link ValoracionesDetailDTO} - La valoracion que se desea guardar.
     * @return JSON {@link ValoracionesDetailDTO}  - La valoracion guardada con el atributo id autogenerado.
     * @throws BusinessLogicException {@link BusinessLogicExceptionMapper} - Error de lógica que se genera cuando ya existe la valoracion.
     */
    @POST
    public ValoracionesDTO createValoracion(ValoracionesDTO valoracion) throws BusinessLogicException {
        ValoracionesEntity entity = valoracion.toEntity();
        logic.createValoracion(entity);
        return new ValoracionesDTO(entity);
    }
    
    /**
     * <h1>GET /api/valoraciones : Obtener todas las valoraciones.</h1>
     * 
     * <pre>Busca y devuelve todas las valoraciones que existen en la aplicacion.
     * 
     * Codigos de respuesta:
     * <code style="color: mediumseagreen; background-color: #eaffe0;">
     * 200 OK Devuelve todas las valoraciones de la aplicacion.</code> 
     * </pre>
     * @return JSONArray {@link ValoracionesDetailDTO} - Las valoraciones encontradas en la aplicación. Si no hay ninguna retorna una lista vacía.
     */
    @GET
    public List<ValoracionesDTO> getValoraciones() {
        return listEntityToDTO(logic.getValoraciones());
    }
    
    /**
     * <h1>GET /api/valoraciones/{id} : Obtener las valoraciones de un plan contenido en un paquete turistico de un usuario dado por id.</h1>
     * 
     * <pre>Busca la valoracion con el usuario, paquete y plan asociados recibidos en la URL y la devuelve.
     * 
     * Codigos de respuesta:
     * <code style="color: mediumseagreen; background-color: #eaffe0;">
     * 200 OK Devuelve la valoracion correspondiente al usuario, paquete y plan.
     * </code> 
     * <code style="color: #c7254e; background-color: #f9f2f4;">
     * 404 Not Found No existe una valoracion con el usuario, paquete y plan dados.
     * </code> 
     * </pre>
     * @param id Identificador de la valoracion que se esta buscando. Este debe ser una cadena de dígitos.
     * @return JSON {@link ValoracionesDetailDTO} - La valoracion buscada
     */
    @GET
    @Path("{id: \\d+}")
    public ValoracionesDTO getValoraciones(@PathParam("id") Long id) {
        ValoracionesEntity entity = logic.getValoracion(id);
        if(entity == null)
            throw new WebApplicationException("La valoracion no existe", 404);
        return new ValoracionesDTO(entity);
    }
    
    /**
     * <h1>PUT /api/valoraciones/{id} : Actualizar valoracion con el id dado.</h1>
     * <pre>Cuerpo de petición: JSON {@link ValoracionesDetailDTO}.
     * 
     * Actualiza la valoracion con el id recibido en la URL con la informacion que se recibe en el cuerpo de la petición.
     * 
     * Codigos de respuesta:
     * <code style="color: mediumseagreen; background-color: #eaffe0;">
     * 200 OK Actualiza la valoracion con el id dado con la información enviada como parámetro. Retorna un objeto identico.</code> 
     * <code style="color: #c7254e; background-color: #f9f2f4;">
     * 404 Not Found. No existe una valoracion con el id dado.
     * </code> 
     * </pre>
     * @param id Identificador de la valoracion que se desea actualizar
     * @param valoracion {@link ValoracionesDetailDTO} La valoracion que se desea guardar.
     * @return JSON {@link ValoracionesDetailDTO} - La valoracion guardada.
     * @throws BusinessLogicException {@link BusinessLogicExceptionMapper} - Error de lógica que se genera al no poder actualizar la valoracion porque ya existe una con ese nombre.
     */
    @PUT
    @Path("{id: \\d+}")
    public ValoracionesDTO updateValoracion(@PathParam("id") Long id, ValoracionesDTO valoracion) throws BusinessLogicException {
        valoracion.setId(id);
        ValoracionesEntity vieja = logic.getValoracion(id);
        if(vieja == null)
            throw new WebApplicationException("La valoracion no existe", 404);
        return new ValoracionesDTO(logic.updateValoracion(valoracion.toEntity()));
    }
    
    /**
     * <h1>DELETE /api/valoraciones/{id} : Borrar valoracion por id.</h1>
     * 
     * <pre>Borra la valoracion con el id asociado recibido en la URL.
     * 
     * Códigos de respuesta:<br>
     * <code style="color: mediumseagreen; background-color: #eaffe0;">
     * 200 OK Elimina la valoracion correspondiente al id dado.</code>
     * <code style="color: #c7254e; background-color: #f9f2f4;">
     * 404 Not Found. No existe una valoracion con el id dado.
     * </code>
     * </pre>
     * @param id Identificador de la valoracion que se desea borrar. Este debe ser una cadena de dígitos.
     */
    @DELETE
    @Path("{id: \\d+}")
     public void deleteValoracion(@PathParam("id") Long id) {
        ValoracionesEntity entity = logic.getValoracion(id);
        if (entity == null) {
            throw new WebApplicationException("La valoracion no existe", 404);
        }
        logic.deleteValoracion(id);
    }
}