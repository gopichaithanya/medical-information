/*
 * 居民基本资料表
 */
create table if not exists residentrecord
(
	residentrecordid	INT		AUTO_INCREMENT	PRIMARY KEY,
	residentidcard		VARCHAR(18)	UNIQUE NOT NULL,
	residentpwd			VARCHAR(32) NOT NULL,
	residentname		VARCHAR(20)	NOT NULL,
	gender				VARCHAR(2) CHECK('男'|'女'),
	birthday			datetime,
	national			VARCHAR(10),
	job					VARCHAR(20),
	maritalstatus		VARCHAR(4) CHECK('未婚'|'已婚'|'离异'|'丧偶'|'同居'),
	company				VARCHAR(50),
	companytel			VARCHAR(13),
	homeaddress			VARCHAR(50),
	zipcode				VARCHAR(8),
	telphone			VARCHAR(13),
	permanentaddr		VARCHAR(50)
);

/*
 * 系统管理员表，主要完成对居民资料、医务人员、管理人员的管理
 * （admin为超级管理员）
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
 * 医院基本资料表
 */
CREATE TABLE IF NOT EXISTS hospitalinfo
(
	hospitalid			INT		AUTO_INCREMENT PRIMARY KEY,
	hospitalname		VARCHAR(50)		NOT NULL,
	hospitaladdr		VARCHAR(50)		NOT NULL,
	hospitaltel			VARCHAR(13)		NOT NULL
);

/*
 * 科室基本资料表
 */
CREATE TABLE IF NOT EXISTS departmentinfo
(
	departmentid		INT		AUTO_INCREMENT PRIMARY KEY,
	departmentname		VARCHAR(20)		NOT NULL,
	departmentdesc		TEXT
);

/*
 * 医院与科室的关系表
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
 * 医务人员基本资料表
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
 * 疾病表（主要记录疾病的名称、所属科室）
 */
create table if not exists disease
(
	diseaseid			INT		AUTO_INCREMENT PRIMARY KEY,
	diseasename			VARCHAR(20)		NOT NULL,
	FK_department		INT		NOT NULL,
	FOREIGN KEY(FK_department) REFERENCES departmentinfo(departmentid)
);

/*
 * 症状表（主要记录一些症状，是字典）
 */
create table if not exists symptom
(
	symptomid			INT		AUTO_INCREMENT PRIMARY KEY,
	symptomname			VARCHAR(20)		NOT NULL
);

/*
 * 疾病与症状对应表
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















