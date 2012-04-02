package com.medicalinformation.vo;

public class Disease {
	public int getDiseaseid() {
		return diseaseid;
	}
	public void setDiseaseid(int diseaseid) {
		this.diseaseid = diseaseid;
	}
	public String getDiseasename() {
		return diseasename;
	}
	public void setDiseasename(String diseasename) {
		this.diseasename = diseasename;
	}
	public int getFK_department() {
		return FK_department;
	}
	public void setFK_department(int fK_department) {
		FK_department = fK_department;
	}
	private int diseaseid;
	private String diseasename;
	private int FK_department;
}
