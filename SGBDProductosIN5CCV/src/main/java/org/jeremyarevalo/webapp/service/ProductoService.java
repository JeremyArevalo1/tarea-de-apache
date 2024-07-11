package org.jeremyarevalo.webapp.service;

import jakarta.persistence.EntityManager;
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
        em.persist(producto);
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
