<%-- 
    Document   : formulario-productos
    Created on : 5/07/2024, 14:50:41
    Author     : informatica
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-dark bg-dark fixed-top position-relative">
            <div class="container-fluid">
                <a class="navbar-brand" href="../index.jsp">Sistema de gestión de productos</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Sistema de gestión de productos</h5>
                        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="../index.jsp">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="../formulario-productos/formulario-productos.jsp">Formulario de productos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="../producto-servlet">Lista de productos</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <div class="container text-center">
            <h2>Tabla Productos</h2>
            <% ArrayList<String> datosProducto = (ArrayList) request.getAttribute("datosProducto");%>
            <% if (datosProducto != null) {%>
            <% for (String producto : datosProducto) {%>
            <ul>
                <li><%=producto%></li>
            </ul>

            <%}%>
            <%}%>

            <% String mensaje = (String) request.getAttribute("mensaje");%>
            <% if (mensaje != null) {%>
            <h1><%=mensaje%></h1>
            <%}%>
        </div>
        <div class="container mt-5 form-container">
            <form action="/SGBDProductosIN5CCV/producto-servlet" method="post" enctype="multipart/form-data">
                <div class="form-floating">
                    <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea" name="nombreProducto"></textarea>
                    <label for="floatingTextarea">Nombre del Producto</label>
                </div>
                <div class="form-floating mb-3">
                    <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea" name="descripcionProducto"></textarea>
                    <label for="floatingTextarea">Descripcion</label>
                </div>
                <div class="form-floating mb-3">
                    <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea" name="marcaProducto"></textarea>
                    <label for="floatingTextarea">Marca</label>
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text">Q</span>
                    <div class="form-floating">
                        <input type="text" class="form-control" id="floatingInputGroup1" name="precioProducto" placeholder="Username">
                        <label for="floatingInputGroup1">Precio</label>
                    </div>
                </div>
                <div>
                    <button type="submit" class="btn btn-success">Ingresar</button>
                </div>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
