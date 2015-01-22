package com.car.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.car.bean.User;
import com.car.dao.IUserDao;

public class UserDaoImpl extends HibernateDaoSupport implements IUserDao {

	@Override
	public void add(User user) {
		System.out.println("jinlaile");
	/*	User user1 = new User();
		user1.setUsername("xwx");
		user1.setPassword("xwx");*/
		super.getHibernateTemplate().save(user);
		super.getHibernateTemplate().flush();
		System.out.println(user.getUsername());
	}

	@Override
	public void delete(User user) {
		super.getHibernateTemplate().delete(user);
		super.getHibernateTemplate().flush();
	}

	@Override
	public void update(User user) {
		super.getHibernateTemplate().update(user);
		super.getHibernateTemplate().flush();
	}

	@Override
	public User query(Integer userid) {
		String hql = "from User user where user.userid=?";
		User user = (User)super.getHibernateTemplate().find(hql, new Object[]{userid}).get(0);
		return user;
	}

	@Override
	public List<User> queryAll() {
		String hql = "from User user";
		return super.getHibernateTemplate().find(hql);
	}

	@Override
	public List<User> login(String username, String password) {
		String hql = "from User user where user.username=? and user.password=?";
		return super.getHibernateTemplate().find(hql, new Object[]{username,password});
	}
	

}
