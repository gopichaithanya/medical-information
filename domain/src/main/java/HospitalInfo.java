package com.medicalinformation.vo;

public class HospitalInfo {
	public int getHospitalid() {
		return hospitalid;
	}
	public void setHospitalid(int hospitalid) {
		this.hospitalid = hospitalid;
	}
	public String getHospitalname() {
		return hospitalname;
	}
	public void setHospitalname(String hospitalname) {
		this.hospitalname = hospitalname;
	}
	public String getHospitaladdr() {
		return hospitaladdr;
	}
	public void setHospitaladdr(String hospitaladdr) {
		this.hospitaladdr = hospitaladdr;
	}
	public String getHospitaltel() {
		return hospitaltel;
	}
	public void setHospitaltel(String hospitaltel) {
		this.hospitaltel = hospitaltel;
	}
	private int hospitalid;
	private String hospitalname;
	private String hospitaladdr;
	private String hospitaltel;
}
