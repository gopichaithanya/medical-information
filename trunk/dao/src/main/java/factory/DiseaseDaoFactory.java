package main.java.factory;

import com.medicalinformation.dao.impl.DiseaseDaoImpl;

public class DiseaseDaoFactory extends GenericDaoFactory {
	public DiseaseDaoFactory() {}
	@Override
	public DiseaseDaoImpl concreteDaoCreator() {
		// TODO Auto-generated method stub
		return new DiseaseDaoImpl();
	}
}
