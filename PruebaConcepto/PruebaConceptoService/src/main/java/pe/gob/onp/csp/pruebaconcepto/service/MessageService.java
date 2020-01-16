package pe.gob.onp.csp.pruebaconcepto.service;

import org.springframework.stereotype.Component;

@Component
public class MessageService {
	
	public static String get() {
        return "Hello JUnit 4";
    }
	
	public static String getConcepto() {
        return "PruebaConcepto";
    }
	
	public String getDatos() {
		return "datos";
	}
}
