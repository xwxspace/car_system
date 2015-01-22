package com.car.dao;

import java.util.List;

import com.car.bean.Replay;

public interface IReplayDao {
        public void add(Replay replay);
        public void delete(Replay replay);
        public void update(Replay replay);
        public List<Replay> queryByKnow(Integer knowid);
        public List<Replay> queryByUser(Integer userid); 
}
