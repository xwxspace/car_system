package com.car.action;

/**
 * 用于博客的处理的action
 */

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.car.bean.Blog;
import com.car.service.IBlogService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class BlogAction extends ActionSupport {
	private IBlogService blogService;
	private int id;		//博客id
	private String blogtitle;		//博客标题
	private String blogtext;		//博客正文
	private String username;		//编写人
	
	//查询博客
	public String query() throws Exception {
		List<Blog> blogList = blogService.queryAll();
		ActionContext.getContext().getSession().put("blogList", blogList);
		return "query";
	}
	
	//查询单个blog
	public String queryById() throws Exception {
		Blog blog = blogService.query(id);
		ActionContext.getContext().getSession().put("blog", blog);
		return "queryById";
	}
	
	//添加博客
	public String addBlog() throws Exception {
		Calendar c = Calendar.getInstance();
		c.setTimeInMillis(new Date().getTime());
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = dateFormat.format(c.getTime());
		Blog blog = new Blog();
		blog.setBlogdate(date);
		blog.setUsername(username);
		blog.setBlogtitle(blogtitle);
		blog.setBlogtext(blogtext);
		blog.setUserid(1);
		blogService.add(blog);
		return "addBlog";
	}


	public IBlogService getBlogService() {
		return blogService;
	}
	public void setBlogService(IBlogService blogService) {
		this.blogService = blogService;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
}
