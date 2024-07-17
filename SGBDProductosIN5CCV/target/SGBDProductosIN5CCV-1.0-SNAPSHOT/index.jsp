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
                <a class="navbar-brand" href="./index.jsp">Sistema de gestion de productos</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Sistema de gestion de productos</h5>
                        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                            <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="./index.jsp">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="./formulario-productos/formulario-productos.jsp">Formulario de productos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="./producto-servlet">Lista de productos</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <div class="container">
            <form>
                <div id="carouselExampleCaptions" class="carousel slide" >
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" aria-label="Slide 4"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="4" aria-label="Slide 5"></button>

                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="./assets/imagen/merca.png" class="d-block w-100" alt="Mercadito">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>El mejor Mercado</h5>
                                <p>Encontraras todo para tus platillos.</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="./assets/imagen/pepe.jpg" class="d-block w-100" alt="Pepino">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>Las mejores verduras</h5>
                                <p>Los mejores ingredientes para tus comidas los puedes encontrar en este mercadito.</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="./assets/imagen/tomates.jpg" class="d-block w-100" alt="Tomate">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>simplemente lo mejor</h5>
                                <p>nada que no tenga este mercadito</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="./assets/imagen/cebollas.jpg" class="d-block w-100" alt="Cebolla">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>Productos de la mas alta calidad</h5>
                                <p>Exelencia en productos</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="./assets/imagen/perejil.jpg" class="d-block w-100" alt="Perejil">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>mejor calidad y precio</h5>
                                <p>Increibles ofertas</p>
                            </div>
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </form>
        </div>
        <div class="container mt-5">
            <form>
                <div class="accordion" id="accordionExample">
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                Sobre Mercadito
                            </button>
                        </h2>
                        <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <strong>Mercadito</strong> Nos dedicamos a traer las mejores verduras, frutas, condimentos, etc de mejor calidad para todos nuestros clientes
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                Nuestro proposito
                            </button>
                        </h2>
                        <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <strong>Porque lo hacemos?</strong> Pues nos preocupamos por nuestros clientes en salud y calidad de productos tenemos la exijencia de tener la mejor calidad en todos nuestros productos para todas sus comidas.
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
