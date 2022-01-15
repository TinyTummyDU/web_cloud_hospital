package bean;

public class Drug {

	
	//属性对应数据库drug表，
	
	private String drug_id;
	private String drug_code;
		
	private String drug_name;
	private String drug_specification;
	private String paking_unit;
	private String manufacturer;
	
	private String drug_form;
	private String drug_type;
	private String drug_price;
	private String pin_yin;
	private String create_date;
	private String delete_mark;

	
	public String getDrug_id() {
		return drug_id;
	}
	public void setDrug_id(String drug_id) {
		this.drug_id = drug_id;
	}
	public String getDrug_code() {
		return drug_code;
	}
	public void setDrug_code(String drug_code) {
		this.drug_code = drug_code;
	}
	public String getDrug_name() {
		return drug_name;
	}
	public void setDrug_name(String drug_name) {
		this.drug_name = drug_name;
	}
	public String getDrug_specification() {
		return drug_specification;
	}
	public void setDrug_specification(String drug_specification) {
		this.drug_specification = drug_specification;
	}
	public String getPaking_unit() {
		return paking_unit;
	}
	public void setPaking_unit(String paking_unit) {
		this.paking_unit = paking_unit;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public String getDrug_form() {
		return drug_form;
	}
	public void setDrug_form(String drug_form) {
		this.drug_form = drug_form;
	}
	public String getDrug_type() {
		return drug_type;
	}
	public void setDrug_type(String drug_type) {
		this.drug_type = drug_type;
	}
	public String getDrug_price() {
		return drug_price;
	}
	public void setDrug_price(String drug_price) {
		this.drug_price = drug_price;
	}
	public String getPin_yin() {
		return pin_yin;
	}
	public void setPin_yin(String pin_yin) {
		this.pin_yin = pin_yin;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public String getDelete_mark() {
		return delete_mark;
	}
	public void setDelete_mark(String delete_mark) {
		this.delete_mark = delete_mark;
	}

	
}
