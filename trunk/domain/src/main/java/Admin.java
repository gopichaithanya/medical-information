package com.medicalinformation.vo;

public class Admin {
	public int getAdminid() {
		return adminid;
	}
	public void setAdminid(int adminid) {
		this.adminid = adminid;
	}
	public String getResidentidcard() {
		return residentidcard;
	}
	public void setResidentidcard(String residentidcard) {
		this.residentidcard = residentidcard;
	}
	public String getAdminname() {
		return adminname;
	}
	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}
	public String getAdminpwd() {
		return adminpwd;
	}
	public void setAdminpwd(String adminpwd) {
		this.adminpwd = adminpwd;
	}
	private String adminpwd;
	private int adminid;
	private String residentidcard;
	private String adminname;
}
