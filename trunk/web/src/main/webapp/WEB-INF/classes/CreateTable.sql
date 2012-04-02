/*
 * ����������ϱ�
 */
create table if not exists residentrecord
(
	residentrecordid	INT		AUTO_INCREMENT	PRIMARY KEY,
	residentidcard		VARCHAR(18)	UNIQUE NOT NULL,
	residentpwd			VARCHAR(32) NOT NULL,
	residentname		VARCHAR(20)	NOT NULL,
	gender				VARCHAR(2) CHECK('��'|'Ů'),
	birthday			datetime,
	national			VARCHAR(10),
	job					VARCHAR(20),
	maritalstatus		VARCHAR(4) CHECK('δ��'|'�ѻ�'|'����'|'ɥż'|'ͬ��'),
	company				VARCHAR(50),
	companytel			VARCHAR(13),
	homeaddress			VARCHAR(50),
	zipcode				VARCHAR(8),
	telphone			VARCHAR(13),
	permanentaddr		VARCHAR(50)
);

/*
 * ϵͳ����Ա����Ҫ��ɶԾ������ϡ�ҽ����Ա��������Ա�Ĺ���
 * ��adminΪ��������Ա��
 */
create table if not exists admin
(
	adminid				INT		AUTO_INCREMENT	PRIMARY KEY,
	FK_resident			INT				NOT NULL,
	adminname			VARCHAR(20)		NOT NULL,
	adminpwd			VARCHAR(32)		NOT NULL,
	FOREIGN KEY(FK_resident)	REFERENCES residentrecord(residentrecordid)
);

/*
 * ҽԺ�������ϱ�
 */
CREATE TABLE IF NOT EXISTS hospitalinfo
(
	hospitalid			INT		AUTO_INCREMENT PRIMARY KEY,
	hospitalname		VARCHAR(50)		NOT NULL,
	hospitaladdr		VARCHAR(50)		NOT NULL,
	hospitaltel			VARCHAR(13)		NOT NULL
);

/*
 * ���һ������ϱ�
 */
CREATE TABLE IF NOT EXISTS departmentinfo
(
	departmentid		INT		AUTO_INCREMENT PRIMARY KEY,
	departmentname		VARCHAR(20)		NOT NULL,
	departmentdesc		TEXT
);

/*
 * ҽԺ����ҵĹ�ϵ��
 */
CREATE TABLE IF NOT EXISTS depofhospt
(
	depofhosptid			INT		AUTO_INCREMENT PRIMARY KEY,
	FK_hospital				INT		NOT NULL,
	FK_department			INT		NOT NULL,
	FOREIGN KEY(FK_hospital) 		REFERENCES hospitalinfo(hospitalid),
	FOREIGN KEY(FK_department)		REFERENCES departmentinfo(departmentid)
);

/*
 * ҽ����Ա�������ϱ�
 */
create table if not exists medicalpersonnel
(
	mpid				INT		AUTO_INCREMENT PRIMARY KEY,
	FK_resident			INT				NOT NULL,
	FOREIGN KEY(FK_resident) REFERENCES residentrecord(residentrecordid),
	mpname				VARCHAR(20)		NOT NULL,
	mppwd				VARCHAR(32)		NOT NULL,
	departmentid		INT		NOT NULL,
	FK_depofhospt		INT		NOT NULL,
	FOREIGN KEY(FK_depofhospt) REFERENCES depofhospt(depofhosptid)
);

/*
 * ��������Ҫ��¼���������ơ��������ң�
 */
create table if not exists disease
(
	diseaseid			INT		AUTO_INCREMENT PRIMARY KEY,
	diseasename			VARCHAR(20)		NOT NULL,
	FK_department		INT		NOT NULL,
	FOREIGN KEY(FK_department) REFERENCES departmentinfo(departmentid)
);

/*
 * ֢״����Ҫ��¼һЩ֢״�����ֵ䣩
 */
create table if not exists symptom
(
	symptomid			INT		AUTO_INCREMENT PRIMARY KEY,
	symptomname			VARCHAR(20)		NOT NULL
);

/*
 * ������֢״��Ӧ��
 */
create table if not exists sympofdis
(
	symofdisid		INT			AUTO_INCREMENT PRIMARY KEY,
	symptomlevel	VARCHAR(10),
	FK_mp			INT			NOT NULL,
	FK_disease		INT			NOT NULL,
	FK_symptom		INT			NOT NULL,
	FOREIGN KEY(FK_mp) REFERENCES medicalpersonnel(mpid),
	FOREIGN KEY(FK_disease) REFERENCES disease(diseaseid),
	FOREIGN KEY(FK_symptom) REFERENCES symptom(symptomid)
);















