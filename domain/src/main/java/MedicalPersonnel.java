package com.medicalinformation.vo;

public class MedicalPersonnel {
	public int getMpid() {
		return mpid;
	}
	public void setMpid(int mpid) {
		this.mpid = mpid;
	}
	public int getFK_resident() {
		return FK_resident;
	}
	public void setFK_resident(int fK_resident) {
		FK_resident = fK_resident;
	}
	public String getMpname() {
		return mpname;
	}
	public void setMpname(String mpname) {
		this.mpname = mpname;
	}
	public String getMppwd() {
		return mppwd;
	}
	public void setMppwd(String mppwd) {
		this.mppwd = mppwd;
	}
	public int getDepartmentid() {
		return departmentid;
	}
	public void setDepartmentid(int departmentid) {
		this.departmentid = departmentid;
	}
	public int getFK_depofhospt() {
		return FK_depofhospt;
	}
	public void setFK_depofhospt(int fK_depofhospt) {
		FK_depofhospt = fK_depofhospt;
	}
	private int mpid;
	private int FK_resident;
	private String mpname;
	private String mppwd;
	private int departmentid;
	private int FK_depofhospt;
}
