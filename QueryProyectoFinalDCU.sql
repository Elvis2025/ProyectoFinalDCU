


create database ASP_SP
use ASP_SP

CREATE TABLE Usuarios(
	Id int IDENTITY(1,1) NOT NULL,
	Nombres varchar (50) NULL,
	Apellidos varchar(50) NULL,
	Fecha date NULL,
	Usuario varchar(50) NULL,
	Clave varbinary (max) NULL
)

drop table Usuarios

create table Imagenes(
idUsuario int,
Imagen image
)

CREATE TABLE [dbo].[Imagenes](
	[IdUsuario] [int] NULL,
	[Imagen] [image] NULL
)


create procedure Registrar
@Nombres varchar(50),
@Apellidos varchar(50),
@Fecha date,
@Usuario varchar(50),
@Clave varchar(100),
@Patron varchar(50),
@IdUsuario int, 
@Imagen image
as
begin
insert into Usuarios values(@Nombres, @Apellidos, @Fecha, @Usuario, ENCRYPTBYPASSPHRASE(@Patron, @Clave));
set @IdUsuario=(select Id from Usuarios where Usuario=@Usuario);
insert into Imagenes values(@IdUsuario, @Imagen)
end


create procedure Validar

@Usuario varchar(50),
@Clave varchar(100),
@Patron varchar(50)
as
begin
select*from Usuarios where Usuario=@Usuario and Convert(varchar(100), DECRYPTBYPASSPHRASE(@Patron, Clave))=@Clave
end


create procedure Perfil
@Id int
as
begin
select*from Usuarios where Id=@Id;
select* from Imagenes where IdUsuario=@Id
end


create procedure Eliminar
@Id int
as
begin
delete from Usuarios where Id=@Id;
delete from Imagenes where IdUsuario=@Id
end


create procedure CargarImagen
@id int
as
begin
select Imagen from Imagenes where IdUsuario=@Id
end


create procedure CambiarContrasenia
@id int,
@Clave varchar(100),
@Patron varchar(50)
as
begin
update Usuarios set Clave=(ENCRYPTBYPASSPHRASE(@Patron, @Clave)) where Id=@id
end


create   proc sp_load
as begin
select * from Usuarios
End


create procedure CambiarImagen
@Id int,
@Imagen image
as
begin
update Imagenes set Imagen=@Imagen where IdUsuario=@Id
end

create procedure ContarUsuario
@usuario varchar(50)
as
begin

select count(*) from Usuarios where Usuario=@usuario
end

select * from Usuarios
select * from Imagenes