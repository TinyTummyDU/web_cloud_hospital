package service;

import java.io.IOException;
import java.util.List;

import bean.Prescription;
import bean.Prescription_drug;
import dao.Prescription_dao;
import dao.Prescription_dao_impl;

public class Prescription_service_impl implements Prescription_service {

	Prescription_dao prescription_dao = new Prescription_dao_impl();
	
	@Override
	public void create_prescription(Prescription prescription) throws IOException {
		prescription.setDelete_mark("0");
		prescription.setDoc_id("10");
		prescription.setPay_state("未缴费");
		Integer new_p_id = get_new_p_id();
		prescription.setPrescription_id(String.valueOf(new_p_id));
		prescription_dao.addPrescription(prescription);
		
		
	}

	
	//获得一个新的处方id
	public Integer get_new_p_id() throws IOException {
		
		String max_p_id = prescription_dao.get_max_p_id();
		Integer max_p_id_integer = Integer.valueOf(max_p_id);
		return max_p_id_integer+1;
	}


	@Override
	public List<Prescription> getPrescription_templates() throws IOException {
		List<Prescription> prescription_templates = prescription_dao.getPrescription_templates();
		for(int i = 0 ; i<prescription_templates.size();i++) {
			System.out.println(prescription_templates.get(i).getPrescription_name());
		}
		return prescription_templates;

	}


	@Override
	public List<Prescription_drug> find_prescription_drugs_by_p_id(String prescription_id) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("到了prescirption_service");
		List<Prescription_drug> prescription_drugs = prescription_dao.getPrescription_drug_by_p_id(prescription_id);
		for(int i = 0 ; i<prescription_drugs.size();i++) {
			System.out.println(prescription_drugs.get(i).getDrug_id());
		}
		return prescription_drugs;
	}




}
