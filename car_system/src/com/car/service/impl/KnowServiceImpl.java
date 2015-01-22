package com.car.service.impl;

import java.util.List;

import com.car.bean.Know;
import com.car.dao.IKnowDao;
import com.car.service.IKnowService;

public class KnowServiceImpl implements IKnowService {
    private IKnowDao knowDao;
	public IKnowDao getKnowDao() {
		return knowDao;
	}

	public void setKnowDao(IKnowDao knowDao) {
		this.knowDao = knowDao;
	}

	@Override
	public void add(Know know) {
		knowDao.add(know);
		
	}

	@Override
	public void delete(Know know) {
		knowDao.delete(know);
		
	}

	@Override
	public void update(Know know) {
	knowDao.update(know);
		
	}

	@Override
	public List<Know> queryAll() {
		return knowDao.queryAll();
	}

	@Override
	public List<Know> queryByText(String text) {
		return knowDao.queryByText(text);
	}

	@Override
	public List<Know> queryByUser(Integer userid) {
		return knowDao.queryByUser(userid);
	}

	@Override
	public Know queryById(Integer id) {
		// TODO Auto-generated method stub
		return knowDao.queryById(id);
	}

}
