package Controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DAO.User;

@Controller
public class LoginController {
	@GetMapping(value = "/ho")	
	public String log(HttpSession  session) {
		session.invalidate() ;
		return "Home";
	}
	
	@RequestMapping(value = "/esp", method = RequestMethod.GET)
	public ModelAndView show( ) {
	     return new ModelAndView("EspaceRestaurateur", "user", new User());
	}

	@RequestMapping(value = "/AddUser" , method = RequestMethod.POST)
	public String submit(@ModelAttribute("user") User user ,Model model,HttpSession session) {
		if(user.getName().equals("Admin") &&  user.getPass().equals("admin") ) {
			addUserInSession(user, session);
			return "MenuRestaurateur";
		}else {
			return "Home";
		}
		
	}

	private void addUserInSession(User u, HttpSession session) {
		session.setAttribute("User", u);
		session.setAttribute("usreId", u.getName());
		session.setAttribute("userRole", u.getPass());
		
		
	}
	
}
