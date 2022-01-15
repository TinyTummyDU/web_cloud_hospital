package service;

import java.io.IOException;
import java.util.List;

import bean.Bill;
import bean.Drug;
import bean.Prescription_drug;


public interface Bill_service {

	public void add_bill(Bill bill) throws IOException;

	public List<Prescription_drug> find_prescription_drugs(String medical_record_id) throws IOException;

	public void change_prescription_pay_state(String medical_record_id1) throws IOException;
	
}
