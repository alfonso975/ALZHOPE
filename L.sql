drop database if exists daos;
create database daos;
use daos;

create table users(
id_user int primary key not null auto_increment, 
nivel int,
nombre nvarchar(400),
apellidos nvarchar(400),
usuario nvarchar(400),
contraseña nvarchar(400),
edad int,
estado nvarchar(400),
nomfam nvarchar(400),
direccion nvarchar(400),
correo nvarchar(400),
telefono nvarchar(400)
);
create table preguntaUsuario(

	id int primary key not null auto_increment,
    idUser int, 
    nombre varchar(40),
    pregunta varchar(400),
    FOREIGN KEY (idUser) REFERENCES users(id_user)
    
);
create table preguntaAdmin(
	id int primary key not null auto_increment,
    idUser int,
    nombre varchar(40),
    pregunta varchar(400),
    respuesta varchar(400),
FOREIGN KEY (idUser) REFERENCES users(id_user)
    
);
create table chat(
  id int primary key not null auto_increment,
  idUser int,
  usuario varchar(400),
  mensaje varchar(400),
  FOREIGN KEY (idUser) REFERENCES users(id_user)
);

create table puntuacion(
id int primary key not null auto_increment,
idUser int,
puntuacion nvarchar(400),
FOREIGN KEY (idUser) REFERENCES users(id_user)
);


create table persona(
id int(10)  primary key not null auto_increment,
idUser int,
nombre nvarchar(40),
descripcion nvarchar(100),
foto longblob,
FOREIGN KEY (idUser) REFERENCES users(id_user)
);

create table puntuacionM(
idp int not null auto_increment primary key,
idUser int,
puntuacion int,
FOREIGN KEY (idUser) REFERENCES users(id_user)
);
create table puntuaciona(
idp int not null auto_increment primary key,
idUser int,
puntuacion int,
FOREIGN KEY (idUser) REFERENCES users(id_user)
);


DELIMITER $$
USE `daos`$$
CREATE PROCEDURE `spGuardaPacientes` (in nivel int,in nombre nvarchar(4000) , in  apellidos  nvarchar(4000), in  usuario  nvarchar(4000),in contraseña nvarchar(4000) , in edad int, in estado  nvarchar(4000), in nombreFamiliar  nvarchar(4000), in direccion  nvarchar(4000), in telefono  nvarchar(4000), in correo  nvarchar(4000))
BEGIN

insert into users (nivel,nombre,apellidos,usuario,contraseña,edad,estado,nomfam,direccion,correo,telefono) values(nivel,nombre, apellidos,usuario, contraseña,edad,estado, nombreFamiliar,direccion, telefono, correo);

END$$

DELIMITER ;

DROP procedure IF EXISTS `spGuardaImg`;
DELIMITER $$
USE `daos`$$
CREATE PROCEDURE `spGuardaImg` (in  idUser int,in  img blob,in nombre nvarchar(4000), in descripcion nvarchar(4000))
BEGIN
insert into Imagenes(idImagen,idUser,imagen,nombre,descripcion) values(0,idUser,img,nombre,descripcion);
END$$
DELIMITER ;

call `spGuardaPacientes`(1,'admin', 'admin','admin', 'admin',1,'admin', 'admin','admin', 1, 'admin');
call `spGuardaPacientes`(2,'chitu', 'chitu','chitu', '1',1,'chitu', 'chitu','chitu', 1, 'chitu');

select* from users;
select * from preguntaAdmin;
select * from preguntaUsuario;
select* from puntuacionM;
select* from puntuaciona;
select * from puntuacion;
select * from persona;
select*from chat;