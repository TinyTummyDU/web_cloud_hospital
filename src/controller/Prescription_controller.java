
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;

import bean.Drug;
import bean.Prescription;
import bean.Prescription_drug;
import service.Drug_service;
import service.Drug_service_impl;
import service.Prescription_service;
import service.Prescription_service_impl;

@Controller
public class Prescription_controller {

	private static  Prescription_service prescription_service = new Prescription_service_impl() ;
	
	
	
	// ajax+通过get提交方式，将参数在链接中以问号的形式进行传递 后台接值方法
    @RequestMapping(value = "/create_prescription1", params = "prescription_id" )
    @ResponseBody
    public void yourUrl(@RequestParam("prescription_id") String prescription_id,HttpServletRequest request,HttpServletResponse response) throws IOException {
        System.out.println("输入的prescirption_id"+prescription_id);
    	List<Prescription_drug> prescription_drugs = prescription_service.find_prescription_drugs_by_p_id(prescription_id);
		for(int i = 0 ; i<prescription_drugs.size();i++) {
			System.out.println(prescription_drugs.get(i).getDrug_name());
		}
		response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
		String jsonString2 = JSON.toJSONString(prescription_drugs);
	    PrintWriter out = response.getWriter(); //获取写入对象  
	    out.print(jsonString2); //将json数据写入流中  
	    out.flush();  
	    out.close();
    }
//    
//    @RequestMapping(value = "/create_prescription1", params = {"prescription_id","all_drug_amount" })
//    @ResponseBody
//    public void yourUrll(@RequestParam("prescription_id") String prescription_id,HttpServletRequest request,HttpServletResponse response) throws IOException {
//        System.out.println("输入的prescirption_id"+prescription_id);
//    	List<Prescription_drug> prescription_drugs = prescription_service.find_prescription_drugs_by_p_id(prescription_id);
//		for(int i = 0 ; i<prescription_drugs.size();i++) {
//			System.out.println(prescription_drugs.get(i).getDrug_name());
//		}
//		response.setCharacterEncoding("UTF-8");
//        response.setContentType("text/html;charset=UTF-8");
//		String jsonString2 = JSON.toJSONString(prescription_drugs);
//	    PrintWriter out = response.getWriter(); //获取写入对象  
//	    out.print(jsonString2); //将json数据写入流中  
//	    out.flush();  
//	    out.close();
//    }
//    
    
    @RequestMapping(value = "/create_prescription1", params = "drug_id" )
    @ResponseBody
    public void get_a_drug(@RequestParam("drug_id") String drug_id,HttpServletRequest request,HttpServletResponse response) throws IOException {
    	System.out.println("输入的drug_id"+drug_id);
        Drug_service  drug_service = new Drug_service_impl();
        Drug drug = drug_service.get_specific_drug_by_id(drug_id);
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
		String jsonString2 = JSON.toJSONString(drug);
	    PrintWriter out = response.getWriter(); //获取写入对象  
	    out.print(jsonString2); //将json数据写入流中  
	    out.flush();  
	    out.close();
    }
    
    @RequestMapping(value = "/create_prescription1", params = {"drugs_json","prescription_json"} )
    @ResponseBody
    public String add_prescription(@RequestParam("drugs_json") String drugs_json,@RequestParam("prescription_json") String prescritpion_json) throws IOException {
        System.out.println("输入的prescritpion_json"+prescritpion_json);
        System.out.println("输入的drugs_json"+drugs_json);
        return "jaja";
    }
    
//    
//	@RequestMapping(value = "/create_prescription1")
//	public ModelAndView create_prescription(Prescription prescription) throws IOException {
//		System.out.println(prescription.getPrescription_name());
//		prescription_service.create_prescription(prescription);
//		ModelAndView mav = new ModelAndView("/diagnose2");
//		return mav;
//		}
//	
//	
//	
//
//	
	
	
	//由于增加处方细则，即其所包含的药品这些与增加处方在同一个视图，但是不在同一个Controller

}

		
