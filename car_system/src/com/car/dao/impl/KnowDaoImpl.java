package com.car.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.car.bean.Know;
import com.car.dao.IKnowDao;

public class KnowDaoImpl extends HibernateDaoSupport implements IKnowDao {

	@Override
	public void add(Know know) {
		super.getHibernateTemplate().save(know);
	}
	@Override
	public void delete(Know know) {
		super.getHibernateTemplate().delete(know);
		super.getHibernateTemplate().flush();
	}

	@Override
	public void update(Know know) {
		super.getHibernateTemplate().update(know);
		super.getHibernateTemplate().flush();
		
	}

	@Override
	public List<Know> queryAll() {
		String hql = "from Know know";
		return super.getHibernateTemplate().find(hql);
	}

	@Override
	public List<Know> queryByText(String text) {
		String hql = "from Know know where know.knowtitle like ? or know.knowtext like ?";
		System.out.println("text" + text);
		return super.getHibernateTemplate().find(hql, new Object[]{"%"+text+"%" ,"%"+text+"%"});
	}

	@Override
	public List<Know> queryByUser(Integer userid) {
		String hql = "from Know know where know.userid=?";
		return super.getHibernateTemplate().find(hql, new Object[]{userid});
	}
	@Override
	public Know queryById(Integer id) {
		String hql = "from Know know where know.knowid=?";
		return (Know) super.getHibernateTemplate().find(hql, new Object[]{id}).get(0);
	}
	
}
