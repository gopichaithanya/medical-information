package com.medicalinformation.dbc;

/**
 * @author Administrator
 * 
 */

import java.sql.*;

public class DatabaseConnection {
	private static final String DBDRIVER = "org.gjt.mm.mysql.Driver";
	private static final String DBURL = "jdbc:mysql://localhost:3306/medicalinformation";
	private static final String DBUSER = "root";
	private static final String DBPASSWORD = "xiating";
	private Connection conn = null;
	
	public DatabaseConnection() {
		try {
			Class.forName(DBDRIVER);
			this.conn = DriverManager.getConnection(DBURL, DBUSER, DBPASSWORD);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public Connection getConnection() {
		return this.conn;
	}
	
	public void close() {
		if(this.conn != null) {
			try {
				this.conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
}