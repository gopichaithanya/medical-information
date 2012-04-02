package main.java.impl;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.medicalinformation.dao.proxy.GenericDaoProxy;
import com.medicalinformation.vo.ResidentRecord;
import com.mysql.jdbc.PreparedStatement;

public class ResidentRecordDaoImpl extends GenericDaoImpl<ResidentRecord, Integer> {
	public ResidentRecordDaoImpl() {
		this.setConn(new GenericDaoProxy().getDbc().getConnection());
	}

	@Override
	public Integer create(ResidentRecord newInstance) {
		// TODO Auto-generated method stub
		Integer primaryKey = null;
		String sql = "INSERT INTO residentrecord(residentidcard, residentpwd, residentname, gender, birthday, " +
				"national, job, maritalstatus, company, companytel, homeaddress, " +
				"zipcode, telphone, permanentaddr) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
		try {
			this.setPstmt(this.getConn().prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS));
			this.getPstmt().setString(1, newInstance.getResidentidcard());
			this.getPstmt().setString(2, newInstance.getResidentpwd());
			this.getPstmt().setString(3, newInstance.getResidentname());
			this.getPstmt().setString(4, newInstance.getGender());
			this.getPstmt().setDate(5, (Date) newInstance.getBirthday());
			this.getPstmt().setString(6, newInstance.getNational());
			this.getPstmt().setString(7, newInstance.getJob());
			this.getPstmt().setString(8, newInstance.getMaritalstatus());
			this.getPstmt().setString(9, newInstance.getCompany());
			this.getPstmt().setString(10, newInstance.getCompanytel());
			this.getPstmt().setString(11, newInstance.getHomeaddress());
			this.getPstmt().setString(12, newInstance.getZipcode());
			this.getPstmt().setString(13, newInstance.getTelphone());
			this.getPstmt().setString(14, newInstance.getPermanentaddr());

			if(this.getPstmt().executeUpdate() > 0) {
				ResultSet rs = this.getPstmt().getGeneratedKeys();
				if(rs.next()) {				
					primaryKey = rs.getInt(1);
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return primaryKey;
	}

	@Override
	public ResidentRecord read(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(ResidentRecord transientObject) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(ResidentRecord persistentObject) {
		// TODO Auto-generated method stub
		
	}
}
