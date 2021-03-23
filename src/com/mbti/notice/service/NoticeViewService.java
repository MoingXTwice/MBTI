package com.mbti.notice.service;

import com.mbti.main.controller.Service;
import com.mbti.notice.dao.NoticeDAO;

public class NoticeViewService implements Service{

	//dao가 필요하다. 밖에서 생성한 후 넣어준다. - 1. 생성자. 2. setter()
	private NoticeDAO dao;
	
	@Override
	public void setDAO(Object dao) {
		this.dao = (NoticeDAO) dao;
	}
	
	@Override
	public Object service(Object obj) throws Exception {
		// TODO Auto-generated method stub
		return dao.view((Long) obj);
	}

}