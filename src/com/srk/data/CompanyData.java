package com.srk.data;

// import java.util.Date;

public class CompanyData {
	private int comId; // company ID
	private String comName; // company Name
	private String pubTime; // time of publish
	private String heldPlace; // held place
	private String msgUrl; // url to this message
	private String srcSchool; // school
	
	public int getComId(){
		return comId;
	}
	
	public String getComName(){
		return comName;
	}
	
	public String getPubTime(){
		return pubTime;
	}
	
	public String getHeldPlace(){
		return heldPlace;
	}
	
	public String getMsgUrl(){
		return msgUrl;
	}
	
	public String getSrcSchool(){
		return srcSchool;
	}
	
	public void setComId(int id){
		comId = id;
	}
	
	public void setComName(String name){
		comName = name;
	}
	
	public void setPubTime(String date){
		pubTime = date;
	}
	
	public void setHeldPlace(String place){
		heldPlace = place;
	}
	
	public void setMsgUrl(String url){
		msgUrl = url;
	}
	
	public void setSrcSchool(String school){
		srcSchool = school;
	}
	
}
