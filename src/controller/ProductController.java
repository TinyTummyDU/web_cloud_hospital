package controller;
 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import bean.Product;;

 
@Controller
public class ProductController {
 
    @RequestMapping("/addProduct")
    public ModelAndView add(Product product) throws Exception {
        ModelAndView mav = new ModelAndView("showProduct");
        return mav;
    }
}

//控制器ProductController，准备一个add方法映射/addProduct路径
//为add方法准备一个Product 参数，用于接收注入
//最后跳转到showProduct页面显示用户提交的数据


