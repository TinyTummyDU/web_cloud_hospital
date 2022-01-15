package bean;

public class Prescription_drug {

	
	private String prescription_id;
	private String drug_id;
	private String drug_name;	
	private String drug_amount;
	private String drug_price;
	private String drug_state;
	private String delete_mark;
	public String getPrescription_id() {
		return prescription_id;
	}
	public void setPrescription_id(String prescription_id) {
		this.prescription_id = prescription_id;
	}
	public String getDrug_id() {
		return drug_id;
	}
	public void setDrug_id(String drug_id) {
		this.drug_id = drug_id;
	}
	public String getDrug_name() {
		return drug_name;
	}
	public void setDrug_name(String drug_name) {
		this.drug_name = drug_name;
	}
	public String getDrug_amount() {
		return drug_amount;
	}
	public void setDrug_amount(String drug_amount) {
		this.drug_amount = drug_amount;
	}
	public String getDrug_price() {
		return drug_price;
	}
	public void setDrug_price(String drug_price) {
		this.drug_price = drug_price;
	}
	public String getDrug_state() {
		return drug_state;
	}
	public void setDrug_state(String drug_state) {
		this.drug_state = drug_state;
	}
	public String getDelete_mark() {
		return delete_mark;
	}
	public void setDelete_mark(String delete_mark) {
		this.delete_mark = delete_mark;
	}
	public String getDrug_form() {
		return drug_form;
	}
	public void setDrug_form(String drug_form) {
		this.drug_form = drug_form;
	}
	private String drug_form;
}
