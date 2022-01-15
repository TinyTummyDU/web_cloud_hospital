package service;
import java.io.IOException;
import java.util.List;

import bean.Drug;

public interface Drug_service {

	
	public List<Drug> get_common_drugs() throws IOException;
	

	public Drug get_specific_drug_by_id(String drug_id) throws IOException;
}
