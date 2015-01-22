package com.car.service.impl;

import java.util.List;

import com.car.bean.User;
import com.car.dao.IUserDao;
import com.car.service.IUserService;


public class UserServiceImpl implements IUserService {
    private IUserDao userDao;
	


	public IUserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}
	@Override
	public void add(User user) {
		userDao.add(user);
		
	}
	@Override
	public void delete(User user) {
		userDao.delete(user);
		
	}

	@Override
	public void update(User user) {
		userDao.update(user);
		
	}

	@Override
	public User query(Integer userid) {
		
		return userDao.query(userid);
	}

	@Override
	public List<User> queryAll() {
		return userDao.queryAll();
	}
	@Override
	public List<User> login(String username, String password) {
		
		return userDao.login(username, password);
	}

}
