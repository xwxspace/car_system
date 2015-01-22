package com.car.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.car.bean.Replay;
import com.car.dao.IReplayDao;

public class ReplayDaoImpl extends HibernateDaoSupport implements IReplayDao {

	@Override
	public void add(Replay replay) {
		super.getHibernateTemplate().save(replay);
	}

	@Override
	public void delete(Replay replay) {
		super.getHibernateTemplate().delete(replay);
		super.getHibernateTemplate().flush();
	}

	@Override
	public void update(Replay replay) {
	       super.getHibernateTemplate().update(replay);
		   super.getHibernateTemplate().flush();
	}

	@Override
	public List<Replay> queryByKnow(Integer knowid) {
		String hql = "from Replay know where know.knowid = ?";
		return super.getHibernateTemplate().find(hql, new Object[]{knowid});
		
	}

	@Override
	public List<Replay> queryByUser(Integer userid) {
		String hql = "from Replay know where know.userid = ?";
		return super.getHibernateTemplate().find(hql, new Object[]{userid});
		
	}

}
