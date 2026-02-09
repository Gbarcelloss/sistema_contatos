<html>
<head>
<title>Agenda de contatos - Seja bem vindo!</title>
<meta name="viewport" content="width=device-width" />

<%
         response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); 
         response.setHeader("Pragma", "no-cache"); 
         response.setDateHeader("Expires", 0);
%> 




<!-- folha de estilos CSS do bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">

</head>

<body>

	<jsp:include page="/WEB-INF/views/components/navbar.jsp" />
	
	<div class="card m-4">
		<div class="card-body">

			<h5>Cadastro de contatos</h5>
			<p>Preencha os campos abaixo para incluir um contato.</p>
			<hr />

			<div class="text-sucess">
			<h4>${mensagem_sucesso} </h4>
			</div>
			
			<div class="text-sucess">
			<h4>${mensagem_erro} </h4>
			</div>
			
			<form method="post" action="cadastrar-contato">

				<div class="row mb-2">
					<div class="col-md-6">
						<label for="nome">Nome do Contato:</label> <input type="text" name="nome_contato"
							class="form-control" id="nome"placeholder="Digite o nome completo do contato" 
							required="required" pattern="[a-zA-ZÀ-ú\s]{8,150}"
							title="Por favor, informe  um nome válido de 8 a 150 caracteres." 
							>
							
					</div>
					<div class="col-md-3">
						<label for="email">Email:</label> <input type="text" name="email_contato"
							class="form-control" id="email"
							placeholder="Digite o endereço de email"
							 required="required"   title="Por favor, informe  um endereço de email válido.>
					</div>
					<div class="col-md-3">
						<label for="telefone">Telefone:</label> <input type="text"class="form-control" name="telefone_contato" id="telefone" placeholder="Digite o telefone do contato"
						placeholder="Digite o telefone  do contato" required="required"   pattern="[0-9]{11}"  title="Por favor, informe um  telefone com somente  11 dígitos numéricos.">
					</div>
				</div>

				<div class="row mb-2">
					<div class="col-md-12">
						<label for="observacoes"> Observações do contato: </label>
						<textarea class="form-control" name="observacoes_contato" id="observacoes" required="required"  title="Por favor, informe as  observações do contato."></textarea>
					</div>
				</div>

				<div class="row mb-2">
					<div class="col-md-12">
						<input type="submit" class="btn btn-success"
							value="Realizar Cadastro" /> <input type="reset"
							class="btn btn-light" value="Limpar">
					</div>
				</div>

			</form>
		</div>
	</div>
	<!-- arquivos JS do bootstrap -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
