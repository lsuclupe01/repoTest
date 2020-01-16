package pe.gob.onp.csp.pruebaConcepto.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pe.gob.onp.csp.pruebaconcepto.service.MessageService;



@Controller
@RequestMapping("/")
public class LoginController {
	
	Logger logger = Logger.getLogger(LoginController.class);
	
	@Autowired
	private  MessageService messageService;
		
	
	@RequestMapping(method=RequestMethod.GET)
	public String setupForm(Model model) {
		String nombres = "Luis";
		logger.debug("***nombres = *****"+nombres);
		logger.debug("***messageService.getDatos= *****"+messageService.getDatos());
		System.out.println("***messageService.getDatos= *****"+messageService.getDatos());
		return "acceso/login";
	}

}
