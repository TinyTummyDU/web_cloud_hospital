package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import bean.Administrator;
import service.Administrator_service;
import service.Administrator_service_impl;
import service.Category_service;
import service.Category_service_impl;
@Controller
public class Administrator_controller {
	
	private static Administrator_service administrator_service = new Administrator_service_impl() ;

	@RequestMapping("/login")
	  public ModelAndView login(Administrator administrator) throws Exception {
		
		boolean result = false;
		System.out.println("用户输入的id:"+administrator.getId()+"用户输入的密码:"+administrator.getPassword());
		result = administrator_service.login_check(administrator);
		
		if(result == true) {
			ModelAndView mav = new ModelAndView("index2");
//			ModelAndView mav = new ModelAndView("register");
			System.out.println("dui");
			return mav;
		}else {
			ModelAndView mav = new ModelAndView("login_fail");
			System.out.println("cuo");
			 return mav;
		}
    }
}
//控制器ProductController，准备一个add方法映射/addProduct路径
//为add方法准备一个Product 参数，用于接收注入
//最后跳转到showProduct页面显示用户提交的数据


