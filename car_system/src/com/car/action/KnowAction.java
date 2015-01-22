package com.car.action;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.car.bean.Know;
import com.car.bean.Replay;
import com.car.service.IKnowService;
import com.car.service.IReplayService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class KnowAction extends ActionSupport {
	private IKnowService knowService;
	private IReplayService replayService;
	private String know;	//know搜索的关键字
	private int id;		//knowid
	private String username;		//用户名
	private String reply;			//回复内容
	private int knowid;		//回复中的knowid
	private String knowtext;	//知道正文
	private String knowtitle;	//正道标题
	
	//查询know
	public String queryKnow() throws Exception {
		System.out.println("know" + know);
		List<Know> knowList = knowService.queryByText(know);
		ActionContext.getContext().getSession().put("knowList", knowList);
		return "queryKnow";
	}
	
	//查询回复
	public String queryKnowById() throws Exception {
		System.out.println("id" + id);
		List<Replay> replayList = replayService.queryByKnow(id);
		Know know = knowService.queryById(id);
		ActionContext.getContext().getSession().put("replayList", replayList);
		System.out.println(replayList.size());
		ActionContext.getContext().getSession().put("know", know);
		return "queryKnowById";
	}
	
	//回复
	public String reply() throws Exception {
		Calendar c = Calendar.getInstance();
		c.setTimeInMillis(new Date().getTime());
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String replaydate = dateFormat.format(c.getTime());
		Replay replay = new Replay();
		replay.setReplaytext(reply);
		replay.setKnowid(knowid);
		System.out.println("knowid/username:" + knowid + username);
		replay.setUsername(username);
		replay.setReplaydate(replaydate);
		replayService.add(replay);		//保存回复
		return "reply";
	}
	
	//添加知道
	public String addKnow() throws Exception {
		Calendar c = Calendar.getInstance();
		c.setTimeInMillis(new Date().getTime());
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String knowdate = dateFormat.format(c.getTime());
		Know know = new Know();
		know.setKnowdate(knowdate);
		System.out.println("know" + knowtext + knowtitle + username);
		know.setKnowtext(knowtext);
		know.setKnowtitle(knowtitle);
		know.setUsername(username);
		know.setReplayid(1);
		know.setUserid(1);
		knowService.add(know);
		return "addKnow";
	}
		
		

	public IKnowService getKnowService() {
		return knowService;
	}
	public void setKnowService(IKnowService knowService) {
		this.knowService = knowService;
	}
	public IReplayService getReplayService() {
		return replayService;
	}
	public void setReplayService(IReplayService replayService) {
		this.replayService = replayService;
	}
	public String getKnow() {
		return know;
	}
	public void setKnow(String know) {
		this.know = know;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public int getKnowid() {
		return knowid;
	}
	public void setKnowid(int knowid) {
		this.knowid = knowid;
	}
	public String getKnowtext() {
		return knowtext;
	}
	public void setKnowtext(String knowtext) {
		this.knowtext = knowtext;
	}
	public String getKnowtitle() {
		return knowtitle;
	}
	public void setKnowtitle(String knowtitle) {
		this.knowtitle = knowtitle;
	}
}
