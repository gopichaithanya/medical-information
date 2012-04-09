package main.java.impl;

import com.medicalinformation.dao.proxy.GenericDaoProxy;
import com.medicalinformation.vo.HospitalInfo;

public class HospitalInfoImpl extends GenericDaoImpl<HospitalInfo, Integer> {
	public HospitalInfoImpl() {
		this.setConn(new GenericDaoProxy().getDbc().getConnection());
	}

	@Override
	public Integer create(HospitalInfo newInstance) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public HospitalInfo read(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(HospitalInfo transientObject) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(HospitalInfo persistentObject) {
		// TODO Auto-generated method stub
		
	}

}
