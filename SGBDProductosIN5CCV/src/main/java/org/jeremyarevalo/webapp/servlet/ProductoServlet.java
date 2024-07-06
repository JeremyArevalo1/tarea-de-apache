package org.jeremyarevalo.webapp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/producto-servlet")
@MultipartConfig
public class ProductoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> datosProducto = new ArrayList<>();
        String nombreProducto = req.getParameter("nombreProducto");
        String descripcionProducto = req.getParameter("descripcionProducto");
        String precioProducto = req.getParameter("precioProducto");
        datosProducto.add(nombreProducto);
        datosProducto.add(descripcionProducto);
        datosProducto.add(precioProducto);
        String msj = null;
        if (nombreProducto.isEmpty()) {
            msj = "Nombre campo vacio, llenelo!";
        } else if (descripcionProducto.isEmpty()) {
            msj = "Descripcion, campo vacio, llenelo!";
        } else if (precioProducto.isEmpty()) {
            msj = "Precio, campo vacio, llenelo";
        }
        req.setAttribute("mensaje", msj);
        req.setAttribute("datosProducto", datosProducto);
        getServletContext().getRequestDispatcher("/formulario-productos/formulario-productos.jsp").forward(req, resp);

    }

}
