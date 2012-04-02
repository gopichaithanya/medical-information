package main.java.factory;

import com.medicalinformation.dao.impl.HospitalInfoImpl;

public class HospitalInfoDaoFactory extends GenericDaoFactory{
	public HospitalInfoDaoFactory() {}
	@Override
	public HospitalInfoImpl concreteDaoCreator() {
		// TODO Auto-generated method stub
		return new HospitalInfoImpl();
	}

}
