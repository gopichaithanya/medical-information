package main.java.factory;

import com.medicalinformation.dao.impl.DepartmentInfoDaoImpl;

public class DepartmentInfoDaoFactory extends GenericDaoFactory {
	public DepartmentInfoDaoFactory() {}
	@Override
	public DepartmentInfoDaoImpl concreteDaoCreator() {
		// TODO Auto-generated method stub
		return new DepartmentInfoDaoImpl();
	}
}
