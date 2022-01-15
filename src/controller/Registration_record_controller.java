package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sun.javafx.collections.MappingChange.Map;

import bean.Registration_record;
import service.Registration_record_service;
import service.Registration_record_service_impl;

@Controller
public class Registration_record_controller {

	private static  Registration_record_service registration_record_service = new Registration_record_service_impl() ;
	
	@RequestMapping("/register2")
	public ModelAndView register(Registration_record registration_record) throws Exception {
		System.out.println("okok");
		registration_record_service.register(registration_record);
		ModelAndView mav = new ModelAndView("/index2");
		return mav;
		}


	@RequestMapping(value = "/diagnose2" , params = "fresh")
	public ModelAndView find_registration_record_by_doc_name() throws IOException{
		ModelAndView view = new ModelAndView();
		System.out.println("没问题啊");
		String doc_name = "3";
		System.out.println("ahah");
		List<Registration_record> registration_records = registration_record_service.find_registration_record_by_doc_name(doc_name);
		for(int i = 0 ; i<registration_records.size();i++) {
			System.out.println(registration_records.get(i).getMedical_record_id());
		}
		view.addObject("registration_records", registration_records);
		view.setViewName("/diagnose2");
		return view;
		}
	
	@RequestMapping(value = "/diagnose2" , params = {"m_r_id","one_patient"} )
	public ModelAndView diagnose(@RequestParam("m_r_id") String m_r_id) throws IOException{
		ModelAndView view = new ModelAndView();
		System.out.println("lololol");
		System.out.println(m_r_id);
		//更新目标挂号单状态为已看诊
		registration_record_service.updateRegistration_record_diagnose_state_by_m_r_id(m_r_id);
		view.addObject("m_r_id", m_r_id);
		view.setViewName("/diagnose_for_patient");
		return view;
		}
	

//@RequestMapping(value = "/diagnose2")
//public String hello() throws IOException{
//	System.out.println("nice");
//	return "success";
//	}

}

		
