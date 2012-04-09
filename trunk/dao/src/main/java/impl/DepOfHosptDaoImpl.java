package main.java.impl;

import com.medicalinformation.dao.proxy.GenericDaoProxy;
import com.medicalinformation.vo.DepOfHospt;

public class DepOfHosptDaoImpl extends GenericDaoImpl<DepOfHospt, Integer> {
	public DepOfHosptDaoImpl() {
		this.setConn(new GenericDaoProxy().getDbc().getConnection());
	}
	@Override
	public Integer create(DepOfHospt newInstance) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public DepOfHospt read(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(DepOfHospt transientObject) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(DepOfHospt persistentObject) {
		// TODO Auto-generated method stub
		
	}

}
