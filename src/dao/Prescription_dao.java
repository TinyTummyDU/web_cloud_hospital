package dao;

import java.io.IOException;
import java.util.List;

import bean.Prescription;
import bean.Prescription_drug;

public interface Prescription_dao {

	
	public String get_max_p_id() throws IOException;

	public void addPrescription(Prescription prescription) throws IOException;

	public  Prescription getPrescription(String medical_record_id) throws IOException ;

	public List<Prescription_drug> getPrescription_drug_by_p_id(String prescription_id) throws IOException;

	public void change_prescription_pay_state(String medical_record_id1) throws IOException;

	public List<Prescription> getPrescription_templates() throws IOException;
}
