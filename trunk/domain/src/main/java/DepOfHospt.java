package com.medicalinformation.vo;

public class DepOfHospt {
	public int getDepofhosptid() {
		return depofhosptid;
	}
	public void setDepofhosptid(int depofhosptid) {
		this.depofhosptid = depofhosptid;
	}
	public int getFK_department() {
		return FK_department;
	}
	public void setFK_department(int fK_department) {
		FK_department = fK_department;
	}
	public int getFK_hospital() {
		return FK_hospital;
	}
	public void setFK_hospital(int fK_hospital) {
		FK_hospital = fK_hospital;
	}
	private int depofhosptid;
	private int FK_department;
	private int FK_hospital;
}
