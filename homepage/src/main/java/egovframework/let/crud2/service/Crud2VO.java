package egovframework.let.crud2.service;

import java.io.Serializable;
import egovframework.com.cmm.ComDefaultVO;

public class Crud2VO extends ComDefaultVO implements Serializable {
	//CRUD ID
	private String crudId;
	
	//CRUD 제목
	private String crudSj;
	
	//CRUD 내용
	private String crudCn;
	
	//CRUD 작성자
	private String userNm;
	
	//CRUD 작성일
	private java.util.Date frstRegistPnttm;

	public String getCrudId() {
		return crudId;
	}

	public void setCrudId(String crudId) {
		this.crudId = crudId;
	}

	public String getCrudSj() {
		return crudSj;
	}

	public void setCrudSj(String crudSj) {
		this.crudSj = crudSj;
	}

	public String getCrudCn() {
		return crudCn;
	}

	public void setCrudCn(String crudCn) {
		this.crudCn = crudCn;
	}

	public String getUserNm() {
		return userNm;
	}

	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}

	public java.util.Date getFrstRegistPnttm() {
		return frstRegistPnttm;
	}

	public void setFrstRegistPnttm(java.util.Date frstRegistPnttm) {
		this.frstRegistPnttm = frstRegistPnttm;
	}	
}
