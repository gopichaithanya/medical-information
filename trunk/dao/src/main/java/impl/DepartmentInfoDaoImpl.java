package main.java.impl;

import com.medicalinformation.dao.proxy.GenericDaoProxy;
import com.medicalinformation.vo.DepartmentInfo;

public class DepartmentInfoDaoImpl extends GenericDaoImpl<DepartmentInfo, Integer> {
	public DepartmentInfoDaoImpl() {
		this.setConn(new GenericDaoProxy().getDbc().getConnection());
	}
	@Override
	public Integer create(DepartmentInfo newInstance) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public DepartmentInfo read(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(DepartmentInfo transientObject) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(DepartmentInfo persistentObject) {
		// TODO Auto-generated method stub
		
	}
}
