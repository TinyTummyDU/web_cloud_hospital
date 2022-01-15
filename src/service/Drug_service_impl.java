package service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import bean.Drug;
import dao.Drug_dao;
import dao.Drug_dao_impl;

public class Drug_service_impl  implements Drug_service{

	Drug_dao drug_dao = new Drug_dao_impl();
	@Override
	public List<Drug> get_common_drugs() throws IOException {
		
		List<Drug> all_drugs = drug_dao.getDrugs();
		
		List<Drug> common_drugs = new ArrayList<Drug>();
		
		
		for(int i = 0 ;i<10 ;i++) {
			common_drugs.add(all_drugs.get(i));
		}
		return common_drugs;
	}



	@Override
	public Drug get_specific_drug_by_id(String drug_id) throws IOException {
		
		Drug drug = drug_dao.get_drug_by_id(drug_id);
		return drug;
	}

	
	
}
