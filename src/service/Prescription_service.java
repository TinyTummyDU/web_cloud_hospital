package service;

import java.io.IOException;
import java.util.List;

import bean.Prescription;
import bean.Prescription_drug;

public interface Prescription_service {

	public void create_prescription(Prescription prescription) throws IOException;

	public Integer get_new_p_id() throws IOException ;

	public List<Prescription> getPrescription_templates() throws IOException;

	public List<Prescription_drug> find_prescription_drugs_by_p_id(String prescription_id) throws IOException;
}
