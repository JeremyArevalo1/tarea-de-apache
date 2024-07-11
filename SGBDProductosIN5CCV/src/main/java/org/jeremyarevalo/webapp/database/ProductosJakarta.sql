-- drop database SGBDProductoIN5CV;

create database SGBDProductoIN5CV;

use SGBDProductoIN5CV;

create table Productos(
	productoId int not null auto_increment,
    nombreProducto varchar (40) not null,
    marcaProducto varchar (40) not null,
    descripcionProducto text,
    precio decimal (10,2),
    primary key PK_productoId(productoId)
);

select * from Productos;

	