package main.java.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.medicalinformation.dao.proxy.GenericDaoProxy;
import com.medicalinformation.vo.Admin;
import com.mysql.jdbc.PreparedStatement;

public class AdminDaoImpl extends GenericDaoImpl<Admin, Integer> {
	public AdminDaoImpl() {
		// TODO Auto-generated constructor stub
		this.setConn(new GenericDaoProxy().getDbc().getConnection());
	}

	@Override
	public Integer create(Admin newInstance) {
		// TODO Auto-generated method stub
		Integer primaryKey = null;
		String sql = "INSERT INTO admin(FK_resident, adminpwd, adminname) VALUES(?, ?, ?);";
		try {
			this.setPstmt(this.getConn().prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS));
			this.getPstmt().setString(1, newInstance.getResidentidcard());
			this.getPstmt().setString(2, newInstance.getAdminpwd());
			this.getPstmt().setString(3, newInstance.getAdminname());

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
	public Admin read(Integer id) {
		// TODO Auto-generated method stub
		Admin admin = null;
		String sql = "SELECT * FROM admin WHERE adminid = ?";
		try {
			this.setPstmt(this.getConn().prepareStatement(sql));
			this.getPstmt().setInt(1, id);
			ResultSet rs = this.getPstmt().executeQuery();
			if(rs.next()) {
				admin = new Admin();
				admin.setAdminid(rs.getInt(1));
				admin.setResidentidcard(rs.getString(2));
				admin.setAdminpwd(rs.getString(3));
				admin.setAdminname(rs.getString(4));
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return admin;
	}

	@Override
	public void update(Admin transientObject) {
		// TODO Auto-generated method stub
		return;
	}

	@Override
	public void delete(Admin persistentObject) {
		// TODO Auto-generated method stub
		return;
	}
	

}
