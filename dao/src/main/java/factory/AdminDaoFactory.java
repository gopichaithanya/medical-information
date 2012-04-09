package main.java.factory;

import com.medicalinformation.dao.impl.AdminDaoImpl;

public class AdminDaoFactory extends GenericDaoFactory {
	public AdminDaoFactory() {}
	
	public AdminDaoImpl concreteDaoCreator() {
		return new AdminDaoImpl();
	}
}
