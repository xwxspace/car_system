package com.car.action;

/**
 * 用于用户操作的处理的action
 */

import java.util.List;

import com.car.bean.User;
import com.car.service.IUserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	private String username;	//用户名
	private String password;	//密码
	private String repassword;	//再次输入的密码
	private String realName;	//真实姓名
	private int phone;			//电话号码
	private String carType;		//汽车型号
	private String info;		//备注
	private IUserService userService;
	public IUserService getUserService() {
		return userService;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}
	private String status;		//登录状态
	
	//默认的方法，用于复制
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return super.execute();
	}
	
	//用于注册
	public String register() throws Exception {
		User user = new User(realName, phone, carType, username, password);
		if (username == null || "".equals(username) || password == null || "".equals(password)) {
			return "failed";
		}
		userService.add(user);
		return "register";
	}
	
	//用于登陆
	public String login() throws Exception {
		if (username == null || "".equals(username) || password == null || "".equals(password)) {
			return "loginFailed";
		}
		List userlist = userService.login(username, password);
		if(userlist.size()>0){
		status = "login";
		ActionContext.getContext().getSession().put("status", status);
		ActionContext.getContext().getSession().put("username", username);
		System.out.println("登陆成功");
		}
		return "login";
	}
	
	//用于注销
	public String logout() throws Exception {
		status = null;
		ActionContext.getContext().getSession().put("status", status);
		return "logout";
	}
	
	
	//从网页获取信息的方法
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
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
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getCarType() {
		return carType;
	}
	public void setCarType(String carType) {
		this.carType = carType;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
}
