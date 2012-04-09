package main.java.impl;

import com.medicalinformation.dao.proxy.GenericDaoProxy;
import com.medicalinformation.vo.MedicalPersonnel;

public class MedicalPersonnelDaoImpl extends GenericDaoImpl<MedicalPersonnel, Integer> {
	public MedicalPersonnelDaoImpl() {
		this.setConn(new GenericDaoProxy().getDbc().getConnection());
	}

	@Override
	public Integer create(MedicalPersonnel newInstance) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MedicalPersonnel read(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(MedicalPersonnel transientObject) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(MedicalPersonnel persistentObject) {
		// TODO Auto-generated method stub
		
	}
}
