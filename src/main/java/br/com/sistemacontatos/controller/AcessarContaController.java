package br.com.sistemacontatos.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.sistemacontatos.entities.Usuario;
import br.com.sistemacontatos.repositories.UsuarioRepository;

@Controller
public class AcessarContaController {

	@RequestMapping(value = "/")
	public ModelAndView acessarConta() {

		ModelAndView modelAndView = new ModelAndView("/agenda/acessar-conta");
		return modelAndView;
	}

	@RequestMapping(value = "/autenticar-usuario", method = RequestMethod.POST)
	public ModelAndView autenticarUsuario(HttpServletRequest request) {

		ModelAndView modelAndView = new ModelAndView("acessar-conta");

		try {

			String email = request.getParameter("email_usuario");

			String senha = request.getParameter("senha_usuario");

			 //pesquisar o usuário no banco de dados 
			UsuarioRepository usuarioRepository = new UsuarioRepository();

			Usuario usuario = usuarioRepository.findByEmailAndSenha(email, senha);

			//verificando se o usuário foi encontrado 
			if (usuario != null) {
				
				//gravar os dados do usuário em sessão 
				request.getSession().setAttribute("usuario_autenticado", usuario);
				
				//redirecionar o usuário para a página /agenda/home 
				modelAndView.setViewName("redirect:/agenda/home");

			}

			else {
				modelAndView.addObject("mensagem_erro", "Acesso negado. Usuário inválido.");

			}

		} catch (Exception e) {

			modelAndView.addObject("mensagem_erro", "Falha: " + e.getMessage());

		}
		return modelAndView;
	}
}
