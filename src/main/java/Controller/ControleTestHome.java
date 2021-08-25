package Controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class ControleTestHome {

	@GetMapping(value = "/index")	
	public String show() {
		return "IndexTastyMeal";
	}


@GetMapping("/home")
public String home() {
	return "Home";
}
@GetMapping("/Menures")
public String Menu() {
	return "MenuRestaurateur";
}


}
