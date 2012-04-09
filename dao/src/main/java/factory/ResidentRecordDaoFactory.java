package main.java.factory;

import com.medicalinformation.dao.impl.ResidentRecordDaoImpl;

public class ResidentRecordDaoFactory extends GenericDaoFactory {
	public ResidentRecordDaoFactory() {}
	@Override
	public ResidentRecordDaoImpl concreteDaoCreator() {
		// TODO Auto-generated method stub
		return new ResidentRecordDaoImpl();
	}

}
