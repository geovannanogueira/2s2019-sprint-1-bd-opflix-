use T_OpFlix

--itens extas--

-- Sele��o - trazer todas as categorias, inclusive as que n�o possuem lan�amentos vinculados; --
-- Deletar a s�rie Deuses Americanos; --

select * from Lancamentos 
select * from Generos

delete from lancamentos 
where IdLancamento = '3'

select Lancamentos.Nome , Generos.Nome
from Lancamentos
right join Generos
on Lancamentos.IdGenero = Generos.IdGenero


-- Atualizar o usu�rio Helena para administrador; --
select * from Usuarios
select * from TipoUsuarios

update Usuarios
set IdTipoUsuario = 1
where IdUsuario = 3


-- Alterar La Casa De Papel 3 temp para La Casa De Papel - 3� Temporada; --
select * from Lancamentos

update Lancamentos
set Nome = 'La Casa De Papel - 3� Temporada'
where IdLancamento = 2


-- Incluir uma imagem para cada usu�rio cadastrado; --

alter table Usuarios add foto image
select * from Usuarios
insert into Usuarios(Nome, Email, Senha, IdTipoUsuario, Foto)
values ('Erick' , 'erick@gmail.com' , '123456' , 1, 'download') 
		,('Cassiana' , 'cassiana@email.com' , '123456' , 1, 'download')
		,('Helena' , 'helena@email.com' , '123456' , 2, 'download')
		,('Roberto' , 'rob@email.com' , '3110' , 2, 'download');


-- Atualizar data de lan�amento do filme O Rei Le�o para a data de lan�amento da anima��o original, 08/07/1994, e alterar veiculo para VHS; --

select * from Lancamentos 

update Lancamentos
set DataLancamento = '1994-07-08' 
where IdLancamento = 1

update Lancamentos 
set IdPlataforma = 4




