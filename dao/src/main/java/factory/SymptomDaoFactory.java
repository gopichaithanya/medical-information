package main.java.factory;

import com.medicalinformation.dao.impl.SymptomDaoImpl;

public class SymptomDaoFactory extends GenericDaoFactory {
	public SymptomDaoFactory() {}

	@Override
	public SymptomDaoImpl concreteDaoCreator() {
		// TODO Auto-generated method stub
		return new SymptomDaoImpl();
	}
	
}
