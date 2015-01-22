package com.car.service;

import java.util.List;

import com.car.bean.Replay;

public interface IReplayService {
	 public void add(Replay replay);
     public void delete(Replay replay);
     public void update(Replay replay);
     public List<Replay> queryByKnow(Integer knowid);
     public List<Replay> queryByUser(Integer userid); 
}
