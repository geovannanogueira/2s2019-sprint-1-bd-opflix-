use T_OpFlix

--itens extas--

-- Seleção - trazer todas as categorias, inclusive as que não possuem lançamentos vinculados; --
-- Deletar a série Deuses Americanos; --

select * from Lancamentos 
select * from Generos

delete from lancamentos 
where IdLancamento = '3'

select Lancamentos.Nome , Generos.Nome
from Lancamentos
right join Generos
on Lancamentos.IdGenero = Generos.IdGenero


-- Atualizar o usuário Helena para administrador; --
select * from Usuarios
select * from TipoUsuarios

update Usuarios
set IdTipoUsuario = 1
where IdUsuario = 3


-- Alterar La Casa De Papel 3 temp para La Casa De Papel - 3º Temporada; --
select * from Lancamentos

update Lancamentos
set Nome = 'La Casa De Papel - 3º Temporada'
where IdLancamento = 2


-- Incluir uma imagem para cada usuário cadastrado; --

alter table Usuarios add foto image
select * from Usuarios
insert into Usuarios(Nome, Email, Senha, IdTipoUsuario, Foto)
values ('Erick' , 'erick@gmail.com' , '123456' , 1, 'download') 
		,('Cassiana' , 'cassiana@email.com' , '123456' , 1, 'download')
		,('Helena' , 'helena@email.com' , '123456' , 2, 'download')
		,('Roberto' , 'rob@email.com' , '3110' , 2, 'download');


-- Atualizar data de lançamento do filme O Rei Leão para a data de lançamento da animação original, 08/07/1994, e alterar veiculo para VHS; --

select * from Lancamentos 

update Lancamentos
set DataLancamento = '1994-07-08' 
where IdLancamento = 1

update Lancamentos 
set IdPlataforma = 4




