package bean;

public class Bill {

	
	private String bill_id;
	private String medical_record_id;
	private String bill_type;
	private String amount_of_money;
	private String bill_resource;
	private String delete_mark;
	public String getBill_id() {
		return bill_id;
	}
	public void setBill_id(String bill_id) {
		this.bill_id = bill_id;
	}
	public String getMedical_record_id() {
		return medical_record_id;
	}
	public void setMedical_record_id(String medical_record_id) {
		this.medical_record_id = medical_record_id;
	}
	public String getBill_type() {
		return bill_type;
	}
	public void setBill_type(String bill_type) {
		this.bill_type = bill_type;
	}
	public String getAmount_of_money() {
		return amount_of_money;
	}
	public void setAmount_of_money(String amount_of_money) {
		this.amount_of_money = amount_of_money;
	}
	public String getBill_resource() {
		return bill_resource;
	}
	public void setBill_resource(String bill_resource) {
		this.bill_resource = bill_resource;
	}
	public String getDelete_mark() {
		return delete_mark;
	}
	public void setDelete_mark(String delete_mark) {
		this.delete_mark = delete_mark;
	}
	
}
