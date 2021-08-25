package Controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DAO.Menu;
import DAO.User;
import Metier.ClientOperation;

@Controller
public class ClientControle {
@Autowired(required=true)	
	
	 private ClientOperation obj;
	
//@GetMapping("/consulteMenu")
	 @RequestMapping(value = "/consulteMenu", method = RequestMethod.GET)
public String cosulte(Model model) {
	//ClientOperation obj=new ClientOperation();
	
	ArrayList<Menu> l=obj.consulterMenu();//new ArrayList<Menu>();
//l=obj.consulterMenu();

model.addAttribute("menus", l); 
return ("AfficherMenu");
}
	 @RequestMapping(value = "/aut", method = RequestMethod.GET)
		public ModelAndView show( ) {
		     return new ModelAndView("Authentifier", "user", new User());
		}
@RequestMapping(value="/AddUser2", method = RequestMethod.POST)
     public String Ajoute(@ModelAttribute("user") User user ,Model model) {
	     if(user.getUseName().equals("") || user.getGmail().equals("") || user.getAdresse().equals("")) {
	    	 return "Authentifier";
	     }else {
	    	 obj.AjouterBD(user.getUseName(),user.getGmail(),user.getAdresse());
	    	
	    	 return "Home";
	     }
	     
}
	
}
