package main.java.impl;

import com.medicalinformation.dao.proxy.GenericDaoProxy;
import com.medicalinformation.vo.Symptom;

public class SymptomDaoImpl extends GenericDaoImpl<Symptom, Integer> {
	public SymptomDaoImpl() {
		this.setConn(new GenericDaoProxy().getDbc().getConnection());
	}

	@Override
	public Integer create(Symptom newInstance) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Symptom read(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Symptom transientObject) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Symptom persistentObject) {
		// TODO Auto-generated method stub
		
	}

}
