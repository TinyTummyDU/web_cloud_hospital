package dao;

import java.io.IOException;
import java.util.List;

import bean.Drug;

public interface Drug_dao {

	public List<Drug> getDrugs() throws IOException;

	public Drug get_drug_by_id(String drug_id) throws IOException;

}
