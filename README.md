Sistema de Contatos desenvolvido em Java com Spring MVC.
Projeto em constante revisão, refatoração e aprimoramento com base nos meus estudos mais recentes.

Estou cursando o 3º semestre de Análise e Desenvolvimento de Sistemas (1 ano e meio de curso). Decidi retomar esse projeto antigo como forma de praticar Java, reforçar meus conhecimentos em Spring MVC e também montar um portfólio com os projetos que estou refazendo.


O sistema permite que o usuário crie uma conta, faça login e gerencie contatos (cadastrar, consultar, editar e excluir).

Também tem um recurso de recuperação de senha via e-mail. Caso o usuário esqueça a senha, ele recebe uma senha aleatória no e-mail e depois pode trocar por uma nova na área "minha conta".

### 📧 Envio de Email (Ambiente de Teste)

Durante o desenvolvimento, o envio de emails foi configurado utilizando o **Mailtrap (Sandbox)**, permitindo testar a funcionalidade de recuperação de senha sem o envio de emails reais.

Os emails enviados podem ser visualizados diretamente na inbox do Mailtrap.

Em ambiente de produção, o SMTP pode ser facilmente ajustado para serviços reais como Gmail ou Outlook.


Tecnologias utilizadas:
Java · Spring MVC · JSP / JSTL · HTML · CSS · Bootstrap · JDBC · Maven · Tomcat · JavaMail · Lombok
Funcionalidades
Criar conta de usuário ·
Login com validação ·
Recuperação de senha por e-mail ·
Alterar senha após login ·
Gerenciar contatos (CRUD) ·
Filtro de segurança para impedir acesso sem login ·
Logout ·
Como rodar
Clone o projeto: git clone https://github.com/Gbarcelloss/Sistema_Contatos.git
Importe no Eclipse como projeto Maven
Configure o Tomcat (versão 9 ou superior)
Rode no servidor
Acesse no navegador: http://localhost:8080/Sistema_Contatos
Status
✔️ Projeto finalizado e publicado como parte do meu processo de aprendizado e prática com Java e Spring MVC.
