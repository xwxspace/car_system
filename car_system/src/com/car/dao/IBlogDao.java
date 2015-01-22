package com.car.dao;

import java.util.List;

import com.car.bean.Blog;

public interface IBlogDao {
     public void add(Blog blog);
     public void delete(Blog blog);
     public void update(Blog blog);
	 public List<Blog> queryAll();
     public List<Blog> queryById(Integer userid);
     public Blog query(Integer blogid);
}
