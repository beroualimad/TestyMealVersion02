package Controller;

import org.springframework.web.bind.annotation.GetMapping;

public class CntrollerTestReste {
	@GetMapping(value = "/esp")	
	public String space() {
		return "EspaceRestaurateur";
	}
	@GetMapping("/aut")
	public String Auth() {
		return "Authentifier";
	}

}
