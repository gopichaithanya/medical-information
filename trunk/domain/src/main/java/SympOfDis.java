package com.medicalinformation.vo;

public class SympOfDis {
	public int getSympofdisid() {
		return sympofdisid;
	}
	public void setSympofdisid(int sympofdisid) {
		this.sympofdisid = sympofdisid;
	}
	public String getSymptomlevel() {
		return symptomlevel;
	}
	public void setSymptomlevel(String symptomlevel) {
		this.symptomlevel = symptomlevel;
	}
	public int getFK_mp() {
		return FK_mp;
	}
	public void setFK_mp(int fK_mp) {
		FK_mp = fK_mp;
	}
	public int getFK_disease() {
		return FK_disease;
	}
	public void setFK_disease(int fK_disease) {
		FK_disease = fK_disease;
	}
	public int getFK_symptom() {
		return FK_symptom;
	}
	public void setFK_symptom(int fK_symptom) {
		FK_symptom = fK_symptom;
	}
	private int sympofdisid;
	private String symptomlevel;
	private int FK_mp;
	private int FK_disease;
	private int FK_symptom;
}
