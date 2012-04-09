package main.java.factory;

import com.medicalinformation.dao.impl.MedicalPersonnelDaoImpl;

public class MedicalPersonnelDaoFactory extends GenericDaoFactory {
	public MedicalPersonnelDaoFactory() {}
	@Override
	public MedicalPersonnelDaoImpl concreteDaoCreator() {
		// TODO Auto-generated method stub
		return new MedicalPersonnelDaoImpl();
	}
}
