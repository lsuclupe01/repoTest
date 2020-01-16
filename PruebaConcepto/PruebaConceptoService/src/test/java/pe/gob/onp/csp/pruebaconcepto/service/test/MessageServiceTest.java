package pe.gob.onp.csp.pruebaconcepto.service.test;

import org.junit.Assert;
import org.junit.Test;

import pe.gob.onp.csp.pruebaconcepto.service.MessageService;

public class MessageServiceTest {
	
    @Test
    public void testGet() { 
    	Assert.assertEquals("Hello JUnit 4", MessageService.get());
    }
	
	
    @Test
    public void testGetConcepto() {
    	Assert.assertEquals("PruebaConcepto", MessageService.getConcepto());
    }
	
}
