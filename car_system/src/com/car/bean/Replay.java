package com.car.bean;

public class Replay {
	   private Integer replayid;
       public Integer getReplayid() {
		return replayid;
	}
	public void setReplayid(Integer replayid) {
		this.replayid = replayid;
	}
	private String replaytext;
       private String replaydate;
       private String username;
       private Integer userid;
       private Integer knowid;
	public Replay() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getReplaytext() {
		return replaytext;
	}
	public void setReplaytext(String replaytext) {
		this.replaytext = replaytext;
	}
	public String getReplaydate() {
		return replaydate;
	}
	public void setReplaydate(String replaydate) {
		this.replaydate = replaydate;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public Integer getKnowid() {
		return knowid;
	}
	public void setKnowid(Integer knowid) {
		this.knowid = knowid;
	}
       
}