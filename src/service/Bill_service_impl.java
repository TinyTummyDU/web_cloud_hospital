package service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import bean.Bill;
import bean.Drug;
import bean.Prescription;
import bean.Prescription_drug;
import bean.Registration_record;
import dao.Bill_dao;
import dao.Bill_dao_impl;
import dao.Prescription_dao;
import dao.Prescription_dao_impl;

public class Bill_service_impl  implements Bill_service
{
	
	
	Bill_dao bill_dao = new Bill_dao_impl();
	public void add_bill(Bill bill) throws IOException {
		bill.setDelete_mark("0");
		if(bill.getBill_id() == null) {
			System.out.println("目前，新增加的发票的id为空");
		}
		bill_dao.add_bill(bill);
	}
	@Override
	public List<Prescription_drug> find_prescription_drugs(String medical_record_id) throws IOException {
		
		System.out.println("到了bill_service");
		Prescription_dao prescription_dao = new Prescription_dao_impl();
		Prescription prescription = prescription_dao.getPrescription(medical_record_id);
		System.out.println("到了bill_service  "+prescription.getMedical_record_id());
		String prescription_id = prescription.getPrescription_id();
		
		
		List<Prescription_drug> prescription_drugs = prescription_dao.getPrescription_drug_by_p_id(prescription_id);
		for(int i = 0 ; i<prescription_drugs.size();i++) {
			System.out.println(prescription_drugs.get(i).getDrug_id());
		}
		return prescription_drugs;
		
	}
	@Override
	public void change_prescription_pay_state(String medical_record_id1) throws IOException {
		System.out.println("准备更改目标处方的付款状态");
		
		Prescription_dao prescription_dao = new Prescription_dao_impl();
		prescription_dao.change_prescription_pay_state(medical_record_id1);
	
		
		
	}
	

	

}
