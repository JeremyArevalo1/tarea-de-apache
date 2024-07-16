package org.jeremyarevalo.webapp.service;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import java.util.List;
import org.jeremyarevalo.webapp.model.Producto;
import org.jeremyarevalo.webapp.util.JPAUtil;


public class ProductoService implements IProductoService{
    
    private EntityManager em;
    
    public ProductoService(){
        this.em = JPAUtil.getEntityManager();
    }

    @Override
    public List<Producto> listarProductos() {
        return em.createQuery("Select p FROM Producto p", Producto.class).getResultList();
    }

    @Override
    public void agregarProductos(Producto producto) {
        EntityTransaction transaction = em.getTransaction();
        try{
            transaction.begin();
            em.persist(producto); //agregar
            transaction.commit();
        }catch(Exception e){
            if(transaction.isActive()){
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    @Override
    public void eliminarProducto(int productoId) {
        
    }

    @Override
    public Producto buscarProducto(int productoId) {
        Producto producto = null;
        return producto;
    }

    @Override
    public void editarProducto(Producto producto) {
        
    }
    
}
