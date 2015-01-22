package com.car.service;

import java.util.List;

import com.car.bean.User;

public interface IUserService {
	  public void add(User user);
      public void delete(User user);
      public void update(User user);
      public User query(Integer userid);
      public List<User> queryAll();
      public List<User> login(String username,String password);
}
