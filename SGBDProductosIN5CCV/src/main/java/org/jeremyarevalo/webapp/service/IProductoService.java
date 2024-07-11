package org.jeremyarevalo.webapp.service;

import java.util.List;
import org.jeremyarevalo.webapp.model.Producto;


public interface IProductoService {
    
    public List<Producto> listarProductos();
    
    public void agregarProductos(Producto producto);
    
    public void eliminarProducto(int productoId);
    
    public Producto buscarProducto(int productoId);
    
    public void editarProducto(Producto producto);
    
}
