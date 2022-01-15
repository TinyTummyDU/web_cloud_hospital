package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {
	
	@RequestMapping("/loginhaha")
	@ResponseBody
	public boolean login(String username,String password){
		return "admin".equals(username)&&"123456".equals(password) ? true : false;
	}
	
}
