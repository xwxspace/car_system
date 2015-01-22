package com.car.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.car.bean.Blog;
import com.car.dao.IBlogDao;

public class BlogDaoImpl extends HibernateDaoSupport implements IBlogDao {

	@Override
	public void add(Blog blog) {
		super.getHibernateTemplate().save(blog);
	}

	@Override
	public void delete(Blog blog) {
		super.getHibernateTemplate().delete(blog);
		super.getHibernateTemplate().flush();
	}

	@Override
	public void update(Blog blog) {
		super.getHibernateTemplate().update(blog);
		super.getHibernateTemplate().flush();
		
	}

	@Override
	public List<Blog> queryAll() {
		String hql = "from Blog";
		return super.getHibernateTemplate().find(hql);
	}

	@Override
	public List<Blog> queryById(Integer userid) {
		String hql = "from Blog blog where blog.username = ?";
		return super.getHibernateTemplate().find(hql, new Object[]{userid});
	}

	@Override
	public Blog query(Integer blogid) {
		String hql = "from Blog blog where blog.blogid = ?";
		Blog blog = (Blog)super.getHibernateTemplate().find(hql, new Object[]{blogid}).get(0);
		return blog;
	}

}
