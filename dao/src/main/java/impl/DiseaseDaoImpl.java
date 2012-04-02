package main.java.impl;

import com.medicalinformation.dao.impl.GenericDaoImpl;
import com.medicalinformation.dao.proxy.GenericDaoProxy;
import com.medicalinformation.vo.Disease;

public class DiseaseDaoImpl extends GenericDaoImpl<Disease, Integer> {
	public DiseaseDaoImpl() {
		this.setConn(new GenericDaoProxy().getDbc().getConnection());
	}
	@Override
	public Integer create(Disease newInstance) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Disease read(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Disease transientObject) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Disease persistentObject) {
		// TODO Auto-generated method stub
		
	}

}
