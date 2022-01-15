package service;

import java.io.IOException;

import bean.Medical_record;

public interface Medical_record_service {

	public void diagnose(Medical_record medical_record) throws IOException;

}
