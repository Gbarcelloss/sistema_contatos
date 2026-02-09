package br.com.sistemacontatos.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.sistemacontatos.entities.Contato;
import br.com.sistemacontatos.entities.Usuario;
import br.com.sistemacontatos.repositories.ContatoRepository;

@Controller
public class ConsultaController {

	@RequestMapping(value = "/agenda/consulta")
	public ModelAndView consulta(HttpServletRequest request) {

		ModelAndView modelAndView = new ModelAndView("agenda/consulta");

		try {

		Usuario usuario = (Usuario) request.getSession().getAttribute("usuario_autenticado");
		
		//consultando os contatos do usuário
		ContatoRepository contatoRepository = new ContatoRepository();
		List<Contato> lista = contatoRepository.findAll(usuario.getIdUsuario());
		
		modelAndView.addObject("lista_contatos", lista);
			
			
		} catch (Exception e) {
          modelAndView.addObject("mensagem_erro", "Falha ao consultar contatos: " + e.getMessage());
		}
		return modelAndView;
	}
}
