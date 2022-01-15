
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;

import bean.Registration_record;
import service.Bill_service;
import service.Bill_service_impl;
import bean.Drug;
import bean.Prescription_drug;

@Controller
public class Bill_controller {

	private static  Bill_service bill_service = new Bill_service_impl() ;
	
	
	
	

	
//  我的老版本，有中文变成？？的bug
//    @RequestMapping(value = "/drug_charge" , produces = {"application/json;charset=UTF-8"} ,params = "medical_record_id")
//    @ResponseBody
//    public String yourUrl(@RequestParam("medical_record_id") String medical_record_id) throws IOException {
//        System.out.println("输入的medical_record_id"+medical_record_id);
//    	List<Prescription_drug> prescription_drugs = bill_service.find_prescription_drugs(medical_record_id);
//		for(int i = 0 ; i<prescription_drugs.size();i++) {
//			System.out.println(prescription_drugs.get(i).getDrug_name());
//		}
//		
//////	
//		String jsonString2 = JSON.toJSONString(prescription_drugs);
//		System.out.println("jsonString2:" + jsonString2);
// 		
//        return jsonString2;
//    }
    
	
	//版本2，解决依照https://blog.csdn.net/cherry_xiu/article/details/79140871
	@RequestMapping(value = "/drug_charge" , produces = {"application/json;charset=UTF-8"} ,params = "medical_record_id")
	@ResponseBody
    public void getManyCategory(@RequestParam("medical_record_id") String medical_record_id, HttpServletRequest request,HttpServletResponse response) throws  Exception{
		List<Prescription_drug> prescription_drugs = bill_service.find_prescription_drugs(medical_record_id);
		response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String jsonString2 = JSON.toJSONString(prescription_drugs);
        PrintWriter out = response.getWriter(); //获取写入对象  
        out.print(jsonString2); //将json数据写入流中  
        out.flush();  
        out.close();
    }

    
    @RequestMapping(value = "/drug_charge" , params = "medical_record_id1")
    @ResponseBody
    public String affirm_bill(@RequestParam("medical_record_id1") String medical_record_id1) throws IOException {
    	bill_service.change_prescription_pay_state(medical_record_id1);
        return "success";
    }

   
	

}

		
