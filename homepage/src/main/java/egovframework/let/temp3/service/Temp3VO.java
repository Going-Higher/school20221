package egovframework.let.temp3.service;

import java.io.Serializable;

import org.apache.commons.lang3.builder.ToStringBuilder;

import egovframework.com.cmm.ComDefaultVO;

public class Temp3VO extends ComDefaultVO implements Serializable {
	//임시데이터 ID
	private String crudId;
	//임시데이터 제목
	private String crudSj;
	//임시데이터 작성내용
	private String crudCn;
	//임시데이터 작성자
	private String userNm;
	//임시데이터 작성일
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
