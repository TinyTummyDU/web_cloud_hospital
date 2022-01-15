package controller;

import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;

import bean.Drug;
import bean.Medical_record;
import bean.Prescription;
import bean.Prescription_drug;
import bean.Registration_record;
import service.Drug_service;
import service.Drug_service_impl;
import service.Medical_record_service;
import service.Medical_record_service_impl;
import service.Prescription_service;
import service.Prescription_service_impl;
import service.Registration_record_service;
import service.Registration_record_service_impl;

@Controller
public class Medical_record_controller {

	private static  Medical_record_service medical_record_service = new Medical_record_service_impl() ;
	
	@RequestMapping(value = "/diagnose_for_patient")
	public ModelAndView write_medical_record(Medical_record medical_record,@RequestParam("medical_record_id") String medical_record_id) throws IOException{
		System.out.println("准备新增加处方了");
		
		medical_record_service.diagnose(medical_record);
		
		ModelAndView view = new ModelAndView();
		
		//向前端传处方模版
		Prescription_service p_s  = new Prescription_service_impl();
		List<Prescription> prescription_templates = p_s.getPrescription_templates();
		for(int i = 0 ; i<prescription_templates.size();i++) {
			System.out.println(prescription_templates.get(i).getPrescription_id());
		}
		
		//向前端传常用药品
		Drug_service d_s = new Drug_service_impl();
		List<Drug> common_drugs = d_s.get_common_drugs();
		for(int i = 0 ; i<common_drugs.size();i++) {
			System.out.println(common_drugs.get(i).getDrug_name());
		}
		
		
		
		
		view.addObject("medical_record_id",medical_record_id);
		view.addObject("prescription_templates", prescription_templates);
		view.addObject("common_drugs",common_drugs);
		view.setViewName("/create_prescription1");
		return view;
		}
	

}


