package com.car.service;

import java.util.List;

import com.car.bean.Know;

public interface IKnowService {
	public void add(Know know);
    public void delete(Know know);
    public void update(Know know);
    public List<Know> queryAll();
    public List<Know> queryByText(String text);
    public List<Know> queryByUser(Integer userid);
    Know queryById(Integer id);
}
