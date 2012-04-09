package main.java.factory;

import com.medicalinformation.dao.impl.SympOfDisDaoImpl;

public class SympOfDisDaoFactory extends GenericDaoFactory {
	public SympOfDisDaoFactory() {}
	
	@Override
	public SympOfDisDaoImpl concreteDaoCreator() {
		// TODO Auto-generated method stub
		return new SympOfDisDaoImpl();
	}

}
