<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">

        <a class="navbar-brand" href="#">
            <strong>Agenda de Contatos</strong>
        </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarNav" aria-controls="navbarNav"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">

            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="${pageContext.request.contextPath}/agenda/home">
                        Página Inicial
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/agenda/cadastro">
                        Cadastrar Contatos
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/agenda/consulta">
                        Consultar Contatos
                    </a>
                </li>
            </ul>

            <div class="dropdown">
                <a class="btn btn-primary btn-sm dropdown-toggle" href="#" role="button"
                    data-bs-toggle="dropdown" aria-expanded="false">
                    <span class="me-2">${usuario_autenticado.nome}</span>
                    <span>${usuario_autenticado.email}</span>
                </a>

                <ul class="dropdown-menu dropdown-menu-end">
                    <li><a class="dropdown-item" href="/sistema_contatos/agenda/minhaconta">Minha Conta</a></li>
                    <li><hr class="dropdown-divider"></li>
                    <li>
                        <a class="dropdown-item" 
                           href="${pageContext.request.contextPath}/logout"
                           onclick="return confirm('Deseja realmente sair do sistema?');">
                            Sair da Agenda
                        </a>
                    </li>
                </ul>
            </div>

        </div>

    </div>
</nav>
