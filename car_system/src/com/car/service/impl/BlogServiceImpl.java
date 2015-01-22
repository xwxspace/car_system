package com.car.service.impl;

import java.util.List;

import com.car.bean.Blog;
import com.car.dao.IBlogDao;
import com.car.service.IBlogService;

public class BlogServiceImpl implements IBlogService {
    private IBlogDao blogDao;
	public IBlogDao getBlogDao() {
		return blogDao;
	}

	public void setBlogDao(IBlogDao blogDao) {
		this.blogDao = blogDao;
	}

	@Override
	public void add(Blog blog) {
		blogDao.add(blog);
		
	}

	@Override
	public void delete(Blog blog) {
		blogDao.delete(blog);
		
	}

	@Override
	public void update(Blog blog) {
	blogDao.update(blog);
		
	}

	@Override
	public List<Blog> queryAll() {
		
		return blogDao.queryAll();
	}

	@Override
	public List<Blog> queryById(Integer userid) {
		
		return blogDao.queryById(userid);
	}

	@Override
	public Blog query(Integer blogid) {
		
		return blogDao.query(blogid);
	}

}
