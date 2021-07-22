#----------------------------------------- GERENCIAMENTO DE CÓPIAS DE SEGURANÇA -----------------------------------------

use cadastro; # Abre o Banco de Dados
desc gafanhotos;
desc cursos;
select * from cursos;
select * from gafanhotos;

# Para iniciar a exportação, na aba superior clique em "Server -> Data Export".

drop database cadastro;
drop database sys;


# Após deletar o Banco de Dados Criado, vamos pegar o backup feito e subir ele novamente
# Basta clicar em "Server -> Data Import"