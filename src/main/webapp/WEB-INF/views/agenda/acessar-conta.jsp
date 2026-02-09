<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="pt-BR">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Agenda de contatos - Acessar conta</title>

  <%
         response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); 
         response.setHeader("Pragma", "no-cache"); 
         response.setDateHeader("Expires", 0);
%> 
  
  
  
  <link 
  href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" 
  rel="stylesheet">
</head>
<body>
  <div class="container">
    <div class="row justify-content-center mt-5">
      <div class="col-md-5">
        <div class="card">
          <div class="card-header text-center">
            <h3>Autenticação de Usuários</h3>
          </div>
          <div class="card-body">
            <div class="text-center">Entre com suas credenciais de acesso:</div>
            <hr/>
            
            <div class="text-center text-danger">
            <h4>${mensagem_erro} </h4>
            
            
            </div>

            <form method="post" action="autenticar-usuario">
              <div class="mb-2">
                <label for="email" class="form-label">Email:</label>
                <input type="email" class="form-control" id="email" name="email_usuario" placeholder="Digite seu email"  required="required">
              </div>

              <div class="mb-2">
                <label for="senha" class="form-label">Senha:</label>
                <input type="password" class="form-control" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*]).{8,}" title="A senha deve ter pelo menos 8 carácteres, incluindo pelo menos uma letra minúscula, uma letra maiúscula id="senha" name="senha_usuario" placeholder="Digite sua senha" required="required">
              </div>

              <div class="mb-2 text-end">
                <a href="${pageContext.request.contextPath}/recuperar-senha">Esqueci minha senha?</a>
              </div>

              <div class="d-grid mb-2">
                <button type="submit" class="btn btn-primary">Entrar</button>
              </div>

              <div class="d-grid mb-2">
                <a href="${pageContext.request.contextPath}/criar-conta" class="btn btn-light">
                  Não possui conta? <strong>Cadastre-se aqui!</strong>
                </a>
              </div>
            </form>

          </div>
        </div>
      </div>
    </div>
  </div>

  <script 
  src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js">
</script>
</body>
</html>
