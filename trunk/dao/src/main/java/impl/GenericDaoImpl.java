package main.java.impl;

import com.medicalinformation.dao.GenericDao;

import java.io.Serializable;
import java.sql.*;
abstract public class GenericDaoImpl<T, PK extends Serializable> implements GenericDao<T, PK> {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	public Connection getConn() {
		return conn;
	}

	public void setConn(Connection conn) {
		this.conn = conn;
	}

	public PreparedStatement getPstmt() {
		return pstmt;
	}

	public void setPstmt(PreparedStatement pstmt) {
		this.pstmt = pstmt;
	}

	public GenericDaoImpl() {}
	
	abstract public PK create(T newInstance);

	abstract public T read(PK id);

	abstract public void update(T transientObject);

	abstract public void delete(T persistentObject);
}
