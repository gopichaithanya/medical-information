package main.java.factory;

import com.medicalinformation.dao.impl.DepOfHosptDaoImpl;

public class DepOfHosptDaoFactory extends GenericDaoFactory {
	public DepOfHosptDaoFactory() {}

	public DepOfHosptDaoImpl concreteDaoCreator() {
		// TODO Auto-generated method stub
		return new DepOfHosptDaoImpl();
	}
}
