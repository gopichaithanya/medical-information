package main.java.impl;

import com.medicalinformation.dao.proxy.GenericDaoProxy;
import com.medicalinformation.vo.SympOfDis;

public class SympOfDisDaoImpl extends GenericDaoImpl<SympOfDis, Integer> {
	public SympOfDisDaoImpl() {
		this.setConn(new GenericDaoProxy().getDbc().getConnection());
	}

	@Override
	public Integer create(SympOfDis newInstance) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SympOfDis read(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(SympOfDis transientObject) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(SympOfDis persistentObject) {
		// TODO Auto-generated method stub
		
	}
}
