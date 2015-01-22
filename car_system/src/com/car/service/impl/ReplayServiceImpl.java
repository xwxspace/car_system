package com.car.service.impl;

import java.util.List;

import com.car.bean.Replay;
import com.car.dao.IReplayDao;
import com.car.service.IReplayService;

public class ReplayServiceImpl implements IReplayService {
	private IReplayDao replayDao;
	
	@Override
	public void add(Replay replay) {
		replayDao.add(replay);
	}

	@Override
	public void delete(Replay replay) {
		replayDao.delete(replay);
	}

	@Override
	public void update(Replay replay) {
		replayDao.update(replay);
	}

	@Override
	public List<Replay> queryByKnow(Integer knowid) {
		// TODO Auto-generated method stub
		return replayDao.queryByKnow(knowid);
	}

	@Override
	public List<Replay> queryByUser(Integer userid) {
		// TODO Auto-generated method stub
		return replayDao.queryByUser(userid);
	}

	public IReplayDao getReplayDao() {
		return replayDao;
	}

	public void setReplayDao(IReplayDao replayDao) {
		this.replayDao = replayDao;
	}
	
	

}
