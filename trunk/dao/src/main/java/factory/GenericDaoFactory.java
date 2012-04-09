package main.java.factory;

import com.medicalinformation.dao.GenericDao;
import com.medicalinformation.dao.impl.GenericDaoImpl;

public abstract class GenericDaoFactory {

	public GenericDaoFactory() {}
	public abstract GenericDaoImpl<?, ?> concreteDaoCreator();
	public static <T> GenericDao<?, ?> newDaoInstance(Class<T> type) {
		if(type.getSimpleName().equals("ResidentRecord")) {
			return new ResidentRecordDaoFactory().concreteDaoCreator();
		} else if(type.getSimpleName().equals("Admin")) {
			return new AdminDaoFactory().concreteDaoCreator();
		} else if(type.getSimpleName().equals("MedicalPersonnel")) {
			return new MedicalPersonnelDaoFactory().concreteDaoCreator();
		} else if(type.getSimpleName().equals("DepartmentInfo")) {
			return new DepartmentInfoDaoFactory().concreteDaoCreator();
		} else if(type.getSimpleName().equals("DepOfHostp")) {
			return new DepOfHosptDaoFactory().concreteDaoCreator();
		} else {
			return null;
		}
	}
}
