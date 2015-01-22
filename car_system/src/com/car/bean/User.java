package com.car.bean;

public class User {
	  private Integer userid;
      private Integer blogid;
      private Integer replayid;
      private Integer knowid;
      private String realname;
      private Integer phone;
      private String favorite;
      private String username;
      private String password;
	public Integer getBlogid() {
		return blogid;
	}
	public User(String realname, Integer phone, String favorite,
			String username, String password) {
		super();
		this.realname = realname;
		this.phone = phone;
		this.favorite = favorite;
		this.username = username;
		this.password = password;
	}
	public void setBlogid(Integer blogid) {
		this.blogid = blogid;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public Integer getReplayid() {
		return replayid;
	}
	public void setReplayid(Integer replayid) {
		this.replayid = replayid;
	}
	public Integer getKnowid() {
		return knowid;
	}
	public void setKnowid(Integer knowid) {
		this.knowid = knowid;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public Integer getPhone() {
		return phone;
	}
	public void setPhone(Integer phone) {
		this.phone = phone;
	}
	public String getFavorite() {
		return favorite;
	}
	public void setFavorite(String favorite) {
		this.favorite = favorite;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
}
