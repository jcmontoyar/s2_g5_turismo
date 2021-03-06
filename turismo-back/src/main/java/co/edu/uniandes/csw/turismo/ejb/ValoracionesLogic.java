/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.uniandes.csw.turismo.ejb;

import co.edu.uniandes.csw.turismo.entities.ValoracionesEntity;
import co.edu.uniandes.csw.turismo.exceptions.BusinessLogicException;
import co.edu.uniandes.csw.turismo.persistence.ValoracionesPersistence;
import java.util.List;
import java.util.logging.Logger;
import javax.ejb.Stateless;
import javax.inject.Inject;

/**
 *
 * @author jf.gutierrez13
 */
@Stateless
public class ValoracionesLogic 
{
    private static final Logger LOGGER = Logger.getLogger(ValoracionesLogic.class.getName());
    
    @Inject
    private ValoracionesPersistence persistence;
    
    /**
     * Crea una nueva valoracion de acuerdo a las reglas de negocio establecidas
     * @param entity Los datos de la nueva valoracion
     * @return La valoracion ya creada
     * @throws BusinessLogicException
     */
    public ValoracionesEntity createValoracion(ValoracionesEntity entity) throws BusinessLogicException
    {
        LOGGER.info("Inicia proceso de creación del usuario");
        
        if(entity.getCalificacion() < 0 || entity.getCalificacion() > 5)
        {
            throw new BusinessLogicException("La calificacion debe estar entre cero y cinco");
        }
        
        persistence.create(entity);
        LOGGER.info("Termina proceso de creación de usuario");
        return entity;
    }
    
    /**
     * Crea la lista de valoraciones
     * @return La lista de valoraciones
     */
    public List<ValoracionesEntity> getValoraciones()
    {
        LOGGER.info("Inicia proceso de consultar todas las valoraciones");
        List<ValoracionesEntity> lista = persistence.findAll();
        LOGGER.info("Termina proceso de consultar todas las valoraciones");
        return lista;
    }
    
    /**
     * Busca la valoracion con el id dado por parametro
     * @param id
     * @return
     */
    public ValoracionesEntity getValoracion(Long id)
    {
        return persistence.find(id);
    }
    
    /**
     * Actualiza los datos de una valoracion
     * @param entity LA valoracion a actualizar
     * @return La valoracion actualizada
     * @throws BusinessLogicException
     */
    public ValoracionesEntity updateValoracion(ValoracionesEntity entity) throws BusinessLogicException
    {
        LOGGER.info("Inicia proceso de creación del usuario");
        
        if(entity.getCalificacion() < 0 || entity.getCalificacion() > 5)
        {
            throw new BusinessLogicException("La calificacion debe estar entre cero y cinco");
        }
        
        persistence.update(entity);
        LOGGER.info("Termina proceso de creación de usuario");
        return entity;
    }
    
    /**
     * Borra una valoracion con el id dado por parametro
     * @param id id de la valoracion a eliminar
     */
    public void deleteValoracion(Long id)
    {
        LOGGER.info("Inicia proceso de borrar Plan con id={0}");    
        persistence.delete(id);
        LOGGER.info("Termina proceso de borrar libro con id={0}");
    }
}
