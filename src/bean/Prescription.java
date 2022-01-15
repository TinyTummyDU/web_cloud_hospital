package bean;

public class Prescription {


	private String prescription_id;
	private String medical_record_id;
	private String prescription_name;
	private String doc_id;
	private String prescription_time;
	private String pay_state;
	private String delete_mark;
	
	
	
	public String getPrescription_id() {
		return prescription_id;
	}
	public void setPrescription_id(String prescription_id) {
		this.prescription_id = prescription_id;
	}
	public String getMedical_record_id() {
		return medical_record_id;
	}
	public void setMedical_record_id(String medical_record_id) {
		this.medical_record_id = medical_record_id;
	}
	public String getPrescription_name() {
		return prescription_name;
	}
	public void setPrescription_na(String prescription_name) {
		this.prescription_name = prescription_name;
	}
	public String getDoc_id() {
		return doc_id;
	}
	public void setDoc_id(String doc_id) {
		this.doc_id = doc_id;
	}
	public String getPrescription_time() {
		return prescription_time;
	}
	public void setPrescription_time(String prescription_time) {
		this.prescription_time = prescription_time;
	}
	public String getPay_state() {
		return pay_state;
	}
	public void setPay_state(String pay_state) {
		this.pay_state = pay_state;
	}
	public String getDelete_mark() {
		return delete_mark;
	}
	public void setDelete_mark(String delete_mark) {
		this.delete_mark = delete_mark;
	}

}

