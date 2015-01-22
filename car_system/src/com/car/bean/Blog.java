package com.car.bean;

public class Blog {
    private Integer blogid;
    public Integer getBlogid() {
		return blogid;
	}
	public void setBlogid(Integer blogid) {
		this.blogid = blogid;
	}
	private Integer userid;
    private String blogtitle;
    private String blogtext;
    private String blogdate;
    private String username;
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public String getBlogtitle() {
		return blogtitle;
	}
	public void setBlogtitle(String blogtitle) {
		this.blogtitle = blogtitle;
	}
	public String getBlogtext() {
		return blogtext;
	}
	public void setBlogtext(String blogtext) {
		this.blogtext = blogtext;
	}
	public String getBlogdate() {
		return blogdate;
	}
	public void setBlogdate(String blogdate) {
		this.blogdate = blogdate;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Blog() {
		super();
		// TODO Auto-generated constructor stub
	}
}
